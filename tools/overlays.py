#!/usr/bin/env python3
"""
Level code overlays: each level's program, which replaces the executable's
`main` segment when the level loads (docs/OVERLAYS.md).

  python3 tools/overlays.py dump        # baserom/overlays/level_NN/ (local)
  python3 tools/overlays.py catalogue   # config/overlays/functions.tsv

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
"""
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


def fingerprint(b: bytes) -> str:
    return hashlib.sha1(trim(masked(b))).hexdigest()[:16]


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
            entry = found.setdefault(fp, {"size": len(trim(body)), "places": []})
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


def main() -> None:
    commands = {"dump": dump, "catalogue": catalogue}
    if len(sys.argv) != 2 or sys.argv[1] not in commands:
        sys.exit(__doc__)
    commands[sys.argv[1]]()


if __name__ == "__main__":
    main()
