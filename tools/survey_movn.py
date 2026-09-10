#!/usr/bin/env python3
"""
Classifies every function containing a `movz`/`movn` instruction as either
an ARITHMETIC IDIOM (which plain C reproduces exactly, so the function is
a normal decompilation target) or a GENUINE conditional move (where this
compiler's heuristics differ from retail's and the function really is
blocked).

Background: for 20+ rounds any `movz`/`movn` meant "skip". That was right
for genuine conditional moves but wrong for idioms, because the compiler
*emits* conditional moves when lowering ordinary arithmetic. The proven
case is `func_00217A60`, filed under this category for rounds, whose
`movn` is just signed-divide-by-4 -- a plain `x / 4` matched it 0/108 on
the first attempt.

The signed `x / 2**n` lowering looks like:

    slt   $t, $zero, x        ; x > 0 ?
    addiu $b, x, (2**n - 1)   ; bias the negative case
    movn  $b, x, $t           ; if x > 0, drop the bias
    sra   $r, $b, n           ; arithmetic shift

The load-bearing signal is the pairing of a bias `addiu` whose immediate
is exactly 2**n - 1 with an `sra` by that same n, straddling the move.
Matching on `movn` alone is far too loose, and matching on `slt $?,$0,$?`
is too tight -- the zero often arrives in an ordinary register rather
than `$0` (in func_00217A60 it is `slt $4,$4,$3` where $4 held zero).

Usage: python tools/survey_movn.py [--detail FUNC]
"""
import re
import sys
from pathlib import Path

INSN = re.compile(r"/\*[^*]*\*/\s+(\S+)\s*(.*)")
BIASES = {(1 << n) - 1: n for n in range(1, 16)}  # 1->1, 3->2, 7->3, ...


def instructions(path: Path):
    out = []
    for line in path.read_text(errors="replace").splitlines():
        m = INSN.match(line.strip())
        if m:
            out.append((m.group(1), m.group(2).strip()))
    return out


def classify(path: Path):
    """Return (kind, detail). kind is 'idiom' or 'genuine'."""
    insns = instructions(path)
    reasons = []
    for i, (op, args) in enumerate(insns):
        if op not in ("movz", "movn"):
            continue
        # look back for a bias addiu, forward for the matching sra
        window_back = insns[max(0, i - 4):i]
        window_fwd = insns[i + 1:i + 4]
        biases = set()
        for bop, bargs in window_back:
            if bop == "addiu":
                m = re.search(r"(-?0x[0-9A-Fa-f]+|-?\d+)\s*$", bargs)
                if m:
                    try:
                        v = int(m.group(1), 0)
                    except ValueError:
                        continue
                    if v in BIASES:
                        biases.add(BIASES[v])
        shifts = set()
        for fop, fargs in window_fwd:
            if fop in ("sra", "srl"):
                m = re.search(r"(0x[0-9A-Fa-f]+|\d+)\s*$", fargs)
                if m:
                    shifts.add(int(m.group(1), 0))
        hit = biases & shifts
        if hit:
            n = sorted(hit)[0]
            reasons.append(f"{op}: signed /{1 << n} (bias {(1 << n) - 1}, sra {n})")
    if reasons:
        return "idiom", "; ".join(reasons)
    return "genuine", ""


def main() -> None:
    if "--detail" in sys.argv:
        name = sys.argv[sys.argv.index("--detail") + 1]
        for seg in ("core_text", "text"):
            p = Path(f"asm/nonmatchings/{seg}/{name}.s")
            if p.exists():
                print(classify(p))
        return

    idioms, genuine = [], []
    for seg in ("core_text", "text"):
        for p in sorted(Path(f"asm/nonmatchings/{seg}").glob("*.s")):
            txt = p.read_text(errors="replace")
            if not re.search(r"\b(movz|movn)\b", txt):
                continue
            kind, detail = classify(p)
            size = re.search(r"nonmatching\s+\S+,\s*(0x[0-9A-Fa-f]+)", txt)
            entry = (p.stem, seg, size.group(1) if size else "?", detail)
            (idioms if kind == "idiom" else genuine).append(entry)

    print(f"=== {len(idioms)} ARITHMETIC IDIOM (plain C should reproduce) ===")
    for n, seg, sz, d in idioms:
        print(f"  {n} [{seg} {sz}] {d}")
    print(f"\n=== {len(genuine)} GENUINE conditional move (really blocked) ===")
    print(f"  (listing suppressed; {len(genuine)} functions)")
    print(f"\ntotal movz/movn functions: {len(idioms) + len(genuine)}")


if __name__ == "__main__":
    main()
