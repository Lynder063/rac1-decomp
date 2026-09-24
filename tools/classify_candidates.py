import os
import pathlib
import re
import sqlite3

repo_root = pathlib.Path(__file__).resolve().parent.parent
db_env = os.environ.get("RAC1_DB_PATH") or os.environ.get("RAC1_PLATFORM_DIR")
if db_env:
    p = pathlib.Path(db_env)
    db_path = p if p.suffix == ".db" else p / "data" / "ai_decomp.db"
else:
    db_path = repo_root.parent / "rac1-ai-platform" / "data" / "ai_decomp.db"

padding = set()
handwritten = set()
fragments = set()
valid_targets = []

for p in (repo_root / "asm" / "nonmatchings").rglob("*.s"):
    name = p.stem
    text = p.read_text(errors="replace")

    # 1. 0xCDCDCDCD padding
    if "CDCDCDCD" in text or "pref       0x0D, -0x3233" in text or "pref 0x0D" in text:
        padding.add(name)
        continue

    # 2. Handwritten / syscall / interrupts
    if "/* Handwritten function */" in text or "syscall" in text or "break" in text:
        handwritten.add(name)
        continue

    # 3. Must have a return or tail jump (jr $31, jr $ra, or j target)
    has_ret = bool(re.search(r"jr\s+(\$31|\$ra|\$v0|\$t9)", text))
    has_tail = bool(re.search(r"\bj\s+(func_|0x)", text))
    if not (has_ret or has_tail):
        fragments.add(name)
        continue

    # 4. Minimum valid C function size is 8 bytes (or 4 bytes only if it's bare 'jr $31')
    m_size = re.search(r"nonmatching\s+\w+,\s*(0x[0-9A-Fa-f]+)", text)
    size = int(m_size.group(1), 16) if m_size else 0

    valid_targets.append((name, size, p))

print("=== FUNCTION CLASSIFICATION REPORT ===")
print(f"Total nonmatching .s files: {len(padding) + len(handwritten) + len(fragments) + len(valid_targets)}")
print(f"Padding dummy symbols (0xCDCDCDCD): {len(padding)}")
print(f"Handwritten assembly / syscalls:   {len(handwritten)}")
print(f"Fallthrough fragments (no return): {len(fragments)}")
print(f"Real decompilable C targets:       {len(valid_targets)}")

# Check with DB
if db_path.exists():
    conn = sqlite3.connect(db_path)
    c = conn.cursor()
    # Mark padding and handwritten as 'blocked' or 'ignored' in functions table
    for name in padding:
        c.execute("UPDATE functions SET status = 'blocked', notes = 'Padding dummy (0xCDCDCDCD)' WHERE name = ? AND status != 'matched'", (name,))
    for name in handwritten:
        c.execute("UPDATE functions SET status = 'blocked', notes = 'Handwritten assembly / syscall' WHERE name = ? AND status != 'matched'", (name,))
    for name in fragments:
        c.execute("UPDATE functions SET status = 'blocked', notes = 'Fallthrough fragment (no return)' WHERE name = ? AND status != 'matched'", (name,))
    conn.commit()

    unclaimed_real = c.execute("SELECT COUNT(*) FROM functions WHERE status = 'unclaimed'").fetchone()[0]
    print(f"\nUpdated DB: Remaining real unclaimed functions to decompile: {unclaimed_real}")

    # Show the 10 smallest REAL candidates:
    print("\nTop 10 Smallest REAL Decompilation Targets:")
    for r in c.execute("SELECT name, size, source_file FROM functions WHERE status = 'unclaimed' ORDER BY size ASC LIMIT 10").fetchall():
        print(f"  {r[0]:<18} {r[1]:<6} bytes  ({r[2]})")

    conn.close()
