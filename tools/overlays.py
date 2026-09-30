#!/usr/bin/env python3
"""
Level code overlays: each level's program, which replaces the executable's
`main` segment when the level loads (docs/OVERLAYS.md).

  python3 tools/overlays.py dump        # baserom/overlays/level_NN/ (local)
  python3 tools/overlays.py catalogue   # config/overlays/functions.tsv
  python3 tools/overlays.py families    # config/overlays/families.tsv
  python3 tools/overlays.py names       # config/overlays/names.tsv

`dump` writes every level's overlay records from the disc image
(baserom/SCES_509.16.iso) to baserom/overlays/level_NN/, one file per
record, plus manifest.json with their addresses. Those files are game data:
baserom/ is never committed.

`catalogue` splits each level's text into functions and deduplicates them
across levels and against the executable, comparing instructions with their
link-dependent fields masked. Every distinct function gets one name:

  - an executable game function keeps its name (func_XXXXXXXX);
  - any other gets func_LNN_XXXXXXXX: its address in the lowest-numbered
    level that has it (NN).

The catalogue holds names, sizes, fingerprint hashes and addresses, never
bytes, so it is tracked.

`families` finds, for every shared and level function, its nearest
relative among all distinct functions (the executable's included): the
most similar one within 15% of its size, comparing masked instructions by
alignment. Many level functions are another function compiled with small
changes; once one of them is matched, its C is the starting point for the
other. Relatives at 75% or more are written to config/overlays/families.tsv.
"""
import bisect
import difflib
import hashlib
import json
import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools/extract"))

ISO = ROOT / "baserom/SCES_509.16.iso"
ELF = ROOT / "baserom/SCES_509.16"
DUMP = ROOT / "baserom/overlays"
CATALOGUE = ROOT / "config/overlays/functions.tsv"
VARIANTS = ROOT / "config/overlays/variants.tsv"
EXE_DELTA = 0xFF080          # vram - file offset for the executable's main segment
RECORD_NAMES = ("lit", "bss", "data", "vtbl", "camvtbl", "sndvtbl", "text")

# Link-dependent instruction fields (masked before comparing).
MEM = {0x1A, 0x1B, 0x1E, 0x1F, *range(0x20, 0x30), 0x31, 0x36, 0x37, 0x39, 0x3E, 0x3F}


def mask(w: int) -> int:
    op, rs = w >> 26, (w >> 21) & 31
    if op in (2, 3):                                   # j, jal: target
        return w & 0xFC000000
    if op == 0x0F or rs == 28 and op >= 8:             # lui, $gp-relative
        return w & 0xFFFF0000
    if (op in MEM or op in (0x09, 0x0D, 0x19)) and rs != 29:   # %lo, non-stack offsets
        return w & 0xFFFF0000
    return w


def words(b: bytes) -> tuple:
    return struct.unpack(f"<{len(b) // 4}I", b)


def masked(b: bytes) -> bytes:
    return struct.pack(f"<{len(b) // 4}I", *map(mask, words(b)))


def trim(b: bytes) -> bytes:
    while b.endswith(b"\0\0\0\0"):
        b = b[:-4]
    return b


def coarse_fingerprint(b: bytes) -> str:
    return hashlib.sha1(trim(masked(b))).hexdigest()[:16]


def identity(b: bytes) -> bytes:
    """One function's words with only its address fields masked: what two
    copies must share to be the same function. mask() above also hides
    constants (`li $a0, 180`), float halves (`lui $at, 0x42BE`) and struct
    offsets, which is right for finding a function's copies in another
    level's text but merges functions that differ in a number.

    A register is address-derived when a `lui` loads it with the top half
    of a RAM address, or when it is copied or computed from one that is;
    immediates on those (and on $gp) are %lo halves and stay masked. An
    immediate on $zero, a small offset on any other register and an `ori`
    are the code's own and are compared. Large offsets on other registers
    stay masked: an address half can reach one through a spill."""
    w = words(trim(b))
    tainted, grew = set(), True
    while grew:
        grew = False
        for x in w:
            op, rs, rt, rd = x >> 26, (x >> 21) & 31, (x >> 16) & 31, (x >> 11) & 31
            new = None
            if op == 0x0F and 0x10 <= x & 0xFFFF < 0x200:
                new = rt
            elif op in (0x09, 0x19) and rs in tainted:
                new = rt
            elif op == 0 and x & 0x3F in (0x21, 0x2D, 0x25) and (rs in tainted or rt in tainted):
                new = rd
            if new and new not in tainted:
                tainted.add(new)
                grew = True
    out = []
    for x in w:
        op, rs, imm = x >> 26, (x >> 21) & 31, x & 0xFFFF
        if op in (2, 3):
            x &= 0xFC000000
        elif op == 0x0F:
            if 0x10 <= imm < 0x200:
                x &= 0xFFFF0000
        elif rs == 28 and op >= 8:
            x &= 0xFFFF0000
        elif (op in MEM or op in (0x09, 0x0D, 0x19)) and rs != 29:
            small = imm < 0x1000 or imm >= 0xF000
            if rs in tainted or (rs != 0 and op != 0x0D and not small):
                x &= 0xFFFF0000
        out.append(x)
    return struct.pack(f"<{len(out)}I", *out)


def fingerprint(b: bytes) -> str:
    return hashlib.sha1(identity(b)).hexdigest()[:16]


def ends_in_jump(w: int) -> bool:
    """jr, j or b (beq $0, $0): the last instruction of a function whose
    delay slot follows it."""
    return (w & 0xFC1FFFFF) == 0x00000008 or w >> 26 == 2 or w >> 16 == 0x1000


def code_size(b: bytes) -> int:
    """The function's size: its bytes without the padding after it, but
    with a nop in the delay slot of its final jump, which trim() takes for
    padding."""
    t = trim(b)
    if len(t) < len(b) and t and ends_in_jump(words(t[-4:])[0]):
        return len(t) + 4
    return len(t)


def split(text: bytes, base: int, extra=()) -> list[tuple[int, int]]:
    """(offset, size) of each function: starts at call targets, after
    returns, after tail calls followed by a frame opener, at a frame opener
    after padding, and at EXTRA word indices."""
    w = words(text)
    starts = {0, *extra}
    for i, x in enumerate(w):
        if x >> 26 == 3:
            t = ((x & 0x3FFFFFF) << 2) | (base & 0xF0000000)
            if base <= t < base + len(text):
                starts.add((t - base) // 4)
        if (x == 0x03E00008 or x >> 26 == 2) and i + 2 < len(w):
            j = i + 2
            while j < len(w) and w[j] == 0:
                j += 1
            if x == 0x03E00008 or (j < len(w) and w[j] >> 16 == 0x27BD and w[j] & 0x8000):
                starts.add(j)
        if x >> 16 == 0x27BD and x & 0x8000 and i and w[i - 1] == 0:
            starts.add(i)
    s = sorted(x for x in starts if x < len(w))
    return [(a * 4, (b - a) * 4) for a, b in zip(s, s[1:] + [len(w)])]


def read_levels() -> dict[int, dict]:
    """level id -> {"entry_point", "records": [{name, address, bytes, type, data}]}."""
    from disc import Disc
    from formats import overlay_sections, span, unpack
    from level import decoded
    levels = {}
    with Disc(ISO) as disc:
        for info in disc.survey()["levels"]:
            r = info["ranges"]
            data = disc.sectors(r["data"]["lba"], r["data"]["sectors"])
            offset, size = unpack("<ii", data, 0)
            raw = decoded(span(data, offset, size))
            ov = overlay_sections(raw)
            if len(ov["sections"]) != len(RECORD_NAMES):
                sys.exit(f"level {info['id']}: {len(ov['sections'])} overlay records, expected 7")
            records = [dict(rec, name=name, data=raw[rec["offset"]:rec["offset"] + rec["bytes"]])
                       for name, rec in zip(RECORD_NAMES, ov["sections"])]
            levels[info["id"]] = {"entry_point": ov["entry_point"], "records": records}
    return levels


def exe_functions() -> list[tuple[str, int, int, bytes]]:
    """(name, address, size, bytes) of the executable's game-text functions."""
    elf = ELF.read_bytes()
    report = json.loads((ROOT / "progress/report.json").read_text())
    out = []
    for unit in report["units"]:
        if not unit["name"].startswith("game/"):
            continue
        for f in unit["functions"]:
            va, size = int(f["name"][5:], 16), int(f["size"])
            out.append((f["name"], va, size, elf[va - EXE_DELTA: va - EXE_DELTA + size]))
    return out


def dump() -> None:
    levels = read_levels()
    for lid, lvl in levels.items():
        d = DUMP / f"level_{lid:02d}"
        d.mkdir(parents=True, exist_ok=True)
        manifest = {"level": lid, "entry_point": lvl["entry_point"], "records": []}
        for rec in lvl["records"]:
            (d / f"{rec['name']}.bin").write_bytes(rec["data"])
            manifest["records"].append({"name": rec["name"], "address": rec["address"],
                                        "bytes": rec["bytes"], "type": rec["type"]})
        (d / "manifest.json").write_text(json.dumps(manifest, indent=1) + "\n")
    print(f"dumped {len(levels)} levels to {DUMP.relative_to(ROOT)}")


def catalogue() -> None:
    levels = read_levels()
    exe = exe_functions()
    exe_by_fp = {}
    for name, _, _, b in exe:
        exe_by_fp.setdefault(fingerprint(b), name)
    exe_masked = [(name, size, trim(masked(b))) for name, _, size, b in exe]
    found = {}            # fingerprint -> {"size", "places": [(level, address)]}
    for lid in sorted(levels):
        text = levels[lid]["records"][-1]
        base, data = text["address"], text["data"]
        m = masked(data)
        extra = set()
        for _, size, fm in exe_masked:
            i = m.find(fm)
            while i >= 0 and i % 4:
                i = m.find(fm, i + 1)
            if i >= 0:
                extra |= {i // 4, (i + size) // 4}
        for off, size in split(data, base, extra):
            body = data[off:off + size]
            if not trim(body):
                continue
            fp = fingerprint(body)
            entry = found.setdefault(fp, {"size": code_size(body), "places": [],
                                          "shape": coarse_fingerprint(body)})
            entry["places"].append((lid, base + off))
    rows = []
    for fp, e in found.items():
        places = sorted(e["places"])
        if fp in exe_by_fp:
            name, kind = exe_by_fp[fp], "exe"
        else:
            lid, addr = places[0]
            name = f"func_L{lid:02d}_{addr:08X}"
            kind = "level" if len({p[0] for p in places}) == 1 else "shared"
        rows.append((name, kind, e["size"], fp, places))
    rows.sort(key=lambda r: (r[4][0][0], r[4][0][1]))
    # Variants: functions with the same instructions as another one except
    # for a constant or an offset. The parent is the executable's function
    # of that shape, or else the first of them in the catalogue.
    exe_shape = {}
    for name, _, _, b in exe:
        exe_shape.setdefault(coarse_fingerprint(b), name)
    shape_parent, variants = {}, []
    for name, kind, size, fp, places in rows:
        shape = found[fp]["shape"]
        parent = exe_shape.get(shape) or shape_parent.setdefault(shape, name)
        if parent != name:
            variants.append((name, parent, kind, size))
    VARIANTS.write_text("# name\tvariant of\tkind\tsize\n" +
                        "".join(f"{n}\t{p}\t{k}\t{s}\n" for n, p, k, s in variants))
    CATALOGUE.parent.mkdir(parents=True, exist_ok=True)
    lines = ["# name\tkind\tsize\tfingerprint\tlevels\tplaces (level:address)"]
    for name, kind, size, fp, places in rows:
        lv = sorted({p[0] for p in places})
        lines.append(f"{name}\t{kind}\t{size}\t{fp}\t{len(lv)}\t" +
                     ",".join(f"{l:02d}:{a:08X}" for l, a in places))
    CATALOGUE.write_text("\n".join(lines) + "\n")
    count = {k: sum(1 for r in rows if r[1] == k) for k in ("exe", "shared", "level")}
    size = {k: sum(r[2] for r in rows if r[1] == k) for k in ("exe", "shared", "level")}
    print(f"{len(rows)} distinct functions: " +
          ", ".join(f"{count[k]} {k} ({size[k]} bytes)" for k in count) +
          f". Written to {CATALOGUE.relative_to(ROOT)}.")
    print(f"{len(variants)} of them ({sum(v[3] for v in variants)} bytes) are variants of another "
          f"function. Written to {VARIANTS.relative_to(ROOT)}.")


FAMILIES = ROOT / "config/overlays/families.tsv"
RELATIVE = 0.75             # least similarity worth listing


def read_catalogue() -> list[tuple[str, str, int, list[tuple[int, int]]]]:
    rows = []
    for line in CATALOGUE.read_text().splitlines():
        if line.startswith("#"):
            continue
        name, kind, size, _, _, places = line.split("\t")
        rows.append((name, kind, int(size),
                     [(int(p[:2]), int(p[3:], 16)) for p in places.split(",")]))
    return rows


def families() -> None:
    texts = {}
    for d in sorted(DUMP.glob("level_*")):
        text = next(r for r in json.loads((d / "manifest.json").read_text())["records"]
                    if r["name"] == "text")
        texts[int(d.name[6:])] = (text["address"], (d / "text.bin").read_bytes())
    funcs = []                       # (size, name, kind, masked words)
    for name, kind, size, places in read_catalogue():
        level, addr = places[0]
        base, data = texts[level]
        funcs.append((size, name, kind, words(masked(data[addr - base:addr - base + size]))))
    funcs.sort()
    sizes = [f[0] for f in funcs]
    rows = []
    for size, name, kind, w in funcs:
        if kind == "exe" or size < 64:
            continue
        best, relative = RELATIVE, None
        for s2, n2, k2, w2 in funcs[bisect.bisect_left(sizes, size * 0.85):
                                    bisect.bisect_right(sizes, size * 1.15)]:
            if n2 == name:
                continue
            sm = difflib.SequenceMatcher(None, w, w2, autojunk=False)
            if sm.real_quick_ratio() < best or sm.quick_ratio() < best:
                continue
            ratio = sm.ratio()
            if ratio >= best:
                best, relative = ratio, (n2, k2, s2)
        if relative:
            rows.append((name, kind, size, *relative, best))
    lines = ["# name\tkind\tsize\trelative\trelative kind\trelative size\tsimilarity"]
    lines += [f"{n}\t{k}\t{s}\t{rn}\t{rk}\t{rs}\t{r:.2f}" for n, k, s, rn, rk, rs, r in
              sorted(rows, key=lambda r: -r[2])]
    FAMILIES.write_text("\n".join(lines) + "\n")
    print(f"{len(rows)} functions ({sum(r[2] for r in rows)} bytes) have a relative at "
          f"{RELATIVE:.0%} or more; {sum(1 for r in rows if r[4] == 'exe')} of them in the "
          f"executable. Written to {FAMILIES.relative_to(ROOT)}.")


NAMES = ROOT / "config/overlays/names.tsv"
CAMERA_ROLES = ("InitCamera", "ActivateCamera", "UpdateCamera", "ExitCamera")


def vtbl_roles(level: int) -> list[tuple[int, str]]:
    """(address, role) for every function a level's dispatch records point at.

    vtbl: 12-byte entries {oClass, update, pointer to a 6-word table}, one per
    moby class the level has; the update is UpdateMoby_<oClass>. The 6-word
    tables follow the entry that ends the list.
    camvtbl: 20-byte entries {camera id, init, activate, update, exit}.
    sndvtbl: 8-byte entries {id, function}.
    Every list ends at an id of -1; a null function pointer is skipped."""
    d = DUMP / f"level_{level:02d}"

    def record(name: str) -> tuple[int, ...]:
        b = (d / f"{name}.bin").read_bytes()
        return struct.unpack(f"<{len(b) // 4}I", b)

    out = []
    w = record("vtbl")
    for i in range(0, len(w) - 2, 3):
        if w[i] == 0xFFFFFFFF:
            break
        out.append((w[i + 1], f"UpdateMoby_{w[i]}"))
    w = record("camvtbl")
    for i in range(0, len(w) - 4, 5):
        if w[i] == 0xFFFFFFFF:
            break
        out += [(w[i + 1 + j], f"{role}_{w[i]}") for j, role in enumerate(CAMERA_ROLES)]
    w = record("sndvtbl")
    for i in range(0, len(w) - 1, 2):
        if w[i] == 0xFFFFFFFF:
            break
        out.append((w[i + 1], f"SoundFunc_{w[i]}"))
    return [(addr, role) for addr, role in out if addr]


def names() -> None:
    """config/overlays/names.tsv: the role each dispatch record gives a
    catalogued function (docs/OVERLAYS.md, "Roles")."""
    at = {(level, addr): name for name, _, _, places in read_catalogue()
          for level, addr in places}
    roles: dict[str, dict[str, set[int]]] = {}
    unplaced = 0
    for d in sorted(DUMP.glob("level_*")):
        level = int(d.name[6:])
        for addr, role in vtbl_roles(level):
            name = at.get((level, addr))
            if name is None:
                unplaced += 1
                continue
            roles.setdefault(name, {}).setdefault(role, set()).add(level)
    lines = ["# name\troles (role:levels)"]
    for name in sorted(roles, key=lambda n: (n[5:7] if n.startswith("func_L") else "", n)):
        lines.append(name + "\t" + ",".join(
            f"{role}:{'/'.join(f'{lv:02d}' for lv in sorted(levels))}"
            for role, levels in sorted(roles[name].items(), key=lambda kv: (len(kv[0]), kv[0]))))
    NAMES.write_text("\n".join(lines) + "\n")
    one = sum(1 for r in roles.values() if len(r) == 1)
    print(f"{len(roles)} functions have a role ({one} exactly one); {unplaced} record "
          f"pointers are not a catalogued function start. "
          f"Written to {NAMES.relative_to(ROOT)}.")


def main() -> None:
    commands = {"dump": dump, "catalogue": catalogue, "families": families, "names": names}
    if len(sys.argv) != 2 or sys.argv[1] not in commands:
        sys.exit(__doc__)
    commands[sys.argv[1]]()


if __name__ == "__main__":
    main()
