# Parallel round, agent D (range 0x220000-0x23E730 in src/text.c)

Notes for the coordinator to merge into `docs/DECOMP_PROGRESS.md`.

## Matched

| Function | Status | Notes |
|---|---|---|
| `func_0022F090` | **matches** | `void func_0022F090(int arg0, long arg1) { int *p = (int *)(int)arg1; if (p != 0) *p = arg0; }`. Byte-exact (0/24). **First confirmation of the newly-solved sign-extension technique on a previously-blocked entry** — its old note said it was held by the `dsll32`/`dsra32` question and had been extensively tried; declaring the pointer parameter `long` and narrowing with `(int)` at the use site reproduces the pair exactly. |
| `func_0022F0F0` | **matches** | Nested version of the above: `if (p != 0) { *p = arg0; if (arg0 == 0) { /* three zero-stores */ } }`. Byte-exact (0/44). Needed two techniques together: the sign-extension fix for the `long` pointer parameter, then the store-order rotation rule for the three zero-stores (retail emits `+0x4, +0x18, +0x1C`; source must be written `+0x18, +0x1C, +0x4`). Also worth recording: its old entry flagged an unfilled `beqz` delay slot as something to explain, but that fell out naturally from the plain (non-`volatile`) C — so an unfilled delay slot **on its own** is not a `volatile` signal; the documented `volatile` technique needs the *redundant reload* half of the signature too. |
