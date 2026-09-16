# libgcc

Retail links parts of GCC's runtime library, `libgcc.a`, into `core_text`.
Those functions were not written for the game. They are GCC's own sources,
built by Sony's EE toolchain, so they are rebuilt here from GCC's sources
rather than decompiled.

## fp-bit.c

`fp-bit.c` is GCC's soft-float library (here built as double, "dp-bit"),
**taken verbatim from GCC 2.95.3** (`gcc/config/fp-bit.c`, tag
`releases/gcc-2.95.3`) and licensed under the GPL v2 with the libgcc
linking exception stated in its own header. It carries exactly one
modification, marked in place: `nan()` refers to a single shared
`__thenan_df` object instead of a per-module static, because every retail
reference goes to the same address (0x1597F0).

Each `L_*` module is built as its own object, like the members of
`libgcc.a`. That is what reproduces retail's 8-byte alignment gaps
between modules.

| module | retail | function |
|---|---|---|
| `L_addsub_df` | 0x11FC08 | `_fpadd_parts`, `__adddf3`, `__subdf3` |
| `L_mul_df` | 0x11FF08 | `__muldf3` |
| `L_div_df` | 0x1201B0 | `__divdf3` |
| `L_fpcmp_parts_df` | 0x120318 | `__fpcmp_parts_d` |
| `L_compare_df` | 0x120430 | `__cmpdf2` |
| `L_si_to_df` | 0x120480 | `__floatsidf` |
| `L_df_to_si` | 0x120538 | `__fixdfsi` |
| `L_df_to_usi` | 0x1205D0 | `dptoul` (needs `US_SOFTWARE_GOFAST`) |
| `L_make_df` | 0x120670 | `__make_dp` |

## Compiler

These modules are built with **`2.9-ee-991111`**, not the game's GCC
2.95.3 (SN v1.14). The game's compiler emits the same instructions but
schedules the prologue and delay slots differently. For example it saves
`$ra` before `$s0` and puts a different instruction in the first `jal`'s
delay slot. That difference was on record as an unexplained residual
across this whole family. 2.9-ee reproduces all nine modules byte for
byte from the unmodified source, with no rewriters.

## Not yet matched

`pack_d` (0x11FA38) and `unpack_d` (0x11FB68) differ from 2.95.3's
revision. So do `unpack_f` (0x1206B0) and a few neighbours, which look
like a different fp-bit revision. They remain `INCLUDE_ASM` stubs in
`src/core_text.c`. `__extendsfdf2` (0x120778) already matches from this
source (`-DFLOAT -DL_sf_to_df`), but it sits past that unmatched gap, so
it is left for a later step.
