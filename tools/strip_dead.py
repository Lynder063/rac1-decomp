#!/usr/bin/env python3
"""
Reproduce, on compiler output, how retail's linker dead-stripped
unreferenced functions: everything from the function's label up to and
including its final jump is removed, and the instruction in that jump's
delay slot is left behind.

Evidence. Sony's prebuilt libgcc.a has L__main as __do_global_dtors,
__do_global_ctors, __main. Retail's copy begins with the 8 bytes
`addiu $sp,$sp,0x20; nop` and continues with __do_global_ctors and __main
byte for byte. Those 8 bytes are exactly the last word of Sony's
__do_global_dtors (its `jr $ra` delay slot) plus the alignment nop after
it: the other 80 bytes were cut. Nothing references __do_global_dtors in
this configuration (ON_EXIT is empty, so the constructors never register
it), which is why the linker dropped it. The "orphan epilogue fragments"
at the head of many objects, and the one-instruction "fallthrough
fragments" throughout both segments, have the same shape.

usage: python tools/strip_dead.py IN.s OUT.s FUNCTION[=REMNANT] ...

With =REMNANT the surviving word becomes a function of that name (with
.ent/.end, so it has a symbol size), which is how splat sees it in retail:
e.g. __do_global_dtors=func_0011DF10.
"""
import re
import sys

JUMP = re.compile(r"^\s*(j|jr)\s")


def strip(lines: list[str], name: str, remnant: str | None = None) -> list[str]:
    try:
        start = next(i for i, l in enumerate(lines) if l.strip() == f"{name}:")
        end = next(i for i, l in enumerate(lines) if l.strip() == f".end\t{name}"
                   or re.fullmatch(rf"\.end\s+{re.escape(name)}", l.strip()))
    except StopIteration:
        sys.exit(f"strip_dead: {name} not found")
    body = lines[start:end]
    jumps = [i for i, l in enumerate(body) if JUMP.match(l)]
    if not jumps:
        sys.exit(f"strip_dead: {name} has no final jump")
    last = jumps[-1]
    # The delay-slot instruction is the next instruction line after the jump.
    slot = next(i for i in range(last + 1, len(body))
                if body[i].strip() and not body[i].strip().startswith((".", "#", "$")))
    kept = ["\t.set\tnoreorder\n", body[slot], "\t.set\treorder\n"]
    if remnant:
        kept = [f"\t.globl\t{remnant}\n", f"\t.ent\t{remnant}\n", f"{remnant}:\n",
                *kept, f"\t.end\t{remnant}\n"]
    out = lines[:start] + kept + lines[end + 1:]
    # The function's own .globl/.ent directives go too: nothing may name it.
    own = re.compile(rf"\s*\.(globl|ent|type)\s+{re.escape(name)}\b")
    return [l for l in out if not own.match(l)]


def main() -> None:
    src, dst, *names = sys.argv[1:]
    lines = open(src).readlines()
    for spec in names:
        name, _, remnant = spec.partition("=")
        lines = strip(lines, name, remnant or None)
    open(dst, "w").writelines(lines)
    print(f"strip_dead: stripped {', '.join(names)} {src} -> {dst}")


if __name__ == "__main__":
    main()
