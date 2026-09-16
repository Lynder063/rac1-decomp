#!/usr/bin/env python3
"""
CRLF-safe anchored replace for the two big source files.

src/ files (src/text.c, src/core/*.c) may have CRLF line endings, so a naive
str.replace with an LF-quoted anchor silently matches nothing -- which
looks exactly like "the edit had no effect on codegen" and cost a couple
of confused rebuild cycles. This reads universal, requires each anchor to
match exactly once, and writes back with the file's own line ending.

  from tools.cedit import edit
  edit("src/core/00112380.c", [(old, new), ...])
"""
import io


def edit(path, pairs):
    raw = io.open(path, "rb").read()
    crlf = b"\r\n" in raw
    s = raw.decode("utf-8").replace("\r\n", "\n")
    for old, new in pairs:
        n = s.count(old)
        if n != 1:
            raise SystemExit("anchor matched %d times, need exactly 1:\n%s" % (n, old[:200]))
        s = s.replace(old, new)
    out = s.replace("\n", "\r\n") if crlf else s
    io.open(path, "wb").write(out.encode("utf-8"))
