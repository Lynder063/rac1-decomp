# Matching cheat sheet

The short version of `docs/DECOMP_PROGRESS.md`, for whoever is turning
assembly into matching C. Read this instead; go to the long file only
for a lever named here.

## Commands

Everything runs from the repo root, inside the toolchain container:

```
bash tools/docker/run.sh python tools/try_func.py func_X c1.c [c2.c ...] [--diff]
```

It puts each candidate in place of `func_X` (a stub or existing C) in a
scratch copy of its file, compiles it the way the build does and compares
with retail. Verdicts: `EXACT`, `BYTES n/size` (same size, n bytes off),
`SIZE` (wrong size: never keep), `COMPILE` (see `build-sn/try/func_X/log.txt`).

- Retail assembly: `asm/nonmatchings/{text,core_text}/func_X.s`.
- Strings: `grep -n D_XXXXXXXX -A2 asm/data/*.s` (printf is `func_001E9730`).
- `tools/compiler_sweep.py FILE.c`: a core file compiled whole under both compilers.
- RTL dumps: add `-da` to the compile (see `build-sn/try/func_0020D6D0/dump.sh`).

Registers: `$4`-`$11` = arguments (EABI), `$2`/`$3` = v0/v1, `$16`-`$23` =
saved, `$29` = sp, `$31` = ra, `$28` = gp (0x166D00). Float arguments
go in `$f12`, `$f13`, `$f14`... `long` is 64-bit, `long long` 128-bit.

## Rules

- Write only in `build-sn/try/`. Never touch `src/`, `include/`, `config/`,
  `tools/`, `docs/`, never build or commit; others work in the tree.
- Never redeclare a symbol with another type. Use a cast or an alias:
  `extern int f_i(int) __asm__("func_...");`. Watch declarations later in
  the file too.
- Define the function under its own name. No string literals (declare
  `extern char D_xxx[];`).
- Read the note above a stub, but don't trust it: many were wrong.

## The build already does these, so never write them in C

Short-loop nop padding, the nop between an FP compare and `bc1`, the nop
after an `mtc1` read next, 64-bit `dli` sequences, tail calls in game code,
a final truncation's `dsra` in the return slot, jump tables, loop alignment.
Post-endlabel nops in retail (`nop` lines after `endlabel`) must be emitted
explicitly: `__asm__(".section .text\n\tnop\n\tnop\n");` after the function.

## Two compilers

- Game code (`src/game/`) and 989snd: SN gcc 2.95.3.
- Sony SDK code (objects marked `ee29` in `config/core_text.objects`):
  Sony's 2.9-ee. It tail-calls a void function ending in a call but never
  `return f(...)`, has strict aliasing on, and pads short loops itself.
  Library code often matches with the library's own source (newlib).
  Sony's archives in `toolchain/sn-prodg-24/local/sce/ee/lib/` match retail
  and give real names.

## Levers, most productive first

1. **Callee signatures.** `$v0` vs `$v1` for the first temporary after a
   call shows whether the callee returns a value; an argument register
   untouched up to a call is being passed on; a callee's return type also
   reorders the caller. Fix with an alias.
2. **`MACRO_ADDR`** (`include/common.h`) on a global that retail loads
   `lui`+`lw` in one register; in a delay slot it becomes `$gp`-relative.
   `NOT_SDA` for globals that must not use `$gp`.
3. **Statement order.** The scheduler's ties go to the source's last store
   first; a value stored twice has its first store last. In a function
   with no branches, order moves registers: try the permutations.
4. **Copies that survive.** Read a value twice (test, then assign);
   `n = x++;`; re-read a global at each use; a `static inline` accessor
   per read; assign a pointer in the loop condition.
5. **Return shape.** One return with the value set per arm, or
   `if (x) return 1;` per arm with one shared `return 0;`. Failure path last.
6. **Memory shape.** Structs, not byte offsets (a struct member can't alias
   a scalar global, so it can move above one); one `char *` local per block
   reading a global; scaled indices in their own locals (base-first `addu`).
7. **`volatile`** keeps an access out of delay slots and keeps store order;
   make only the fields retail re-reads volatile.
8. **Siblings.** Find a matched function of the same shape in the file and
   copy it first.

## What to hand back

Per function, `build-sn/try/func_X/RESULT.md`: line 1 the verdict, line 2
the candidate file, then a few lines on what it does and which lever
mattered. Put a short comment above the definition in the candidate:
what the function does and, if needed, why the C is shaped that way. One
line per finished function in your batch's `MANIFEST`:
`func_X build-sn/try/func_X/cN.c`.
