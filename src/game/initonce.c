#include "common.h"
#include "structs.h"

/*
 * initonce.cpp in the original source; text 0x201E10-0x202260.
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
extern int D_001941CC NOT_SDA;
extern int D_0019A4E8 NOT_SDA;
extern int func_001FF668(int);
typedef struct {
    char b[0x13];
} Cfg13;
extern Cfg13 D_0019A540 NOT_SDA;
extern Cfg13 D_001E7DD8 NOT_SDA;
extern int func_00116810(void);
extern void func_001166FC(Cfg13 *, void *);
extern short D_0015F9D0;
extern void func_00201960(int, int, int, int, int);

/*
 * InitMemSlots(void). Decoded and the right size (30 instructions), but
 * kept as asm: the residual is a scheduling/allocator tie -- the same
 * instruction multiset in a different order, with the four live values
 * relabelled one register up ($4/$7/$5/$6 in retail vs $3/$6/$4/$5
 * here).
 *
 *   extern char D_0024272F[];
 *   extern int D_0016100C;
 *   extern int D_001941C0[];
 *
 *   void func_00201E10(void) {
 *       int base = (int)D_0024272F & 0xFFFFC000;
 *       int size = D_0016100C;
 *       int a = base + size;
 *       int b = a + size;
 *       int c = b + 0x64000;
 *       int d = c + 0x30000;
 *       D_001941C0[10] = 0x7200000;
 *       D_001941C0[0] = base;
 *       D_001941C0[5] = d;
 *       D_001941C0[8] = 0x7000000;
 *       D_001941C0[9] = 0x7100000;
 *       D_001941C0[1] = base;
 *       D_001941C0[2] = a;
 *       D_001941C0[3] = b;
 *       D_001941C0[4] = c;
 *       D_001941C0[6] = d;
 *   }
 *
 * Worth recording: the two stores of the same value (indices 5 and 6)
 * come out in the OPPOSITE order to the source, so writing [5] before
 * [6] is what reproduces retail's [6]-early/[5]-in-the-delay-slot
 * placement. Moving the constant stores around only permutes which
 * register each constant gets.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00201E10); /* InitMemSlots(void) */

INCLUDE_ASM("asm/nonmatchings/text", func_00201E88); /* InitOnce(void) */

INCLUDE_ASM("asm/nonmatchings/text", func_00202258);
