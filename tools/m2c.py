"""Run m2c on one of our splat .s files, with ctx.c.

asm/ uses numeric GPR names ($4, $31) because the SN assembler accepts
nothing else (see tools/sn_regnames.py). m2c needs symbolic names -- with
$31 it cannot recognise `jr $31` as a return and gives up looking for a
jump table. This maps the names back into a temporary copy and runs m2c.
Output is a reference sketch only: it is never matching as emitted.

usage: python tools/m2c.py func_XXXXXXXX [extra m2c args]
"""
import pathlib, re, subprocess, sys, tempfile

NAMES = ["zero", "at", "v0", "v1", "a0", "a1", "a2", "a3",
         "t0", "t1", "t2", "t3", "t4", "t5", "t6", "t7",
         "s0", "s1", "s2", "s3", "s4", "s5", "s6", "s7",
         "t8", "t9", "k0", "k1", "gp", "sp", "fp", "ra"]
# Longest numbers first is unnecessary thanks to the \b, but keep COP
# registers ($f12) untouched: only a bare $<digits> is a GPR.
GPR = re.compile(r"\$(\d{1,2})\b")

def main():
    name = sys.argv[1]
    hits = list(pathlib.Path("asm/nonmatchings").rglob(name + ".s"))
    if len(hits) != 1:
        sys.exit(f"expected one .s for {name}, found {len(hits)}")
    text = hits[0].read_text()
    text = GPR.sub(lambda m: "$" + NAMES[int(m.group(1))]
                   if int(m.group(1)) < 32 else m.group(0), text)
    with tempfile.NamedTemporaryFile("w", suffix=".s", delete=False) as t:
        t.write(text)
    ctx = ["--context", "ctx.c"] if pathlib.Path("ctx.c").exists() else []
    cmd = [sys.executable, "tools/ext/m2c/m2c.py", "-t", "mips-gcc-c",
           *ctx, *sys.argv[2:], t.name]
    sys.exit(subprocess.call(cmd))

main()
