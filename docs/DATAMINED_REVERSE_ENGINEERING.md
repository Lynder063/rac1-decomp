# Datamined Reverse Engineering Intelligence

This document is automatically synthesized from headless Ghidra PS2 EmotionEngine analysis
and retail executable data mining (`SCES_509.16` + overlays).

## 1. Discovered Source Code Hierarchy

The following original C/C++ source translation units were identified through string tables, allocators, and asserts:

| Source File | Identifying Address | Evidence & Subsystem |
|---|---|---|
| `hud.cpp` | `0x0015F7B8` | Heap allocations at line 277 (`0x115`), UI HUD rendering |
| `loaders.cpp` | `0x0015FC70` | Heap allocations at line 571 (`0x23B`), Level loading subsystem |
| `map.cpp` | `0x0015FE18` | In-game minimap & world map render state |
| `camera.c` | `0x001E7A50` | `Camera_CollPrimTest` warning and collision boundary checks |
| `/usr/local/989snd/ee/989snd.c` | `0x00153D78` | Sony 989snd audio system RPC interface |

## 2. Recovered Subsystem Enums

### Memory Card State Machine (`CardState` / `CS_`)
Discovered from pointer table `D_001A04C0` and state strings at `0x0015FE78` and `0x001E83F0`:

```c
typedef enum {
    CS_INIT = 0,
    CS_GOOD_SAVE = 1,
    CS_WARNING = 2,
    CS_NOCARD = 3,
    CS_WAIT_FOR_CARD = 4,
    CS_UNFORMATTED = 5,
    CS_PROMPT_FORMAT = 6,
    CS_FORMAT_PENDING = 7,
    CS_FORMATTING = 8,
    CS_FORMATTED = 9,
    CS_CHECK_SAVE = 10,
    CS_CHECKING_SAVE = 11,
    CS_NOSAVE = 12,
    CS_PROMPT_CREATE_SAVE = 13,
    CS_CREATE_SAVE_PENDING = 14,
    CS_CREATING_SAVE = 15,
    CS_NEWCARD = 16,
    CS_FORMAT_FAILED = 17,
    CS_CREATE_FAILED = 18,
    CS_NO_ROOM = 19,
    CS_LOAD_FAILED = 20,
    CS_SAVE_FAILED = 21,
    CS_SAVING = 22,
    CS_PROMPT_BEGIN_UNFORMATTED = 23,
    CS_PROMPT_BEGIN_NOSAVE = 24
} CardState;
```

## 3. High-Value Hub Functions (Most Called)

Functions called by the largest number of callers across the game code:

| Function | Callers | Inferred Identity / Role |
|---|---|---|
| `func_00234C98` (0x00234C98) | 48 |  |
| `FlushCache` (0x00118D80) | 42 |  |
| `func_0011B4C8` (0x0011B4C8) | 41 |  |
| `SignalSema` (0x00118C90) | 39 |  |
| `func_0011D9A8` (0x0011D9A8) | 36 |  |
| `func_0011D960` (0x0011D960) | 35 |  |
| `func_001F4630` (0x001F4630) | 34 |  |
| `func_001F4748` (0x001F4748) | 34 |  |
| `func_001FE540` (0x001FE540) | 33 | Paradox: This message does not exist |
| `func_001F98C0` (0x001F98C0) | 32 |  |
| `func_001FA888` (0x001FA888) | 32 |  |
| `func_001F4868` (0x001F4868) | 29 |  |
| `func_001FA898` (0x001FA898) | 28 |  |
| `func_001F9C30` (0x001F9C30) | 27 |  |
| `func_0012E820` (0x0012E820) | 24 | 989snd.c: RPC collision!
; snd_SendIOPCommandNoWait: BUFFER  |

## 4. Functions with Rich Diagnostic Strings

These functions contain direct assertion, error, or debug logs that reveal their original implementation:

| Function | String Address | Log / Error String |
|---|---|---|
| `func_001194C8` | `0x001527E8` | `'## internel error in libkernl.a!'` |
| `func_00119910` | `0x00152838` | `'TTY: receive error'` |
| `func_00120D28` | `0x00152FB0` | `'Ncmd fail sema cur_cmd:%d keep_cmd:%d'` |
| `func_00121040` | `0x00153010` | `'Scmd fail sema cur_cmd:%d keep_cmd:%d'` |
| `func_001236F0` | `0x00153550` | `'bind error libmc'` |
| `func_00124650` | `0x001535D8` | `'libdbc: bind failed'` |
| `func_001247E8` | `0x00153658` | `'sceDbcSetWorkAddr: rpc error'` |
| `func_00124858` | `0x00153678` | `'sceDbcCreateSocket: rpc error'` |
| `func_00124920` | `0x001536B8` | `'sceDbcGetDepNumber: rpc error'` |
| `func_00124A70` | `0x001537A0` | `'sceDbcReceiveData: rpc error'` |
| `func_001273A0` | `0x00153888` | `'Error code detected(BDEC)'` |
| `func_00127960` | `0x00153928` | `'_sliceA0(): error happens'` |
| `func_0012A558` | `0x00153AB0` | `'CSC handler error'` |
| `func_0012C420` | `0x00153BD8` | `'[MPEG ERROR]%s'` |
| `func_0012D2A0` | `0x00153D28` | `"Can't read rom error"` |
| `func_0012DB68` | `0x00153D50` | `'error: sceSifBindRpc in %s, at line %d'` |
| `func_0012DFB0` | `0x00153D98` | `"989snd.c: Sif says RPC isn't busy, but we still don't have r"` |
| `func_0012E060` | `0x00153E20` | `'989snd.c: RPC collision!'` |
| `func_0012E1C8` | `0x00153E20` | `'989snd.c: RPC collision!'` |
| `func_0012E688` | `0x00153E20` | `'989snd.c: RPC collision!'` |
| `func_0012E820` | `0x00153E20` | `'989snd.c: RPC collision!'` |
| `func_0012EB18` | `0x00153E20` | `'989snd.c: RPC collision!'` |
| `func_00208AB0` | `0x0015FE68` | `'error'` |
| `func_0020BAA8` | `0x001E8690` | `'ERROR: could not init memcard lib'` |
| `func_00217628` | `0x001E8980` | `'****Load file failed to start!****'` |
| `func_00235218` | `0x001E8D38` | `'DMAC(15) - Bus Error'` |
| `func_0023BF48` | `0x001612F8` | `'[ Error ] %s'` |
| `func_0023E298` | `0x001E8E80` | `'sceMpegGetPicture() decode error'` |

## 5. Usage in Decompilation Workflow

1. **`python3 tools/dossier.py <func>`**: Automatically references `config/strings.json` and displays all strings.
2. **`config/ghidra_callgraph.json`**: Inspect upstream callers and downstream callees when typing struct pointers.
3. **`config/ghidra_functions.json`**: Query signatures and stack bounds for any function.
