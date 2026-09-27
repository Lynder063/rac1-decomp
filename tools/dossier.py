#!/usr/bin/env python3
"""
Collects what a worker needs to match a function into
build-sn/try/<func>/CONTEXT.md, so it doesn't have to search for it:

  - where the function lives, its size, compiler and triage notes;
  - how every function it calls, and every global it touches, is already
    declared (prefer the declaration in its own file: a second declaration
    with another type does not compile);
  - who calls it, with any prototype their callers already use;
  - matched functions in the same file that share the most calls and
    globals, to copy the style of;
  - earlier attempts: the last verdict, notes and best candidate.

  python3 tools/dossier.py func_X [func_Y ...]          # CONTEXT.md only
  python3 tools/dossier.py --m2c func_X [func_Y ...]    # + m2c.c sketch (Docker)

Scripts do this for free; every line here is a search a worker doesn't pay for.
"""
import json
import re
import subprocess
import sys
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))

import triage  # noqa: E402

GP_BASE = 0x166D00
SYMBOL = re.compile(r"\b((?:func|D)_[0-9A-Fa-f]{8})\b")
CALL = re.compile(r"\bj(?:al)?\s+(func_[0-9A-Fa-f]{8})\b")
DATA = re.compile(r"%(?:hi|lo)\((D_[0-9A-Fa-f]{8})\)")
GP = re.compile(r"(-?0x[0-9A-Fa-f]+)\(\$28\)")
ALIAS = re.compile(r'__asm__\("((?:func|D)_[0-9A-Fa-f]{8})"\)')


def asm_path(name: str) -> Path | None:
    for seg in ("text", "core_text"):
        path = ROOT / "asm/nonmatchings" / seg / f"{name}.s"
        if path.exists():
            return path
    return None


def references(name: str) -> tuple[list[str], list[str]]:
    """Functions called and globals used, in order of first appearance."""
    path = asm_path(name)
    if path is None:
        return [], []
    text = re.sub(r"/\*.*?\*/", "", path.read_text(errors="replace"))
    calls = list(dict.fromkeys(c for c in CALL.findall(text) if c != name))
    data = list(DATA.findall(text))
    data += [f"D_{(GP_BASE + int(off, 16)) & 0xFFFFFFFF:08X}" for off in GP.findall(text)]
    return calls, list(dict.fromkeys(data))


def declaration_index() -> dict[str, list[tuple[str, int, str, str]]]:
    """symbol -> [(file, line, text, kind)] for lines that declare or define it.

    A declaration starts in column 0; indented continuation lines are joined
    to it, so a prototype whose __asm__ alias sits on the next line counts.
    """
    index = defaultdict(list)
    files = sorted((ROOT / "src").rglob("*.c")) + sorted((ROOT / "include").rglob("*.h"))
    for path in files:
        rel = str(path.relative_to(ROOT))
        lines = path.read_text(errors="replace").splitlines()
        for i, line in enumerate(lines):
            if not line or line[0].isspace() or line.startswith(("/", "*", "#")) or "INCLUDE_ASM" in line:
                continue
            text, j = line.rstrip(), i + 1
            while (not text.endswith(";") and "{" not in text and j < min(i + 5, len(lines))
                   and lines[j][:1].isspace() and not lines[j].strip().startswith("{")):
                text += " " + lines[j].strip()
                j += 1
            aliased = ALIAS.findall(text)
            for symbol in set(SYMBOL.findall(text)) | set(aliased):
                declared = text.startswith("extern") or text.endswith(";") or symbol in aliased
                kind = "declared" if declared else ("defined" if "(" in text else "declared")
                index[symbol].append((rel, i + 1, " ".join(text.split())[:160], kind))
    return index


def callers(name: str) -> list[str]:
    pattern = re.compile(rf"\bjal\s+{name}\b")
    return sorted(p.stem for p in (ROOT / "asm/nonmatchings").rglob("*.s")
                  if p.stem != name and pattern.search(p.read_text(errors="replace")))


def alias_name(text: str, symbol: str) -> str | None:
    """The C name a declaration gives SYMBOL through __asm__("SYMBOL"), if any."""
    head = text.split(f'__asm__("{symbol}")')[0].rstrip() if f'__asm__("{symbol}")' in text else None
    if head is None:
        return None
    if head.endswith(")"):  # A function: skip back over its parameter list.
        depth, i = 0, len(head)
        for i in range(len(head) - 1, -1, -1):
            depth += {")": 1, "(": -1}.get(head[i], 0)
            if depth == 0:
                break
        head = head[:i].rstrip()
    head = re.sub(r"(\[[^\]]*\])+$", "", head).rstrip()
    m = re.search(r"(\w+)$", head)
    return m.group(1) if m and m.group(1) != symbol else None


def describe(symbol: str, source: str, index) -> str:
    entries = index.get(symbol, [])
    own = [e for e in entries if e[0] == source]
    chosen = (own or entries)[:3]
    if not chosen:
        return f"- `{symbol}`: not declared anywhere yet"
    status = " (matched C)" if any(e[3] == "defined" for e in entries) else ""
    lines = [f"- `{symbol}`{status}:"]
    for path, line, text, _ in chosen:
        name = alias_name(text, symbol)
        lines.append(f"  `{text}` ({path}:{line})" + (f" -> write `{name}` in C" if name else ""))
    if len({alias_name(e[2], symbol) for e in own}) > 1:
        lines.append("  (this file names it more than once: use the name whose type fits the access)")
    if not own and entries:
        lines.append("  (declared in another file only: add an extern of the same type)")
    return "\n".join(lines)


def neighbours(name: str, unit: str, calls, data, exact_by_unit) -> list[str]:
    mine = set(calls) | set(data)
    scored = []
    for other, size in exact_by_unit.get(unit, []):
        c, d = references(other)
        shared = mine & (set(c) | set(d))
        if shared:
            scored.append((len(shared), other, size, sorted(shared)))
    scored.sort(key=lambda s: -s[0])
    return [f"- `{o}` ({size} bytes) shares {n}: {', '.join(shared[:6])}{' ...' if n > 6 else ''}"
            for n, o, size, shared in scored[:3]]


def attempts(name: str) -> list[str]:
    work = ROOT / "build-sn/try" / name
    lines = []
    result = work / "RESULT.md"
    if result.exists():
        head = result.read_text(errors="replace").strip().splitlines()[:2]
        lines.append(f"- Last verdict: {' | '.join(h.strip() for h in head)}")
    for extra in ("NOTES.md", "RESULT.prev.md"):
        if (work / extra).exists():
            lines.append(f"- Read `build-sn/try/{name}/{extra}` for what was tried.")
    candidates = sorted(p.name for p in work.glob("*.c") if p.name not in ("src.c", "m2c.c"))
    if candidates:
        lines.append(f"- {len(candidates)} earlier candidates in build-sn/try/{name}/.")
    return lines or ["- None."]


def write(names: list[str]) -> None:
    report = json.loads((ROOT / "progress/report.json").read_text())
    exact_by_unit = {u["name"]: [(f["name"], int(f["size"])) for f in u.get("functions", [])
                                 if (f.get("fuzzy_match_percent") or 0) == 100] for u in report["units"]}
    rows = {r["name"]: r for r in triage.triage()}
    index = declaration_index()
    for name in names:
        row = rows.get(name)
        if row is None:
            print(f"{name}: already exact or unknown; skipped")
            continue
        source = f"src/{row['unit']}.c"
        seg = "text" if row["unit"].startswith("game/") else "core_text"
        compiler = "Sony gcc 2.9-ee (ee29)" if "2.9-ee" in row["reason"] else (
            "SN gcc 2.95.3" if seg == "text" else "see config/core_text.objects")
        calls, data = references(name)
        status = (f"near-miss, {row['match_percent']}% (its C is already in {source})"
                  if row["status"] == "near-miss" else f"stub (INCLUDE_ASM in {source})")
        out = [f"# {name}", "",
               f"- Source: {source}, {status}",
               f"- Size: {row['size']} bytes; compiler: {compiler}",
               f"- Retail assembly: asm/nonmatchings/{seg}/{name}.s",
               f"- Triage: {row['reason'] or 'no known blocker'}"]
        if row["symbol"]:
            out.append(f"- Real name: {row['symbol']}" + (f" ({row['library']})" if row["library"] else ""))
        if row["reference"]:
            out.append(f"- Original source: {row['reference']} (start from it, not from m2c)")
        sketch = ROOT / "build-sn/try" / name / "m2c.c"
        if sketch.exists() and "{" in sketch.read_text(errors="replace"):
            out.append(f"- m2c sketch: build-sn/try/{name}/m2c.c (a starting point, never matching as is)")
        elif sketch.exists():
            out.append(f"- m2c failed on this function (its message is in build-sn/try/{name}/m2c.c)")
        out += ["", "## Earlier attempts", *attempts(name)]
        out += ["", "## Calls", *(describe(c, source, index) for c in calls)] if calls else ["", "## Calls", "- None."]
        out += ["", "## Globals", *(describe(d, source, index) for d in data)] if data else ["", "## Globals", "- None."]
        found = callers(name)
        out += ["", "## Called from", f"- {', '.join(found) if found else 'no direct calls in asm'}"]
        prototypes = [e for e in index.get(name, []) if e[3] == "declared"]
        out += [f"  `{text}` ({path}:{line})" for path, line, text, _ in prototypes[:3]]
        similar = neighbours(name, row["unit"], calls, data, exact_by_unit)
        out += ["", "## Matched neighbours in the same file", *(similar or ["- None share calls or globals."])]
        work = ROOT / "build-sn/try" / name
        work.mkdir(parents=True, exist_ok=True)
        (work / "CONTEXT.md").write_text("\n".join(out) + "\n")
        print(f"{name}: build-sn/try/{name}/CONTEXT.md ({len(calls)} calls, {len(data)} globals)")


def sketches(names: list[str]) -> None:
    """m2c sketches for all names in one container run."""
    loop = "; ".join(f"python tools/m2c.py {n} > build-sn/try/{n}/m2c.c 2>&1" for n in names)
    for n in names:
        (ROOT / "build-sn/try" / n).mkdir(parents=True, exist_ok=True)
    # m2c can exit non-zero and still leave a usable sketch, so check each file.
    subprocess.run(["bash", "tools/docker/run.sh", "sh", "-c", loop], cwd=ROOT,
                   stdout=subprocess.DEVNULL)
    for n in names:
        sketch = ROOT / "build-sn/try" / n / "m2c.c"
        if "{" not in sketch.read_text(errors="replace"):
            print(f"{n}: m2c produced no sketch; see build-sn/try/{n}/m2c.c")


def main() -> None:
    args = sys.argv[1:]
    names = [a for a in args if a.startswith("func_")]
    if not names:
        sys.exit(__doc__)
    if "--m2c" in args:
        sketches(names)
    write(names)


if __name__ == "__main__":
    main()
