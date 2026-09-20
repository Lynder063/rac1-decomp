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

INCLUDE_ASM("asm/nonmatchings/text", func_001F0F78);

INCLUDE_ASM("asm/nonmatchings/text", func_001F0FF0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F0FF8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F1088);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2410);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2418);

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

INCLUDE_ASM("asm/nonmatchings/text", func_001F3C10); /* ResetGsRegisters(void) */

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

/*
 * Close, not exact (10/52), same size so harmless to anything after it.
 * Structure is instruction-for-instruction identical to retail. The
 * residual is the known allocator question in its destination-reuse
 * form: retail emits `lui $2` / `lw $2,%lo($2)`, reusing the address
 * register as the load destination, where this compiler emits
 * `lui $2` / `lw $3,...($2)`; the remaining diff is the stack-adjust
 * being scheduled before vs after that lui. Hoisting the load into a
 * local was tried and changes nothing.
 */
void func_001F45F0(void) {
    if (D_0015F6FC == 0) {
        func_001FB530();
        *(int *)&D_0015F534 = 0x7F;
        func_001F3D78();
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F4628);

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

INCLUDE_ASM("asm/nonmatchings/text", func_001F54E8);

/*
 * 6/144: the only residual is `dsll a3,a3,0x18` scheduled one slot
 * early. Four associations of the or-chain (flat, fully left-nested,
 * right-nested, and split into statements) all compile to the same
 * order. The 64-bit parameters are real -- retail shifts with dsll.
 */
extern void func_00234C98(int, long);
extern int *D_00161000 MACRO_ADDR;
extern char D_0013CD90[];

void func_001F55C0(long a, long b, long c, long d) {
    func_00234C98(1, a | (b << 8) | (c << 16) | (d << 24));
    D_00161000[0] = 0x30000014;
    D_00161000[1] = (int)D_0013CD90;
    D_00161000[2] = 0;
    D_00161000[3] = 0x50000014;
    D_00161000 += 4;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F5650); /* DrawRectOverlay_FiiiiUl */

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
