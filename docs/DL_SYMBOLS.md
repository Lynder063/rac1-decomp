# Deadlocked's debug symbols

*Ratchet: Deadlocked* (2005) is built from the same engine as this game.
A prototype of it (the September 13, 2005 build) kept its `.mdebug`
section: STABS debug information for the core executable. The community
dumped it with chaoticgd's [ccc](https://github.com/chaoticgd/ccc) into
four text files:

| File | Contents |
|---|---|
| `dlfuncs.txt` | every function, grouped by source file (`X:\rcb\code\stable\game\hud.cpp`): address, size, signature with parameter names, locals, and the register or stack slot each lived in |
| `dltypes.txt` | every struct, union and enum (`MobyInstance`, `Hero`, ...) with field offsets |
| `dlglobals.txt` | every global, by file and section |
| `dlsections.txt` | the order of source files in each section: the link order |

They cover the core executable only, not the level programs.

## Getting them

They are not in this repository and must never be committed: like the
disc image, they are derived from a game binary. They were posted in the
R&C modding community's reverse-engineering channel, or can be regenerated
with ccc's `stdump` from the prototype's ELF. Put them in `baserom/dl/`
(gitignored) under those four names, or set `DL_SYMBOLS` to their
directory.

## Use

```sh
python3 tools/dlsyms.py func_001E9088        # our function -> Deadlocked's entry
python3 tools/dlsyms.py --file game/hud.cpp  # one source file's functions, in order
python3 tools/dlsyms.py --type MobyInstance  # a type
python3 tools/dlsyms.py --global Level       # a global
python3 tools/dlsyms.py --coverage
```

`tools/dossier.py` adds Deadlocked's entry to `CONTEXT.md` for every
function with a real name in `config/symbol_names.txt`: 227 of those 259
names are in the dump. Of the 36 named functions not matched yet, 25 are
there; `BuildOcclVisibility`, `Hud_SendResidentBank`,
`actuator_CalcPower` and `LoadHudBanks` are within 2% of our size.

## What carries over

- **Names and variable order.** Parameter and local names, and their
  declaration order, which decides register allocation.
- **Types.** `MobyInstance` matches what our code does: `+0x20` is
  `state` and `+0x30` `updateDist` (an update function sets it to 0xFF),
  as in func_L00_002A5F68.
- **Source files.** Our `src/game/` units are Deadlocked's files
  (`hud.cpp`, `actuator.cpp`, ...), in the same link order.

## What doesn't

- The code: three years of changes. Sizes range from equal to double.
- Addresses, and anything level-specific. The prototype's level code has
  no symbols, and moby class numbers differ between the games
  (Deadlocked's `update/moby112.cpp` is not our UpdateMoby_112).
- The toolchain. Deadlocked was built with a later SN GCC whose
  `long long` is 128 bits wide; register choices only hint at ours.
