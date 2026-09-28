#!/usr/bin/env python3
"""
Plans, tracks and integrates waves of worker agents (docs/WORKER.md).

  python3 tools/wave.py plan NAME [--role match|compile] [--count N]
                         [--budget N] [--near | --fresh | --overlay] [func_X ...]
      Picks functions (the ones named, or from tools/triage.py), writes each
      one's CONTEXT.md and m2c sketch, starts a fresh BUDGET of try_func
      runs, and prints each worker's one-line prompt.
  python3 tools/wave.py status NAME
      One line per function: verdict, runs used, best candidate.
  python3 tools/wave.py integrate NAME
      Applies the EXACT results through tools/integrate.py (in Docker).
      Run the full build afterwards, as always.
  python3 tools/wave.py land NAME
      For each EXACT result, one at a time: integrate it, run the full build,
      check it added one exact function and no size mismatch, regenerate the
      progress report and commit that function alone. A failure restores the
      source file and moves on. Needs src/ and progress/ clean.

--near picks earlier attempts that came close (BYTES within 40, a size
within 8 bytes, or a near-miss in src/); --fresh, the default, picks
functions nobody has tried, smallest first. Waves are recorded in
build-sn/waves/NAME.json.

Overlay functions (func_LNN_XXXXXXXX, docs/OVERLAYS.md) are a separate
pool: named explicitly (func_L00_... on the command line, same as any
other function) or picked with --overlay, which orders the catalogue's
shared-and-level functions the way docs/OVERLAYS.md's "Relatives" section
recommends -- shared code present in all 19 levels first, smaller first --
after screening asm/overlays/<name>.s through rank_candidates' blocked
patterns and skipping anything already matched. A wave is either all
overlay names or all executable ones, never mixed. `land` treats an
overlay wave differently (see land_overlay()): no full build (the
executable does not link src/overlays/), and progress/report.json does
not count overlay functions yet -- see the TODO where it's called.
"""
import argparse
import json
import re
import subprocess
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))

import dossier  # noqa: E402
import integrate as checker  # noqa: E402
import rank_candidates  # noqa: E402
import triage  # noqa: E402

WAVES = ROOT / "build-sn/waves"
TRY = ROOT / "build-sn/try"
SECTION = {"match": "Matching", "compile": "First compile"}
CLOSE_BYTES, CLOSE_SIZE = 40, 8
ALL_LEVELS = 19  # docs/OVERLAYS.md: how many levels there are in total

OVERLAY_NAME = re.compile(r"^func_L\d{2}_[0-9A-Fa-f]{8}$")
OVERLAY_STUB_LINE = re.compile(r"^\s*INCLUDE_ASM\([^)]*\bfunc_L\d{2}_[0-9A-Fa-f]{8}\)")
OVERLAY_DEF_LINE = re.compile(r"^(?!extern\b)[A-Za-z_].*?\bfunc_L\d{2}_[0-9A-Fa-f]{8}\s*\(")
# The same trailing-comment convention exe stubs use for a known real name
# (tools/triage.py's NAME_COMMENT); overlay stubs don't have one yet, but a
# worker or a future generator may leave one the same way.
OVERLAY_NAME_COMMENT = re.compile(
    r"INCLUDE_ASM\([^)]*\b(func_L\d{2}_[0-9A-Fa-f]{8})\);[^\S\n]*/\*[^\S\n]*([A-Za-z_]\w*)[^\S\n]*(?:\(|\*/)")


def is_overlay_wave(names: list[str]) -> bool:
    """True if NAMES are all overlay functions, False if all executable;
    exits if it's a mix (docs/OVERLAYS.md functions and exe functions are
    matched, integrated and landed differently)."""
    overlay = [bool(OVERLAY_NAME.match(n)) for n in names]
    if any(overlay) and not all(overlay):
        sys.exit("a wave must be all overlay functions or all executable functions, not both")
    return bool(names) and overlay[0]


def closeness(row: dict) -> int | None:
    """How far an earlier attempt is from exact, in bytes; None if not close."""
    if row["status"] == "near-miss":
        return int(row["size"] * (100 - row["match_percent"]) / 100)
    verdict = row["last_attempt"]
    m = re.match(r"BYTES (\d+)/", verdict)
    if m and int(m.group(1)) <= CLOSE_BYTES:
        return int(m.group(1))
    m = re.search(r"SIZE \(?(?:ours )?(\d+)(?: / retail |/)(\d+)", verdict)
    if m and abs(int(m.group(1)) - int(m.group(2))) <= CLOSE_SIZE:
        return abs(int(m.group(1)) - int(m.group(2)))
    return None


def choose(args) -> list[str]:
    if args.funcs:
        return args.funcs
    if getattr(args, "overlay", False):
        return choose_overlay(args)
    rows = [r for r in triage.triage() if r["route"] != "blocked"]
    if args.near:
        close = [(closeness(r), r["name"]) for r in rows]
        return [name for d, name in sorted(c for c in close if c[0] is not None)][:args.count]
    fresh = [r for r in rows if not r["last_attempt"] and "attempted before" not in r["reason"]]
    return [r["name"] for r in sorted(fresh, key=lambda r: r["size"])][:args.count]


def choose_overlay(args) -> list[str]:
    """The default overlay pool (docs/OVERLAYS.md, "Relatives"): shared
    functions present in every level first, smaller first within that,
    after screening each one's asm/overlays/<name>.s through
    rank_candidates' blocked-pattern triage and skipping anything already
    matched (kind "exe" is executable code under another name -- it has no
    src/overlays file of its own to land into) or without an asm file yet
    (docs/OVERLAYS.md's jump-table functions, or asm/overlays regenerating)."""
    catalogue = dossier.load_overlay_catalogue()
    findex = dossier.overlay_file_index()
    rows = []
    for name, (kind, size, levels_count, _places) in catalogue.items():
        if kind == "exe":
            continue
        entry = findex.get(name)
        if entry is None:
            continue
        _path, fns = entry
        is_c = next((c for n, c in fns if n == name), False)
        if is_c:
            continue
        asm = ROOT / "asm/overlays" / f"{name}.s"
        if not asm.exists():
            continue
        verdict, _cat, _detail = rank_candidates.classify(name, asm.read_text(errors="replace"), "text", size)
        if verdict == "blocked":
            continue
        rank = 0 if (kind == "shared" and levels_count == ALL_LEVELS) else 1
        rows.append((rank, size, name))
    rows.sort()
    return [name for _, _, name in rows][:args.count]


def plan(args) -> None:
    names = choose(args)
    if not names:
        sys.exit("nothing to plan")
    overlay = is_overlay_wave(names)
    if overlay and args.role == "compile":
        sys.exit("no m2c sketch exists for overlay functions yet, so there is nothing for a "
                  "compile worker to start from (docs/OVERLAYS.md); use --role match")
    stamp = time.strftime("%Y%m%d-%H%M%S")
    for name in names:
        work = TRY / name
        work.mkdir(parents=True, exist_ok=True)
        if (work / "runs.log").exists():  # A fresh budget for this round.
            (work / "runs.log").rename(work / f"runs.{stamp}.log")
        (work / "BUDGET").write_text(f"{args.budget}\n")
    if overlay:
        dossier.overlay_write(names)
    else:
        needs_sketch = [n for n in names if not (TRY / n / "m2c.c").exists()]
        broken = [n for n in names if n not in needs_sketch
                  and "{" not in (TRY / n / "m2c.c").read_text(errors="replace")]
        if args.role == "compile" and broken:
            sys.exit(f"no m2c sketch for {', '.join(broken)}: a compile worker needs one")
        if needs_sketch:
            dossier.sketches(needs_sketch)
        dossier.write(names)
    WAVES.mkdir(parents=True, exist_ok=True)
    record = {"name": args.name, "role": args.role, "budget": args.budget, "created": stamp,
              "started": time.time(), "functions": names, "pool": "overlay" if overlay else "exe"}
    (WAVES / f"{args.name}.json").write_text(json.dumps(record, indent=2) + "\n")
    print(f"\nwave {args.name}: {len(names)} {args.role} workers, budget {args.budget} runs each\n")
    for name in names:
        print(prompt(name, args.role, args.budget))


def prompt(name: str, role: str, budget: int) -> str:
    return (f"You are a {role} worker on {name} in the repository /Users/flavy/Projects/rac1-decomp "
            f"(run every command from there). Follow docs/WORKER.md, the rules and the "
            f"\"{SECTION[role]}\" section; your context is build-sn/try/{name}/CONTEXT.md and "
            f"your budget is {budget} try_func runs. Work alone: never use the Agent, "
            f"WebSearch or WebFetch tools.")


def load(name: str) -> dict:
    path = WAVES / f"{name}.json"
    if not path.exists():
        sys.exit(f"no wave {name} in {WAVES.relative_to(ROOT)}")
    return json.loads(path.read_text())


def results(wave: dict) -> list[tuple[str, str, str, int]]:
    """Verdicts written during this wave; an older RESULT.md means pending."""
    rows = []
    for name in wave["functions"]:
        work = TRY / name
        path = work / "RESULT.md"
        fresh = path.exists() and path.stat().st_mtime >= wave.get("started", 0)
        result = path.read_text(errors="replace").strip().splitlines() if fresh else []
        runs = len((work / "runs.log").read_text().splitlines()) if (work / "runs.log").exists() else 0
        candidate = result[1].strip().strip("`").split()[0] if len(result) > 1 and result[1].strip() else ""
        if candidate and not (ROOT / candidate).exists() and (work / Path(candidate).name).exists():
            candidate = str((work / Path(candidate).name).relative_to(ROOT))  # A bare "p6.c".
        rows.append((name, result[0].strip() if result else "(no result yet)", candidate, runs))
    return rows


def status(args) -> None:
    wave = load(args.name)
    rows = results(wave)
    print(f"wave {wave['name']}: {wave['role']}, budget {wave['budget']}, pool {wave.get('pool', 'exe')}")
    for name, verdict, candidate, runs in rows:
        print(f"  {name}  {verdict[:40]:40}  runs {runs:>2}/{wave['budget']}  {candidate}")
    exact = sum(v.startswith("EXACT") for _, v, _, _ in rows)
    pending = sum(v == "(no result yet)" for _, v, _, _ in rows)
    print(f"{exact} exact, {len(rows) - exact - pending} not exact, {pending} pending")


def integrate(args) -> None:
    wave = load(args.name)
    exact = [(n, c) for n, v, c, _ in results(wave) if v.startswith("EXACT") and c]
    if not exact:
        sys.exit("no EXACT results to integrate")
    manifest = WAVES / f"{args.name}.MANIFEST"
    manifest.write_text("".join(f"{n} {c}\n" for n, c in exact))
    subprocess.run(["bash", "tools/docker/run.sh", "python", "tools/integrate.py",
                    str(manifest.relative_to(ROOT)), "--apply"], cwd=ROOT, check=True)
    print("\nNext: bash tools/docker/run.sh bash tools/build_sn.sh, then the progress report and a commit.")


TRAILER = "Co-Authored-By: Claude Opus 5.5 (1M context) <noreply@anthropic.com>"


def docker(*command: str) -> subprocess.CompletedProcess:
    return subprocess.run(["bash", "tools/docker/run.sh", *command], cwd=ROOT,
                          capture_output=True, text=True)


def exact_in_report() -> set[str]:
    report = json.loads((ROOT / "progress/report.json").read_text())
    return {f["name"] for u in report["units"] for f in u.get("functions", [])
            if (f.get("fuzzy_match_percent") or 0) == 100}


def land(args) -> None:
    wave = load(args.name)
    if is_overlay_wave(wave["functions"]):
        land_overlay(args, wave)
    else:
        land_exe(args, wave)


def land_exe(args, wave: dict) -> None:
    # Only src/ and the report are committed, so only they must be clean.
    dirty = subprocess.run(["git", "status", "--porcelain", "--untracked-files=no", "--", "src", "progress"],
                           cwd=ROOT, capture_output=True, text=True).stdout.strip()
    if dirty:
        sys.exit("land needs src/ and progress/ clean:\n" + dirty)
    rows = {r["name"]: r for r in triage.triage()}
    landed, skipped = [], []
    for name, verdict, candidate, _ in results(wave):
        if not verdict.startswith("EXACT") or not candidate:
            continue
        exact = exact_in_report()
        if name in exact:
            skipped.append((name, "already exact"))
            continue
        reason = checker.banned(str(ROOT / candidate))
        if reason:
            skipped.append((name, f"refused: {reason}"))
            continue
        source = ROOT / "src" / f"{rows[name]['unit']}.c"
        saved = source.read_text()
        manifest = WAVES / f"{args.name}-{name}.MANIFEST"
        manifest.write_text(f"{name} {candidate}\n")
        applied = docker("python", "tools/integrate.py", str(manifest.relative_to(ROOT)), "--apply")
        if "1/1 exact" not in applied.stdout:
            source.write_text(saved)
            skipped.append((name, "not exact on re-check"))
            continue
        build = docker("bash", "tools/build_sn.sh")
        (WAVES / f"{args.name}-{name}.build.log").write_text(build.stdout + build.stderr)
        count = re.search(r"exact \(size AND bytes\):\s*(\d+)", build.stdout)
        mismatch = re.search(r"size mismatch:\s*(\d+)", build.stdout)
        if build.returncode or not count or int(count.group(1)) != len(exact) + 1 \
                or not mismatch or int(mismatch.group(1)):
            source.write_text(saved)
            skipped.append((name, "full build did not confirm it; source restored"))
            continue
        docker("python", "tools/gen_progress_report.py", "--no-build")
        row = rows[name]
        title = f"{row['symbol']} ({name})" if row["symbol"] else name
        message = (f"feat({row['unit'].split('/')[0]}): {title} exact match\n\n"
                   f"Matched by a Sonnet worker in wave {args.name}; full build audited.\n\n{TRAILER}")
        subprocess.run(["git", "add", str(source.relative_to(ROOT)), "progress/report.json"], cwd=ROOT, check=True)
        subprocess.run(["git", "commit", "-q", "-m", message], cwd=ROOT, check=True)
        landed.append(name)
        print(f"landed {name}: {len(exact) + 1} exact", flush=True)
    for name, why in skipped:
        print(f"skipped {name}: {why}")
    print(f"{len(landed)} landed, {len(skipped)} skipped")


def overlay_known_name(saved_text: str, name: str) -> str | None:
    """A trailing name comment on NAME's stub line (`INCLUDE_ASM(...); /*
    Name */`), if one is there -- the same convention tools/triage.py reads
    for executable stubs; overlay stubs don't carry one yet as generated,
    but a worker or a future catalogue update may leave one the same way."""
    for fn, sym in OVERLAY_NAME_COMMENT.findall(saved_text):
        if fn == name:
            return sym
    return None


def overlay_source_of(name: str, findex) -> Path | None:
    entry = findex.get(name)
    return entry[0] if entry else None


def overlay_is_stub(source: Path, name: str) -> bool:
    for line in source.read_text(errors="replace").splitlines():
        if name in line and OVERLAY_STUB_LINE.match(line):
            return True
    return False


def extract_definition(source: Path, name: str) -> str:
    """NAME's C definition exactly as it stands in SOURCE right now, for
    re-checking the landed file itself rather than the pre-apply candidate
    (apply_candidate.py's own edits -- dropped externs, a moved comment --
    are text changes only, but this is the same belt-and-braces the
    executable land() gets from its full build, which overlay code has
    none of)."""
    lines = source.read_text().splitlines()
    for i, line in enumerate(lines):
        if name in line and OVERLAY_DEF_LINE.match(line) and not line.rstrip().endswith(";"):
            depth, seen, j = 0, False, i
            for j in range(i, len(lines)):
                depth += lines[j].count("{") - lines[j].count("}")
                seen = seen or "{" in lines[j]
                if seen and depth == 0:
                    break
            return "\n".join(lines[i:j + 1]) + "\n"
    sys.exit(f"{name}: no C definition found in {source} right after landing it")


def land_overlay(args, wave: dict) -> None:
    """Lands overlay EXACTs (docs/OVERLAYS.md). Differs from land_exe():

    - No full build: the executable does not link src/overlays/, so
      tools/build_sn.sh cannot see these functions either way.
    - The re-check after applying is tools/try_func.py itself, run again
      against the function's own definition as it now sits in the landed
      file (overlay_check.check() already does the strict, unmasked
      relocation compare -- see docs/OVERLAYS.md's "Plan" step 2).
    - progress/report.json has no overlay units yet (another agent is
      adding them to tools/gen_progress_report.py); see the TODO below.
    """
    dirty = subprocess.run(["git", "status", "--porcelain", "--untracked-files=no", "--", "src", "progress"],
                           cwd=ROOT, capture_output=True, text=True).stdout.strip()
    if dirty:
        sys.exit("land needs src/ and progress/ clean:\n" + dirty)
    findex = dossier.overlay_file_index()
    landed, skipped = [], []
    for name, verdict, candidate, _ in results(wave):
        if not verdict.startswith("EXACT") or not candidate:
            continue
        source = overlay_source_of(name, findex)
        if source is None:
            skipped.append((name, "not found under src/overlays/"))
            continue
        if not overlay_is_stub(source, name):
            skipped.append((name, "already landed (no longer a stub)"))
            continue
        reason = checker.banned(str(ROOT / candidate))
        if reason:
            skipped.append((name, f"refused: {reason}"))
            continue
        saved = source.read_text()
        known = overlay_known_name(saved, name)
        manifest = WAVES / f"{args.name}-{name}.MANIFEST"
        manifest.write_text(f"{name} {candidate}\n")
        applied = docker("python", "tools/integrate.py", str(manifest.relative_to(ROOT)), "--apply")
        if "1/1 exact" not in applied.stdout:
            source.write_text(saved)
            skipped.append((name, "not exact on re-check"))
            continue
        recheck = WAVES / f"{args.name}-{name}.landed.c"
        recheck.write_text(extract_definition(source, name))
        verify = docker("python", "tools/try_func.py", name, str(recheck.relative_to(ROOT)), "--no-budget")
        (WAVES / f"{args.name}-{name}.verify.log").write_text(verify.stdout + verify.stderr)
        if "EXACT" not in verify.stdout:
            source.write_text(saved)
            skipped.append((name, "not exact re-checked against the landed file"))
            continue
        # TODO(overlays): progress/report.json does not count overlay units
        # yet (tools/gen_progress_report.py is being extended for them). It
        # is still called here, the way land_exe() calls it, so that landing
        # picks it up automatically once it can -- but only when a build
        # already exists, since overlay landing does not need or produce
        # one (the executable does not build src/overlays/).
        elf = ROOT / "build-sn/rac1.elf"
        report_note = ""
        if elf.exists():
            docker("python", "tools/gen_progress_report.py", "--no-build")
        else:
            report_note = (" (progress/report.json not refreshed: no build-sn/rac1.elf yet, "
                            "and it doesn't count overlay functions yet regardless)")
        title = f"{known} ({name})" if known else name
        message = (f"feat(overlays): {title} exact match\n\n"
                   f"Matched by a Sonnet worker in wave {args.name}; checked strictly against "
                   f"{name}'s real address in its level with tools/overlay_check.py "
                   f"(docs/OVERLAYS.md). No executable build: src/overlays/ isn't linked into "
                   f"it.{report_note}\n\n{TRAILER}")
        add = [str(source.relative_to(ROOT))]
        if elf.exists():
            add.append("progress/report.json")
        subprocess.run(["git", "add", *add], cwd=ROOT, check=True)
        subprocess.run(["git", "commit", "-q", "-m", message], cwd=ROOT, check=True)
        landed.append(name)
        print(f"landed {name}", flush=True)
    for name, why in skipped:
        print(f"skipped {name}: {why}")
    print(f"{len(landed)} landed, {len(skipped)} skipped")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    commands = parser.add_subparsers(dest="command", required=True)
    p = commands.add_parser("plan")
    p.add_argument("name")
    p.add_argument("funcs", nargs="*")
    p.add_argument("--role", choices=SECTION, default="match")
    p.add_argument("--count", type=int, default=10)
    p.add_argument("--budget", type=int, default=15)
    pick = p.add_mutually_exclusive_group()
    pick.add_argument("--near", action="store_true")
    pick.add_argument("--fresh", action="store_true")
    pick.add_argument("--overlay", action="store_true")
    commands.add_parser("status").add_argument("name")
    commands.add_parser("integrate").add_argument("name")
    commands.add_parser("land").add_argument("name")
    args = parser.parse_args()
    {"plan": plan, "status": status, "integrate": integrate, "land": land}[args.command](args)


if __name__ == "__main__":
    main()
