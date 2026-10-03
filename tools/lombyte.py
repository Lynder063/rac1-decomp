#!/usr/bin/env python3
"""
Finds a PAL function's counterpart in Lombyte, the matching decompilation
of the same game's US build (github.com/mateuszklysz/Lombyte, MIT;
docs/SIBLING_DECOMPS.md). A function Lombyte has matched is the best
starting point there is: same source, same compiler family.

  python3 tools/lombyte.py map              # rebuild the US-to-PAL map
  python3 tools/lombyte.py func_X [...]     # counterpart, status, C file
  python3 tools/lombyte.py NAME [...]       # a Lombyte name's PAL function
  python3 tools/lombyte.py todo             # matched there, not here

The map pairs functions by aligning both builds' function-size sequences
(runs of three or more equal sizes), so a paired function has the same
size in both. Level code is aligned level by level: Lombyte's
FUN_LNN_xxxxxxxx against every function config/overlays/functions.tsv
places in level NN (its shared code is named after level 00, as ours
is). It lives in build-sn/lombyte_ntsc_pal_map.json. Lombyte is looked
for in $LOMBYTE, else ~/Projects/Lombyte.
"""
from __future__ import annotations
import difflib
import json
import os
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
LOMBYTE = Path(os.environ.get("LOMBYTE", Path.home() / "Projects/Lombyte"))
MAP = ROOT / "build-sn/lombyte_ntsc_pal_map.json"


def their_report(lombyte: Path = LOMBYTE) -> dict | None:
    """Lombyte's progress report, or None. It was committed as
    progress/report.json until their #64; since then their CI publishes
    it as report.json on the `progress` branch, and their
    scripts/gen_progress_report.py writes build/progress/report.json."""
    for path in (lombyte / "progress/report.json", lombyte / "build/progress/report.json"):
        if path.exists():
            return json.loads(path.read_text())
    for ref in ("origin/progress", "progress"):
        shown = subprocess.run(["git", "-C", str(lombyte), "show", f"{ref}:report.json"],
                               capture_output=True, text=True)
        if shown.returncode == 0:
            return json.loads(shown.stdout)
    return None


def their_units() -> list[dict]:
    report = their_report()
    if report is None:
        sys.exit(f"no Lombyte progress report in {LOMBYTE} (progress/report.json, "
                 "build/progress/report.json or its progress branch): fetch it, or run its "
                 "scripts/gen_progress_report.py")
    return report["units"]


def functions(units: list[dict], key) -> list[tuple[int, int, str, bool]]:
    rows = []
    for unit in units:
        # Both reports also hold level overlay code (Lombyte's level_NN/...
        # and shared/..., our overlays/...): those addresses are in the
        # levels' own address space, and would corrupt the alignment.
        cats = (unit.get("metadata") or {}).get("progress_categories", [])
        if "level_code" in cats or "overlays" in cats or unit["name"].split("/")[0] in ("shared", "overlays") \
                or unit["name"].startswith("level_"):
            continue
        for f in unit.get("functions", []):
            rows.append((key(f), int(f["size"]), f["name"], (f.get("fuzzy_match_percent") or 0) == 100))
    return sorted(r for r in rows if r[0] is not None)


def overlay_pairs() -> list[dict]:
    """Level-code pairs, level by level (see the module docstring)."""
    sys.path.insert(0, str(ROOT / "tools"))
    import dossier
    ours_exact = {f["name"]: (f.get("fuzzy_match_percent") or 0) == 100
                  for u in json.loads((ROOT / "progress/report.json").read_text())["units"]
                  for f in u.get("functions", [])}
    theirs: dict[int, list] = {}
    for unit in their_units():
        for f in unit.get("functions", []):
            m = re.fullmatch(r"FUN_L(\d\d)_([0-9a-fA-F]{8})", f["name"])
            if m:
                theirs.setdefault(int(m.group(1)), []).append(
                    (int(m.group(2), 16), int(f["size"]), f["name"], (f.get("fuzzy_match_percent") or 0) == 100))
    ours: dict[int, list] = {}
    for name, (_kind, size, _n, places) in dossier.load_overlay_catalogue().items():
        for level, addr in places:
            ours.setdefault(level, []).append((addr, size, name))
    pairs = {}
    for level in sorted(theirs):
        t, o = sorted(theirs[level]), sorted(ours.get(level, []))
        match = difflib.SequenceMatcher(None, [x[1] for x in t], [x[1] for x in o], autojunk=False)
        for a, b, n in match.get_matching_blocks():
            if n < 3:
                continue
            for k in range(n):
                tt, oo = t[a + k], o[b + k]
                pairs.setdefault(oo[2], {"pal": oo[2], "size": oo[1], "ntsc": tt[2], "ntsc_exact": tt[3],
                                         "pal_exact": ours_exact.get(oo[2], False), "overlay": True})
    return list(pairs.values())


def definition(ntsc: str) -> tuple[str, str] | None:
    """(file, C text) of Lombyte's definition of NTSC: from its first line
    to the closing brace at column 0, with the comment right above it."""
    for path in source_of(ntsc):
        lines = Path(path).read_text(errors="replace").splitlines()
        for i, line in enumerate(lines):
            if re.match(rf"(?!extern\b)[A-Za-z_][^;]*\b{re.escape(ntsc)}\b\s*\(", line) and not line.rstrip().endswith(";"):
                start = i
                while start > 0 and lines[start - 1].strip().startswith(("/*", "*", "//")):
                    start -= 1
                end = next((j for j in range(i, len(lines)) if lines[j].startswith("}")), None)
                if end is not None:
                    return path, "\n".join(lines[start:end + 1]) + "\n"
    return None


def build_map() -> list[dict]:
    theirs = functions(their_units(),
                       lambda f: int(f.get("metadata", {}).get("virtual_address") or 0))
    ours = functions(json.loads((ROOT / "progress/report.json").read_text())["units"],
                     lambda f: int(f["name"][5:], 16) if re.fullmatch(r"func_[0-9A-Fa-f]{8}", f["name"]) else None)
    match = difflib.SequenceMatcher(None, [s for _, s, _, _ in theirs], [s for _, s, _, _ in ours],
                                    autojunk=False)
    pairs = []
    for a, b, n in match.get_matching_blocks():
        if n < 3:
            continue
        for k in range(n):
            t, o = theirs[a + k], ours[b + k]
            pairs.append({"pal": o[2], "size": o[1], "ntsc": t[2], "ntsc_exact": t[3], "pal_exact": o[3]})
    pairs += overlay_pairs()
    MAP.parent.mkdir(parents=True, exist_ok=True)
    MAP.write_text(json.dumps(pairs, indent=1) + "\n")
    return pairs


def load_map() -> list[dict]:
    return json.loads(MAP.read_text()) if MAP.exists() else build_map()


def source_of(name: str) -> list[str]:
    """Lombyte C files that define NAME (as a C name or an asm label):
    a column-0 line naming it before `(` and not ending in `;`."""
    pattern = re.compile(rf"(?m)^(?!extern\b)[A-Za-z_][^;\n]*\b{re.escape(name)}\b\s*\([^;\n]*$"
                         rf"|__asm__\(\"{re.escape(name)}\"\)")
    hits = []
    for path in (LOMBYTE / "src").rglob("*.c"):
        if pattern.search(path.read_text(errors="replace")):
            hits.append(str(path))
    return hits


def main() -> None:
    args = sys.argv[1:]
    if not args:
        sys.exit(__doc__)
    if not LOMBYTE.is_dir():
        sys.exit(f"no Lombyte checkout at {LOMBYTE} (set $LOMBYTE)")
    if args[0] == "map":
        pairs = build_map()
        todo = [p for p in pairs if p["ntsc_exact"] and not p["pal_exact"]]
        print(f"{len(pairs)} functions paired; {len(todo)} matched in Lombyte only "
              f"({sum(p['size'] for p in todo)} bytes). Written to {MAP.relative_to(ROOT)}.")
        return
    pairs = load_map()
    if args[0] == "todo":
        for p in sorted((p for p in pairs if p["ntsc_exact"] and not p["pal_exact"]), key=lambda p: p["size"]):
            print(f"{p['pal']}  {p['size']:>5}  {p['ntsc']}")
        return
    by_pal = {p["pal"]: p for p in pairs}
    by_ntsc = {p["ntsc"]: p for p in pairs}
    for name in args:
        if not name.startswith("func_"):
            p = by_ntsc.get(name)
            print(f"{name}: " + (f"PAL {p['pal']} ({p['size']} bytes)" if p else "no PAL counterpart in the map"))
            continue
        p = by_pal.get(name)
        if not p:
            print(f"{name}: no Lombyte counterpart in the map")
            continue
        state = "matched in Lombyte" if p["ntsc_exact"] else "not matched in Lombyte either"
        files = source_of(p["ntsc"])
        print(f"{name}: Lombyte {p['ntsc']} ({p['size']} bytes), {state}")
        for f in files:
            print(f"  {f}")


if __name__ == "__main__":
    main()
