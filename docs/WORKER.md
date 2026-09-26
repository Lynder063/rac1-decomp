# Worker guide

For an agent working on one function. `tools/wave.py` gives you the
function's name, your role and your budget. Everything else is here, in
`build-sn/try/<func>/CONTEXT.md` and in [LEVERS.md](LEVERS.md).

## Rules for every role

- Do the work yourself. Don't start sub-agents or install software.
- Plain C only, as upstream requires
  ([LLM_DECOMP_INSTRUCTIONS.md](LLM_DECOMP_INSTRUCTIONS.md)): no register
  pins, no inline assembly inside a function, no artificial barriers
  (`__asm__("" : ...)`, `do { } while (0)`). A match that needs one isn't a
  match: report the best plain-C candidate instead. Prefer real structs to
  raw offset arithmetic.
- Write only inside `build-sn/try/<func>/`. Never edit `src/`, `include/`,
  `config/`, `tools/` or `docs/`, never run the full build, never commit.
- Every `try_func` run counts against your budget, `--diff` reruns
  included. It prints `run k of N` and refuses once the budget is spent.
- Finish by writing two files in `build-sn/try/<func>/`:
  - `RESULT.md`, exactly two lines: the verdict (`EXACT`, `BYTES n/size`,
    `SIZE ours X / retail Y` or `COMPILE`), then the best candidate's path.
  - `NOTES.md`: add a section for this round below any earlier ones, never
    deleting them. Say what the function does, what you tried, what
    mattered and where any remaining difference is.
- End with a one-line reply: `<verdict> | <candidate path> | <runs used>`.

## Matching

1. Read `CONTEXT.md`. It gives the function's source file, compiler, the
   declarations of everything it calls and uses, its callers' prototypes,
   matched functions of a similar shape in the same file, and earlier
   attempts. If there were earlier attempts, read their notes and start
   from the best candidate; don't repeat what failed.
2. Read [LEVERS.md](LEVERS.md).
3. Start from the best earlier candidate, or else the original source when
   `CONTEXT.md` names one, or else `m2c.c`, or else
   `bash tools/docker/run.sh python tools/m2c.py <func>`.
4. Write each candidate as `build-sn/try/<func>/pN.c`, taking the next free
   number: the function plus only the externs it needs. Copy declarations
   from `CONTEXT.md` exactly; a second declaration with another type fails.
5. Test with
   `bash tools/docker/run.sh python tools/try_func.py <func> build-sn/try/<func>/pN.c`,
   adding `--diff` to see which instructions differ.
6. Stop at `EXACT` or when the budget runs out.

## First compile

Only make the m2c sketch compile; don't try to match.

1. Read `CONTEXT.md`.
2. Copy `m2c.c` to `p0.c` and fix it until `try_func` gives any verdict
   other than `COMPILE`:
   - replace m2c's `?` and unknown types with `int`, `float` or `void *`,
     as the assembly uses them;
   - delete m2c's own `extern` lines and use the declarations in
     `CONTEXT.md` instead;
   - keep m2c's structure; don't rewrite the logic.
3. `RESULT.md`: the verdict and `p0.c`. `NOTES.md`: one line on what you
   changed.
