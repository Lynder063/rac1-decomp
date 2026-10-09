#!/usr/bin/env python3
"""
Make a candidate's declarations private to its function, so it can land in a
file that defines the same type names or declares the same globals another
way (docs/LEVERS.md, "Overlay functions"). No statement of the function is
changed; check the result with tools/try_func.py and tools/overlay_file_check.py
like any candidate.

  python3 tools/privatize.py IN.c OUT.c SUFFIX [--func FUNC] [--keep NAME ...] [--self-alias]

SUFFIX is usually the function's address without its leading zeros (2C9820).

- every typedef name and struct/union tag the candidate declares gets _SUFFIX
  (unless it already ends with it);
- every extern function prototype becomes
      extern RET name_SUFFIX(ARGS) __asm__("name");
- every global becomes a private alias:
      extern T X MACRO_ADDR;        -> extern T X_SUFFIX __asm__("X") MACRO_ADDR;
      extern short|char|u8.. X;     -> extern short X_SUFFIX SDATA(X);   ($gp access)
      extern T X;  / extern T X[];  -> extern T X_SUFFIX __asm__("X");
  declarations that already carry __asm__ keep their C name;
- --self-alias (with --func): the definition `RET FUNC(ARGS) {` becomes the
  alias form FUNC_r, for a file that declares FUNC with another prototype.

--func FUNC leaves FUNC's own prototype alone; --keep NAME leaves NAME alone
altogether. A struct member that shares a renamed name is reported.
"""
import re
import sys

src, dst, suf = sys.argv[1:4]
rest = sys.argv[4:]
keep, self_alias, func = set(), False, None
i = 0
while i < len(rest):
    if rest[i] == "--keep": keep.add(rest[i + 1]); i += 2
    elif rest[i] == "--self-alias": self_alias = True; i += 1
    elif rest[i] == "--func": func = rest[i + 1]; i += 2
    else: sys.exit("bad arg " + rest[i])
text = open(src).read()
lines = text.split("\n")
S = "_" + suf
ren = {}
SMALL = {"short", "char", "u8", "s8", "u16", "s16", "unsigned char", "unsigned short", "signed char"}

def want(n):
    return n not in keep and not n.endswith(S)

# types
for l in lines:
    m = re.match(r"\s*(?:typedef\s+)?(?:struct|union)\s+([A-Za-z_]\w*)\s*(?:\{|;)", l)
    if m and want(m.group(1)): ren[m.group(1)] = m.group(1) + S
    m = re.match(r"\}\s*([A-Za-z_]\w*)\s*(?:__attribute__\s*\(\(.*\)\))?\s*;", l)
    if m and want(m.group(1)): ren[m.group(1)] = m.group(1) + S
    m = re.match(r"typedef\s+[^{};]*?\b([A-Za-z_]\w*)\s*(\[[^\]]*\])*\s*(?:__attribute__\s*\(\(.*\)\))?\s*;", l)
    if m and "(" not in l.split("__attribute__")[0] and want(m.group(1)): ren[m.group(1)] = m.group(1) + S
    m = re.match(r"typedef\s+.*\(\s*\*\s*([A-Za-z_]\w*)\s*\)\s*\(", l)
    if m and want(m.group(1)): ren[m.group(1)] = m.group(1) + S

out = []
depth = 0
for l in lines:
    d0 = depth
    depth += l.count("{") - l.count("}")
    if d0 != 0 or "{" in l:
        out.append(l); continue
    if "__asm__" in l or not l.rstrip().endswith(";"):
        out.append(l); continue
    # function prototype
    m = re.match(r"^(extern\s+)?(.*?[\s\*])([A-Za-z_]\w*)\s*(\(.*\))\s*;\s*$", l)
    if m and not l.startswith("typedef") and "(*" not in m.group(2):
        name = m.group(3)
        if name in keep or name == func: out.append(l); continue
        ren[name] = name + S
        out.append(f'{m.group(1) or ""}{m.group(2)}{name}{S}{m.group(4)} __asm__("{name}");'); continue
    m = re.match(r"^extern\s+(.*?[\s\*])([A-Za-z_]\w*)\s*((?:\[[^\]]*\])*)\s*(MACRO_ADDR)?\s*;\s*$", l)
    if m:
        ty, name, arr, macro = m.group(1).strip(), m.group(2), m.group(3), m.group(4)
        if name in keep: out.append(l); continue
        ren[name] = name + S
        sp = "" if m.group(1).endswith("*") else " "
        if macro:
            out.append(f'extern {ty}{sp}{name}{S}{arr} __asm__("{name}") MACRO_ADDR;')
        elif ty in SMALL and not arr:
            out.append(f'extern {ty} {name}{S} SDATA({name});')
        else:
            out.append(f'extern {ty}{sp}{name}{S}{arr} __asm__("{name}");')
        continue
    out.append(l)

text = "\n".join(out)
def sub(m):
    w = m.group(0)
    return ren.get(w, w)
# protect string literals of __asm__("...") and SDATA(...)
parts = re.split(r'(__asm__\("[^"]*"\)|SDATA\([^)]*\))', text)
for k in range(0, len(parts), 2):
    parts[k] = re.sub(r"[A-Za-z_]\w*", sub, parts[k])
text = "".join(parts)
if self_alias:
    assert func
    m = re.search(r"^([^\n;{}]*?\b)" + re.escape(func) + r"\s*(\([^)]*\))\s*\{", text, re.M)
    assert m, "definition not found"
    proto = f'{m.group(1)}{func}_r{m.group(2)}'
    text = text[:m.start()] + proto + f' __asm__("{func}");\n' + proto + " {" + text[m.end():]
open(dst, "w").write(text)
print("renamed:", ", ".join(f"{a}" for a in sorted(ren)))
for a in ren:
    if re.search(r"(\.|->)\s*" + re.escape(ren[a]) + r"\b", text):
        print("WARNING: member access renamed:", a)
