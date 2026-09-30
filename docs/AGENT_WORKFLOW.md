# Agent workflow

How matching runs when models do it: one lead model plans waves, launches
cheap workers, reviews what they match and lands it, and a strict tool
decides what counts as a match. The goal is the most matched bytes per
token. The setup follows
[Thief3-Decomp's tiered workflow](https://github.com/Veradictus/Thief3-Decomp)
and every setting below was measured here (2026-09-30).

[WORKFLOW.md](WORKFLOW.md) covers the build and the manual loop,
[QUEUE.md](QUEUE.md) is the workers' protocol, [OVERLAYS.md](OVERLAYS.md)
the level-code catalogue the waves draw from.

## At a glance

| Role | Model | Does |
|---|---|---|
| Lead | Opus 5.5 | plans, launches, refills, reviews, lands, commits; matches nothing itself |
| Worker | Sonnet 5.5 (`model: sonnet`) | takes 8 functions from the wave's queue, 2 at a time, up to 10 runs each |
| (none) | Haiku 4.5 | no tier: see [Why Sonnet only](#why-sonnet-only) |
| Clone tool | no model | copies matched C onto variants of the same function |

- At most 8 workers at once (2 or 3 on a small plan: the loop is the same,
  it takes longer).
- A worker's whole prompt is one line:

  ```
  Read docs/QUEUE.md and follow it exactly. WAVE=q5 ID=k03 N=8 COUNT=2. Keep claiming until you have handled 8 functions or the claim prints QUEUE EMPTY; do not stop after your first claim.
  ```

  `WAVE` is the wave's name, `ID` the worker's id (never reused within a
  wave), `N` how many functions it handles, `COUNT` how many it claims at
  a time.

## The pieces

| Piece | What it is |
|---|---|
| `tools/wave.py plan NAME --queue --overlay --family` | picks the wave's functions and writes each one's dossier and run budget |
| `tools/wave.py claim NAME ID` | a worker's call: locks the next functions and prints their packets |
| `tools/try_func.py` | compiles one candidate in a scratch copy of its file and compares it with retail |
| `tools/wave.py status NAME`, `tokens NAME` | verdicts from the run logs; tokens per worker and per match |
| `tools/wave.py land NAME --batch` | applies every exact candidate and re-checks it in its file |
| `tools/overlay_variants.py clone` | matches variants of matched functions with no model |
| `.claude/agents/match-worker.md` | the sub-agent type: Read, Write, Edit, Grep, Glob, Bash; Sonnet by default |
| `docs/QUEUE.md` | the workers' whole instruction set, under 2K tokens |

The gate is `try_func`. For level code its `EXACT` is strict: the
candidate is linked at the function's address in its level and every byte
and relocation is compared ([OVERLAYS.md](OVERLAYS.md)). Nothing a worker
says counts; only what `try_func` logged.

## The lead's loop

1. **Prepare.** From a clean tree:

   ```
   bash tools/docker/run.sh python tools/overlay_variants.py clone
   python3 tools/wave.py plan q6 --queue --overlay --family --count 64 --min-size 32 --max-size 600 --budget 10
   ```

   `clone` first, so variants of already matched functions never reach a
   worker. `plan` skips functions that are matched, were tried by an
   earlier wave, are fragments, or hit a known wall
   (`tools/rank_candidates.py`).
2. **Launch** up to 8 workers with the Agent tool (`subagent_type:
   match-worker`, `model: sonnet`, in the background), all in one message,
   each with its own `ID`.
3. **Refill.** A notification arrives when a worker ends. If
   `wave.py status` still shows unclaimed functions, start another worker
   with a new `ID`. Workers sometimes stop after one claim, whatever the
   protocol says; the prompt's last sentence and the refill cover it.
4. **Land** when no worker is running:

   ```
   python3 tools/wave.py land q6 --batch [--reject func_X ...]
   ```

   It refuses candidates with banned constructs, applies each exact one,
   and re-checks it in its real file. Landing needs `src/` and `progress/`
   clean.
5. **Review** the diff before committing. Reject, and revert to the stub:
   - a read of a local that was never assigned (it reproduces a register
     left by earlier code: the entry is a fragment);
   - register pins, inline assembly, barriers, `volatile` added to pin an
     order (`tools/integrate.py` refuses the first three);
   - anything that looks taken from Sony SDK source or samples
     (CONTRIBUTING.md, "Sources").

   The `extern short D_x;` read as `*(int *)&D_x` is not a hack: it is
   this project's way to get a `$gp`-relative access at `-G2`
   (`include/common.h`).
6. **Clone and name.**

   ```
   bash tools/docker/run.sh python tools/overlay_variants.py clone
   python3 tools/names.py apply
   ```

   Every new match can bring its variants; `names.py apply` writes the
   readable names into the new bodies ([NAMES.md](NAMES.md)).
7. **Report and commit.** `bash tools/docker/run.sh python
   tools/gen_progress_report.py --no-build` regenerates the report (about
   20 minutes: it rebuilds and re-checks every file with C), then
   `python3 tools/gen_progress_report.py --check`. One commit per wave:
   `feat(overlays): N matches from wave q6`. Commit only; the maintainer
   pushes.
8. **Feed back.** Add an idiom to QUEUE.md only when a landed function
   shows it. Fix what the wave tripped over (see
   [What went wrong](#what-went-wrong-and-what-fixed-it)) before the next
   one.

## What a worker does

QUEUE.md in short:

1. `wave.py claim` prints a packet per function: what it calls and uses,
   its assembly, and matched C to start from (the function it is a variant
   of, its nearest relative, short matched functions of its file).
2. One attempt is one message: write `build-sn/try/<func>/pK.c`, run
   `try_func ... --diff`. Attempts for both claimed functions go in the
   same message.
3. It stops a function at `EXACT`, when the budget is spent, when three
   wordings compile to the same bytes, or on a wall, and then writes two or
   three lines in `NOTES.md`.
4. It claims again until `N` functions are handled.
5. Its final message is one JSON line.

Why it is shaped this way:

- **Several functions per worker.** Each worker pays its startup (system
  prompt, protocol) once. The harness counted about 81K tokens for a
  worker handling six small functions, where a one-function worker of the
  earlier waves used about 112K for one.
- **One short protocol, read once.** It replaces WORKER.md and LEVERS.md
  for workers. The lead's output is the most expensive text in the system,
  so the prompt is a line of parameters.
- **The packet comes with the claim.** No searching the tree, no separate
  reads of the dossier and the assembly.
- **No RESULT.md.** `try_func` logs every run; `status`, `tokens` and
  `land` read that log.
- **A run budget**, enforced by `try_func`: matches come early, and a miss
  otherwise spends tokens to the end.

## Picking functions: family order

`--family` orders the pool for reuse ([OVERLAYS.md](OVERLAYS.md),
"Relatives" and "Variants"):

1. functions with a matched relative or variant parent, most similar
   first: their packet carries that C, and the work is a port;
2. one function, the smallest, of each family nobody has matched, largest
   family first: each match opens the most ports;
3. the rest, common code in all 19 levels first, smaller first.

| Wave | Pool | Functions | Exact | Input tokens per match |
|---|---|---|---|---|
| q2 | leftover common code, 97-300 bytes, no family order | 12 | 3 (336 bytes) | 1.61M |
| q3 | `--family`, 64-500 bytes | 12 | 9 landed (1,236 bytes), 1 rejected | 157K |
| q4 | `--family`, 32-600 bytes | 56 | 34 (11,128 bytes) | 1.15M |

Input tokens include cache reads, as `wave.py tokens` counts them. q4's
functions average 327 bytes against q3's 137, and a long function means a
long conversation re-read at every run, so tokens per match grow faster
than size; per matched byte q4 cost about 3,500 input tokens.

Matching `func_L01_00252E80` in q3 brought 17 variants with it through
`clone`. Across the first day the clone tool matched 37 functions with no
model.

## Why Sonnet only

Haiku against Sonnet on one queue of 32 functions of 8 to 92 bytes,
claims interleaved so both saw the same mix (wave q1):

| Model | Handled | Exact | Input tokens per match |
|---|---|---|---|
| Haiku 4.5 | 15 | 4 | 1.02M |
| Sonnet 5.5 | 17 | 4 | 214K |

- Haiku used almost five times Sonnet's tokens per match, more than its
  price makes up for.
- About half of that queue was unmatchable fragments. Sonnet recognised
  one and stopped without a run; Haiku spent its runs on it.
- Thief3's Haiku tier works because its small functions are whole
  functions of a few shapes. Here the small entries were mostly fragments,
  and what is left to match is large: 686 level functions over 1 KB hold
  three quarters of the remaining level code.

Measure again if the pool changes (the fragment filter below removes most
of what Haiku wasted runs on), with the same method: one queue, half the
workers on each model, `wave.py tokens`.

## Matches without a model

The cheapest match is the one no worker makes.

- **Variants** ([OVERLAYS.md](OVERLAYS.md#variants)): 137 catalogued
  functions differ from another only in a constant, a float or a struct
  offset. `overlay_variants.py clone` takes the parent's C, renames the
  function and the symbols its assembly names differently, replaces the
  numbers that differ, and keeps the result when `try_func` says `EXACT`.
- **Identical copies** need nothing: the catalogue gives every copy of a
  function across the levels one name, so one definition covers them all.

## Trust the records, not the reports

- A worker's final message is a claim. `build-sn/try/<func>/runs.log` is
  the record, and `land` re-checks each candidate in its file.
- `tokens` and `status` read a wave's own log even after a later wave
  retried the function.
- Workers' `idiom` notes are leads. They enter QUEUE.md only with a landed
  function that shows them.
- A worker's blocker note can be wrong. The ones that were right named a
  file that failed to assemble, or a fragment.

## What went wrong, and what fixed it

| Problem | Fix |
|---|---|
| Workers stopped after one claim | the prompt's last sentence; the lead refills with a new `ID` |
| Small catalogue entries were fragments of larger functions | `plan` skips entries that branch outside themselves (245); merging them back in the catalogue is still open |
| A match read an unassigned local to reproduce a leftover register | rejected at review; QUEUE.md forbids it |
| A stub branched into a function in another file, so nothing in its file assembled and four functions were lost | `overlay_asm.py --fix-branches` writes such branches as words |
| The catalogue merged functions that differ in a constant, so matched C called the wrong copy | the catalogue compares constants now (`identity()` in `tools/overlays.py`) |
| A later wave's match was counted for an earlier worker | `wave.py` reads each wave's own run log |
| A tool-testing agent deleted match history in `build-sn/try/` | workers write only files they create; nothing under `build-sn/try/` or `build-sn/waves/` is scratch |

## Rules every brief carries

They are in QUEUE.md, so the one-line prompt is enough:

- plain C: no register pins, inline assembly, barriers
  ([LLM_DECOMP_INSTRUCTIONS.md](LLM_DECOMP_INSTRUCTIONS.md));
- write only in `build-sn/try/<func>/`, never delete, never commit, no
  sub-agents, no web;
- compile only through `try_func`;
- never Sony SDK source, samples or headers, or leaked material
  (CONTRIBUTING.md, "Sources");
- never a level address as a number: the symbol the assembly names.

## Running it on a smaller plan

With room for 2 or 3 workers the loop is unchanged: plan a wave of 16 to
24 functions, keep 2 or 3 workers busy, refill as they end, land once.
Keep `N=8`, `COUNT=2`. The wave takes longer; the cost per match is the
same.

## Executable functions

The queue tools accept the executable's functions too (`plan` without
`--overlay`), but no queue wave has been run on them yet. Two things
differ there: `try_func` masks relocations, so an `EXACT` still has to
pass the full build, and `land` (without `--batch`) runs that build per
function. What is left of the executable is mostly large functions
without relatives, so level code is where the waves go.
