# Ghidra — setup, import and MCP integration

Ghidra is wired up in this project in two complementary roles:

1. **Reference decompiler** — a human cross-checks their assembly reading
   against Ghidra's output (never the other way round).
2. **Live AI context source** — the `rac1-ai-platform` night worker queries
   a running Ghidra instance over HTTP to fetch PS2-aware decompilations
   before sending a prompt to the local Qwen model.

---

## Why Ghidra is not the main matching tool

Matching decompilation is not a reading problem. The hard question is never
*"what does this function do"* — it is *"which source shape makes GCC 2.95.3
emit these exact instructions"*. A decompiler deliberately erases exactly
the things those decisions turn on — delay slots, branch senses, which
register a value lives in, whether a constant was rematerialised or copied.
Its output is C that no 2002 compiler would produce, so it cannot be fed
to the toolchain and reading it instead of the assembly hides the evidence
you need.

## What Ghidra IS good for

1. **Large functions.** Everything short in `core_text` is nearly picked
   over; what is left has real control flow. Hand-decoding those is where
   mistakes start.
2. **Struct recovery.** The source is full of `*(int *)(s + 0x174)`. Ghidra
   cross-references every caller at once and is far better than hand-tracing
   at establishing that a given offset is one shared field.
3. **The 64-bit routines** (`func_00119EA8`, `func_00122598`,
   `func_0012AC80` and friends) where `ld`/`dsll32`/`dsra32` soup makes it
   hard to see what is a double, what is a narrowing, and what is a hardware
   register read.
4. **PS2 kernel syscalls.** The `ghidra-emotionengine-reloaded` plugin
   resolves the EE's `syscall` number into its SDK name (e.g. `syscall -47`
   → `GetThreadId`), which is invaluable for thread-management code.

## Rules

* Nothing from Ghidra is ever pasted into `src/` as-is. Decode from the
  assembly; use the Ghidra dump to check your reading.
* The dump is regenerable, so only the tooling is committed, not the dump.

---

## Required software

None of this is committed — it all lives outside the repo:

| Piece | Where |
| --- | --- |
| Ghidra 12.1.4 | <https://github.com/NationalSecurityAgency/ghidra/releases> |
| ghidra-emotionengine-reloaded | <https://github.com/chaoticgd/ghidra-emotionengine-reloaded> |
| GhidraMCP extension | built from `bethington/ghidra-mcp` (see below) |
| Temurin JDK 21 | `winget install EclipseAdoptium.Temurin.21.JDK` |

### Emotion Engine processor plugin (required)

Stock Ghidra has no R5900 language — its MIPS variants top out at 64-bit
MIPS, so the EE's `sq`/`lq` (used for every register spill in `text`) and
all of COP2/VU0 fail to decode. Unzip the release matching your Ghidra
version into `<ghidra>/Ghidra/Extensions/`. When importing `SCES_509.16`
select language `r5900:LE:32:default` — the ELF header only claims plain
MIPS so Ghidra will not pick it automatically.

### GhidraMCP extension (for AI integration)

The night worker communicates with Ghidra over a local HTTP server exposed
by the GhidraMCP Java extension:

```
git clone https://github.com/bethington/ghidra-mcp
cd ghidra-mcp
./gradlew buildExtension -PGHIDRA_INSTALL_DIR=C:\Users\<you>\Downloads\ghidra_12.1.4_PUBLIC
```

Copy the resulting `dist/ghidra_12.1.4_PUBLIC_*_GhidraMCP.zip` into
`<ghidra>/Ghidra/Extensions/` and install it from **File → Install
Extensions** inside Ghidra. The extension starts an HTTP server on
`127.0.0.1:8089` when Ghidra is running with a program open.

---

## Importing AI decompilation progress into Ghidra

The tooling is a two-step process: export from the AI platform database,
then import into a running Ghidra instance.

### Step 1 — Export (run outside Ghidra, with Python 3)

```bash
# Auto-discovers the DB if rac1-ai-platform lives next to this repo
python tools/ghidra_export_progress.py

# Point at the DB explicitly
python tools/ghidra_export_progress.py --db C:/path/to/ai_decomp.db

# Only 100 % byte-exact matches
python tools/ghidra_export_progress.py --matched-only

# Functions with >= 50 % match
python tools/ghidra_export_progress.py --min-pct 50
```

This writes `tools/ghidra_import.json` (gitignored — generated data).

### Step 2 — Import (run inside Ghidra, no Python required)

> **Note:** The import script is written in Java so it runs natively in any
> Ghidra version without requiring PyGhidra or Jython.

1. Open `SCES_509.16` in Ghidra with language `r5900:LE:32:default` and run
   **Auto Analyse**.
2. Open **Window → Script Manager**.
3. Click the gear icon → **Edit Script Paths** → add the full path to
   `<repo>/tools/`.
4. In the filter box type `GhidraImportProgress` and double-click to run.

The script reads `tools/ghidra_import.json` and sets a plate comment above
every matched function with its full C body. Re-run Step 1 any time, then
re-run the Java script to refresh.

---

## Night worker live integration

When `rac1-ai-platform/night_worker.py` is running with Ghidra open, it
automatically queries `http://127.0.0.1:8089/decompile_function` for each
function before sending a prompt to the local Qwen model. The Ghidra
decompilation (R5900-aware, with correct syscall names) is injected into
the prompt as an additional reference section:

```
### GHIDRA DECOMPILATION (PS2/MIPS R5900 Aware):
```c
void FUN_00119678(ulong param_1) { … }
```
```

If Ghidra is not running the worker falls back silently to the m2c sketch
only — no crash, no hang.

The terminal output from the worker shows the connection status:

```
[qwen2.5-coder:rac1][func_00119678] [Ghidra MCP] Successfully fetched PS2 decompilation (899 bytes)
# or, if Ghidra is closed:
[qwen2.5-coder:rac1][func_00119678] [Ghidra MCP] Could not fetch decompilation: Connection refused
```
