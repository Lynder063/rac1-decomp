# Third-party notices

## Lombyte

The following functions adapt source from
[Lombyte](https://github.com/mateuszklysz/Lombyte) for the PAL executable:

- `src/core/00119328.c`: `func_001194C8` (`topThread`)
- `src/core/00119D88.c`: `func_0011C208` (`sceClose`)
- `src/core/00119868.c`: `func_00119CC8` (`sceTtyInit`)
- `src/game/hud.c`: `func_00201190` (HUD sprite with explicit UV corners)
- `src/game/vendor.c`: `func_00239A00` (vendor item carousel)
- `src/game/lights.c`: `func_002027C0` (detach point light)
- `src/core/0011D0D0.c`: `func_0011D248` (`sceSifRebootIop`)
- `src/game/menu.c`: `func_00208338` (read sector, track size)
- `src/game/loaders.c`: `func_00203038` (unpack point records)
- `src/core/00112380.c`: `func_001123A8` (`_calloc_r`)
- `src/core/00119D88.c`: `func_0011B2F8` (`sceSifBindRpc`)
- `src/core/00119D88.c`: `func_0011AE20` (`sceSifInitRpc`)
- `src/core/00121750.c`: `func_00121B78` (`sceGsResetGraph`)
- `src/core/00123168.c`: `func_001233E8` (`sceDmaPutEnv`)

MIT License

Copyright (c) 2026 Mateusz Kłysz

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
