# libgcc

Retail links GCC's runtime library, `libgcc.a`, into `core_text` at
0x11DFE8-0x1206A0. Those functions were not written for the game. They are
GCC's own sources built by Sony's EE toolchain, so they are rebuilt here
from GCC's sources rather than decompiled.

All of it is built with **Sony's `2.9-ee-991111` compiler**, not the game's
GCC 2.95.3 (SN v1.14). It goes **through the 2.9-ee driver** (`ee-gcc.exe`),
never `cc1` directly. The driver passes the target predefines (`__mips__`,
`__R5900__`, ...), and `longlong.h` chooses its MIPS multiply and divide
primitives from those. Without them `__divdi3` and `__muldi3` come out wrong.

Each `L_*` module is its own object, like the members of `libgcc.a`. That is
what reproduces retail's alignment gaps between modules. Modules that do not
match yet stay as asm stubs in `nonmatching_*.c`, in their link position.
The linker filled two gaps with `0xCDCDCDCD`, and those are kept as stubs
too. The link order is `config/core_text.objects`, which the build and the
tools read. Per-module facts for the progress report are in
`tools/libgcc_units.py`.

## Sources (GPL v2 with the libgcc linking exception, see each file's header)

| file | origin | changes |
|---|---|---|
| `libgcc2.c` | GCC trunk at `bf279c4e1a` (1999-11-02), the revision just before the 2.9-ee-991111 snapshot | none |
| `longlong.h` | same revision | none |
| `fp-bit.c` | GCC 2.95.3 release | one, marked in place: `nan()` uses one shared `__thenan_df`, because every retail reference goes to 0x1597F0 |
| `include/` | ours | stand-ins for the build-tree headers (`tconfig.h` etc.) that libgcc2.c includes |

Sony's compiler calls soft-float helpers by their GOFAST names (`dpadd`,
`dpmul`, `dpcmp`, `litodp`, ...). `rac1.ld.sh` maps those names to the
fp-bit functions.

## Modules

| retail | module | function | status |
|---|---|---|---|
| 0x11DFE8 | `L_divdi3` | `__divdi3` | **exact**; its static `__clz_tab` goes into core_rdata at 0x152B18, see `tools/split_data_s.py` |
| 0x11E6D8 | `L_fixunsdfdi` | `__fixunsdfdi` | **exact** |
| 0x11E7C8 | `L_floatdidf` | `__floatdidf` | **exact** |
| 0x11E860 | `L_moddi3` | `__moddi3` | stub: 7/410 words, right size, retail frame 0x20 larger |
| 0x11EEC8 | `L_muldi3` | `__muldi3` | **exact** |
| 0x11EF28 | `L_udivdi3` | `__udivdi3` | stub: 12 bytes short, because retail keeps a 0x10 frame |
| 0x11F4F8 | `L_umoddi3` | `__umoddi3` | stub: 2/336 words, retail frame 0x20 larger |
| 0x11FA38 | `L_pack_df` | `__pack_d` | stub: differs from this fp-bit revision |
| 0x11FB68 | `L_unpack_df` | `__unpack_d` | stub: differs from this fp-bit revision |
| 0x11FC08 | `L_addsub_df` | `_fpadd_parts`, `__adddf3`, `__subdf3` | **exact** |
| 0x11FF08 | `L_mul_df` | `__muldf3` | **exact** |
| 0x1201B0 | `L_div_df` | `__divdf3` | **exact** |
| 0x120318 | `L_fpcmp_parts_df` | `__fpcmp_parts_d` | **exact** |
| 0x120430 | `L_compare_df` | `__cmpdf2` | **exact** |
| 0x120480 | `L_si_to_df` | `__floatsidf` | **exact** |
| 0x120538 | `L_df_to_si` | `__fixdfsi` | **exact** |
| 0x1205D0 | `L_df_to_usi` | `dptoul` | **exact** (needs `US_SOFTWARE_GOFAST`) |
| 0x120670 | `L_make_df` | `__make_dp` | **exact** |

The three remaining libgcc2 stubs share one residual. Retail has one more
addressable stack local in the inlined `__udivmoddi4` than this revision of
the source does. The next step is a slightly different `libgcc2.c` revision.

## Next to look at

- `L__main` (0x11DF10, stub `nonmatching_0011DF10.c`): `__main`
  (0x11DFC8) already matches byte for byte. It shares the module with
  `__do_global_ctors`, which differs here (retail has no `atexit` call and
  begins with an orphan epilogue fragment), so the module stays asm.
- `__extendsfdf2` (0x120778) matches from `fp-bit.c` (`-DFLOAT
  -DL_sf_to_df`). It sits past `unpack_f` (0x1206B0), which does not
  match yet.
