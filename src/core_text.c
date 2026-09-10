#include "common.h"

extern long func_00116F68(int arg0, int arg1, int arg2);

int func_00112380(int arg0) {
    return (int)func_00116F68(arg0, 0, 10);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001123A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00112464);

/*
 * Close but not yet byte-matching, same status as func_00112380 above:
 * logic is right (return func_00119100(arg1); D_0015ED10 = 0 before the
 * call, *errOut = D_0015ED10 after if the call returned -1 and
 * D_0015ED10 is nonzero) but this compiler saves the two callee-saved
 * GPRs it uses ($16/$17) as 128-bit quadwords (sq/lq) where retail uses
 * plain 64-bit (sd/ld) for every callee-saved register including $ra.
 * Tried all 4 SN ProDG sub-builds AngheloAlf mirrors (2.95.2 SN BUILD
 * v2.73a/v2.74, 2.95.3 SN BUILD v1.14/v1.36) -- 3 of 4 use sq/lq for
 * *every* callee-saved register including $ra; this repo's v1.36 is
 * actually the closest (matches retail on $ra, only differs on $s0-$s7).
 * No -m flag found that changes it. Kept as INCLUDE_ASM pending that;
 * see docs/DECOMP_PROGRESS.md.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00112468);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001124C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001126D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001138A4);

extern void *D_0012F86C NOT_SDA;

int func_001138A8(void) {
    return (int)D_0012F86C;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001138B4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001138B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113968);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113A6C);

extern void func_001162B8(void);
extern void func_00116320(void);
extern void func_001163A0(void);
extern void func_00116408(void *arg0);

void func_00113A70(void *arg0, int arg1, int arg2, int arg3) {
    char *self = (char *)arg0;
    *(int *)(self + 0x54) = arg3;
    *(short *)(self + 0xC) = arg1;
    *(short *)(self + 0xE) = arg2;
    *(void **)(self + 0x20) = func_001162B8;
    *(void **)(self + 0x24) = func_00116320;
    *(void **)(self + 0x28) = func_001163A0;
    *(void **)(self + 0x2C) = func_00116408;
    *(int *)(self + 0x4) = 0;
    *(int *)(self + 0x8) = 0;
    *(int *)(self + 0x10) = 0;
    *(int *)(self + 0x18) = 0;
    *(void **)(self + 0x1C) = self;
    *(int *)(self + 0x0) = 0;
}

/*
 * Not a codegen-flag near-miss like func_00112380/func_00112468: retail
 * is a bare 3-instruction tail jump (`j func_00114438`, no stack frame,
 * no $ra save) -- true tail-call elimination for a void function whose
 * last statement is a call. This compiler builds a full call frame
 * instead (jal + sd/ld $ra + stack alloc, 0x20 bytes vs retail's 0xC)
 * for the straightforward `func_00114438(arg0, func_00113968);` source.
 * Not investigated further -- may need a specific flag/GCC version for
 * sibcall elimination, or the real source differs. Kept as INCLUDE_ASM.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00113AC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113AD8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113AE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113B6C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113B70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113E90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113FFC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114000);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011405C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114060);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114438);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001144CC);

extern char D_00152470[];

/* arg0 unused: retail loads it into $a0 for this call too but the
   function body never reads it. */
void *func_001144D8(void *arg0) {
    return D_00152470;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001144E8);

void *func_001144F0(void) {
    return func_001144D8(D_0012F86C);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114514);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114518);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114578);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001146C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114920);

/*
 * REVERTED to INCLUDE_ASM, despite the logic being fully understood.
 *
 * The C below (kept here for whoever picks this up) is
 * instruction-for-instruction correct -- two real bugs were fixed to get
 * there: `unsigned char *` for the byte loads so they emit lbu not lb,
 * and this exact nesting to get beqz's polarity and target right:
 *
 *   int func_00115098(void *arg0, int *out, unsigned char *arg2, int arg3) {
 *       int junk;
 *       int *dst = out ? out : &junk;
 *       if (arg2 != 0) {
 *           if (arg3 != 0) { *dst = *arg2; return *arg2 != 0; }
 *           return -1;
 *       }
 *       return 0;
 *   }
 *
 * It compiles to 56 bytes where retail is 60, because retail reuses the
 * `bnel arg3,0` delay slot as the *first instruction of the branch
 * target* (the arg2 byte load) -- a scheduling trick this compiler will
 * not reproduce from the equivalent C.
 *
 * It is reverted rather than kept as documented-close because it is
 * SIZE-mismatched, and a size mismatch shifts every later function in
 * the object -- it was putting -4 bytes of drift through the rest of
 * core_text.c and giving downstream functions spurious address diffs.
 * Byte-diff near-misses of the same size are harmless to keep; shorter
 * or longer ones actively corrupt verification for everything after
 * them. Do not re-add this without getting it to exactly 60 bytes.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00115098);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001150D4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001151B4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001152F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001153FC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001154BC);

void func_001154C0(void) {
}

void func_001154C8(void) {
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001154D0);

/*
 * Close but not exact, same register-allocation-choice category as
 * func_001160D8 above (see its comment) -- identical operations, order,
 * and count as retail, just a different scratch-register assignment
 * among $v0/$v1/$a0 for the three live temporaries (idx, table/bucket,
 * old head). See "Open toolchain questions" in docs/DECOMP_PROGRESS.md.
 *
 * Hash-bucket linked-list insertion: pushes arg1 onto the head of the
 * bucket at table[idx], where idx is read from arg1 itself and table is
 * a pointer stored at offset 0x4C of arg0.
 */
void func_00115578(void *arg0, void *arg1) {
    if (arg1 != 0) {
        int idx = *(int *)((char *)arg1 + 4);
        void **table = *(void ***)((char *)arg0 + 0x4C);
        void **bucket = table + idx;
        *(void **)arg1 = *bucket;
        *bucket = arg1;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001155A8);

int func_001156C0(unsigned int arg0) {
    int count;
    if ((arg0 & 0xFFFF0000u) != 0) {
        count = 0;
    } else {
        count = 0x10;
        arg0 <<= 16;
    }
    if ((arg0 & 0xFF000000u) == 0) {
        count += 8;
        arg0 <<= 8;
    }
    if ((arg0 & 0xF0000000u) == 0) {
        count += 4;
        arg0 <<= 4;
    }
    if ((arg0 & 0xC0000000u) == 0) {
        count += 2;
        arg0 <<= 2;
    }
    if ((int)arg0 >= 0) {
        count += 1;
        if ((arg0 & 0x40000000u) == 0) {
            return 0x20;
        }
    }
    return count;
}

int func_00115748(unsigned int *arg0) {
    unsigned int v = *arg0;
    unsigned int count;

    if ((v & 7) != 0) {
        if ((v & 1) != 0) {
            return 0;
        }
        if ((v & 2) != 0) {
            v >>= 1;
            *arg0 = v;
            return 1;
        } else {
            v >>= 2;
            *arg0 = v;
            return 2;
        }
    }

    count = 0;
    if ((v & 0xFFFF) == 0) {
        count = 0x10;
        v >>= 16;
    }
    if ((v & 0xFF) == 0) {
        count += 8;
        v >>= 8;
    }
    if ((v & 0xF) == 0) {
        count += 4;
        v >>= 4;
    }
    if ((v & 3) == 0) {
        count += 2;
        v >>= 2;
    }
    if ((v & 1) == 0) {
        v >>= 1;
        count += 1;
        if (v == 0) {
            return 0x20;
        }
    }
    *arg0 = v;
    return count;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115808);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115840);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115A70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115B70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115CE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115D50);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115EE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115EE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116068);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116078);

void func_001160C8(int arg0) {
    *(int *)((char *)D_0012F86C + 0x58) = arg0;
}

/*
 * Close but not exact: logic fully understood and correct (verified
 * against retail instruction-for-instruction), but this compiler picks
 * $v1/$a0 for the two independent temporaries (the LCG constant and the
 * loaded game pointer) where retail picks $a0/$a1 -- same operations,
 * same order, just a different register-allocator choice. Tried
 * reordering the source statements and splitting into extra locals;
 * neither changed the allocation. Same category as the other
 * documented near-misses in this file -- a compiler-version-specific
 * codegen detail, not a logic gap.
 *
 * Linear congruential PRNG (classic glibc-style constants: multiplier
 * 0x41C64E6D, increment 12345, 31-bit mask) reading/updating a seed
 * field at offset 0x58 of the struct pointed to by the D_0012F86C
 * global -- the same field func_001160C8 above sets directly.
 */
int func_001160D8(void) {
    char *game = (char *)D_0012F86C;
    int seed = *(int *)(game + 0x58);
    seed = seed * 0x41C64E6D + 0x3039;
    *(int *)(game + 0x58) = seed;
    return seed & 0x7FFFFFFF;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116108);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116168);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001161B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001161E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116244);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001162B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116320);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001163A0);

extern int func_00112468(int *errOut, int arg1);

void func_00116408(void *arg0) {
    char *self = (char *)arg0;
    func_00112468(*(int **)(self + 0x54), *(short *)(self + 0xE));
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116428);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001165B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001166FC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116810);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116948);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116B00);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116CBC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116D2C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116D30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116F68);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116F9C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116FA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116FE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001170A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00117118);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118630);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001187E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001188C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001188C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118928);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118A34);

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

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119088);

int func_00119100(void) {
    return -1;
}

int func_00119108(void) {
    return -1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119110);

int func_001191C0(void) {
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001191C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001191E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119288);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119308);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119328);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119390);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001193F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119460);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001194C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001195A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119678);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119710);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119718);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119760);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119768);

extern void func_00118E90(int arg0, void *arg1);

void func_00119798(int arg0) {
    int local = arg0;
    func_00118E90(0x4, &local);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001197C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001197F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119830);

void func_00119840(int arg0) {
    int local = arg0;
    func_00118E90(0x10, &local);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119864);

/*
 * Close but not exact, same open-question category as func_001160D8/
 * func_00115578 (scratch-register/scheduling choice) but manifesting as
 * store reordering instead: retail schedules `self->field8 = ...;
 * self->field4 = 0;` before the branch and puts `self->fieldC = ...` in
 * the delay slot; this compiler schedules fieldC and field8 before the
 * branch and puts field4's store in the delay slot instead. Confirmed
 * source-order independent -- tried every permutation of the 3
 * assignments, all four produced the identical instruction sequence, so
 * this is the scheduler's own choice, not something this source
 * controls. Logic (D_00154A40's first field = arg0, then fields at
 * 0x4/0x8/0xC of the pointed-to struct get 0/self+0x10/self+0x10, return
 * self) is fully understood and correct either way.
 *
 * extern void *D_00154A40;
 *
 * void *func_00119868(void *arg0) {
 *     char *self = (char *)&D_00154A40;
 *     D_00154A40 = arg0;
 *     *(void **)(self + 0x8) = self + 0x10;
 *     *(int *)(self + 0x4) = 0;
 *     *(void **)(self + 0xC) = self + 0x10;
 *     return self;
 * }
 */
extern void *D_00154A40 NOT_SDA;

void *func_00119868(void *arg0) {
    char *self = (char *)&D_00154A40;
    D_00154A40 = arg0;
    *(int *)(self + 0x4) = 0;
    *(void **)(self + 0xC) = self + 0x10;
    *(void **)(self + 0x8) = self + 0x10;
    return self;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119890);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001198D0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119910);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119AA8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119BF8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119CC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119D84);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119D88);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119DC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119E70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119EA8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119F38);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011A0A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011A690);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011A6C8);

void func_0011A728(void *arg0, void *arg1) {
    int idx = *(int *)((char *)arg0 + 0x10);
    int val = *(int *)((char *)arg0 + 0x14);
    int *arr = *(int **)((char *)arg1 + 0x1C);
    arr[idx] = val;
}

int func_0011A748(void *arg0, void *arg1) {
    int v = *(int *)((char *)arg0 + 0x10);
    *(int *)((char *)arg1 + 0x8) = v;
    return v;
}

extern int D_00155080[];

int func_0011A758(int arg0) {
    return D_00155080[arg0];
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011A770);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011A780);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AA00);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AA38);

extern int D_00154F64 NOT_SDA;
extern int D_00154F6C NOT_SDA;

void func_0011AA68(int arg0) {
    int offset = arg0 << 3;
    if (arg0 < 0) {
        arg0 = D_00154F64;
    } else {
        arg0 = D_00154F6C;
    }
    offset += arg0;
    *(int *)offset = 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AA90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011ABC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AC08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AC48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AD70);

/*
 * NOT a match, despite being recorded as one until now. Retail is a bare
 * 4-byte `jr $31` with nothing in its delay slot (the next function's
 * first instruction sits there). `void f(void) {}` emits `jr $ra; nop`
 * -- 8 bytes -- and GCC additionally force-aligns a compiled function to
 * 8 bytes where retail sits at a 4-aligned address, so this cost 8 bytes
 * of core_text layout drift in total.
 *
 * It read as a match only because tools/check_match.py compares exactly
 * `retail_size` bytes: the first 4 bytes (`jr`) matched, and the extra
 * nop was invisible to the comparison. Any function that is CORRECT in
 * its first N bytes but LONGER than retail will report a false match the
 * same way -- see docs/DECOMP_PROGRESS.md.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AE1C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AE20);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AFC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AFE8);

void func_0011B090(void *arg0) {
    char *self = (char *)arg0;
    unsigned int flags = *(unsigned int *)(self + 0x10);
    *(int *)(self + 0x18) = 0;
    *(unsigned int *)(self + 0x10) = flags & 0xFFFFFFFEu;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B0B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B0E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B198);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B1F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B2F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B438);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B4C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B6B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B6F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B710);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B770);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B7F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B868);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BBF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BC40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BC70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BC80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BCB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BEB8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BF48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BF80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C208);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C388);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C5C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C820);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CAE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CBC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CC38);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CCB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CCD0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CCE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CDE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CE70);

extern int func_0011CE70(int arg0, int arg1, int arg2, void *arg3);

int func_0011D078(int arg0, int arg1, int arg2) {
    char buf[0x10];
    return func_0011CE70(arg0, arg1, arg2, buf);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D098);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D0D0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D210);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D358);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D360);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D370);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D3A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D3B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D3C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D490);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D4A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D4E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D6D4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D960);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D9A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D9C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DA08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DA40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DA80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DA90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DA98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DB98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DBA8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DBE4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DBE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DBF8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DC08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DC40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DC50);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DCB8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DD64);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DD98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DDA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DDC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DDD0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DDE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DDF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DE28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DE38);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DF0C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DFC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DFE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011E6D4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011E6D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011E7C4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011E7C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011E860);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011EEC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011EF28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011F4F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011FA38);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011FB68);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011FC08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011FE48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011FEA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011FF08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001201B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120318);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120430);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120480);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120538);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001205D0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120670);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001206A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001206B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120740);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120778);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001207B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120858);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001208E4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120910);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120978);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001209D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120A78);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120B28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120BC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120C58);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120CA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120D18);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120D28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120E98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120F30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120FD0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121040);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001211B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121490);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121688);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012174C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121750);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121930);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001219C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121A80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121B78);

extern char D_00132E40[];

void *func_00121D08(void) {
    return D_00132E40;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121D14);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121D18);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121DB8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121DC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012213C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001221FC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00122200);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001222C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001224AC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00122598);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012262C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00122814);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00122958);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00122AD4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123164);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123208);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123278);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123280);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001232A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001232E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123308);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001233E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001235C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123630);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123650);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001236E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001238A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001238B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001239D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123A10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123AC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123BA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123C30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123D48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123EC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123EE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123F30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124010);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124068);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001241E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124338);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124410);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124528);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001245F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124650);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001247E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124858);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124920);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124A68);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124A70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124B60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124B88);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124BC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124D10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124DF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124EE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125020);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125078);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001250E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125160);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125210);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125298);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125300);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125340);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125380);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001253F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001254A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125548);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001255F0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125630);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125880);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125F88);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001263A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001265C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126640);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001266D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126790);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126860);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126910);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001269C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126AC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126BC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126C60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126D10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126DF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126ED8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126FB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127080);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001271A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001272B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127318);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127378);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001273A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001275A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001275C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127748);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127858);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127960);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127A90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127C80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127D40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001281E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128270);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128410);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128560);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128590);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128638);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001286E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128860);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128968);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128A58);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128BA8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128C28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128C90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128DA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128E68);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128F90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129180);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001291C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129240);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001292E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001293A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001294A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129530);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129600);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129690);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129948);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001299E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129C78);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129CA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129E30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129F40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A0F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A268);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A2EC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A2F0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A418);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A558);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A718);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A7E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AA70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AAA8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AAC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AB60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012ABB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012ABF8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AC50);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AC7C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AC80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AD08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B008);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B100);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B250);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B2C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B870);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B918);

int func_0012BB20(void) {
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BB28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BB78);

int func_0012BB98(void *arg0) {
    char *p = (char *)arg0;
    return *(int *)(*(char **)(p + 0x40) + 4) == 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BBA8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BBF8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BC50);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BC78);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BCC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BCF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BD28);

void func_0012BD40(void *arg0) {
    char *p = (char *)arg0;
    *(int *)(p + 0xC) = *(int *)(p + 0x8);
}

void func_0012BD50(void *arg0) {
    char *p = (char *)arg0;
    *(int *)(p + 0x8) = *(int *)(p + 0xC);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BD60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BDD0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BF40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C058);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C0A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C200);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C268);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C278);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C2F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C358);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C420);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C430);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C468);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C4C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C4E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C608);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C8B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C990);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CA70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CBA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC50);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC6C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC8C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CCF8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CD60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CE48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CF98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D000);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D068);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D2A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D340);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D380);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D3E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D3F0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D440);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D448);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D4B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D4E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D500);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D568);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D5D0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D688);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D730);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D760);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D788);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D818);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D868);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DA28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DA30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DA38);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DB18);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DDC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DFA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DFB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E038);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E058);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E1B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E2D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E318);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E348);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E380);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E3B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E3F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E438);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E490);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E4D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E528);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E558);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E588);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E5B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E648);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E688);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E820);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EAE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EB18);

/* gp-relative: declared small so -G2 places it in the small-data area,
   accessed as the word it really is. gp 0x166D00 - 0x7F3C = 0x15EDC4. */
extern short D_0015EDC4;

void func_0012EC30(void) {
    *(int *)&D_0015EDC4 = 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EC40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EC60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012ED10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012ED40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EDB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EDE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EE10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EE40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EE70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EE98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EF48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EFE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F030);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F068);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F098);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F0E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F120);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F160);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F1E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F210);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F280);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F2B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F2E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F308);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F348);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F3F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F4A8);
