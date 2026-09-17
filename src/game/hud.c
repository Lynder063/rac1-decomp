#include "common.h"
#include "structs.h"

/*
 * hud.cpp in the original source; text 0x1FF668-0x201D58.
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
extern void func_001F99B0();
extern void func_001F2BC8(void);
extern int D_0018C434 NOT_SDA;
extern char D_001940C0[];
extern long D_00151888[3];
extern int D_0015F6FC;
extern short D_0015F534;
extern void func_001FB530(void);
extern void func_001F3D78(void);
extern int D_0015F564;
extern int D_0018DD40[];
extern int D_0018DC40[];
extern short D_0015F59C;
extern int func_001F65B0(unsigned char *arg0, int arg1, void *arg2);
extern unsigned char D_001DF3D0[];
extern unsigned char D_001DF770[];
extern unsigned char D_001DFB10[];
extern void func_001F6668(void *, void *, void *, void *, void *, int,
                          unsigned char *);
extern int func_001F6600(unsigned char *, int);
extern int func_001F6620(unsigned char *, int);
extern int func_001F4868(int);
extern void func_001F7070(void *, void *, void *, void *, int, unsigned char *);
extern void func_001FB498(void);
extern void func_001F3008(void);
extern void func_001F3140(void);
extern int D_0018E840[];
extern long D_00152178 NOT_SDA;
extern int func_001FE4D0(void);
extern char D_00199A68[];
extern short D_0015F780;
extern int func_001F6FD8(int a, int b, int c, int d, int e);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF668); /* Hud_GetIconIndex(int) */

INCLUDE_ASM("asm/nonmatchings/text", func_001FF6B8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF7F0); /* LinkHudBank(int, char *) */

INCLUDE_ASM("asm/nonmatchings/text", func_001FF950);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF958); /* Hud_SendResidentBank(int, char *, bool) */

extern int D_001941CC NOT_SDA;
extern int D_0019A4E8 NOT_SDA;

/* Hud_HeapReset(void) */
void func_001FFA90(void) {
    int *p = &D_0019A4E8;
    int v = D_001941CC;
    p[5] = v + 0x64000;
    p[4] = v;
}

/* Bump allocator out of the D_0019A4E8 arena: p[4] is the cursor,
   p[5] the limit. Rounds the request up to 16 bytes. */
/* Hud_HeapAlloc(unsigned int, char *, char *, int) */
int func_001FFAB8(int size) {
    int *p = &D_0019A4E8;
    int cur;

    if (p[4] == 0) {
        func_001FFA90();
    }
    if (p[5] - p[4] < size) {
        return 0;
    }
    cur = p[4];
    size = (size + 15) & 0xFFFFFFF0;
    p[4] = cur + size;
    return cur;
}

/*
 * 12 bytes of nop padding follow func_001FFAB8 in retail, after
 * `endlabel` in asm/nonmatchings/text/func_001FFAB8.s -- the same trap
 * documented above func_001F6668. Dropping it shifted the rest of the
 * segment by -8 (the next .align 3 only recovered 4 of the 12) and broke
 * func_00202790 and func_002208F8, both of which were exact and are
 * instruction-for-instruction identical apart from their jal targets.
 */
__asm__(".section .text
	nop
	nop
	nop
");

INCLUDE_ASM("asm/nonmatchings/text", func_001FFB38);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFC48);

/*
 * Same 13-entry walk over D_00199C60 as func_001FFDA0 below, and blocked
 * at the same instruction -- the standalone nop between the loop's
 * `lw $2,0($3)` and the `bnel`. Not attempted past that point; if
 * func_001FFDA0's site is ever cracked, this one falls with it.
 *
 * Semantics: find the record whose +0x64 field is arg0; if none of the
 * 13 matched, return 0, otherwise call
 * func_001FFB38(record_index_result, 0xFFFF, 0, 0, 0, 0, 0) and return 1.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001FFCB0);

extern int func_001FF668(int);

/* tbl[7] is volatile: retail re-loads that pointer field before each of
   the three record accesses rather than caching it, while keeping the
   r*8 offset in a register. */
void func_001FFD30(void *arg0, int arg1) {
    char *self = (char *)arg0;
    volatile int *tbl;
    int r;
    unsigned short v;

    r = func_001FF668(arg1);
    /* base materialized only after the call, so it lands in a temp
       register rather than a callee-saved one; tbl[7] is volatile because
       retail re-loads that pointer field before each record access. */
    tbl = (volatile int *)&D_0019A4E8;
    v = *(unsigned short *)((char *)tbl[7] + r * 8);
    *(short *)(self + 0x40) = r;
    *(int *)(self + 0) = v;
    *(char *)(self + 0x42) = *(unsigned char *)((char *)tbl[7] + r * 8 + 6);
    *(int *)(self + 0x44) = *(unsigned short *)((char *)tbl[7] + r * 8 + 4);
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FFD98);

/* func_001FFDA0: 28 of retail's 29 instructions reproduce exactly from
   the C below; the one missing instruction is a standalone load-delay
   `nop` retail carries between the loop's `lw $2,0($3)` and the `bnel`
   consuming it. gcc prints that slot as `#nop` (commented out) and the
   assembler does not insert one here either.

   Do NOT generalise this into "standalone nops are unreachable" -- that
   was measured and is false: 145 of the byte-exact functions have a
   standalone nop in their retail body, so the assembler does emit them
   in other contexts. It is this particular site that we cannot make it
   produce. Recovered source, for the readability phase:

     typedef struct { int unk00, unk04; char pad08[0x1C];
                      int unk24; char pad28[0x3C];
                      int unk64, unk68; char pad6C[0x24]; } Rec90;
     extern Rec90 D_00199C60[] NOT_SDA;

     void func_001FFDA0(int arg0, int arg1) {
         int i;
         for (i = 0; i < 13; i++)
             if (D_00199C60[i].unk64 == arg0) break;
         if (i < 13) {
             D_00199C60[i].unk24 = arg1;
             if (D_00199C60[i].unk68 == 0) D_00199C60[i].unk04 = arg1;
         }
     }

   Indexing the extern array directly (rather than caching a base pointer
   in a local) is what reproduces retail's per-access %lo
   re-materialization -- worth remembering for the next table walker. */
INCLUDE_ASM("asm/nonmatchings/text", func_001FFDA0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFE18);

typedef struct {
    char b[0x13];
} Cfg13;

extern Cfg13 D_0019A540 NOT_SDA;
extern Cfg13 D_001E7DD8 NOT_SDA;
extern int func_00116810(void);
extern void func_001166FC(Cfg13 *, void *);

/* The struct copy is a plain assignment: at alignment 1 this compiler
   expands the 0x13 bytes as unaligned ldl/ldr + sdl/sdr pairs with the
   trailing three bytes done singly, which is exactly retail's shape. */
void func_001FFE88(void *arg0) {
    if ((unsigned int)func_00116810() < 0x50) {
        D_0019A540 = D_001E7DD8;
    }
    func_001166FC(&D_0019A540, arg0);
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FFF08);

extern short D_0015F9D0;   /* SDA (gp -0x7330) */

void func_001FFFA0(void) {
    int v = *(int *)&D_0015F9D0;
    if (v != 0) {
        *(int *)&D_0015F9D0 = v - 1;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FFFB8);

INCLUDE_ASM("asm/nonmatchings/text", func_00200190);

INCLUDE_ASM("asm/nonmatchings/text", func_00200198); /* GetIconFrame(int, int) */

INCLUDE_ASM("asm/nonmatchings/text", func_00200248); /* GetFrameTex(int) */

INCLUDE_ASM("asm/nonmatchings/text", func_00200468);

INCLUDE_ASM("asm/nonmatchings/text", func_00200650);

INCLUDE_ASM("asm/nonmatchings/text", func_002008B0);

INCLUDE_ASM("asm/nonmatchings/text", func_002008B8);

INCLUDE_ASM("asm/nonmatchings/text", func_00200A90);

INCLUDE_ASM("asm/nonmatchings/text", func_00200CA0);

INCLUDE_ASM("asm/nonmatchings/text", func_00200E38);

INCLUDE_ASM("asm/nonmatchings/text", func_00201190);

INCLUDE_ASM("asm/nonmatchings/text", func_00201348); /* Hud_sendTexture(char *, int, int, int, int, int) */

INCLUDE_ASM("asm/nonmatchings/text", func_002014B8);

INCLUDE_ASM("asm/nonmatchings/text", func_00201640);

INCLUDE_ASM("asm/nonmatchings/text", func_002017C8);

INCLUDE_ASM("asm/nonmatchings/text", func_00201948);

INCLUDE_ASM("asm/nonmatchings/text", func_00201960);

extern void func_00201960(int, int, int, int, int);

/*
 * Close, not exact (32/168, 19%), same size so harmless to anything
 * after it -- kept on the func_002094E0 precedent (13/64, 20%). Logic is
 * certain: clamp the top byte of `c` to 0x50, draw once with the colour
 * masked to its alpha byte, then a second pass offset from the first
 * call's return, then draw again unmasked. Five-argument calls -- EABI
 * passes the first eight integer args in $4-$11.
 *
 * Residual is the known allocator/constant-scheduling question, not
 * source shape: retail hoists the `lui $6,0xFF00` mask in among the
 * register spills and assigns $17-$20 to a,b,c,d in argument order,
 * where this compiler schedules the `slti` into that slot and picks a
 * different arg-to-saved-register mapping. Hoisting the mask into its
 * own local was tried and changed nothing at all.
 */
void func_00201A38(int a, int b, int c, int d) {
    int hi = c >> 24;
    int m = c & 0xFF000000;
    int t;
    if (hi >= 0x51) hi = 0x50;
    t = func_001F6FD8(a + 1, b + 1, m, d, -1) - 0x20;
    func_00201960(t, b - 8, (a - t) * 2, 0x20, hi);
    func_001F6FD8(a, b, c, d, -1);
}

INCLUDE_ASM("asm/nonmatchings/text", func_00201AE0);

INCLUDE_ASM("asm/nonmatchings/text", func_00201AF0);
