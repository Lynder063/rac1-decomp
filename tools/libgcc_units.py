"""
The libgcc modules linked into core_text, in link (= retail address)
order. One place for the tools to read. Makefile.sn's LIBGCC_MODS and the
aliases in rac1.ld.sh carry the same facts for the build; keep all three
in step (src/libgcc/README.md explains the modules).

Each entry: (module, source file, [retail function names in the module]).
"""
MODULES = [
    ("addsub_df",      "src/libgcc/fp-bit.c", ["func_0011FC08", "func_0011FE48", "func_0011FEA0"]),
    ("mul_df",         "src/libgcc/fp-bit.c", ["func_0011FF08"]),
    ("div_df",         "src/libgcc/fp-bit.c", ["func_001201B0"]),
    ("fpcmp_parts_df", "src/libgcc/fp-bit.c", ["func_00120318"]),
    ("compare_df",     "src/libgcc/fp-bit.c", ["func_00120430"]),
    ("si_to_df",       "src/libgcc/fp-bit.c", ["func_00120480"]),
    ("df_to_si",       "src/libgcc/fp-bit.c", ["func_00120538"]),
    ("df_to_usi",      "src/libgcc/fp-bit.c", ["func_001205D0"]),
    ("make_df",        "src/libgcc/fp-bit.c", ["func_00120670"]),
]

# Every function above has real source (GCC's), so it counts as decompiled.
FUNCTIONS = [f for _, _, fns in MODULES for f in fns]

# Game sources per segment. core_text is split around the libgcc modules.
SEGMENT_SOURCES = {
    "core_text": ["src/core_text.c", "src/core_text_2.c"],
    "text": ["src/text.c"],
}
