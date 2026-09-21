#include "common.h"
#include "structs.h"

/*
 * core_text object 0x118A40-0x119328. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 */

/* Declarations in scope here before the split. */
extern long func_00116F68(int arg0, int arg1, int arg2);
extern int D_0015ED10;
extern void *D_0012F86C NOT_SDA;
extern int func_001162B8(void *arg0, void *arg1, void *arg2);
extern int func_00116320(void *arg0, void *arg1, void *arg2);
extern long func_001163A0(void *arg0, void *arg1, void *arg2);
extern void func_00116408(void *arg0);
extern void func_00113968(void);
extern void func_00114438(void *, void *);
extern char D_00152470[];
extern int func_00119088();
extern int func_00119110();
extern long func_00116108_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00116108");
extern long func_001188C8_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_001188C8");
extern long func_00114518_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00114518");
extern int func_00112468(int *errOut, int arg1);
extern int func_00114060(int, void *);
extern void func_00113AE0(void *);
extern void func_00117118(void *, void *, int, int);
extern int func_00119008();
extern int func_00114518(int *errOut, void *a, void *b, void *c);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118A40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118A50);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118A60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118A70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118A80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118A90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118AA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118AB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118AC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118AD0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118AE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118AF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118B00);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118B10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118B20);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118B30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118B40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118B50);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118B60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118B70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118B80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118B90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118BA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118BB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118BC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118BD0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118BE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118BF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118C00);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118C10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118C20);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118C30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118C40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118C50);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118C60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118C70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118C80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118C90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118CA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118CB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118CC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118CD0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118CE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118CF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118D00);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118D10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118D20);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118D30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118D40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118D50);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118D60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118D70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118D80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118D90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118DA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118DB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118DC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118DD0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118DE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118DF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118E00);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118E10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118E20);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118E30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118E40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118E50);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118E60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118E70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118E80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118E90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118EA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118EB0);

extern int D_0012FCF0 NOT_SDA;

void func_00118EC0(void) {
    D_0012FCF0 = 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118ED0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118F60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119008);

extern int func_00119CC8(int);
extern int func_00119BF8(int, int);

/* Same-size near-miss (13/116 bytes): retail leaves the first call's
   delay slot a genuine standalone nop; this compiler sinks the next
   call's argument setup (daddu a0,s0,zero) into it instead. The rest
   is a cosmetic $s0/$s1 register-allocation swap. */
int func_00119088(int arg0, int arg1, int arg2) {
    if (arg0 == 0) {
        if (D_0012FCF0 == 0) {
            if (func_00119CC8(arg1) == 0) {
                return -1;
            }
            D_0012FCF0 = 1;
        }
        return func_00119BF8(arg1, arg2);
    }
    return -1;
}

/* Takes an argument its callers pass (e.g. func_00112468) and ignores
   it; an unused parameter costs no codegen. */
int func_00119100(int arg0) {
    return -1;
}

/* Takes the three arguments its callers pass (e.g. func_00114518) and
   ignores them; unused parameters cost no codegen. */
int func_00119108(void *a, void *b, void *c) {
    return -1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119110);

int func_001191C0(void) {
    return 1;
}

int func_001191C8(void *arg0, void *arg1) {
    char *p = (char *)arg1;
    *(long *)(p + 0x48) = 0;
    *(int *)(p + 0x4) = 0x2000;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001191E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119288);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119308);
