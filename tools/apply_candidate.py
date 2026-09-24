#!/usr/bin/env python3
"""
Put a candidate that try_func.py passed into src/: it replaces the
function's INCLUDE_ASM line, or its current definition when the function
is already C (a near-miss being fixed).

  python tools/apply_candidate.py func_X cand.c
  python tools/apply_candidate.py func_X cand.c --comment "why it matches"
  python tools/apply_candidate.py func_X cand.c --drop-note --comment "..."

--comment puts a block comment right above the definition, replacing a
one-line comment the candidate has there. --drop-note removes the block
comment that ends right above the stub or definition: the old revert or
near-miss note that the match makes obsolete. Without --comment, a
stub's trailing name comment (`INCLUDE_ASM(...); /* Name */`) is kept,
unless the candidate has a comment of its own above the definition.

The full build decides, as always: run tools/build_sn.sh afterwards.
"""
import argparse
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from try_func import find_stub, STUB  # noqa: E402

TRAILING = re.compile(r"\)\s*;\s*(/\*.*\*/)\s*$")


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("name")
    ap.add_argument("candidate")
    ap.add_argument("--comment")
    ap.add_argument("--drop-note", action="store_true")
    a = ap.parse_args()

    _seg, src, first, last = find_stub(a.name)
    lines = src.read_text().splitlines()
    is_stub = STUB.match(lines[first]) is not None
    m = TRAILING.search(lines[first]) if is_stub else None
    name_comment = m.group(1) if m else None

    cand = Path(a.candidate).read_text().rstrip("\n").splitlines()
    d = next((i for i, l in enumerate(cand)
              if re.match(rf"^[A-Za-z_][\w \t\*]*\b{a.name}\s*\(.*\)\s*\{{\s*$", l)), None)
    if d is None:
        sys.exit(f"{a.candidate}: no definition of {a.name} on one line ending in '{{'")
    if a.comment:
        if d > 0 and re.match(r"^\s*/\*.*\*/\s*$", cand[d - 1]):
            cand.pop(d - 1)
            d -= 1
        body = a.comment.strip().splitlines()
        block = ["/* " + body[0]] + ["   " + l if l else "" for l in body[1:]]
        block[-1] += " */"
        cand[d:d] = block
    elif (name_comment and name_comment not in "\n".join(cand)
          and not (d > 0 and cand[d - 1].rstrip().endswith("*/"))):
        cand.insert(d, name_comment)

    start = first
    if a.drop_note and lines[first - 1].rstrip().endswith("*/"):
        start = first - 1
        while not lines[start].lstrip().startswith("/*"):
            start -= 1
    lines[start:last + 1] = cand
    src.write_text("\n".join(lines) + "\n")
    print(f"{a.name}: {src}:{start + 1} ({'stub' if is_stub else 'definition'} replaced, {len(cand)} lines)")


if __name__ == "__main__":
    main()
