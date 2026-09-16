"""
The libgcc modules linked into core_text, 0x11DFE8-0x1206A0, in link
(= retail address) order, plus helpers over config/core_text.objects (the
one link-order list Makefile.sn and rac1.ld.sh also read). The func_ <->
libgcc name aliases live in rac1.ld.sh; src/libgcc/README.md explains the
modules.

Each entry: (unit, source file, [functions built from source],
             [functions still kept as asm stubs]).
"""
from pathlib import Path

L2 = "src/libgcc/libgcc2.c"
FP = "src/libgcc/fp-bit.c"

MODULES = [
    ("main",           L2, [], ["func_0011DF10", "func_0011DFC8"]),
    ("divdi3",         L2, ["func_0011DFE8"], ["func_0011E6D4"]),  # + linker fill
    ("fixunsdfdi",     L2, ["func_0011E6D8"], ["func_0011E7C4"]),  # + linker fill
    ("floatdidf",      L2, ["func_0011E7C8"], []),
    ("moddi3",         L2, [], ["func_0011E860"]),
    ("muldi3",         L2, ["func_0011EEC8"], []),
    ("udivdi3",        L2, [], ["func_0011EF28"]),
    ("umoddi3",        L2, [], ["func_0011F4F8"]),
    ("pack_df",        FP, [], ["func_0011FA38"]),
    ("unpack_df",      FP, [], ["func_0011FB68"]),
    ("addsub_df",      FP, ["func_0011FC08", "func_0011FE48", "func_0011FEA0"], []),
    ("mul_df",         FP, ["func_0011FF08"], []),
    ("div_df",         FP, ["func_001201B0"], []),
    ("fpcmp_parts_df", FP, ["func_00120318"], []),
    ("compare_df",     FP, ["func_00120430"], []),
    ("si_to_df",       FP, ["func_00120480"], []),
    ("df_to_si",       FP, ["func_00120538"], []),
    ("df_to_usi",      FP, ["func_001205D0"], []),
    ("make_df",        FP, ["func_00120670"], []),
]

# Every function built from GCC's source counts as decompiled.
FUNCTIONS = [f for _, _, fns, _ in MODULES for f in fns]
STUBS = [f for _, _, _, stubs in MODULES for f in stubs]

LIBGCC_START = 0x11DF10
LIBGCC_END = 0x1206A0

ROOT = Path(__file__).resolve().parent.parent


def segment_entries(segment: str) -> list[tuple[str, int | None]]:
    """(object path, retail start or None) from config/<segment>.objects, in
    link order. Game objects carry their start address in a second column,
    so their file names are free to be real names; libgcc objects are
    described by MODULES instead."""
    out = []
    for line in (ROOT / f"config/{segment}.objects").read_text().splitlines():
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        parts = line.split()
        out.append((parts[0], int(parts[1], 16) if len(parts) > 1 else None))
    return out


def core_text_entries() -> list[tuple[str, int | None]]:
    return segment_entries("core_text")


def core_text_objects() -> list[str]:
    """Object paths from config/core_text.objects, in link order."""
    return [obj for obj, _ in core_text_entries()]


def source_of(obj: str) -> str:
    """The source file an object in the list is built from."""
    name = obj.rsplit("/", 1)[1][:-2]
    if obj.startswith("build-sn/core/"):
        return f"src/core/{name}.c"
    if obj.startswith("build-sn/game/"):
        return "src/" + obj[len("build-sn/"):-2] + ".c"
    if name.startswith("asm_"):
        return f"src/libgcc/nonmatching_{name[4:]}.c"
    if name.startswith("l2_"):
        return L2
    return FP


# Sources holding INCLUDE_ASM stubs and/or decompiled game C, per segment.
# Library sources (libgcc2.c, fp-bit.c) are not scanned: their functions are
# counted through MODULES.
SEGMENT_SOURCES = {
    "core_text": [s for s in dict.fromkeys(source_of(o) for o in core_text_objects())
                  if s not in (L2, FP)],
    "text": [source_of(o) for o, _ in segment_entries("text")],
}


def object_of(segment: str, vram: int) -> tuple[str, str, int]:
    """(object name, source file, start address) of the game object holding
    vram. core_text names are bare ("989snd"); text names keep their
    directory ("game/hud")."""
    game = [(start, obj) for obj, start in segment_entries(segment) if start is not None]
    start, obj = max((s, o) for s, o in game if s <= vram)
    rel = obj[len("build-sn/"):-2]
    name = rel.split("/", 1)[1] if segment == "core_text" else rel
    return name, source_of(obj), start
