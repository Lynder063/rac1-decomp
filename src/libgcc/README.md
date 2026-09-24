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
| `libgcc2.c` | GCC trunk at `31cf01446d` (1999-09-09) | none |
| `gbl-ctors.h` | same revision | none |
| `longlong.h` | same revision (unchanged from 1999-06 to 1999-12-06) | none |
| `fp-bit.c` | GCC 2.95.3 release | two, marked in place: `nan()` uses one shared `__thenan_df`, because every retail reference goes to 0x1597F0 (trunk moved it to its own object on 1999-09-13); and `unpack_d`'s `NO_DENORMALS` test, backported from trunk `2672543458` (Cygnus, 2000-03-16), which Sony's tree already had |
| `include/` | ours | stand-ins for the build-tree headers (`tconfig.h` etc.) that libgcc2.c includes |

Why 1999-09-09: retail's `__do_global_ctors` never registers the
destructors, and that revision is the last one where the call goes
through `ON_EXIT`, which `gbl-ctors.h` leaves empty on a target without
`HAVE_ATEXIT`/`NEED_ATEXIT`; trunk made it an unconditional `atexit` on
1999-09-15. Every other module compiles identically from 1999-06 to
1999-11, so nothing else constrains the revision.

Sony's compiler calls soft-float helpers by their GOFAST names (`dpadd`,
`dpmul`, `dpcmp`, `litodp`, ...). `rac1.ld.sh` maps those names to the
fp-bit functions.

fp-bit is compiled with `-DFLOAT_BIT_ORDER_MISMATCH -DNO_DENORMALS`
(`FP_DEFS` in `Makefile.sn`), the way Sony's toolchain generated its
`dp-bit.c`/`fp-bit.c`: GCC's MIPS makefile fragments define
`FLOAT_BIT_ORDER_MISMATCH` for little-endian, and the EE FPU flushes
denormals. Only `pack_d`/`unpack_d` depend on either.

## Sony's libgcc.a is the reference

Every EE compiler directory in both toolchain mirrors ships the same
prebuilt `libgcc.a`, and it is what retail linked: `_divdi3.o`,
`_moddi3.o`, `_udivdi3.o`, `_umoddi3.o`, `__main.o`'s `__do_global_ctors`
and `__main`, `_pure.o`, and every retail function of `dp-bit.o` match
retail byte for byte with relocated fields masked, as do `__unpack_f` and
`fptodp` from `fp-bit.o`. So a module can be checked against Sony's
object directly, without a link:

```
python tools/libgcc_ref.py retail                  # which archive function matches which retail address
python tools/libgcc_ref.py diff build-sn/libgcc/fp_pack_df.o __pack_d
```

The archive's `dp-bit.o` and `fp-bit.o` are single objects, while retail
has the fine-grained layout (no `__negdf2` between `dptoul` and
`__make_dp`), so retail's libgcc is a fine-grained build of the same
sources with the same compiler. Its code is identical function by
function.

## Modules

| retail | module | function | status |
|---|---|---|---|
| 0x11DF10 | `L__main` | (`__do_global_dtors`'s surviving delay slot), `__do_global_ctors`, `__main` | **exact**; see "dead-stripped" below |
| 0x11DFE8 | `L_divdi3` | `__divdi3` | **exact**; its static `__clz_tab` goes into core_rdata at 0x152B18, see `tools/split_data_s.py` |
| 0x11E6D8 | `L_fixunsdfdi` | `__fixunsdfdi` | **exact** |
| 0x11E7C8 | `L_floatdidf` | `__floatdidf` | **exact** |
| 0x11E860 | `L_moddi3` | `__moddi3` | stub: 7/410 words, right size, retail frame 0x20 larger (see below) |
| 0x11EEC8 | `L_muldi3` | `__muldi3` | **exact** |
| 0x11EF28 | `L_udivdi3` | `__udivdi3` | stub: 12 bytes short, because retail keeps a 0x10 frame (see below) |
| 0x11F4F8 | `L_umoddi3` | `__umoddi3` | stub: 2/336 words, retail frame 0x20 larger (see below) |
| 0x11FA38 | `L_pack_df` | `__pack_d` | **exact** (needs `FLOAT_BIT_ORDER_MISMATCH`) |
| 0x11FB68 | `L_unpack_df` | `__unpack_d` | **exact** (needs the `NO_DENORMALS` backport) |
| 0x11FC08 | `L_addsub_df` | `_fpadd_parts`, `__adddf3`, `__subdf3` | **exact** |
| 0x11FF08 | `L_mul_df` | `__muldf3` | **exact** |
| 0x1201B0 | `L_div_df` | `__divdf3` | **exact** |
| 0x120318 | `L_fpcmp_parts_df` | `__fpcmp_parts_d` | **exact** |
| 0x120430 | `L_compare_df` | `__cmpdf2` | **exact** |
| 0x120480 | `L_si_to_df` | `__floatsidf` | **exact** |
| 0x120538 | `L_df_to_si` | `__fixdfsi` | **exact** |
| 0x1205D0 | `L_df_to_usi` | `dptoul` | **exact** (needs `US_SOFTWARE_GOFAST`) |
| 0x120670 | `L_make_df` | `__make_dp` | **exact** |

The three remaining libgcc2 stubs share one residual, and it is not the
source. Against Sony's objects, ours compile to the same instructions
except that Sony's reserve stack no instruction touches: `__udivdi3` has a
0x10 frame where ours has none, `__umoddi3` 0x30 where ours has 0x10,
`__moddi3` 0x40 where ours has 0x20; `__divdi3`, built from the same
inline `__udivmoddi4`, has no extra space in either. Measured on
2026-09-23:

- every `libgcc2.c` revision from 1999-06-11 to 1999-11-23 (15 of them,
  each with its own `longlong.h`) compiles these modules identically,
  and the December 1999 `longlong.h` rewrite makes them worse;
- no flag moves the frame (`-g`/`-g1`/`-g2`/`-g3`/`-ggdb`, `-O1`/`-O3`/
  `-Os`, `-fexceptions`, `-G0`/`-G8`, and 20 `-f` options were tried),
  apart from `-fno-inline`, which changes the code entirely.

Sony's objects were built on Linux (their debug info names
`/usr/local/sce/ee/gcc/build/gcc/` and `../../src/gcc/libgcc2.c`), while
the mirrors hold the Windows `2.9-ee-991111b/r4` `cc1`. Dead stack slots
with identical code point at that build difference. These stay stubs
unless a matching Linux `cc1` turns up.

## L__main was dead-stripped by retail's linker

Retail's L__main object is Sony's `__main.o` with the first 80 bytes cut
off: `__do_global_dtors` is gone except its last word, the `addiu
$sp,$sp,0x20` in the delay slot of its `jr $ra`, followed by the alignment
`nop`, then `__do_global_ctors` and `__main` intact. Nothing references
`__do_global_dtors` here (the constructors do not register it), so the
linker dropped it, and dropped it one instruction short.
`tools/strip_dead.py` does the same to the compiler's output, and names
the surviving word `func_0011DF10` the way splat sees it. See
docs/DECOMP_PROGRESS.md for the rest of the image.

The module's statics follow retail: `__main`'s `initialized` is placed at
retail's D_001597EC inside core_bss, and the stripped function's static
pointer (its `.data`) is discarded, since retail's copy is in the data
blob and nothing references it.

## Next to look at
- The object at 0x1206A8 (`src/core/001206A8.c`) holds `__unpack_f`
  (0x1206B0) and `fptodp`/`__extendsfdf2` (0x120778), both exact against
  Sony's `fp-bit.o`: `__unpack_f` now compiles exact from `fp-bit.c`
  (`-DFLOAT -DL_unpack_sf` plus `FP_DEFS`), and `__extendsfdf2` from
  `-DFLOAT -DL_sf_to_df`. The object's other three functions (0x120740,
  0x1207B8, 0x120858) match nothing in the archive, so the object is not
  a plain fp-bit module, and it is still built as game code.
