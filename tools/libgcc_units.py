"""
The libgcc modules linked into core_text, 0x11DFE8-0x1206A0, in link
(= retail address) order. One place for the tools to read. Makefile.sn's
LIBGCC_OBJS and the object list and aliases in rac1.ld.sh carry the same
facts for the build; keep all three in step (src/libgcc/README.md explains
the modules).

Each entry: (unit, source file, [functions built from source],
             [functions still kept as asm stubs]).
"""
L2 = "src/libgcc/libgcc2.c"
FP = "src/libgcc/fp-bit.c"

MODULES = [
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

LIBGCC_START = 0x11DFE8
LIBGCC_END = 0x1206A0

# Sources holding INCLUDE_ASM stubs and/or decompiled game C, per segment.
# core_text is split around libgcc; the libgcc stub files are listed so
# candidate ranking still sees those stubs.
SEGMENT_SOURCES = {
    "core_text": [
        "src/core_text.c",
        "src/libgcc/nonmatching_0011E6D4.c",
        "src/libgcc/nonmatching_0011E7C4.c",
        "src/libgcc/nonmatching_0011E860.c",
        "src/libgcc/nonmatching_0011EF28.c",
        "src/core_text_2.c",
    ],
    "text": ["src/text.c"],
}
