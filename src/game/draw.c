#include "common.h"
#include "structs.h"

/*
 * draw.cpp in the original source; text 0x1F0F30-0x1F7C60.
 * Name and boundary from the NTSC split in bordplate's RC1 project
 * (codeberg.org/bordplate/RC1), mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

/* Declarations in scope here before the split. */
extern char D_0013E650[];
extern int D_0015F694;
extern void func_001F9A98(void *, void *, int);
extern char D_00189310[];
extern char D_001899D0[];
extern void *D_001871C0 NOT_SDA;
typedef struct {
    char unk_00[8];
    void (*fn_08)(void *);
    char unk_0C[4];
    void (*fn_10)(void *);
} DispatchRec;
extern DispatchRec D_001E8F80[];

extern int D_0018A3B0[];

void func_001F0F30(void) {
    int *p = D_0018A3B0;
    int val = 1;
    int i = 0x13;
    p = (int *)((char *)p + 0x4C);
    for (; i >= 0; i--, p--) {
        *p = val;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F0F70);

typedef struct {
    int x;
    int y;
    int color;
    char *str;
} DrawTextRec;
extern DrawTextRec D_0018AC00[];
extern short D_0015F100;
extern short D_0015F104;
extern char D_0015F108[];
extern int func_00116248();

/* Queues one text item: D_0018AC00[n] = {x, y, colour, pool position},
   then sprintf(pool, "%s", str) (D_0015F108 is "%s") advances the
   D_0015F100 string pool past the copy. Indexing the table at every
   store gives retail's two addu forms; a `DrawTextRec *` local folds
   them into one register and comes out 12 bytes short. */
void func_001F0F78(int x, int y, int color, char *str) {
    int n = *(int *)&D_0015F104;

    D_0018AC00[n].x = x;
    D_0018AC00[n].y = y;
    D_0018AC00[n].color = color;
    D_0018AC00[n].str = *(char **)&D_0015F100;
    *(int *)&D_0015F104 = n + 1;
    *(char **)&D_0015F100 += func_00116248(*(char **)&D_0015F100, D_0015F108, str) + 1;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F0FF0);

/*
 * Reverted: size mismatch (ours=132, retail=140 -- 8 bytes short).
 * Center-text width helper: sums a per-character width table indexed
 * by (char - 0x20), clamped to the space-character entry for
 * anything outside the printable range, then offsets arg0 by half
 * the total width before forwarding to func_001F0F78.
 *
 *   extern int D_00189EC0[];
 *
 *   int func_001F0FF8(int arg0, int arg1, int arg2, char *str) {
 *       int sum = 0;
 *       unsigned char c = *str;
 *       if (c != 0) {
 *           char *p = str;
 *           do {
 *               int idx = 0x20;
 *               int ch = *(unsigned char *)p;
 *               unsigned char next;
 *               p++;
 *               ch = (ch - 0x20) & 0xFF;
 *               next = *(unsigned char *)p;
 *               if ((unsigned int)ch < 0x60) {
 *                   idx = ch;
 *               }
 *               sum += D_00189EC0[idx];
 *               if (next == 0) {
 *                   break;
 *               }
 *           } while (1);
 *       }
 *       arg0 -= sum >> 1;
 *       func_001F0F78(arg0, arg1, arg2, str);
 *       return arg0;
 *   }
 *
 * Two residuals: retail encodes the range check as `sltiu v,ch,0x60`
 * + `movn`; this compiler always canonicalizes an unsigned `< 0x60`
 * (tried the equivalent `<= 0x5F` too, identical output) into
 * `sltu v,0x5F,ch` + `movz` instead. Retail also preloads the 0x20
 * default into its own register once, before the loop; hoisting it
 * into an explicit local regressed further rather than helping.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001F0FF8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F1088);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2410);

extern void func_001FA190(void *);
extern void func_001FA540(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9EE8(void *, void *, void *);
extern float D_0018D010;

typedef struct {
    char pad0[0x40];
    float viewMtx[4][4];   /* +0x40 */
    char pad1[0xC0];
    float focus[3];        /* +0x140 */
} CameraBlock;
/* The camera block as a struct: all four accesses then share one base
   register with field offsets, as in retail. */
extern CameraBlock D_00187040_cam __asm__("D_00187040");

typedef struct {
    float x, y, z;
} Vec3f;

/* Projects camera-space point a1 through the camera matrix, divides by
   depth (D_0018D010 / w) and scales to x16 screen units. func_002346C0
   in tfragfunc.c builds the same matrix. */
void func_001F2418(Vec3f *a0, float *a1) {
    float m[4][4];
    float m2[4][4];
    float v[4];
    float out[4];
    float invw;

    func_001FA190(m);
    m[3][0] = -D_00187040_cam.focus[0] * 1024.0f;
    m[3][1] = -D_00187040_cam.focus[1] * 1024.0f;
    m[3][2] = -D_00187040_cam.focus[2] * 1024.0f;
    func_001FA540(m2, D_00187040_cam.viewMtx, m);

    func_001F9C30(v, a1, 1024.0f);
    v[3] = 1.0f;
    func_001F9EE8(out, v, m2);

    invw = D_0018D010 / out[3];
    a0->z = out[2] * 0.0009765625f;
    out[0] = out[0] * invw + 2048.0f;
    a0->x = out[0] * 16.0f;
    out[1] = out[1] * invw + 2048.0f;
    a0->y = out[1] * 16.0f;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F2550);

void func_001F2558(void) {
}

void func_001F2560(void) {
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F2568);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2608);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2930); /* UpdateFog(int) */

INCLUDE_ASM("asm/nonmatchings/text", func_001F2A38); /* ParseOcclGrid */

extern int func_001F2A38(int, int, int);

/* GetOcclGridFromPair(int, int, int, int, int, int, float) */
int func_001F2B10(int a0, int a1, int a2, int a3, int a4, int a5, float t) {
    int r;
    int b0;
    int b1;
    int b2;

    if (t < 0.5f) {
        r = func_001F2A38(a0, a1, a2);
        if (r != 0) {
            return r;
        }
        b0 = a3;
        b1 = a4;
        b2 = a5;
    } else {
        r = func_001F2A38(a3, a4, a5);
        if (r != 0) {
            return r;
        }
        b0 = a0;
        b1 = a1;
        b2 = a2;
    }
    return func_001F2A38(b0, b1, b2);
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F2BC8); /* BuildOcclVisibility(void) */

/* Unprototyped deliberately: two call sites need incompatible arg1
   types (-1 and a pointer) and both callers are byte-exact, so
   neither may be edited. Codegen is identical either way -- int and
   pointer are both 32-bit in the same arg register. */
extern void func_001F99B0();
extern void func_001F2BC8(void);
extern int D_0018C434 NOT_SDA;
extern char D_001940C0[];

/* UpdateOcclusion(void) */
void func_001F2FB8(void) {
    int state = D_0018C434;
    if (state == 0) {
        func_001F99B0(D_001940C0, -1, 0x80);
    } else if (state == 2) {
        func_001F2BC8();
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F3008); /* InitViewContext(void) */

INCLUDE_ASM("asm/nonmatchings/text", func_001F3140); /* UpdateViewContext(void) */

INCLUDE_ASM("asm/nonmatchings/text", func_001F3760);

INCLUDE_ASM("asm/nonmatchings/text", func_001F3890); /* SetPalMode(int) */

/*
 * ResetDrawGlobals. Seventeen zero stores in a row, in three addressing
 * forms that are all one assembler macro: lui/$at for most, plain $gp
 * for the three that really are small-data, and $gp again for the last
 * one because it lands in the jr delay slot where a two-instruction
 * expansion will not fit.
 */
extern int D_0015F430 MACRO_ADDR;
extern int D_0015F434 MACRO_ADDR;
extern short D_0015F44C;              /* SDA, gp -0x78B4 */
extern short D_0015F460;              /* SDA, gp -0x78A0 */
extern short D_0015F470;              /* SDA, gp -0x7890 */
extern int D_0015F544 MACRO_ADDR;
extern int D_0015F548 MACRO_ADDR;
extern int D_0015F564 MACRO_ADDR;
extern int D_0015F568 MACRO_ADDR;
extern int D_0015F56C MACRO_ADDR;
extern int D_0015F570 MACRO_ADDR;
extern int D_0015F574 MACRO_ADDR;
extern int D_0015F728 MACRO_ADDR;
extern int D_00161290 MACRO_ADDR;
extern int D_00161294 MACRO_ADDR;
extern int D_00161298 MACRO_ADDR;
extern int D_0016129C MACRO_ADDR;

void func_001F3B90(void) {
    D_0015F564 = 0;
    D_0015F56C = 0;
    D_0015F570 = 0;
    D_0015F568 = 0;
    D_0015F574 = 0;
    D_0015F430 = 0;
    D_0015F434 = 0;
    D_0015F544 = 0;
    D_0015F548 = 0;
    *(int *)&D_0015F44C = 0;
    *(int *)&D_0015F460 = 0;
    *(int *)&D_0015F470 = 0;
    D_0015F728 = 0;
    D_00161290 = 0;
    D_00161294 = 0;
    D_00161298 = 0;
    D_0016129C = 0;
}

extern int *D_00161000 MACRO_ADDR;
extern void func_00234C98(int, long);
extern char D_0013D0C0[];
extern char D_0013D010[];
extern int D_0018CE00[];

/* ResetGsRegisters(void) */
void func_001F3C10(void) {
    D_00161000[0] = 0x30000013;
    D_00161000[1] = (int)D_0013D0C0;
    D_00161000[2] = 0;
    D_00161000[3] = 0x50000013;
    D_00161000 += 4;
    D_00161000[0] = 0x3000000B;
    D_00161000[1] = (int)D_0013D010;
    D_00161000[2] = 0;
    D_00161000[3] = 0x5000000B;
    D_00161000 += 4;
    func_00234C98(0x3D, (long)D_0018CE00[0x8C] | ((long)D_0018CE00[0x8D] << 8) |
                        ((long)D_0018CE00[0x8E] << 16));
}

extern long D_00151888[3];

/* GS privileged-register writes (0x1200_00XX = the GS's memory-mapped
   register block): CSR ack, PMODE, then SMODE2/DISPFB1/DISPFB2/DISPLAY1/
   DISPLAY2/BGCOLOR set from a 3-entry table. */
/* ResetGsRegistersPr(void) */
void func_001F3D00(void) {
    *(volatile long *)0x120000E0 = 0;
    *(volatile long *)0x12000000 = 0xFFA1;
    *(volatile long *)0x12000020 = D_00151888[0];
    *(volatile long *)0x12000070 = D_00151888[1];
    *(volatile long *)0x12000090 = D_00151888[1];
    *(volatile long *)0x12000080 = D_00151888[2];
    *(volatile long *)0x120000A0 = D_00151888[2];
    *(volatile long *)0x120000D0 = 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F3D78); /* DrawDebugProfiler */

extern int D_0015F6FC;
extern short D_0015F534;              /* SDA, gp -0x77CC */
extern void func_001FB530(void);
extern void func_001F3D78(void);

extern int D_0015F6FC_m __asm__("D_0015F6FC") MACRO_ADDR;

/* D_0015F6FC is read through a MACRO_ADDR alias: retail's one-register
   lui $2 / lw $2 (an older note filed it as an allocator question). */
void func_001F45F0(void) {
    if (D_0015F6FC_m == 0) {
        func_001FB530();
        *(int *)&D_0015F534 = 0x7F;
        func_001F3D78();
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F4628);

/*
 * REVERTED (size mismatch: 268 vs retail's 276). Semantics recovered with
 * confidence -- SetupGifPaging(int): saves the current D_00161000 mark into
 * D_0015F550, reserves 0x10 bytes from it, copies D_0015EF78 into D_0015EF74,
 * clears the anonymous flag at gp-0x77A8 (D_0015F558), then zeroes the low
 * 8 bytes of D_0015F55C entries of the 0x10-byte D_0018D540 paging table
 * (same table func_00203038 fills). If arg0==0 it also walks two arrays
 * hanging off the D_0019A4E8 arena (int *b = &D_0019A4E8): b[9], sized by
 * *(b[6]+0x44), clearing each element's halfword at +4 when it's >=
 * (D_0015EF8C >> 8); and b[10], sized by *(b[6]+0x24), unconditionally
 * clearing every element's halfword at +4:
 *
 *   void func_001F4630(int arg0) {
 *       int *b = &D_0019A4E8;
 *       int i, count;
 *
 *       D_0015F550 = (int)D_00161000;
 *       D_00161000 += 4;
 *       D_0015EF74 = D_0015EF78;
 *       *(int *)&D_0015F558 = 0;
 *
 *       count = D_0015F55C;
 *       if (count > 0) {
 *           char *e = D_0018D540;
 *           for (i = 0; i < count; i++) {
 *               *(long *)e = 0;
 *               e += 0x10;
 *           }
 *       }
 *
 *       if (arg0 == 0) {
 *           int idx, thresh;
 *           unsigned short *elem;
 *           short *elem2;
 *
 *           thresh = D_0015EF8C >> 8;
 *           for (idx = 0; idx < *(int *)((char *)b[6] + 0x44); idx++) {
 *               elem = (unsigned short *)((char *)b[9] + idx * 8 + 4);
 *               if ((int)*elem >= thresh) {
 *                   *elem = 0;
 *               }
 *           }
 *           for (idx = 0; idx < *(int *)((char *)b[6] + 0x24); idx++) {
 *               elem2 = (short *)((char *)b[10] + idx * 8 + 4);
 *               *elem2 = 0;
 *           }
 *       }
 *   }
 *
 * (needs D_00161000/D_0015F550/D_0015EF78/D_0015EF74/D_0015F55C all
 * MACRO_ADDR, D_0015F558 as the usual short+cast anonymous-bss trick).
 * Residual: retail computes &D_0019A4E8's upper bits (lui) ONCE into a
 * saved register and reuses it for both the b[9]-array loop and the
 * b[10]-array loop below it; this compiler materializes the address a
 * second time (a fresh lui+addiu) for the second loop instead of reusing
 * the first. 8 bytes over. Not reached by hoisting `b` differently or by
 * introducing an explicit second local alias for the same pointer.
 *
 * Name and struct layout independently corroborated by the Lombyte NTSC
 * project's own SetupGifPaging__Fi recovery (github.com/mateuszklysz/
 * Lombyte, src/assembly/textbin/fun_001f4280.c) -- same field writes,
 * same arena offsets (their D_0019A3E8.unk18->unk44/unk24 and unk24/
 * unk28 match our b[6]->+0x44/+0x24 and b[9]/b[10]), same anonymous
 * gp-relative flag clear. Their copy is also C_NON_MATCHING.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001F4630); /* SetupGifPaging(int) */

INCLUDE_ASM("asm/nonmatchings/text", func_001F4748); /* DoGifPaging(void) */

INCLUDE_ASM("asm/nonmatchings/text", func_001F4868); /* GetEffectTex(int, int) */

/*
 * Four parallel callback lists, each a (function, argument) pair of
 * arrays with its own count, plus a "register" and a "run them all"
 * function per list. The counts are reached with retail's one-register
 * macro form, so they are MACRO_ADDR.
 */
typedef void (*DrawCallback)(void *);
extern DrawCallback D_0018DC40[];
extern void *D_0018DD40[];
extern DrawCallback D_0018DE40[];
extern void *D_0018DF40[];
extern DrawCallback D_0018E040[];
extern void *D_0018E140[];
extern DrawCallback D_0018E240[];
extern void *D_0018E340[];

void func_001F49B0(DrawCallback fn, void *arg) {
    int count = D_0015F564;
    if (count < 0x40) {
        D_0018DC40[count] = fn;
        D_0018DD40[count] = arg;
        D_0015F564 = count + 1;
    }
}

void func_001F4A00(void) {
    int i;
    for (i = 0; i < D_0015F564; i++) {
        D_0018DC40[i](D_0018DD40[i]);
    }
}

void func_001F4A78(void) {
    int i;
    for (i = 0; i < D_0015F56C; i++) {
        D_0018E040[i](D_0018E140[i]);
    }
}

void func_001F4AF0(void) {
    int i;
    for (i = 0; i < D_0015F570; i++) {
        D_0018E240[i](D_0018E340[i]);
    }
}

void func_001F4B68(DrawCallback fn, void *arg) {
    int count = D_0015F568;
    if (count < 0x40) {
        D_0018DE40[count] = fn;
        D_0018DF40[count] = arg;
        D_0015F568 = count + 1;
    }
}

void func_001F4BB8(void) {
    int i;
    for (i = 0; i < D_0015F568; i++) {
        D_0018DE40[i](D_0018DF40[i]);
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F4C30);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4E08); /* FadeToBlack(int, unsigned int) */

INCLUDE_ASM("asm/nonmatchings/text", func_001F4F90);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5148);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5368);

extern void func_001F5650(int, int, int, int, unsigned long);
extern int D_0015EF88 MACRO_ADDR;
extern short D_00151880[];

/* GS register writes around an overlay: blend register 0x42 from the
   64-bit word at +8 while it is set, and when the colour at +4 has an
   alpha byte, register 0x4E switched around a full-screen
   func_001F5650 draw. The 64-bit constants are ps2eeas's dli
   sequences (tools/ps2eeas_dli.py). */
void func_001F54E8(char *arg0) {
    long v = *(long *)(arg0 + 8);

    if (v != 0) {
        func_00234C98(0x42, v & 0xFF000000FFL);
    }
    if ((*(int *)(arg0 + 4) & 0xFF000000) != 0) {
        func_00234C98(0x4E, (D_0015EF88 >> 13) | 0x1000000 | 0x100000000L);
        func_001F5650(0, D_00151880[0xA9], 0, D_00151880[0xA8],
                      *(unsigned int *)(arg0 + 4));
        func_00234C98(0x4E, 0x1000000 | (D_0015EF88 >> 13));
    }
    if (*(long *)(arg0 + 8) != 0) {
        func_00234C98(0x42, 0x8000000044L);
    }
}

/* Sets GS register 1 from four bytes packed into one 64-bit value, then
   restores the default register set. The parameters are int, widened in
   the expression: with long parameters the scheduler hoists the last
   dsll one slot early (it was a 6/144 near-miss that way). */
extern void func_00234C98(int, long);
extern int *D_00161000 MACRO_ADDR;
extern char D_0013CD90[];

void func_001F55C0(int a, int b, int c, int d) {
    func_00234C98(1, (long)a | ((long)b << 8) | ((long)c << 16) | ((long)d << 24));
    D_00161000[0] = 0x30000014;
    D_00161000[1] = (int)D_0013CD90;
    D_00161000[2] = 0;
    D_00161000[3] = 0x50000014;
    D_00161000 += 4;
}

/*
 * REVERTED (size mismatch: 528 vs retail's 424 -- badly over). Semantics
 * recovered with confidence -- appends a 6-qword GIF/DMA packet: a tag
 * header, a copy of the D_00160920 register descriptor (patched with tag
 * id 0x8001), a {0x144, arg4} constant pair, a copy of the D_00160930
 * descriptor (patched with tag id 0x8004), then 4 packed 64-bit GS
 * TRXPOS-style values built from arg0..arg3 (each *16, i.e. tile
 * coordinates) offset by D_0013E600[4]/[5] (screen origin) minus 8,
 * OR'd with a shared upper-bits format mask:
 *
 *   void func_001F5650(int arg0, int arg1, int arg2, int arg3, unsigned long arg4) {
 *       unsigned long c;
 *
 *       D_00161000[0] = 0x10000005;
 *       D_00161000[1] = 0;
 *       D_00161000[2] = 0;
 *       D_00161000[3] = 0x50000005;
 *       D_00161000 += 4;
 *
 *       *(unsigned long long *)D_00161000 = *(unsigned long long *)D_00160920;
 *       *(short *)D_00161000 = (short)0x8001;
 *       D_00161000 += 4;
 *
 *       *(long *)D_00161000 = 0x144;
 *       *(long *)((char *)D_00161000 + 8) = (long)arg4;
 *       D_00161000 += 4;
 *
 *       *(unsigned long long *)D_00161000 = *(unsigned long long *)D_00160930;
 *       *(short *)D_00161000 = (short)0x8004;
 *       D_00161000 += 4;
 *
 *       c = 0xFFFFUL;
 *       c <<= 16;
 *       c |= 0xF000UL;
 *       c <<= 24;
 *
 *       *(unsigned long *)D_00161000 =
 *           (unsigned long)(unsigned int)((arg2 * 16 + D_0013E600[4] - 8) |
 *                                          ((arg0 * 16 + D_0013E600[5] - 8) << 16)) | c;
 *       *(unsigned long *)((char *)D_00161000 + 8) =
 *           (unsigned long)(unsigned int)((arg3 * 16 + D_0013E600[4] - 8) |
 *                                          ((arg0 * 16 + D_0013E600[5] - 8) << 16)) | c;
 *       *(unsigned long *)((char *)D_00161000 + 0x10) =
 *           (unsigned long)(unsigned int)((arg2 * 16 + D_0013E600[4] - 8) |
 *                                          ((arg1 * 16 + D_0013E600[5] - 8) << 16)) | c;
 *       *(unsigned long *)((char *)D_00161000 + 0x18) =
 *           (unsigned long)(unsigned int)((arg3 * 16 + D_0013E600[4] - 8) |
 *                                          ((arg1 * 16 + D_0013E600[5] - 8) << 16)) | c;
 *
 *       D_00161000 += 8;
 *   }
 *
 * Residual: this compiler runs out of caller-saved temporaries computing
 * the four packed values and spills to a real stack frame (sq s0/s1),
 * where retail keeps everything in temporaries with no frame at all --
 * 104 bytes over. Needs restructuring (probably hoisting the repeated
 * D_0013E600[4]/[5] and arg*16 subexpressions into named locals matching
 * retail's exact reuse, and/or splitting the 4 stores across separate
 * statements with different evaluation order) to bring register pressure
 * down; not attempted further this pass.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001F5650); /* DrawRectOverlay_iiiiUl */

INCLUDE_ASM("asm/nonmatchings/text", func_001F57F8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5800); /* DrawTexturedQuad */

INCLUDE_ASM("asm/nonmatchings/text", func_001F5988);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5BB8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5E60);

INCLUDE_ASM("asm/nonmatchings/text", func_001F62C0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F62C8); /* DrawUIFrame */

INCLUDE_ASM("asm/nonmatchings/text", func_001F6410);

/* gp-relative: declared as a 2-byte type purely so -G2 places it in the
   small-data area (placement is decided by DECLARED size), then accessed
   as the 4-byte word it really is. gp base 0x166D00 - 0x7764 = 0x15F59C. */
extern short D_0015F59C;

void func_001F6598(void) {
    *(int *)&D_0015F59C = 1;
}

void func_001F65A8(void) {
    *(int *)&D_0015F59C = 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F65B0);

extern int func_001F65B0(unsigned char *arg0, int arg1, void *arg2);
extern unsigned char D_001DF3D0[];
extern unsigned char D_001DF770[];
extern unsigned char D_001DFB10[];

int func_001F6600(unsigned char *arg0, int arg1) {
    return func_001F65B0(arg0, arg1, D_001DF3D0);
}

int func_001F6620(unsigned char *arg0, int arg1) {
    return func_001F65B0(arg0, arg1, D_001DF770);
}

int func_001F6640(unsigned char *arg0, int arg1) {
    return func_001F65B0(arg0, arg1, D_001DFB10);
}

/*
 * Retail has 8 bytes of nop padding between func_001F6640 and
 * func_001F6668, and it lives *after* `endlabel` in
 * asm/nonmatchings/text/func_001F6640.s -- so the INCLUDE_ASM stub was
 * supplying it, and replacing that stub with C silently dropped it,
 * shifting every later function in the segment by -8 and corrupting
 * their `jal` targets (func_001F7B40 read 1/44 while being
 * instruction-for-instruction identical to retail). Emitted explicitly
 * to preserve the layout.
 *
 * Check for this whenever converting a stub: content after a .s file's
 * `endlabel` is inter-function padding the stub was carrying, and it has
 * to be reproduced or everything downstream drifts. Alignment directives
 * do not cover it -- both boundaries here are already 8-byte aligned.
 */
__asm__(".section .text\n\tnop\n\tnop\n");

INCLUDE_ASM("asm/nonmatchings/text", func_001F6668); /* FontPrint */

extern void func_001F6668(void *, void *, void *, void *, void *, int,
                          unsigned char *);

/* Same shape as func_001F7560/func_001F75D0 below, one argument wider:
   mode 1 vs 2, D_001DF3D0 vs D_001DF770. Seven arguments, so EABI puts
   the fifth through seventh in $8/$9/$10. */
/* FontPrintLarge */
void func_001F68E8(void *a, void *b, void *c, void *d, void *e) {
    int mode = func_001F4868(1);

    func_001F6668(a, b, c, d, e, mode, D_001DF3D0);
}

/* FontPrintSmall */
void func_001F6968(void *a, void *b, void *c, void *d, void *e) {
    int mode = func_001F4868(2);

    func_001F6668(a, b, c, d, e, mode, D_001DF770);
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F69E8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F69F0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6CE0);

extern int func_001F6600(unsigned char *, int);
extern int func_001F6620(unsigned char *, int);

/* func_001F6CF8/func_001F6D88/func_001F6E18 are func_001F68E8's family
   with a leading measure call: the same mode/table triple (1, 2, 3 and
   D_001DF3D0, D_001DF770, D_001DFB10), each paired with its own
   measuring helper, and the first argument stepped back by whatever that
   helper returns. */
void func_001F6CF8(char *a, void *b, void *c, unsigned char *d, int e) {
    char *p = a - func_001F6600(d, e);
    int mode = func_001F4868(1);

    func_001F6668(p, b, c, d, (void *)e, mode, D_001DF3D0);
}

void func_001F6D88(char *a, void *b, void *c, unsigned char *d, int e) {
    char *p = a - func_001F6620(d, e);
    int mode = func_001F4868(2);

    func_001F6668(p, b, c, d, (void *)e, mode, D_001DF770);
}

void func_001F6E18(char *a, void *b, void *c, unsigned char *d, int e) {
    char *p = a - func_001F6640(d, e);
    int mode = func_001F4868(3);

    func_001F6668(p, b, c, d, (void *)e, mode, D_001DFB10);
}

/* func_001F6EA8/func_001F6F40/func_001F6FD8 are the func_001F6CF8 triple
   centred instead of left-aligned: the step-back is half the measured
   value, and the adjusted position is returned. Typed all-int to match
   the extern func_001F7288 already declares for func_001F6FD8. */
/* FontPrintCenter */
int func_001F6EA8(int a, int b, int c, int d, int e) {
    int p = a - (func_001F6600((unsigned char *)d, e) >> 1);
    int mode = func_001F4868(1);

    func_001F6668((void *)p, (void *)b, (void *)c, (void *)d, (void *)e,
                  mode, D_001DF3D0);
    return p;
}

/* FontPrintCenterSmall */
int func_001F6F40(int a, int b, int c, int d, int e) {
    int p = a - (func_001F6620((unsigned char *)d, e) >> 1);
    int mode = func_001F4868(2);

    func_001F6668((void *)p, (void *)b, (void *)c, (void *)d, (void *)e,
                  mode, D_001DF770);
    return p;
}

/* FontPrintCenterLarge */
int func_001F6FD8(int a, int b, int c, int d, int e) {
    int p = a - (func_001F6640((unsigned char *)d, e) >> 1);
    int mode = func_001F4868(3);

    func_001F6668((void *)p, (void *)b, (void *)c, (void *)d, (void *)e,
                  mode, D_001DFB10);
    return p;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F7070); /* FontPrintWindow */

extern int func_001F4868(int);
extern void func_001F7070(void *, void *, void *, void *, int, unsigned char *);

/* func_001F7560 and func_001F75D0 are the same call with a different
   mode (1 vs 2) and a different table. Six arguments: EABI passes the
   fifth and sixth in $8/$9, which is why they appear alongside $4-$7
   rather than on the stack. */
void func_001F7560(void *a, void *b, void *c, void *d) {
    int mode = func_001F4868(1);

    func_001F7070(a, b, c, d, mode, D_001DF3D0);
}

void func_001F75D0(void *a, void *b, void *c, void *d) {
    int mode = func_001F4868(2);

    func_001F7070(a, b, c, d, mode, D_001DF770);
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F7640);

/* FontSetWindow */
void func_001F7648(void *arg0, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8) {
    short *s = (short *)arg0;
    s[0] = a1;
    s[1] = a2;
    s[2] = a3;
    s[3] = a4;
    s[4] = a5;
    s[5] = a6;
    s[8] = a7;
    s[9] = a8;
    s[6] = 0;
    s[7] = 0;
    s[10] = 0;
    s[11] = 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F7680);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7868);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7A50);

extern void func_001FB498(void);
extern void func_001F3008(void);
extern void func_001F3140(void);

void func_001F7B40(void) {
    func_001FB498();
    func_001F3008();
    func_001F3140();
}

/* Two prototypes for one symbol: func_001F55C0 passes a 64-bit value
   (retail shifts it with dsll), func_001F7B70 passes plain ints
   (addiu, not daddiu). */
extern int D_0015F578 MACRO_ADDR;
extern short D_0015F448;              /* SDA, gp -0x78B8 */
extern void func_001F91B8(void);
extern void func_001F7868(void);
extern void func_001F8B6C(void);

void func_001F7B70(void) {
    if (D_0015F578 != 0) {
        func_00234C98(8, 5);
        func_00234C98(0x14, 0x61);
        func_00234C98(0x47, 0x513F1);
        func_00234C98(0x4A, 1);
        func_001F91B8();
        *(float *)&D_0015F448 = -0.04f;
        func_001F7868();
        func_001F8B6C();
        *(int *)&D_0015F448 = 0;
        func_00234C98(0x4A, 0);
    }
}

extern int D_0018E840[];

void func_001F7BF8(void) {
    int i;
    for (i = 0; i < 0x100; i++) {
        int v = i & 0xE7;
        if (i & 0x8)  v |= 0x10;
        if (i & 0x10) v |= 0x8;
        D_0018E840[v] = (i >> 1) << 24;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F7C50);
