#!/usr/bin/env python3
"""
Check a batch of candidates and put the exact ones into src/.

  python tools/integrate.py MANIFEST [MANIFEST ...]           # check only
  python tools/integrate.py MANIFEST [MANIFEST ...] --apply   # check, then apply

A manifest has one line per function, `func_X path/to/candidate.c`
(blank lines and # comments are skipped). Each candidate goes through
tools/try_func.py; the ones that come back EXACT are applied with
tools/apply_candidate.py --drop-note (the candidate's own comment above
its definition replaces the old note). Nothing else is touched. Run the
full build afterwards (tools/build_sn.sh): it is the real check.

Runs where try_func does (inside tools/docker/run.sh on a Mac).
"""
import subprocess
import sys


def main() -> None:
    args = sys.argv[1:]
    apply = "--apply" in args
    manifests = [a for a in args if a != "--apply"]
    if not manifests:
        sys.exit(__doc__)
    rows = []
    for path in manifests:
        for line in open(path):
            line = line.split("#")[0].strip()
            if line:
                name, cand = line.split()[:2]
                rows.append((name, cand))

    exact = []
    for name, cand in rows:
        r = subprocess.run([sys.executable, "tools/try_func.py", name, cand],
                           capture_output=True, text=True)
        verdict = (r.stdout.strip().splitlines() or ["COMPILE failed"])[-1]
        verdict = verdict.split(": ", 1)[-1].split("   (")[0]
        print(f"{name:14s} {verdict:22s} {cand}")
        if verdict.startswith("EXACT"):
            exact.append((name, cand))

    print(f"{len(exact)}/{len(rows)} exact")
    if apply:
        for name, cand in exact:
            r = subprocess.run([sys.executable, "tools/apply_candidate.py", name, cand,
                                "--drop-note"], capture_output=True, text=True)
            print((r.stdout or r.stderr).strip())


if __name__ == "__main__":
    main()
