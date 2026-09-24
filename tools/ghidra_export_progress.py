#!/usr/bin/env python3
"""
tools/ghidra_export_progress.py
================================
Exports AI decompilation progress from the rac1-ai-platform database into a
JSON file that the companion Ghidra script (ghidra_import_progress.py) can
consume.

Run this with Python 3 **outside** Ghidra, from the rac1-decomp root or from
anywhere:

    # Default: auto-locate DB via RAC1_PLATFORM_DIR env var or common paths
    python tools/ghidra_export_progress.py

    # Point explicitly at the platform database
    python tools/ghidra_export_progress.py --db C:/Users/you/rac1-ai-platform/data/ai_decomp.db

    # Export only 100% byte-exact matches
    python tools/ghidra_export_progress.py --matched-only

    # Export functions with >= 50% match
    python tools/ghidra_export_progress.py --min-pct 50

    # Custom output path
    python tools/ghidra_export_progress.py --out /tmp/my_export.json

Output (default): tools/ghidra_import.json
  -> This file is gitignored (generated data).
  -> After generating it, open Ghidra and run tools/ghidra_import_progress.py
     via the Script Manager.

JSON schema per entry:
    {
        "name":        "func_0021B108",   # function name
        "addr":        "0021B108",        # hex address, no 0x prefix
        "status":      "matched",         # matched / near_miss / stalled
        "match_pct":   100.0,
        "byte_diff":   0,                 # differing bytes vs retail (-1 = unknown)
        "size":        44,                # function size in bytes
        "source_file": "src/game/pause.c",
        "c_code":      "s32 func_0021B108(...) { ... }"
    }
"""

import argparse
import json
import os
import sqlite3
import sys
from pathlib import Path

# ---------------------------------------------------------------------------
# DB auto-discovery
# ---------------------------------------------------------------------------
_COMMON_PLATFORM_DIRS = [
    Path(os.environ.get("RAC1_PLATFORM_DIR", "")),
    Path(__file__).resolve().parent.parent / "rac1-ai-platform",  # sibling dir
    Path.home() / "rac1-ai-platform",
    Path("C:/Users") / os.environ.get("USERNAME", "") / "rac1-ai-platform",
]

def _find_db() -> Path:
    """Try common locations for the platform database."""
    for base in _COMMON_PLATFORM_DIRS:
        candidate = base / "data" / "ai_decomp.db"
        if candidate.exists():
            return candidate
    return None


DEFAULT_OUT = Path(__file__).resolve().parent / "ghidra_import.json"


# ---------------------------------------------------------------------------
# Export
# ---------------------------------------------------------------------------
def export(db_path: Path, min_pct: float, matched_only: bool, out_path: Path):
    if not db_path or not db_path.exists():
        print(
            "[ERROR] Could not find ai_decomp.db.\n"
            "Pass the path explicitly with --db, or set the RAC1_PLATFORM_DIR\n"
            "environment variable to your rac1-ai-platform directory.",
            file=sys.stderr,
        )
        sys.exit(1)

    conn = sqlite3.connect(str(db_path))
    conn.row_factory = sqlite3.Row
    cur = conn.cursor()

    if matched_only:
        status_filter = "status = 'matched'"
    else:
        status_filter = "status IN ('matched', 'near_miss', 'stalled', 'in_progress')"

    cur.execute(
        f"""
        SELECT name, status, match_percent, byte_mismatches, size, source_file, best_code
        FROM   functions
        WHERE  best_code IS NOT NULL
          AND  best_code != ''
          AND  match_percent >= ?
          AND  {status_filter}
        ORDER BY match_percent DESC, name
        """,
        (min_pct,),
    )
    rows = cur.fetchall()
    conn.close()

    if not rows:
        print("No functions found matching the given criteria.")
        sys.exit(0)

    entries = []
    for r in rows:
        name = r["name"]
        addr = name.replace("func_", "").upper() if name.startswith("func_") else name
        entries.append(
            {
                "name":        name,
                "addr":        addr,
                "status":      r["status"] or "unknown",
                "match_pct":   round(r["match_percent"] or 0.0, 2),
                "byte_diff":   r["byte_mismatches"] if r["byte_mismatches"] is not None else -1,
                "size":        r["size"] or 0,
                "source_file": r["source_file"] or "",
                "c_code":      r["best_code"] or "",
            }
        )

    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(entries, indent=2, ensure_ascii=False), encoding="utf-8")

    matched = sum(1 for e in entries if e["status"] == "matched")
    near    = sum(1 for e in entries if e["status"] == "near_miss")
    partial = len(entries) - matched - near

    print(f"Database : {db_path}")
    print(f"Output   : {out_path}")
    print(f"Exported : {len(entries)} functions")
    print(f"  Exact matches (100%)  : {matched}")
    print(f"  Near misses  (>=80%)  : {near}")
    print(f"  Stalled / partial     : {partial}")
    print()
    print("Next step:")
    print("  1. Open your RaC1 .elf in Ghidra and run Auto Analyse.")
    print("  2. Window -> Script Manager -> add the rac1-decomp/tools/ path.")
    print("  3. Run  ghidra_import_progress.py  from the Script Manager.")


def main():
    ap = argparse.ArgumentParser(
        description="Export RaC1 AI decompilation progress for Ghidra import."
    )
    ap.add_argument(
        "--db",
        type=Path,
        default=None,
        help="Path to ai_decomp.db (auto-detected if omitted)",
    )
    ap.add_argument(
        "--matched-only",
        action="store_true",
        help="Export only 100%% byte-exact matched functions",
    )
    ap.add_argument(
        "--min-pct",
        type=float,
        default=0.0,
        help="Minimum match %% to include (default: 0 = all with any C code)",
    )
    ap.add_argument(
        "--out",
        type=Path,
        default=DEFAULT_OUT,
        help=f"Output JSON path (default: {DEFAULT_OUT})",
    )
    args = ap.parse_args()

    db = args.db or _find_db()
    export(db, args.min_pct, args.matched_only, args.out)


if __name__ == "__main__":
    main()
