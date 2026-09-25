#include "common.h"
#include "structs.h"

/*
 * framebuf.cpp in the original source; text 0x1FAA28-0x1FBC80.
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

INCLUDE_ASM("asm/nonmatchings/text", func_001FAA28);

INCLUDE_ASM("asm/nonmatchings/text", func_001FAB20);

INCLUDE_ASM("asm/nonmatchings/text", func_001FAB40);

extern long D_00152178 NOT_SDA;

void func_001FB448(int arg0, int arg1, int arg2) {
    D_00152178 = (long)arg0 | ((long)arg1 << 8) | ((long)arg2 << 16) | 0x80000000L;
}

extern void *D_0015EFB8 MACRO_ADDR;
extern void func_00122140(void *);

/* PutDispBuffer(void) */
void func_001FB470(void) {
    func_00122140(D_0015EFB8);
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FB498); /* PutDrawBufferLarge(void) */

/*
 * Close but not exact: appends a 2-word GIF/DMA-style tag pair
 * (0x30000015 / &D_00152140 / 0 / 0x50000015) to the packet buffer
 * D_00161000 points at, then advances D_00161000 by one qword (0x10).
 * Confirmed via objdump -- same fields, same values, same order, same
 * overall size (0x68 both). The only difference: retail re-derives
 * D_00161000's own ADDRESS (a fresh lui/lw pair) before every single
 * field write; this compiler computes &D_00161000 once into a register
 * and only reloads the *value* stored there each time (a strictly
 * cheaper, and here inequivalent, choice). This is a new, more extreme
 * variant of the redundant-global-reload pattern already seen elsewhere
 * (those only ever re-fetch a global's *value*, never its address, since
 * a global's address is a link-time constant with nothing to alias) --
 * tried an explicit `*(unsigned int **)&D_00161000` reinterpret-cast
 * idiom to see if defeating the compiler's confidence that it's "the
 * same" symbol reference would force a fresh lui each time; no change.
 * Not fixed via source shape; not yet clear whether this needs its own
 * open-question entry or is explained by something not yet identified.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001FB530);

extern int *D_00161000 MACRO_ADDR;

/* PutDrawBufferSmall(void) */
void func_001FB598(void) {
    D_00161000[0] = 0x30000009;
    D_00161000[1] = ((int)D_0015EFB8 + 0xC0) & 0xFFFFFFF;
    D_00161000[2] = 0;
    D_00161000[3] = 0x50000009;
    D_00161000 += 4;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FB608);

extern int *D_00161000 MACRO_ADDR;
extern char D_00151A00[];

/* AA_BlurPass(void) */
void func_001FB848(void) {
    D_00161000[0] = 0x30000026;
    D_00161000[1] = (int)D_00151A00;
    D_00161000[2] = 0;
    D_00161000[3] = 0x50000026;
    D_00161000 += 4;
}

extern char D_00151C60[];

void func_001FB8A8(void) {
    D_00161000[0] = 0x30000029;
    D_00161000[1] = (int)D_00151C60;
    D_00161000[2] = 0;
    D_00161000[3] = 0x50000029;
    D_00161000 += 4;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FB908);

extern void func_00234C50(int);
extern void func_00234C98(int, long);

/* Draws an alpha-blended sprite through a GIF packet appended to
   D_00161000 (a DMA/VIF header, TEST_1 0x33003, then PRIM 0x106 with
   RGBAQ rgba and two XYZ2 corners), with ALPHA_1 (GS register 0x42) set
   to 0x64 around it by func_00234C98 and a VIF flush (func_00234C50,
   0x13000000) on each side. The corners are (x << 4) + 0x8000 minus
   half the w/h extent, in 12.4 fixed point. The int sums are kept in their own locals
   (fold would otherwise share the 0x8000 with the extent), and the four
   64-bit corner values are converted in the order that leaves retail's
   last uses, which the scheduler follows. */
void func_001FBAB8(int x0, int y0, int x1, int y1, int w, int h, unsigned int rgba) {
    long *q;
    int ax, ay, bx, by;
    int hw, hh;

    func_00234C50(0x13000000);
    func_00234C98(0x42, 0x64);
    ax = (x0 << 4) + 0x8000;
    ay = (y0 << 4) + 0x8000;
    bx = (x1 << 4) + 0x8000;
    by = (y1 << 4) + 0x8000;
    hw = w << 3;
    hh = h << 3;
    D_00161000[0] = 0x10000006;
    D_00161000[1] = 0;
    D_00161000[2] = 0;
    D_00161000[3] = 0x50000006;
    D_00161000 += 4;
    q = (long *)D_00161000;
    q[0] = 0x1000000000000001L;
    q[1] = 0xE;
    q[2] = 0x33003;
    q[3] = 0x47;
    q[4] = 0x2400000000000001L;
    q[5] = 0x10;
    q[6] = 0x106;
    q[7] = rgba;
    q[8] = 0x2400000000008001L;
    q[9] = 0x44;
    {
        long X1 = bx - hw;
        long X0 = ax - hw;
        long Y0 = ay - hh;
        long Y1 = by - hh;

        q[10] = X0 | (Y0 << 16);
        q[11] = X1 | (Y1 << 16);
    }
    D_00161000 += 0x18;
    func_00234C98(0x42, 0x8000000044L);
    func_00234C50(0x13000000);
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FBC78);
