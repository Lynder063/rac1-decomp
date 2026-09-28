#!/usr/bin/env python3
"""
Looks things up in Deadlocked's debug symbols (docs/DL_SYMBOLS.md).

A Deadlocked prototype (the September 13, 2005 build) kept its .mdebug
section: every core function's signature with parameter names, its locals
and the registers they lived in, every type and every global, per source
file. Deadlocked is built from the same engine as this game, so most of
our named functions are there too, usually changed but recognisable.

The symbol dumps are local, like the disc image: put dlfuncs.txt,
dltypes.txt, dlglobals.txt and dlsections.txt in baserom/dl/ (or point
DL_SYMBOLS at their directory). They are never committed.

  python3 tools/dlsyms.py func_001FFAB8        # our function -> its DL entry
  python3 tools/dlsyms.py Hud_HeapAlloc        # a name -> its DL entry
  python3 tools/dlsyms.py --file hud.cpp       # a DL source file's functions, in order
  python3 tools/dlsyms.py --type MobyInstance  # a type's definition
  python3 tools/dlsyms.py --global Level       # a global's declaration
  python3 tools/dlsyms.py --coverage           # how many of our names DL has
"""
import os
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DL = Path(os.environ.get("DL_SYMBOLS", ROOT / "baserom/dl"))
SYMBOL_NAMES = ROOT / "config/symbol_names.txt"

FILE = re.compile(r"^// FILE -- (.*)$")
ENTRY = re.compile(r"^/\* ([0-9a-f]{8}) ([0-9a-f]{8}) \*/ (.*)$")
NAME = re.compile(r"([A-Za-z_][\w:~]*)\s*\(")


def available() -> bool:
    return (DL / "dlfuncs.txt").exists()


def functions() -> list[dict]:
    """Every dlfuncs.txt entry: {name, bare, file, address, size, text}.
    address is None where the dump has ffffffff (no address recorded)."""
    out, file, cur = [], "", None
    for line in (DL / "dlfuncs.txt").read_text(errors="replace").splitlines():
        m = FILE.match(line)
        if m:
            file = m.group(1).replace("\\", "/")
            continue
        m = ENTRY.match(line)
        if m:
            addr, size, sig = m.groups()
            n = NAME.search(sig)
            name = n.group(1) if n else sig
            cur = {"name": name, "bare": name.split("::")[-1], "file": file,
                   "address": None if addr == "ffffffff" else int(addr, 16),
                   "size": int(size, 16), "text": [line]}
            out.append(cur)
            if sig.endswith("{}"):
                cur = None
            continue
        if cur is not None:
            cur["text"].append(line)
            if line == "}":
                cur = None
    return out


def our_names() -> dict[str, str]:
    """func_XXXXXXXX -> real name without parameters, from config/symbol_names.txt."""
    names = {}
    for line in SYMBOL_NAMES.read_text().splitlines():
        if line.startswith("#") or not line.strip():
            continue
        fields = line.split("|")[0].split()
        if len(fields) >= 3:
            names[fields[0]] = " ".join(fields[2:]).split("(")[0].strip()
    return names


def find(query: str, funcs: list[dict]) -> list[dict]:
    """A DL entry by full name (Fs::Sync) or bare name (Sync)."""
    exact = [f for f in funcs if f["name"] == query]
    return exact or [f for f in funcs if f["bare"] == query.split("::")[-1]]


def entry_for(func: str, funcs=None, limit: int = 40) -> tuple[str, list[str]] | None:
    """(real name, entry lines) of our function func_XXXXXXXX, or None."""
    real = our_names().get(func)
    if not real or not available():
        return None
    hits = find(real, funcs if funcs is not None else functions())
    if not hits:
        return None
    lines = [f"// {hits[0]['file']}"] + hits[0]["text"]
    if len(lines) > limit:
        lines = lines[:limit] + [f"\t... ({len(lines) - limit} more lines in dlfuncs.txt)"]
    return real, lines


def block(path: Path, start: re.Pattern) -> list[str]:
    """The lines from one matching `start` to the `};` that closes it."""
    out, inside = [], False
    for line in path.read_text(errors="replace").splitlines():
        if not inside and start.match(line) and "{" in line.split("//")[0]:
            inside = True
        if inside:
            out.append(line)
            if line.startswith("};"):
                return out
    return out


def show(lines: list[str]) -> None:
    print("\n".join(lines) if lines else "not found")


def main() -> None:
    args = sys.argv[1:]
    if not args or args[0] in ("-h", "--help"):
        sys.exit(__doc__)
    if not available():
        sys.exit(f"dlsyms.py: no {DL}/dlfuncs.txt (see docs/DL_SYMBOLS.md)")
    funcs = functions()
    if args[0] == "--file":
        for f in funcs:
            if args[1].lower() in f["file"].lower():
                where = f"{f['address']:08x}" if f["address"] is not None else "--------"
                print(f"{where} {f['size']:6d}  {f['file'].split('/')[-1]:20s} {f['text'][0][23:]}")
    elif args[0] == "--type":
        show(block(DL / "dltypes.txt", re.compile(rf"^(struct|union|enum|class) {re.escape(args[1])}\b")))
    elif args[0] == "--global":
        pat = re.compile(rf"\b{re.escape(args[1])}\b")
        show([l for l in (DL / "dlglobals.txt").read_text(errors="replace").splitlines()
              if l.startswith("/*") and pat.search(l)])
    elif args[0] == "--coverage":
        names = our_names()
        have = {f["bare"] for f in funcs} | {f["name"] for f in funcs}
        hit = [n for n in names.values() if n in have or n.split("::")[-1] in have]
        print(f"{len(hit)} of {len(names)} names in config/symbol_names.txt are in Deadlocked's symbols")
    else:
        for q in args:
            if q.startswith("func_"):
                found = entry_for(q, funcs, limit=10**6)
                if not found:
                    print(f"{q}: no real name, or its name isn't in Deadlocked's symbols")
                    continue
                print(f"{q} = {found[0]}")
                show(found[1])
            else:
                for f in find(q, funcs):
                    print(f"// {f['file']}")
                    show(f["text"])


if __name__ == "__main__":
    main()
