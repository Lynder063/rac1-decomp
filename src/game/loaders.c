#include "common.h"
#include "structs.h"

/*
 * loaders.cpp in the original source; text 0x202AA8-0x205520.
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
extern void func_002023E0(int);
extern void func_002027C0(int);

INCLUDE_ASM("asm/nonmatchings/text", func_00202AA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00202EF8);

INCLUDE_ASM("asm/nonmatchings/text", func_00202F00);

INCLUDE_ASM("asm/nonmatchings/text", func_00203038);

INCLUDE_ASM("asm/nonmatchings/text", func_00203118);

INCLUDE_ASM("asm/nonmatchings/text", func_002032D0);

INCLUDE_ASM("asm/nonmatchings/text", func_00203548);

INCLUDE_ASM("asm/nonmatchings/text", func_002035B0);

INCLUDE_ASM("asm/nonmatchings/text", func_00203808);

INCLUDE_ASM("asm/nonmatchings/text", func_00203958);

void func_00203B18(char *arg0, int idx) {
    char *obj;
    int *p;
    int i;
    arg0 += idx * 4;
    obj = *(char **)(arg0 + 0x48);
    if (*(int *)(obj + 0x14) != 0) {
        *(int *)(obj + 0x14) = (int)(obj + *(int *)(obj + 0x14));
    }
    if (*(unsigned char *)(obj + 0x10) != 0) {
        i = 0;
        p = (int *)(obj + 0x1C);
        do {
            *p = (int)(obj + *p);
            i++;
            p++;
        } while (i < *(unsigned char *)(obj + 0x10));
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_00203B70);

INCLUDE_ASM("asm/nonmatchings/text", func_00203E78);

INCLUDE_ASM("asm/nonmatchings/text", func_00203F68);

INCLUDE_ASM("asm/nonmatchings/text", func_00204340);

INCLUDE_ASM("asm/nonmatchings/text", func_00204918);

INCLUDE_ASM("asm/nonmatchings/text", func_00204BE8);

INCLUDE_ASM("asm/nonmatchings/text", func_00204C60);

INCLUDE_ASM("asm/nonmatchings/text", func_00204FC0);

INCLUDE_ASM("asm/nonmatchings/text", func_00205218);

extern void func_00204FC0(void *);
extern int D_0018CC20 NOT_SDA;
extern int D_001941C8 NOT_SDA;
extern int D_0016100C;

void func_00205220(int arg0) {
    char *base = (char *)&D_0018CC20;
    char *p = base + arg0 * 4;
    *(int *)(base + 0x5C) = *(int *)(p + 0x60);
    func_00204FC0(p);
    *(int *)(base + 0x5C) = D_0016100C + D_001941C8;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00205270);
