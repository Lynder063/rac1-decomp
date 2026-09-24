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

typedef struct {
    unsigned short id;
    char pad[6];
} HudIconRec;
extern HudIconRec *D_0019A504;

/* Finds arg0 in the table D_0019A504 points to (ended by id 0xFFFF).
   The older decode read D_0019A504 as the table itself. */
int func_001FF668(int arg0) {
    HudIconRec *tab = D_0019A504;
    int i = 0;

    while (tab[i].id != 0xFFFF && tab[i].id != arg0) {
        i++;
    }
    return i;
}

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

extern char D_00199C60_raw[] __asm__("D_00199C60") NOT_SDA;
extern int D_0015F6E8 MACRO_ADDR;
extern void func_001FFC48(void *arg0);

/* Finds or creates the residency record for arg0's slot (idx = arg0 & 0xF)
   in D_00199C60 (0x90-byte records), matching arg1..arg6 against the
   record's cached selectors; returns the record's +0x64 bank id, calling
   func_001FFC48 to reload the bank when a bit of (arg0's high nibbles &
   the record's +0x04 flags) is set. Sibling of func_001FFCB0/func_001FFD30
   in this file, which use the same record layout. */
int func_001FFB38(int arg0, int arg1, int arg2, int arg3, int arg4,
                 int arg5, int arg6) {
    int idx = arg0 & 0xF;
    char *p = D_00199C60_raw + idx * 0x90;
    int masked0 = arg0 & 0xFFF0;
    int r3;
    int cur;

    if (D_0015F6E8 == 5 && idx != 2 && idx != 0) {
        return 0;
    }
    if (*(int *)(p + 0x2C) == arg5 && *(int *)(p + 0x28) == arg6
        && *(int *)(p + 0x20) == arg1 && *(int *)(p + 0x24) == masked0
        && *(int *)(p + 0x30) == arg2 && *(int *)(p + 0x34) == arg3
        && *(int *)(p + 0x38) == arg4) {
        return *(int *)(p + 0x64);
    }
    cur = D_0019A4E8;
    *(int *)(p + 0x2C) = arg5;
    r3 = masked0 & *(int *)(p + 4);
    *(int *)(p + 0x64) = cur;
    r3 = r3 & 0x20;
    cur = cur + 1;
    *(int *)(p + 0x28) = arg6;
    D_0019A4E8 = cur;
    *(int *)(p + 0x20) = arg1;
    *(int *)(p + 0x30) = arg2;
    *(int *)(p + 0x34) = arg3;
    *(int *)(p + 0x38) = arg4;
    *(int *)(p + 0x68) = 1;
    *(int *)(p + 0x24) = masked0;
    *(int *)(p + 0x7C) = 0;
    *(int *)(p + 0x70) = 0;
    if (r3 != 0) {
        func_001FFC48(p);
    }
    return *(int *)(p + 0x64);
}

extern void func_001FFD30(void *, int);

/* Same-size near-miss (18/104 bytes). Retail loads the 6 fields in
   the exact order written here (+0x30 first) but this compiler
   schedules +0x30's load last, and moves the f30!=0 branch one store
   earlier (the store it jumps past is unconditional either way --
   it's the branch's delay slot in both orderings, so no semantic
   difference). Pure scheduling; not reachable from source. */
void func_001FFC48(void *arg0) {
    char *p = (char *)arg0;
    int f24, f34, f38, f2C, f28, f30;

    func_001FFD30(arg0, *(int *)(p + 0x20));
    f30 = *(int *)(p + 0x30);
    f24 = *(int *)(p + 0x24);
    f34 = *(int *)(p + 0x34);
    f38 = *(int *)(p + 0x38);
    f2C = *(int *)(p + 0x2C);
    f28 = *(int *)(p + 0x28);
    *(int *)(p + 4) = f24;
    *(int *)(p + 0x14) = f34;
    *(int *)(p + 0x18) = f38;
    *(int *)(p + 0xC) = f2C;
    *(int *)(p + 8) = f28;
    if (f30 != 0) {
        *(int *)(p + 0x10) = f30;
        ((void (*)(void *))f30)(arg0);
    }
    *(int *)(p + 0x68) = 0;
}

/* The 13 0x90-byte records at D_00199C60, looked up by their +0x64. */
typedef struct {
    int unk00, unk04;
    char pad08[0x1C];
    int unk24;
    char pad28[0x3C];
    int unk64, unk68;
    char pad6C[0x24];
} HudRec90;
extern HudRec90 D_00199C60[] NOT_SDA;
/* func_001FFB38 returns the bank id; this caller ignores it, and its
   match was made against a void view. */
extern void func_001FFB38_v(int, int, int, int, int, int, int) __asm__("func_001FFB38");

/* Calls func_001FFB38(i, 0xFFFF, 0, 0, 0, 0, 0) on the record whose
   +0x64 is arg0 and returns 1, or returns 0 when none is. The nop in
   the search loop is ps2eeas's short-loop padding. */
int func_001FFCB0(int arg0) {
    int i;
    for (i = 0; i < 13; i++) {
        if (D_00199C60[i].unk64 == arg0) {
            break;
        }
    }
    if (i < 13) {
        func_001FFB38_v(i, 0xFFFF, 0, 0, 0, 0, 0);
        return 1;
    }
    return 0;
}

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

/* Stores arg1 into +0x24 of the record whose +0x64 is arg0, and into
   +0x04 when its +0x68 is 0. Indexing the extern array at each access,
   not through a cached base pointer, gives retail's per-access %lo. */
void func_001FFDA0(int arg0, int arg1) {
    int i;
    for (i = 0; i < 13; i++) {
        if (D_00199C60[i].unk64 == arg0) {
            break;
        }
    }
    if (i < 13) {
        D_00199C60[i].unk24 = arg1;
        if (D_00199C60[i].unk68 == 0) {
            D_00199C60[i].unk04 = arg1;
        }
    }
}

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

extern int *D_00161000 MACRO_ADDR;
extern int D_0013E600[];

/* func_002017C8's sibling: same 1-tag + 3-quadword PACKED GIF packet, but
   register-id constant 0x41 (not 0x46) at +0x20, and a FIXED mask
   0x00FFFFF000000000 in the vertices' upper 32 bits instead of a Z
   parameter -- one fewer int argument than func_002017C8. */
void func_002014B8(int arg0, int arg1, int arg2, int arg3, long arg4,
                    int arg5) {
    int *base;

    D_00161000[0] = 0x10000003;
    D_00161000[1] = 0;
    D_00161000[2] = 0;
    D_00161000[3] = 0x50000003;

    base = D_00161000;
    D_00161000 = base + 4;
    *(long *)((char *)base + 0x10) = 0x4400000000000001UL;
    *(long *)((char *)base + 0x18) = 0x4410;
    *(long *)((char *)base + 0x20) = 0x41;
    *(long *)((char *)base + 0x28) = arg4;
    if (arg5 != 0) {
        *(long *)((char *)base + 0x30) =
            (arg0 + D_0013E600[4] - 8)
            | ((long)(arg1 + D_0013E600[5] - 8) << 16)
            | 0x00FFFFF000000000L;
        *(long *)((char *)base + 0x38) =
            (arg2 + D_0013E600[4] - 8)
            | ((long)(arg3 + D_0013E600[5] - 8) << 16)
            | 0x00FFFFF000000000L;
    } else {
        *(long *)((char *)base + 0x30) =
            (arg0 * 16 + D_0013E600[4] - 0x10)
            | ((long)(arg1 * 16 + D_0013E600[5] - 0x10) << 16)
            | 0x00FFFFF000000000L;
        *(long *)((char *)base + 0x38) =
            (arg2 * 16 + D_0013E600[4] - 0x10)
            | ((long)(arg3 * 16 + D_0013E600[5] - 0x10) << 16)
            | 0x00FFFFF000000000L;
    }
    D_00161000 = (int *)((char *)D_00161000 + 0x30);
}

extern int *D_00161000 MACRO_ADDR;
extern int D_0013E600[];

/* func_002014B8's sibling (register-id constant 0x46, like
   func_002017C8's, instead of 0x41): same 1-tag + 3-quadword PACKED GIF
   packet with a FIXED mask 0x00FFFFF000000000 in the vertices' upper 32
   bits instead of a Z parameter. */
void func_00201640(int arg0, int arg1, int arg2, int arg3, long arg4,
                    int arg5) {
    int *base;

    D_00161000[0] = 0x10000003;
    D_00161000[1] = 0;
    D_00161000[2] = 0;
    D_00161000[3] = 0x50000003;

    base = D_00161000;
    D_00161000 = base + 4;
    *(long *)((char *)base + 0x10) = 0x4400000000000001UL;
    *(long *)((char *)base + 0x18) = 0x4410;
    *(long *)((char *)base + 0x20) = 0x46;
    *(long *)((char *)base + 0x28) = arg4;
    if (arg5 != 0) {
        *(long *)((char *)base + 0x30) =
            (arg0 + D_0013E600[4] - 8)
            | ((long)(arg1 + D_0013E600[5] - 8) << 16)
            | 0x00FFFFF000000000L;
        *(long *)((char *)base + 0x38) =
            (arg2 + D_0013E600[4] - 8)
            | ((long)(arg3 + D_0013E600[5] - 8) << 16)
            | 0x00FFFFF000000000L;
    } else {
        *(long *)((char *)base + 0x30) =
            (arg0 * 16 + D_0013E600[4] - 0x10)
            | ((long)(arg1 * 16 + D_0013E600[5] - 0x10) << 16)
            | 0x00FFFFF000000000L;
        *(long *)((char *)base + 0x38) =
            (arg2 * 16 + D_0013E600[4] - 0x10)
            | ((long)(arg3 * 16 + D_0013E600[5] - 0x10) << 16)
            | 0x00FFFFF000000000L;
    }
    D_00161000 = (int *)((char *)D_00161000 + 0x30);
}

extern int *D_00161000 MACRO_ADDR;
extern int D_0013E600[];

/* Appends a 1-tag + 3-quadword PACKED GIF packet to D_00161000: a GIFtag
   (0x10000003 / 0 / 0 / 0x50000003), then TEX-ish GS register data at
   +0x10/+0x18/+0x20, arg4 verbatim at +0x28, then two packed XYZ2-style
   vertices at +0x30/+0x38: X = argX(+D_0013E600[4])-8, Y =
   argY(+D_0013E600[5])-8, Z = arg5<<32, when arg6 != 0 (raw coordinates);
   or the same with argX/argY scaled by 16 and offset -0x10 when arg6==0
   (tile coordinates). D_00161000 is re-read at every use (never cached
   across a store to it), matching this file's other packet builders. */
void func_002017C8(int arg0, int arg1, int arg2, int arg3, long arg4,
                    int arg5, int arg6) {
    int *base;

    D_00161000[0] = 0x10000003;
    D_00161000[1] = 0;
    D_00161000[2] = 0;
    D_00161000[3] = 0x50000003;

    base = D_00161000;
    D_00161000 = base + 4;
    *(long *)((char *)base + 0x10) = 0x4400000000000001UL;
    *(long *)((char *)base + 0x18) = 0x4410;
    *(long *)((char *)base + 0x20) = 0x46;
    *(long *)((char *)base + 0x28) = arg4;
    if (arg6 != 0) {
        *(long *)((char *)base + 0x30) =
            (arg0 + D_0013E600[4] - 8)
            | ((long)(arg1 + D_0013E600[5] - 8) << 16)
            | ((long)arg5 << 32);
        *(long *)((char *)base + 0x38) =
            (arg2 + D_0013E600[4] - 8)
            | ((long)(arg3 + D_0013E600[5] - 8) << 16)
            | ((long)arg5 << 32);
    } else {
        *(long *)((char *)base + 0x30) =
            (arg0 * 16 + D_0013E600[4] - 0x10)
            | ((long)(arg1 * 16 + D_0013E600[5] - 0x10) << 16)
            | ((long)arg5 << 32);
        *(long *)((char *)base + 0x38) =
            (arg2 * 16 + D_0013E600[4] - 0x10)
            | ((long)(arg3 * 16 + D_0013E600[5] - 0x10) << 16)
            | ((long)arg5 << 32);
    }
    D_00161000 = (int *)((char *)D_00161000 + 0x30);
}

INCLUDE_ASM("asm/nonmatchings/text", func_00201948);

extern int func_00200198(int, int);
extern void func_00200468(int, int, int, int, int, int);
extern void func_00200650(int, int, int, int, int, int);

/* Draw a 3-part stretchable bar: left cap, stretched middle, right cap
 * (mirrored via func_00200650), all using the same GetIconFrame glyph
 * in its two variants. */
void func_00201960(int a0, int a1, int a2, int a3, int a4) {
    int v0 = func_00200198(0x7580, 0);
    int v1 = func_00200198(0x7580, 1);

    func_00200468(v1, a0, a1, 0x20, a3, a4);
    func_00200468(v0, a0 + 0x20, a1, a2 - 0x40, a3, a4);
    a0 = a0 + a2;
    func_00200650(v1, a0 - 0x20, a1, 0x20, a3, a4);
}

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
