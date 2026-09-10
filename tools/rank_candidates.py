#!/usr/bin/env python3
"""
Ranks every remaining INCLUDE_ASM stub by how likely it is to match,
using the blocker signatures this project has actually confirmed.

Why this exists: the single most effective lever found so far is
CANDIDATE SELECTION, not source-shape iteration. Filtering the $gp pool
by one signature cut 199 stubs to 10 realistic candidates, and 4 of the
5 attempted from that list matched (2 first try). Grinding on a function
whose blocker is a toolchain question is pure waste; this tool exists to
stop that happening.

Verdicts:
  blocked   a confirmed hard blocker -- do not attempt without a new idea
  risky     a signature that has repeatedly produced same-size
            near-misses; attempt only when the candidate pool is dry
  candidate nothing known blocks it

Deliberately NOT treated as blockers, because both were over-broad
skip categories that cost this project real matches:
  * $gp-relative addressing -- unblocked by the -G2 switch; 9 matched.
  * movz/movn -- 6 reclaimed; most are arithmetic idioms (notably signed
    division by a power of two), not genuine conditional moves. Genuine
    ones are downgraded to `risky`, never `blocked`.

Usage:
  python tools/rank_candidates.py            # both segments
  python tools/rank_candidates.py text       # one segment
  python tools/rank_candidates.py text 40    # + show top N candidates
"""
import re
import sys
from pathlib import Path

STUB = re.compile(r"INCLUDE_ASM\([^)]*\b(func_[0-9A-Fa-f]{8})\)")
SEGMENTS = {"text": "src/text.c", "core_text": "src/core_text.c"}
FUNCNAME = re.compile(r"\b(func_[0-9A-Fa-f]{8})\b")


def already_attempted() -> set[str]:
    """
    Functions named anywhere in docs/ or notes/. A stub discussed in
    prose has almost always been attempted and reverted with its reason
    recorded, so it should not resurface at the top of a "fresh
    candidates" list. Re-attempting one is fine, but that should be a
    deliberate choice backed by a new idea, not an accident of ranking.
    """
    seen: set[str] = set()
    for d in (Path("docs"), Path("notes")):
        if d.is_dir():
            for f in d.glob("*.md"):
                seen |= set(FUNCNAME.findall(f.read_text(errors="replace")))

    # Also: a stub in src/ with a block comment immediately above it is a
    # documented revert -- someone decoded it, failed, and wrote down why.
    # Those live in source comments rather than in docs/notes, so scanning
    # only the markdown missed them and handed them straight back as top
    # candidates. (Caught when func_0012AAA8, reverted minutes earlier for
    # a delay-slot difference, reappeared at rank 25.)
    for f in Path("src").glob("*.c"):
        src = f.read_text(errors="replace")
        seen |= set(re.findall(r"\*/\s*INCLUDE_ASM\([^)]*\b(func_[0-9A-Fa-f]{8})\)", src))
    return seen


# gp base from retail's own .reginfo (Elf32_RegInfo.ri_gp_value)
GP_BASE = 0x00166D00
SDA_LO, SDA_HI = GP_BASE - 0x8000, GP_BASE + 0x8000
VU0_LO, VU0_HI = 0x1F9B20, 0x1FB598


def label_positions(body):
    """Maps each .L label to the index of the instruction it precedes."""
    pos, n = {}, 0
    for line in body.splitlines():
        m = re.match(r"^(\.L[0-9A-Fa-f]+):", line.strip())
        if m:
            pos[m.group(1)] = n
        elif "/*" in line and "*/" in line and line.split("*/", 1)[1].strip():
            n += 1
    return pos


def instructions(body: str) -> list[str]:
    out = []
    for line in body.splitlines():
        if "/*" in line and "*/" in line:
            after = line.split("*/", 1)[1].strip()
            if after:
                out.append(after)
    return out


def classify(name: str, body: str, seg: str, size: int) -> tuple[str, str, str]:
    """Returns (verdict, category, detail)."""
    vram = int(name.split("_")[1], 16)
    ins = instructions(body)
    text = "\n".join(ins)

    if not ins:
        return "blocked", "empty", ""

    # A 4-byte function is a bare `jr $31` with nothing in its delay
    # slot. `void f(void){}` emits `jr $ra; nop` plus alignment = 8+
    # bytes, so this is a SIZE mismatch that can never be reached from C.
    # (This is exactly how func_0011AE1C became a false "match" once.)
    if size and size <= 4:
        return "blocked", "bare jr (4 bytes)", "C cannot emit under 8 bytes"

    # core_text still needs `sd` for callee-saved s-registers and no
    # available sub-build emits it -- v1.36 gets $ra right but uses
    # sq/lq for $s0-$s7. text is unaffected (v1.14 matches retail there).
    # This is the one part of the sq/lq question that is still open.
    if seg == "core_text" and re.search(r"\b(sq|sd)\s+\$(1[6-9]|2[0-3])\b", text):
        return "blocked", "core_text s-reg spill", "retail wants sd, v1.36 emits sq"
    if "Handwritten function" in body:
        return "blocked", "handwritten asm", "spimdisasm marker"
    if not re.search(r"\bjr\s+\$31\b", text):
        return "blocked", "fallthrough fragment", "no jr $31"
    # Tail call: retail jumps straight to another function instead of
    # `jal` + return. GCC 2.95 has no sibling-call optimisation, so this
    # compiler always emits jal and a real return -- different size and
    # different bytes, unreachable from C. Two independent confirmations
    # (func_00113AC8 earlier, func_0011DFC8 when the ranker offered it as
    # a top candidate). 99 stubs carry this, so it was worth detecting.
    if re.search(r"(?m)^j\s+func_[0-9A-Fa-f]{8}", text):
        return "blocked", "tail call", "j func_...; GCC 2.95 has no sibcall"

    if len(ins) == 1 and "0xCDCDCDCD" in body:
        return "blocked", "padding", ""
    # A real function whose extent *begins* with 4 bytes of 0xCDCDCDCD
    # inter-function padding (splat folded the padding into its extent).
    # The body is ordinary code, but C cannot emit that leading word, so
    # it can never match. func_0011DD64 was a top candidate until this.
    if ins and ins[0].startswith("pref") and "CDCDCDCD" in body:
        return "blocked", "padding-prefixed", "leading 0xCDCDCDCD not from C"
    if VU0_LO <= vram <= VU0_HI:
        return "blocked", "VU0 cluster", "0x1F9B20-0x1FB598"
    if re.search(r"\b(v[a-z]+\.[xyzw]+|vcallms|qmfc2|qmtc2|pxor|pcpyud|pextlw|pnor)\b", text):
        return "blocked", "SIMD/COP2", ""
    if re.search(r"\b(adda|madd|msub)\.s\b", text):
        return "blocked", "FPU accumulate", "adda.s/madd.s not plain-C"
    # Varargs *definition* spills a1-t3 on entry. Callers are fine.
    if len(ins) > 4 and sum(1 for i in ins[:9] if re.match(r"s[dwq]\s+\$([5-9]|1[01])\b", i)) >= 4:
        return "blocked", "varargs definition", "needs stdarg.h"
    if re.search(r"\b(sq|lq)\s+\$(?!29\b|1[6-9]\b|2[0-3]\b|31\b)", text):
        return "blocked", "bare quadword", ""

    # --- the $at macro store form: retail builds an address in $1 and
    # stores through it. This compiler never emits $at, it always
    # allocates a normal register, and -mno-split-addresses (which does
    # reproduce it) breaks loads elsewhere. Same "two behaviours, one
    # flag" shape as the sq/lq question.
    if re.search(r"\b[sl][bhwdq]c?1?\s+\$\w+,\s*[^,]*\(\$1\)", text) and re.search(r"lui\s+\$1\b", text):
        return "blocked", "$at macro store", "compiler never emits $at form"

    # --- one variable reached BOTH via $gp and via lui/%lo in the same
    # function: one declaration cannot be both, and an aliased second
    # symbol does not help (the difference is register allocation).
    gp_syms, hi_syms = set(), set()
    for i in ins:
        if "$28" in i:
            m = re.search(r"%gprel\(([^)]+)\)|(-?0x[0-9A-Fa-f]+)\(\$28\)", i)
            if m:
                if m.group(1):
                    gp_syms.add(m.group(1))
                else:
                    gp_syms.add(hex((GP_BASE + int(m.group(2), 16)) & 0xFFFFFFFF))
        m = re.search(r"%(?:hi|lo)\((D_[0-9A-Fa-f]+)\)", i)
        if m:
            hi_syms.add("0x" + m.group(1).split("_")[1].lstrip("0").lower())
    if gp_syms & hi_syms:
        return "blocked", "gp/hi collision", f"same var both ways: {sorted(gp_syms & hi_syms)[:2]}"

    # --- an epilogue fragment: a real function opens by RESERVING stack
    # (addiu $sp,$sp,-N). Opening with a positive adjustment means this
    # is the tail of some other function that splat gave its own label,
    # often several merged together. It ends in a jr, so the "no jr $31"
    # check above does not catch it.
    if re.match(r"addiu\s+\$29,\s*\$29,\s*0x", ins[0]):
        return "blocked", "epilogue fragment", "opens by releasing stack"

    # --- assembler load-delay: a tiny leaf loads an FP global and then
    # uses it, with retail carrying a load-delay nop the compiler won't
    # emit. The nop sits BETWEEN the load and the use, so look past it
    # rather than only at the next instruction.
    if len(ins) <= 8 and re.search(r"\bl[wd]c1\b", text) and "jal" not in text:
        for idx, a in enumerate(ins):
            m = re.match(r"l[wd]c1\s+\$(f\d+)", a)
            if m and any(m.group(1) in b for b in ins[idx + 1: idx + 4]):
                if "nop" in ins[idx + 1: idx + 3]:
                    return "blocked", "load-delay nop", "MIPS I interlock, not reachable from C"

    # --- GPR->FPU move delay: `mtc1 $x, $fN` / `nop` / <use of $fN>.
    # Same class as the lwc1 rule above but a different source: retail
    # carries the hazard nop between the transfer and the first FPU use,
    # and this compiler does not emit it, so the function comes out
    # exactly one instruction short. Deliberately NOT restricted to tiny
    # leaves the way the lwc1 rule is -- func_00214158 has a jal and 20
    # instructions and was ranked a candidate until this was added.
    for idx, a in enumerate(ins):
        m = re.match(r"mtc1\s+\S+,\s*\$(f\d+)", a)
        if m and idx + 2 < len(ins) and ins[idx + 1] == "nop":
            if re.search("[$]" + m.group(1) + "(?![0-9])", ins[idx + 2]):
                return "blocked", "fpu move delay nop", "mtc1 hazard nop, not reachable from C"

    # --- R5900 short-loop erratum: nop padding before a tight backward
    # branch. No source shape fixes it. `span` is the distance back to the
    # branch TARGET; it used to be the index from the start of the
    # function, which let any tight loop past instruction 7 escape.
    labels = label_positions(body)
    for idx, i in enumerate(ins):
        if re.match(r"b(ne|eq|gtz|ltz|gez|lez|nez|eqz)l?\b", i) and idx >= 2:
            tgt = labels.get(i.rsplit(",", 1)[-1].strip())
            span = idx - tgt if tgt is not None and tgt <= idx else 99
            if span <= 7 and ins[idx - 1] == "nop" and ins[idx - 2] == "nop":
                return "blocked", "short-loop erratum", "double nop before tight branch"

    # ---- risky signatures (near-miss generators, not hard blockers) ----

    # Short-loop erratum, second form: retail leaves the loop branch's
    # DELAY SLOT unfilled where this compiler fills it, so we come out
    # 4 bytes short. Same erratum as the two-nop form above, which is
    # blocked; this one is only marked risky because there is a single
    # confirmation so far (func_0011D370) -- blanket-blocking on thin
    # evidence has cost this project real matches twice.
    for idx, i in enumerate(ins[:-1]):
        m = re.match(r"b(ne|eq|nez|eqz|gez|ltz|gtz|lez)l?\s.*?(\.L[0-9A-Fa-f]+)\s*$", i)
        if m and ins[idx + 1] == "nop":
            t2 = labels.get(m.group(2))
            if t2 is not None and t2 <= idx and idx - t2 <= 7:
                return "risky", "loop delay slot nop", "erratum: unfilled delay slot"

    # Allocator destination-reuse: `lw $x, %lo(sym)($x)`. This is THE
    # signature that predicted the $gp near-misses; filtering it out is
    # what produced a 4-of-5 hit rate.
    if re.search(r"l[wbhd]u?\s+\$(\w+),\s*%lo\([^)]*\)\(\$\1\)", text):
        return "risky", "allocator destination-reuse", "lw $x,%lo(sym)($x)"

    # core_text functions that save $ra with sq/lq: retail is on the sq
    # side here but v1.36 emits sd/ld, so these carry a guaranteed 2-byte
    # floor (the store and its restore) and nothing else. Same size, so
    # they are keepable as documented-close, but they can never be exact
    # -- flagged risky rather than blocked so the logic can still be
    # recovered if someone wants it. 34 stubs are in this state.
    if seg == "core_text" and re.search(r"(?m)^sq\s+\$31", text):
        return "risky", "core_text sq $ra", "2-byte floor: retail sq, v1.36 sd"

    # Genuine conditional move (not the div-by-power-of-two idiom, whose
    # movn is followed closely by an sra).
    if re.search(r"\bmov[zn]\b", text):
        idiom = False
        for idx, i in enumerate(ins):
            if re.match(r"mov[zn]\b", i):
                if any(re.match(r"sra\b", j) for j in ins[idx + 1: idx + 4]):
                    idiom = True
        if not idiom:
            return "risky", "genuine conditional move", "movz/movn, no sra idiom"

    detail = ""
    if re.search(r"\$28\b", text):
        detail = "$gp (unblocked at -G2)"
    return "candidate", "candidate", detail


def main() -> None:
    args = [a for a in sys.argv[1:]]
    segs = [a for a in args if a in SEGMENTS] or list(SEGMENTS)
    topn = next((int(a) for a in args if a.isdigit()), 25)

    attempted = already_attempted()
    rows = []
    for seg in segs:
        src = Path(SEGMENTS[seg])
        for name in sorted(set(STUB.findall(src.read_text(errors="replace")))):
            p = Path(f"asm/nonmatchings/{seg}/{name}.s")
            if not p.exists():
                continue
            body = p.read_text(errors="replace")
            m = re.search(r"nonmatching\s+\S+,\s*(0x[0-9A-Fa-f]+)", body)
            size = int(m.group(1), 16) if m else 0
            verdict, cat, detail = classify(name, body, seg, size)
            if verdict == "candidate" and name in attempted:
                verdict, cat = "risky", "already attempted"
                detail = "discussed in docs/notes -- see reason there"
            rows.append((verdict, cat, name, seg, size, detail))

    counts: dict[tuple[str, str], int] = {}
    for verdict, cat, *_ in rows:
        counts[(verdict, cat)] = counts.get((verdict, cat), 0) + 1

    print(f"{len(rows)} remaining stubs in {', '.join(segs)}\n")
    for verdict in ("candidate", "risky", "blocked"):
        n = sum(v for (vd, _), v in counts.items() if vd == verdict)
        print(f"{n:5d}  {verdict}")
        for (vd, cat), v in sorted(counts.items(), key=lambda kv: -kv[1]):
            if vd == verdict and cat != verdict:
                print(f"        {v:4d}  {cat}")
    print()

    cands = sorted([r for r in rows if r[0] == "candidate"], key=lambda r: r[4])
    print(f"--- {len(cands)} candidates, smallest first (showing {min(topn, len(cands))}) ---")
    for _, _, name, seg, size, detail in cands[:topn]:
        print(f"  {name}  {seg:9s} {size:#7x}  {detail}")


if __name__ == "__main__":
    main()
