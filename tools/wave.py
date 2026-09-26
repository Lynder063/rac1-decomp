#!/usr/bin/env python3
"""
Plans, tracks and integrates waves of worker agents (docs/WORKER.md).

  python3 tools/wave.py plan NAME [--role match|compile] [--count N]
                         [--budget N] [--near | --fresh] [func_X ...]
      Picks functions (the ones named, or from tools/triage.py), writes each
      one's CONTEXT.md and m2c sketch, starts a fresh BUDGET of try_func
      runs, and prints each worker's one-line prompt.
  python3 tools/wave.py status NAME
      One line per function: verdict, runs used, best candidate.
  python3 tools/wave.py integrate NAME
      Applies the EXACT results through tools/integrate.py (in Docker).
      Run the full build afterwards, as always.

--near picks earlier attempts that came close (BYTES within 40, a size
within 8 bytes, or a near-miss in src/); --fresh, the default, picks
functions nobody has tried, smallest first. Waves are recorded in
build-sn/waves/NAME.json.
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
import triage  # noqa: E402

WAVES = ROOT / "build-sn/waves"
TRY = ROOT / "build-sn/try"
SECTION = {"match": "Matching", "compile": "First compile"}
CLOSE_BYTES, CLOSE_SIZE = 40, 8


def closeness(row: dict) -> int | None:
    """How far an earlier attempt is from exact, in bytes; None if not close."""
    if row["status"] == "near-miss":
        return int(row["size"] * (100 - row["match_percent"]) / 100)
    verdict = row["last_attempt"]
    m = re.match(r"BYTES (\d+)/", verdict)
    if m and int(m.group(1)) <= CLOSE_BYTES:
        return int(m.group(1))
    m = re.search(r"SIZE ours (\d+) / retail (\d+)", verdict)
    if m and abs(int(m.group(1)) - int(m.group(2))) <= CLOSE_SIZE:
        return abs(int(m.group(1)) - int(m.group(2)))
    return None


def choose(args) -> list[str]:
    if args.funcs:
        return args.funcs
    rows = [r for r in triage.triage() if r["route"] != "blocked"]
    if args.near:
        close = [(closeness(r), r["name"]) for r in rows]
        return [name for d, name in sorted(c for c in close if c[0] is not None)][:args.count]
    fresh = [r for r in rows if not r["last_attempt"] and "attempted before" not in r["reason"]]
    return [r["name"] for r in sorted(fresh, key=lambda r: r["size"])][:args.count]


def plan(args) -> None:
    names = choose(args)
    if not names:
        sys.exit("nothing to plan")
    stamp = time.strftime("%Y%m%d-%H%M%S")
    for name in names:
        work = TRY / name
        work.mkdir(parents=True, exist_ok=True)
        if (work / "runs.log").exists():  # A fresh budget for this round.
            (work / "runs.log").rename(work / f"runs.{stamp}.log")
        (work / "BUDGET").write_text(f"{args.budget}\n")
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
              "started": time.time(), "functions": names}
    (WAVES / f"{args.name}.json").write_text(json.dumps(record, indent=2) + "\n")
    print(f"\nwave {args.name}: {len(names)} {args.role} workers, budget {args.budget} runs each\n")
    for name in names:
        print(prompt(name, args.role, args.budget))


def prompt(name: str, role: str, budget: int) -> str:
    return (f"You are a {role} worker on {name} in the repository /Users/flavy/Projects/rac1-decomp "
            f"(run every command from there). Follow docs/WORKER.md, the rules and the "
            f"\"{SECTION[role]}\" section; your context is build-sn/try/{name}/CONTEXT.md and "
            f"your budget is {budget} try_func runs.")


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
        rows.append((name, result[0].strip() if result else "(no result yet)",
                     result[1].strip() if len(result) > 1 else "", runs))
    return rows


def status(args) -> None:
    wave = load(args.name)
    rows = results(wave)
    print(f"wave {wave['name']}: {wave['role']}, budget {wave['budget']}")
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
    commands.add_parser("status").add_argument("name")
    commands.add_parser("integrate").add_argument("name")
    args = parser.parse_args()
    {"plan": plan, "status": status, "integrate": integrate}[args.command](args)


if __name__ == "__main__":
    main()
