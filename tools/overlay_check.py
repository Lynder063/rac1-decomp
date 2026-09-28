#!/usr/bin/env python3
"""
Strict verdict for a level overlay function (func_LNN_XXXXXXXX): unlike
try_func's masked compare for executable functions, EXACT here means every
relocation in the candidate's compiled object reaches the exact retail
address, not just that the instruction words match with link-dependent
fields masked out (docs/OVERLAYS.md, "Plan" step 2).

  python tools/overlay_check.py OBJ.o func_LNN_XXXXXXXX [--diff]

OBJ.o is an ELF relocatable object built the way tools/try_func.py builds
one (the "text" segment pipeline): its .text holds the function (and,
for a stub that branches into its neighbour, that neighbour too) as
unlinked code with REL relocations still pending.

check(obj_path, name, show=False) is the entry point tools/try_func.py
calls; the __main__ block below is only a thin CLI over it for standalone
use.

Placement and resolution (docs/OVERLAYS.md, "Names" and "Layout"):

  - The object's .text is placed so NAME's symbol lands at its canonical
    address (level NN, address XXXXXXXX -- read straight out of the name).
  - Every relocation touching NAME's bytes is resolved and applied in
    Python (R_MIPS_26, R_MIPS_HI16/LO16 with standard REL pairing,
    R_MIPS_GPREL16 against _gp = 0x166D00, R_MIPS_32); anything else is
    reported as an unknown type.
  - A symbol's address in level NN: func_LMM_Y/D_LMM_Y/jtbl_LMM_Y is Y when
    MM == NN; a func_LMM_Y with MM != NN, or an executable func_Y catalogued
    as kind "exe", is looked up in config/overlays/functions.tsv for its
    place in level NN (an error if it has none there); func_Y/D_Y below
    0x15F000 are resident and equal Y; _gp is 0x166D00. Anything else is
    unresolved -> verdict LINK.
  - A relocation against a section symbol (.text local labels, .rodata)
    resolves through that section's own placed base plus the relocation's
    in-place addend.
  - If the function's relocated references into its own object's .rodata
    (a switch's jump table, a float constant) all land on the same single
    local offset, that table is placed at the retail address its own
    asm/overlays/<name>.s names as jtbl_LNN_Z (MM == NN); with more than
    one distinct table referenced, or none named, the verdict is RODATA.

The final, relocated bytes are compared byte for byte (no masking) against
baserom/overlays/level_NN/text.bin at the function's address (minus the
"text" record's own address, from manifest.json), for the catalogue's
recorded size.

Verdicts, in try_func's vocabulary: EXACT, BYTES n/size (n differing
bytes; --diff lists the differing instruction offsets, retail vs ours),
SIZE ours/retail, plus LINK <names> and RODATA <detail>.
"""
import json
import re
import sys
from pathlib import Path

from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

sys.path.insert(0, str(Path(__file__).resolve().parent))
import rabbitizer as rz  # noqa: E402

ROOT = Path(__file__).resolve().parent.parent
CATALOGUE = ROOT / "config/overlays/functions.tsv"
DUMP = ROOT / "baserom/overlays"
ASM_OVERLAYS = ROOT / "asm/overlays"

GP = 0x166D00
RESIDENT_MAX = 0x15F000

# R_MIPS_* type numbers we know how to apply.
R_MIPS_32 = 2
R_MIPS_26 = 4
R_MIPS_HI16 = 5
R_MIPS_LO16 = 6
R_MIPS_GPREL16 = 7

OVERLAY_NAME = re.compile(r"^func_L(\d{2})_([0-9A-Fa-f]{8})$")

FUNC_L = re.compile(r"^func_L(\d{2})_([0-9A-Fa-f]{8})$")
DATA_L = re.compile(r"^D_L(\d{2})_([0-9A-Fa-f]{8})$")
JTBL_L = re.compile(r"^jtbl_L(\d{2})_([0-9A-Fa-f]{8})$")
FUNC = re.compile(r"^func_([0-9A-Fa-f]{8})$")
DATA = re.compile(r"^D_([0-9A-Fa-f]{8})$")

JTBL_REF = re.compile(r"%(?:hi|lo)\((jtbl_L(\d{2})_([0-9A-Fa-f]{8}))\)")


def sign16(v: int) -> int:
    return v - 0x10000 if v & 0x8000 else v


class Unresolved(Exception):
    """A symbol or relocation this module cannot place."""
    def __init__(self, what):
        self.what = what
        super().__init__(what)


_catalogue_cache = None


def load_catalogue():
    """name -> (kind, size, [(level, address), ...])."""
    global _catalogue_cache
    if _catalogue_cache is not None:
        return _catalogue_cache
    rows = {}
    for line in CATALOGUE.read_text().splitlines():
        if not line or line.startswith("#"):
            continue
        name, kind, size, _fp, _n, places = line.split("\t")
        place_list = [(int(p[:2]), int(p[3:], 16)) for p in places.split(",")]
        rows[name] = (kind, int(size), place_list)
    _catalogue_cache = rows
    return rows


def place_in_level(name: str, level: int, near: int) -> int:
    """NAME's address in LEVEL from the catalogue's places; raises
    Unresolved if NAME isn't catalogued or has no place there. A handful
    of tiny functions (identical bytes, folded to one catalogue entry) sit
    at more than one address in the same level -- e.g. three untouched
    file-static copies of the same helper, one per translation unit that
    still links its own. Nothing in the catalogue says which one a given
    call site used, so this picks whichever place is nearest the
    resolving relocation's own address: in every duplicate case seen while
    testing this module, that was the right one (the caller and its
    matching copy come from the same original object, which lands close
    together after linking), and it is exact (not just closest) whenever
    there is in fact only one place."""
    row = load_catalogue().get(name)
    if row is None:
        raise Unresolved(name)
    matches = sorted({a for lv, a in row[2] if lv == level})
    if not matches:
        raise Unresolved(name)
    return min(matches, key=lambda a: abs(a - near))


def resolve_symbol(name: str, level: int, near: int) -> int:
    """A symbol's address in LEVEL, by name (docs/OVERLAYS.md, "Names").
    NEAR is the address of the relocation being resolved, used only to
    disambiguate a name with more than one place in this level (see
    place_in_level). Raises Unresolved if NAME can't be placed."""
    if name == "_gp":
        return GP
    if (m := FUNC_L.match(name)):
        mm, y = int(m.group(1)), int(m.group(2), 16)
        return y if mm == level else place_in_level(name, level, near)
    if (m := DATA_L.match(name)) or (m := JTBL_L.match(name)):
        mm, y = int(m.group(1)), int(m.group(2), 16)
        if mm == level:
            return y
        raise Unresolved(name)
    if (m := FUNC.match(name)):
        y = int(m.group(1), 16)
        return y if y < RESIDENT_MAX else place_in_level(name, level, near)
    if (m := DATA.match(name)):
        y = int(m.group(1), 16)
        if y < RESIDENT_MAX:
            return y
        raise Unresolved(name)
    raise Unresolved(name)


def section_name(elf: ELFFile, shndx) -> str | None:
    if not isinstance(shndx, int):
        return None
    sec = elf.get_section(shndx)
    return sec.name if sec is not None else None


def level_manifest(level: int) -> dict:
    return json.loads((DUMP / f"level_{level:02d}/manifest.json").read_text())


def text_record(manifest: dict) -> dict:
    return next(r for r in manifest["records"] if r["name"] == "text")


def retail_jtbl(name: str, level: int) -> int | None:
    """The retail address of the jump table NAME's own asm/overlays/<name>.s
    uses (jtbl_LNN_Z, its own canonical level), or None if it has no .s
    file or no such reference."""
    p = ASM_OVERLAYS / f"{name}.s"
    if not p.exists():
        return None
    for full, mm, z in JTBL_REF.findall(p.read_text()):
        if int(mm) == level:
            return int(z, 16)
    return None


class Placer:
    """Resolves relocations for one function placed at (level, address),
    including a single .rodata table it may use of its own."""

    def __init__(self, elf: ELFFile, name: str, level: int, address: int):
        self.elf = elf
        self.name = name
        self.level = level
        self.address = address
        self.text = elf.get_section_by_name(".text")
        self.rodata = elf.get_section_by_name(".rodata")
        self.symtab = elf.get_section_by_name(".symtab")
        sym = next((s for s in self.symtab.iter_symbols() if s.name == name), None)
        if sym is None or not sym["st_size"]:
            raise Unresolved(f"{name} not defined by the candidate")
        self.sym = sym
        self.off = sym["st_value"]
        self.size = sym["st_size"]
        self.base_text = address - self.off
        self.unresolved = []       # names/messages seen, in order, deduped
        self.unknown_types = []
        self.base_rodata = None
        self.rodata_error = None

    def note_unresolved(self, what: str):
        if what not in self.unresolved:
            self.unresolved.append(what)

    def relocations(self):
        for sec in self.elf.iter_sections():
            if isinstance(sec, RelocationSection) and sec.name == ".rel.text":
                for rel in sec.iter_relocations():
                    o = rel["r_offset"]
                    if self.off <= o < self.off + self.size:
                        yield rel

    def sym_of(self, rel):
        return self.symtab.get_symbol(rel["r_info_sym"])

    def word_at(self, buf: bytes, off: int) -> int:
        return int.from_bytes(buf[off:off + 4], "little")

    def hi_los(self, orig: bytes):
        """[(hi_rel, lo_rel, hi_imm, lo_imm)] pairing every R_MIPS_LO16 in
        the function with its R_MIPS_HI16 (standard REL pairing: GNU as
        does not repeat a R_MIPS_HI16 when %hi is reused across several
        %lo's of the same symbol, so a LO16 pairs with the *last* HI16
        relocation seen for its own symbol, not a strictly one-to-one
        stack). A HI16 that reloads a value into a register without ever
        being followed by its own LO16 (the rest of its use is a bare
        0-offset access, or another HI16 for the same symbol takes the
        actual LO16) is still its own valid %hi: it comes back here paired
        with lo_rel=None, lo_imm=0 (the standalone-%hi convention)."""
        rels = sorted(self.relocations(), key=lambda r: r["r_offset"])
        his = []   # [{"rel", "sym", "imm", "used"}], in the order seen
        out = []
        for rel in rels:
            rtype = rel["r_info_type"]
            if rtype == R_MIPS_HI16:
                sym = self.sym_of(rel)
                his.append({"rel": rel, "sym": sym.name,
                            "imm": self.word_at(orig, rel["r_offset"]) & 0xFFFF, "used": False})
            elif rtype == R_MIPS_LO16:
                sym = self.sym_of(rel)
                hi = next((h for h in reversed(his) if h["sym"] == sym.name), None)
                if hi is None and his:
                    hi = his[-1]
                if hi is None:
                    self.note_unresolved(f"unmatched R_MIPS_LO16 at +0x{rel['r_offset'] - self.off:x}")
                    continue
                hi["used"] = True
                lo_imm = self.word_at(orig, rel["r_offset"]) & 0xFFFF
                out.append((hi["rel"], rel, hi["imm"], lo_imm))
        for h in his:
            if not h["used"]:
                out.append((h["rel"], None, h["imm"], 0))
        return out

    def local_rodata_offset(self, sym) -> int | None:
        """SYM's own offset into .rodata (its section's own coordinates,
        ignoring any placement), or None if it doesn't live there."""
        secname = section_name(self.elf, sym["st_shndx"])
        if sym["st_info"]["type"] == "STT_SECTION":
            return 0 if secname == ".rodata" else None
        if secname == ".rodata":
            return sym["st_value"]
        return None

    def scan_rodata(self, orig: bytes):
        """Find every distinct local .rodata offset the function's
        relocations touch (base + in-place addend, in the object's own
        .rodata coordinates), and place that table if there is exactly
        one, from the function's own asm/overlays/<name>.s (jtbl_LNN_Z)."""
        if self.rodata is None:
            return
        touches = []
        for rel in self.relocations():
            rtype = rel["r_info_type"]
            if rtype in (R_MIPS_HI16, R_MIPS_LO16):
                continue    # handled via hi_los() below
            sym = self.sym_of(rel)
            local = self.local_rodata_offset(sym)
            if local is None:
                continue
            word = self.word_at(orig, rel["r_offset"])
            if rtype == R_MIPS_GPREL16:
                touches.append(local + sign16(word & 0xFFFF))
            elif rtype == R_MIPS_32:
                touches.append(local + word)
            else:
                touches.append(local)
        for hi_rel, _lo_rel, hi_imm, lo_imm in self.hi_los(orig):
            local = self.local_rodata_offset(self.sym_of(hi_rel))
            if local is None:
                continue
            ahl = (hi_imm << 16) + sign16(lo_imm)
            touches.append(local + ahl)
        distinct = sorted(set(touches))
        if not distinct:
            return
        if len(distinct) > 1:
            self.rodata_error = f"RODATA {len(distinct)} distinct .rodata references"
            return
        z = retail_jtbl(self.name, self.level)
        if z is None:
            self.rodata_error = (f"RODATA no retail table named for {self.name} "
                                  f"(local offset 0x{distinct[0]:X})")
            return
        self.base_rodata = z - distinct[0]

    def resolve_address(self, sym, near: int) -> int:
        """The placed address SYM's own value denotes (not yet combined
        with any in-place addend from the instruction). A symbol actually
        defined within this object (not SHN_UNDEF) is placed by where its
        own section landed; a section symbol IS that placement. Anything
        else -- including a defined symbol that happens to carry one of
        our naming conventions -- is placed by name (docs/OVERLAYS.md,
        "Names"), since that is how retail's own addressing works
        regardless of how this one candidate's object happens to be laid
        out (e.g. a stub's neighbour, included only to satisfy a branch).
        NEAR is the relocation's own placed address, passed through to
        resolve_symbol for its "more than one place in this level" tie
        break."""
        secname = section_name(self.elf, sym["st_shndx"])
        is_section = sym["st_info"]["type"] == "STT_SECTION"
        if is_section or (isinstance(sym["st_shndx"], int) and not (sym.name and
                          (FUNC_L.match(sym.name) or DATA_L.match(sym.name) or
                           JTBL_L.match(sym.name) or FUNC.match(sym.name) or DATA.match(sym.name)))):
            if secname == ".text":
                return self.base_text + sym["st_value"]
            if secname == ".rodata":
                if self.base_rodata is None:
                    raise Unresolved(".rodata (unplaced)")
                return self.base_rodata + sym["st_value"]
            raise Unresolved(f"section {secname or sym['st_shndx']}")
        return resolve_symbol(sym.name, self.level, near)

    def apply(self, ours: bytearray, orig: bytes):
        """Apply every relocation touching the function's bytes to OURS
        (already containing the unrelocated instruction words)."""
        for hi_rel, lo_rel, hi_imm, lo_imm in self.hi_los(orig):
            hi_off = hi_rel["r_offset"]
            try:
                s = self.resolve_address(self.sym_of(hi_rel), self.base_text + hi_off)
            except Unresolved as e:
                self.note_unresolved(str(e.what))
                continue
            ahl = (hi_imm << 16) + sign16(lo_imm)
            value = (s + ahl) & 0xFFFFFFFF
            new_lo = value & 0xFFFF
            new_hi = ((value - sign16(new_lo)) >> 16) & 0xFFFF
            orig_hi_word = self.word_at(orig, hi_off)
            ours[hi_off:hi_off + 4] = ((orig_hi_word & 0xFFFF0000) | new_hi).to_bytes(4, "little")
            if lo_rel is not None:
                lo_off = lo_rel["r_offset"]
                orig_lo_word = self.word_at(orig, lo_off)
                ours[lo_off:lo_off + 4] = ((orig_lo_word & 0xFFFF0000) | new_lo).to_bytes(4, "little")

        for rel in self.relocations():
            rtype = rel["r_info_type"]
            if rtype in (R_MIPS_HI16, R_MIPS_LO16):
                continue    # already applied above, paired
            o = rel["r_offset"]
            word = self.word_at(orig, o)
            near = self.base_text + o
            if rtype == R_MIPS_26:
                try:
                    s = self.resolve_address(self.sym_of(rel), near)
                except Unresolved as e:
                    self.note_unresolved(str(e.what))
                    continue
                addend = (word & 0x03FFFFFF) << 2
                p = self.base_text + o
                target = ((addend + s) & 0x0FFFFFFF) | (p & 0xF0000000)
                new_field = (target >> 2) & 0x03FFFFFF
                ours[o:o + 4] = ((word & 0xFC000000) | new_field).to_bytes(4, "little")
            elif rtype == R_MIPS_GPREL16:
                try:
                    s = self.resolve_address(self.sym_of(rel), near)
                except Unresolved as e:
                    self.note_unresolved(str(e.what))
                    continue
                a = sign16(word & 0xFFFF)
                value = (s + a - GP) & 0xFFFF
                ours[o:o + 4] = ((word & 0xFFFF0000) | value).to_bytes(4, "little")
            elif rtype == R_MIPS_32:
                try:
                    s = self.resolve_address(self.sym_of(rel), near)
                except Unresolved as e:
                    self.note_unresolved(str(e.what))
                    continue
                new_word = (s + word) & 0xFFFFFFFF
                ours[o:o + 4] = new_word.to_bytes(4, "little")
            else:
                self.unknown_types.append((o - self.off, rtype))


def check(obj_path, name: str, show: bool = False) -> str:
    m = OVERLAY_NAME.match(name)
    if not m:
        return f"LINK not an overlay function name: {name}"
    level, address = int(m.group(1)), int(m.group(2), 16)

    catalogue = load_catalogue()
    row = catalogue.get(name)
    if row is None:
        return f"LINK {name} is not in the catalogue"
    _kind, csize, _places = row

    elf = ELFFile(open(obj_path, "rb"))
    try:
        placer = Placer(elf, name, level, address)
    except Unresolved as e:
        return f"LINK {e.what}"

    if placer.size != csize:
        return f"SIZE ours {placer.size} / retail {csize}"

    manifest = level_manifest(level)
    trec = text_record(manifest)
    text_base = trec["address"]
    raw = (DUMP / f"level_{level:02d}/text.bin").read_bytes()
    retail = raw[address - text_base: address - text_base + csize]

    text_bytes = elf.get_section_by_name(".text").data()
    padded_orig = bytearray(text_bytes)  # keep absolute offsets for relocation math

    placer.scan_rodata(bytes(padded_orig))
    if placer.rodata_error:
        return placer.rodata_error

    ours = bytearray(padded_orig)
    placer.apply(ours, bytes(padded_orig))

    if placer.unresolved or placer.unknown_types:
        parts = list(placer.unresolved)
        parts += [f"unknown relocation type {t} at +0x{o:x}" for o, t in placer.unknown_types]
        return "LINK " + ", ".join(parts)

    ours_func = bytes(ours[placer.off:placer.off + placer.size])
    diff = sum(1 for a, b in zip(ours_func, retail) if a != b)
    if diff == 0:
        return "EXACT"
    if show:
        vram = address
        for i in range(0, csize, 4):
            a = int.from_bytes(ours_func[i:i + 4], "little")
            b = int.from_bytes(retail[i:i + 4], "little")
            if a != b:
                da = rz.Instruction(a, vram=vram + i, category=rz.InstrCategory.R5900).disassemble()
                db = rz.Instruction(b, vram=vram + i, category=rz.InstrCategory.R5900).disassemble()
                print(f"  +{i:4x}  ours {da:40s} retail {db}")
    return f"BYTES {diff}/{csize}"


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    obj_path, name = sys.argv[1], sys.argv[2]
    print(check(obj_path, name, "--diff" in sys.argv))


if __name__ == "__main__":
    main()
