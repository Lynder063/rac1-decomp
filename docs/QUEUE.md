# Queue worker protocol

You match functions of Ratchet & Clank (PS2, PAL) byte for byte: C that
SN gcc 2.95.3 (`-O2 -G2`, EABI, MIPS R5900) compiles to retail's code. Your
prompt gives WAVE, ID, N and COUNT. This file is your whole instruction
set: do not read WORKER.md, LEVERS.md or other docs, and do not explore
the tree beyond what a packet names.

## Loop: claim COUNT functions at a time until N are handled

Run everything from the repository root.

1. `python3 tools/wave.py claim <WAVE> <ID> --count <COUNT>` prints a
   packet per function: what it calls and uses, its assembly, and matched
   C to start from. `QUEUE EMPTY`: stop.
2. An attempt is ONE message with two tool calls, in this order:
   - Write `build-sn/try/<func>/pK.c` (K = 0, 1, ...; a new file each time);
   - Bash `bash tools/docker/run.sh python tools/try_func.py <func> build-sn/try/<func>/pK.c --diff`

   With several claimed functions, put their attempts in the same message.
3. Not `EXACT`: say in one line which instructions differ, then change one
   thing. `COMPILE`: read `build-sn/try/<func>/log.txt`, fix it.
4. A function is handled when try_func says `EXACT`, or when you stop:
   - its budget is spent (try_func refuses further runs);
   - three different wordings compile to the same bytes (an allocator or
     scheduler tie that rewording will not move);
   - it hits a wall below.

   When you stop, append two or three lines to `build-sn/try/<func>/NOTES.md`:
   what the function does, where the difference is, what would unblock it.
   Stopping is a normal outcome. Write no RESULT.md: the runs are logged.
5. Claim again until N functions are handled or the claim prints
   `QUEUE EMPTY`. Do not stop earlier: finishing one claim is not the end.
6. Your final message is one line and nothing else:
   `{"id": "<ID>", "exact": ["func_..."], "stopped": ["func_..."], "idiom": "<25 words at most, or empty>"}`

## Rules

- Write only in `build-sn/try/<func>/`, only files you create. Never edit
  `src/`, `include/`, `config/`, `tools/` or `docs/`; never delete
  anything; never commit, build the game, start sub-agents or use the web.
- Compile only through try_func. No compiler runs or harnesses of your own.
- Plain C: no register pins, no inline assembly in a function, no barriers
  (`__asm__("" : ...)`, `do { } while (0)`), no `volatile` added only to
  pin an order, no read of a local that was never assigned. A match that
  needs one is not a match: stop instead. A function that reads a register
  it never sets, or branches outside itself, is a fragment: stop at once.
- Sources: work from the assembly and from what the packet gives you.
  Never use Sony SDK source, sample code or headers, or any leaked
  material, from memory either (CONTRIBUTING.md, "Sources"). If a function
  looks like SDK sample code, decode it from the assembly like any other.
- Matched C in a packet may call functions by readable names
  (`include/names.h` macros for the address names). Define and declare
  with the address name (`func_...`, `D_...`); in a body either works.
- Never write a level address as a number. Use the symbol the assembly
  names (`D_L05_001B24D4`), declared in the candidate.

## Candidate file

Extern declarations first, then the one function under its own name, with
one comment line above it saying what it does. Declare what the packet
lists as "not declared anywhere yet"; copy exactly the declarations it
gives for the rest (a second declaration with another type fails to
compile). No string literals: `extern char D_xxx[];`.

## Reading the assembly

- Arguments `$a0`-`$a3`, `$t0`-`$t3`; floats `$f12`, `$f13`, `$f14`...;
  results `$v0`, `$f0`. `$s0`-`$s7` are saved, `$gp` is 0x166D00.
- `func_XXXXXXXX` and `D_XXXXXXXX` are the resident executable;
  `func_LNN_...` and `D_LNN_...` belong to the level. A `%gp_rel` access
  is a small global (declare it with its real size); `lui` + `%lo` is any
  other global.
- A moby (game object) is a `char *`/struct pointer with fields at fixed
  offsets: state byte at 0x20, position vector at 0x10, its own data
  pointer at 0x78. Matched code in the packet shows the usual spellings.

## Codegen (verified on matched functions)

- `lq $2, 0(a)` then `sq $2, 0(b)`: `qcopy(b, a);` from `common.h`.
- The first temporary after a call is `$v0` when the callee returns a
  value and `$v1` when it does not: that decides a callee's return type.
  `sltiu` is an unsigned compare, `slti` a signed one. `lbu`/`lb`,
  `lhu`/`lh` give a field's signedness.
- Write stores in the target's order first. Where the compiler had a free
  choice, the source's last store tends to come out first: permute.
- A value loaded once and used twice is a local; a field loaded again at
  each use is re-read in the source (`moby[0x20]` written out twice).
- One shared `return` with the value set in each arm, or a `return` per
  arm: try the other when only the epilogue differs.
- A callee's argument register untouched since function entry is an
  argument passed straight on: keep the parameter order and types.
- An `addu` with the index first: `base + i * 4`. With the base first:
  index in its own local, or `base - (-(i * 4))`.
- `sltiu $2, $2, 3` after `addiu $2, $3, -5`: a range test, written
  `v >= 5 && v <= 7` (func_L00_0020DBB0).
- `movn`/`movz`: a default then one conditional assignment,
  `r = 0x7E; if (arg == 0) r = 0x68;` (func_L05_002559DC). Swap which
  value is the default to get the other instruction.
- A jump table in retail: a `switch` with one `case` label per value, even
  when several cases do the same thing; merged labels give a compare tree
  (func_L14_002F2880). Cases may skip a value.
- A global read as `lui` + `lw` in one register: declare it `MACRO_ADDR`
  (from `common.h`), under an alias if the file already declares the name:
  `extern int D_x_m __asm__("D_x") MACRO_ADDR;` (func_L01_00252E80).
- A variant of matched C ("differs only in a number" in the packet): copy
  it and change the constant, offset or callee the assembly shows.

## Walls: stop at once and name the wall in NOTES.md

- `sq $zero` (a 128-bit zero store), `cfc2`/`ctc2`, `$at` used as an
  ordinary register, trapping `add`/`addi`: the original was assembly or
  has no C form.
- More saved registers or a bigger frame than retail with the instructions
  otherwise right, or a repeated `lui` for one symbol: a per-function
  compiler flag. Note it; do not chase it.
