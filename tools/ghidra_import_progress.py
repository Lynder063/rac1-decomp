# RaC1 AI Decompilation Progress Importer for Ghidra
# =====================================================
# @category    RaC1-Decomp
# @menupath    Tools.RaC1 Decomp.Import AI Progress
# @toolbar
# @author      rac1-decomp contributors
#
# PREREQUISITES
# -------------
# 1. Open the RaC1 retail .elf in Ghidra and run Auto Analyse.
# 2. Run the exporter OUTSIDE Ghidra (requires Python 3 + the platform DB):
#
#       python tools/ghidra_export_progress.py
#
#    This writes  tools/ghidra_import.json  next to this script.
#    (That file is gitignored — it is generated data.)
#
# RUNNING THIS SCRIPT
# -------------------
# 3. In Ghidra: Window -> Script Manager
# 4. Click the gear icon -> "Edit Script Paths"
#    Add the full path to  <repo>/tools/  (e.g. C:\Users\you\rac1-decomp\tools)
# 5. Search for "ghidra_import_progress" and click Run.
#
# WHAT IT DOES
# ------------
# For EVERY function that has any AI-generated C code:
#   • Adds a PLATE comment above the function in the Ghidra listing containing:
#       - Match status and percentage
#       - Source file path
#       - Full C function body (truncated to 4000 chars if very long)
#
# For EXACT MATCHES (100% byte-for-byte):
#   • Also adds an EOL comment "[AI-MATCHED 100%]" on the first instruction,
#     making matched functions easy to spot in the listing view.
#
# Running the script again overwrites previous comments — safe to re-run after
# generating a fresh ghidra_import.json.
#
# COMPATIBILITY
# -------------
# Written in Jython 2.7 (Ghidra's embedded Python).
# No third-party dependencies required.

import json
import os

# ---------------------------------------------------------------------------
# Locate ghidra_import.json next to this script file
# ---------------------------------------------------------------------------
_SCRIPT_DIR = os.path.dirname(getSourceFile().getAbsolutePath())
_JSON_PATH  = os.path.normpath(os.path.join(_SCRIPT_DIR, "ghidra_import.json"))


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------
def _status_badge(status, pct):
    if status == "matched":
        return "100% BYTE-EXACT MATCH  [AI-VERIFIED vs retail binary]"
    elif status == "near_miss":
        return "NEAR MISS  {:.1f}%  -- small instruction differences remain".format(pct)
    else:
        return "PARTIAL  {:.1f}%  -- best AI attempt, not yet verified".format(pct)


def _build_plate_comment(entry):
    sep = "=" * 64
    lines = [
        sep,
        "  RaC1 AI Decompilation Platform",
        "  " + _status_badge(entry["status"], entry["match_pct"]),
    ]
    if entry.get("source_file"):
        lines.append("  Source  : " + entry["source_file"])
    if entry.get("size"):
        bdiff = entry.get("byte_diff", -1)
        diff_str = "{} bytes differ".format(bdiff) if bdiff >= 0 else "unknown"
        lines.append("  Size    : {} bytes  |  Diff: {}".format(entry["size"], diff_str))
    lines.append(sep)

    c_code = (entry.get("c_code") or "").strip()
    if c_code:
        lines.append("")
        if len(c_code) > 4000:
            c_code = c_code[:4000] + "\n\n/* ... truncated -- see src/ for full code ... */"
        lines.append(c_code)

    return "\n".join(lines)


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
def run():
    # ---- Sanity check: JSON must exist ------------------------------------
    if not os.path.exists(_JSON_PATH):
        popup(
            "ghidra_import.json not found!\n\n"
            "Expected:\n" + _JSON_PATH + "\n\n"
            "Generate it first by running outside Ghidra:\n"
            "  python tools/ghidra_export_progress.py\n\n"
            "(Requires Python 3 and the rac1-ai-platform database.)"
        )
        return

    with open(_JSON_PATH, "r") as fh:
        functions = json.load(fh)

    if not functions:
        popup(
            "ghidra_import.json is empty.\n"
            "Run  python tools/ghidra_export_progress.py  to populate it."
        )
        return

    total          = len(functions)
    count_ok       = 0
    count_matched  = 0
    count_notfound = 0

    monitor.setMessage("Importing RaC1 AI decompilation progress...")
    monitor.setMaximum(total)

    for i, entry in enumerate(functions):
        monitor.setProgress(i)
        if monitor.isCancelled():
            print("[ghidra_import] Cancelled at {}/{}".format(i, total))
            break

        name   = entry.get("name", "")
        addr_s = entry.get("addr", "")
        status = entry.get("status", "unknown")
        pct    = entry.get("match_pct", 0.0)

        # Parse hex address from JSON
        try:
            addr = toAddr(long(addr_s, 16))
        except Exception as ex:
            print("[WARN] Bad address '{}' for {}: {}".format(addr_s, name, ex))
            count_notfound += 1
            continue

        # Find the function in Ghidra
        func = getFunctionAt(addr)
        if func is None:
            func = getFunctionContaining(addr)
        if func is None:
            count_notfound += 1
            continue

        # Set plate comment (visible in listing + decompiler)
        setPlateComment(addr, _build_plate_comment(entry))

        # Extra EOL marker for exact matches
        if status == "matched":
            setEOLComment(addr, "[AI-MATCHED 100%]")
            count_matched += 1

        count_ok += 1

    # ---- Summary -----------------------------------------------------------
    msg = (
        "RaC1 AI Progress Import Complete!\n"
        "\n"
        "Functions in JSON       : {total}\n"
        "Functions annotated     : {ok}\n"
        "  Exact matches (100%)  : {matched}\n"
        "  Partial / near miss   : {partial}\n"
        "Not found in binary     : {nf}\n"
        "\n"
        "Plate comments added above each annotated function.\n"
        "Exact matches also show  [AI-MATCHED 100%]  on their first instruction."
    ).format(
        total   = total,
        ok      = count_ok,
        matched = count_matched,
        partial = count_ok - count_matched,
        nf      = count_notfound,
    )
    print("[ghidra_import] Done. " + msg.replace("\n", "  |  "))
    popup(msg)


run()
