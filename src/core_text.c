#include "common.h"

extern long func_00116F68(int arg0, int arg1, int arg2);

int func_00112380(int arg0) {
    return (int)func_00116F68(arg0, 0, 10);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001123A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00112464);

extern int D_0015ED10;

int func_00112468(int *errOut, int arg1) {
    int r;
    D_0015ED10 = 0;
    r = func_00119100(arg1);
    if (r == -1 && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

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

extern int func_001162B8(void *arg0, void *arg1, void *arg2);
extern int func_00116320(void *arg0, void *arg1, void *arg2);
extern long func_001163A0(void *arg0, void *arg1, void *arg2);
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

extern void func_00113968(void);
extern void func_00114438(void *, void *);

/* Reclaimed from a stale revert: the old comment correctly said retail is
   a bare tail jump that this compiler could not produce. tools/fix_tail_calls.py
   removes that limitation, and the source it recorded compiles unchanged. */
void func_00113AC8(void *arg0) {
    func_00114438(arg0, func_00113968);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113AD8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113AE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113B6C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113B70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113E90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113FFC);

int func_00114000(int *errOut, void *arg1, void *arg2) {
    int r;
    D_0015ED10 = 0;
    r = func_001191C8(arg1, arg2);
    if (r == -1 && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

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

int func_00114518(int *errOut, void *a, void *b, void *c) {
    int r;
    D_0015ED10 = 0;
    r = func_00119108(a, b, c);
    if (r == -1 && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

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

extern int func_00119088();

int func_00116108(int *errOut, void *a, void *b, void *c) {
    int r;
    D_0015ED10 = 0;
    r = func_00119088(a, b, c);
    if (r == -1 && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

/*
 * Close, not exact (27/72, same size so harmless). Same bit-classifier
 * family as func_001161B0, and blocked the same way: every instruction
 * and operand matches, but the allocator assigns the low-word and mask
 * registers the other way round from retail and the rest follows.
 */
int func_00116168(long arg0) {
    int lo = (int)arg0;
    int hi = (int)(arg0 >> 32);
    hi &= 0x7FFFFFFF;
    hi |= (unsigned int)(lo | -lo) >> 31;
    hi = 0x7FF00000 - hi;
    return 1 - ((unsigned int)(hi | -hi) >> 31);
}

int func_001161B0(long arg0) {
    int lo = (int)arg0;
    int hi = (int)(arg0 >> 32);
    hi &= 0x7FFFFFFF;
    hi |= (unsigned int)(lo | -lo) >> 31;
    return (unsigned int)(0x7FF00000 - hi) >> 31;
}

extern int func_00119110();

int func_001161E8(int *errOut, int arg1) {
    unsigned int r;
    D_0015ED10 = 0;
    r = func_00119110(arg1);
    if (r == 0xFFFFFFFF && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116244);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116248);

/* Reclaimed from a banked revert. The old note blamed retail's
   dsll32/dsra32 on a sign-extension this compiler "does not emit for an
   int-returning callee" -- right observation, wrong conclusion. The pair is
   not an extension of an int, it is the DImode->SImode narrowing GCC emits
   when a 64-bit return value is assigned to an int (`long` is 64 bits for
   this target, though word_mode is still SI -- which is why a 64-bit
   *compare* is rejected outright with "unsupported wide integer operation").
   So the callee was prototyped `long` where it is called and defined `int`
   where it is defined: an inconsistency retail could have, because these two
   functions lived in different translation units and nothing cross-checks
   them at link time. We merge the whole segment into one file, so the two
   views are reconciled with an asm-labelled alias -- func_00116108 keeps its
   int definition (it stays byte-exact; widening it is impossible anyway,
   since its own `r == -1` would become an unsupported 64-bit compare) and
   the call site goes through a declaration that spells the return type the
   way retail's header did. Emits a plain `jal func_00116108`. */
extern long func_00116108_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00116108");

int func_001162B8(void *arg0, void *arg1, void *arg2) {
    char *s = (char *)arg0;
    int r = func_00116108_wide(*(int **)(s + 0x54),
                               (void *)(int)*(short *)(s + 0xE), arg1, arg2);
    if (r >= 0) {
        *(int *)(s + 0x50) += r;
    } else {
        *(short *)(s + 0xC) = *(unsigned short *)(s + 0xC) & 0xEFFF;
    }
    return r;
}

/* Same cross-TU `long` prototype as func_001162B8 above -- see that note.
   Here the narrowing lands on the return value itself: retail's trailing
   dsll32/dsra32 pair is func_001188C8's 64-bit result being handed back
   through this function's int return type.

   Not exact: 8/128, same size so harmless. Every instruction and operand
   matches; retail schedules `andi $2,$2,0xEFFF` ahead of the argument load
   `lw $4,0x54($16)` and this build emits them the other way round. A pure
   list-scheduler tie between two independent instructions -- tried the
   `&=` idiom and a named local for the handle load, neither moves it. */
extern long func_001188C8_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_001188C8");

int func_00116320(void *arg0, void *arg1, void *arg2) {
    char *s = (char *)arg0;
    if (*(unsigned short *)(s + 0xC) & 0x100) {
        func_00114518(*(int **)(s + 0x54), (void *)(int)*(short *)(s + 0xE),
                      (void *)0, (void *)2);
    }
    *(unsigned short *)(s + 0xC) &= 0xEFFF;
    return func_001188C8_wide(*(int **)(s + 0x54),
                              (void *)(int)*(short *)(s + 0xE), arg1, arg2);
}

/* Third of the family. This one keeps the 64-bit type all the way out --
   the return is the raw call result, and the only place retail narrows it
   is the 32-bit store to +0x50. Writing the `== -1` arm first is what puts
   the mask branch on the fallthrough path, as retail has it. */
extern long func_00114518_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00114518");

long func_001163A0(void *arg0, void *arg1, void *arg2) {
    char *s = (char *)arg0;
    long r = func_00114518_wide(*(int **)(s + 0x54),
                                (void *)(int)*(short *)(s + 0xE), arg1, arg2);
    if (r == -1) {
        *(short *)(s + 0xC) = *(unsigned short *)(s + 0xC) & 0xEFFF;
    } else {
        *(int *)(s + 0x50) = r;
        *(short *)(s + 0xC) = *(unsigned short *)(s + 0xC) | 0x1000;
    }
    return r;
}

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

extern int func_00114060(int, void *);

int func_00116FA0(int arg0, void *arg1) {
    char *s = (char *)arg1;
    if (*(int *)(s + 8) != 0) {
        int r = func_00114060(arg0, s);
        *(int *)(s + 8) = 0;
        *(int *)(s + 4) = 0;
        return r;
    }
    *(int *)(s + 4) = 0;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116FE8);

extern void func_00113AE0(void *);
extern void func_00117118(void *, void *, int, int);

/*
 * Close, not exact (20/120), same size. Logic is certain: fault in the
 * default object from D_0012F86C if the slot at +0x54 is empty, make
 * sure it is initialised (field +0x38), then hand it to func_00117118
 * together with the caller's two arguments.
 *
 * Two things were needed to get the size right. Every reference has to
 * be written through *(s + 0x54) rather than through a local `p`: with
 * a local, GCC decided the value it passed to func_00113AE0 was still
 * live in $4 afterwards and dropped the reload for func_00117118's
 * first argument, four bytes short (and, incidentally, wrong -- $4 is
 * call-clobbered). Spelling out the field access makes it reload, as
 * retail does.
 *
 * The residual is only that $17 and $18 hold arg1 and arg2 the other
 * way round from retail. Both pseudos have identical live ranges and
 * use counts, so the allocator is breaking a tie; introducing explicit
 * locals in the opposite order changes nothing (GCC coalesces them).
 * Same class as the destination-choice residuals documented elsewhere.
 */
void func_001170A0(void *arg0, int arg1, int arg2) {
    char *s = (char *)arg0;

    if (*(char **)(s + 0x54) == 0) {
        *(char **)(s + 0x54) = (char *)D_0012F86C;
    }
    if (*(int *)(*(char **)(s + 0x54) + 0x38) == 0) {
        func_00113AE0(*(char **)(s + 0x54));
    }
    func_00117118(*(char **)(s + 0x54), s, arg1, arg2);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00117118);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118630);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001187E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001188C0);

extern int func_00119008();

int func_001188C8(int *errOut, void *a, void *b, void *c) {
    int r;
    D_0015ED10 = 0;
    r = func_00119008(a, b, c);
    if (r == -1 && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

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

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119328);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119390);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001193F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119460);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001194C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001195A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119678);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119710);

/*
 * REVERTED (30/68, same size). Semantics are certain -- it is the same
 * "stash a tagged struct on the stack and hand it to func_00118E90"
 * forwarder as func_001197C0/func_001197F8, with four fields:
 *
 *   extern int D_00154A10;
 *   void func_00119718(unsigned short arg0, int arg1, int arg2) {
 *       int buf[4];
 *       buf[1] = arg1;
 *       buf[0] = arg0;                  // andi 0xFFFF from the short
 *       buf[2] = arg2;
 *       buf[3] = (int)&D_00154A10 | 0x20000000;
 *       func_00118E90(1, buf);
 *   }
 *
 * Retail computes the buf[3] tag completely (lui/addiu/lui/or) before
 * any store, then stores 0x4, 0x0, 0x8 and puts 0xC in the call's delay
 * slot. This compiler interleaves the tag arithmetic with the stores and
 * spends the delay slot on the &buf move instead. Tried: natural store
 * order, retail's store order, and hoisting the tag into a leading local
 * (the declaration-order lever) -- all three give 30-32/68, so the
 * scheduling is not reachable from source shape here. The sibling
 * func_001197C0 matches with source order == retail's emitted order,
 * which is why that was tried first; the difference is that this one's
 * buf[3] needs runtime arithmetic and theirs does not.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00119718);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119760);

extern void func_00118E90(int arg0, void *arg1);

void func_00119768(int arg0, signed char arg1) {
    int buf[4];
    buf[0] = arg0;
    buf[1] = arg1;
    func_00118E90(0x3, buf);
}


void func_00119798(int arg0) {
    int local = arg0;
    func_00118E90(0x4, &local);
}

void func_001197C0(int arg0, int arg1, unsigned short arg2) {
    int buf[4];
    buf[0] = arg0;
    buf[1] = arg1;
    buf[2] = arg2;
    func_00118E90(-0x5, buf);
}

void func_001197F8(int arg0, int arg1, unsigned short arg2) {
    int buf[4];
    buf[0] = arg0;
    buf[1] = arg1;
    buf[2] = arg2;
    func_00118E90(-0x6, buf);
}

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

void func_00119890(char *self) {
    char *p;
    *(int *)(self + 0x4) += 1;
    p = *(char **)(self + 0xC) + 1;
    *(char **)(self + 0xC) = p;
    if (p == self + (*(int *)self + 0x10)) {
        *(char **)(self + 0xC) = self + 0x10;
    }
}

void func_001198D0(char *self) {
    char *p;
    *(int *)(self + 0x4) -= 1;
    p = *(char **)(self + 0x8) + 1;
    *(char **)(self + 0x8) = p;
    if (p == self + (*(int *)self + 0x10)) {
        *(char **)(self + 0x8) = self + 0x10;
    }
}

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

extern void func_001193F8(int);
extern void func_00118AD0(int, int);
extern int D_00154F54;
extern int D_0012FD04;

/*
 * Close, not exact (4/52, same size so harmless). Every instruction
 * matches; the two `lui` instructions that hold the globals' addresses
 * land in $2 where retail uses $3, and nothing else differs. Tried
 * binding the loaded value to a local and adding a second local to
 * shift allocation -- neither moved it. Same open scratch-register
 * question as func_001160D8.
 */
void func_0011AA00(void) {
    func_001193F8(0x5);
    func_00118AD0(0x5, D_00154F54);
    D_0012FD04 = 0;
}

extern int D_00154F64 NOT_SDA;
extern int D_00154F6C NOT_SDA;

/*
 * Close, not exact (6/44), same size, and instruction-for-instruction
 * identical to retail -- same opcodes, same order, same operands. The
 * whole residual is register choice: retail reuses arg0's own register
 * ($4) for the loaded base once arg0 is dead and accumulates into $3,
 * while this compiler puts the base in $v0. Hoisting the shift into an
 * `off` local and ordering the two stores took it from 20/44 to 6/44;
 * the rest is the scratch-register question, and specifically the half
 * of it the declaration-order lever cannot reach, since that steers
 * locals and this is a parameter's register being reused.
 */
void func_0011AA38(int arg0, int arg1, int arg2) {
    int off = arg0 * 8;
    char *base = (char *)((arg0 >= 0) ? D_00154F6C : D_00154F64);
    char *p = base + off;
    *(int *)(p + 0x0) = arg1;
    *(int *)(p + 0x4) = arg2;
}

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

/* EABI passes the first eight integer args in $4-$11, so this forwards
   seven of them.
 *
 * func_0011ABC8/func_0011AC08 are close, not exact (11/60 each, same
 * size). Every move and the call match retail; only the position of the
 * `addiu $sp,$sp,-0x10` differs -- retail emits it fourth, after three
 * of the argument moves, while this compiler emits it second. That is
 * scheduling, not source shape, and nothing in the source can express
 * where the prologue's stack adjust lands. */
extern void func_0011AA90(int, int, int, int, int, int, int);

void func_0011ABC8(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5) {
    func_0011AA90(arg0, 0, arg1, arg2, arg3, arg4, arg5);
}

void func_0011AC08(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5) {
    func_0011AA90(arg0, 0x1, arg1, arg2, arg3, arg4, arg5);
}

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

extern void func_0011AA00(void);
extern int D_0012FD08 NOT_SDA;

void func_0011AFC0(void) {
    func_0011AA00();
    D_0012FD08 = 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AFE8);

void func_0011B090(void *arg0) {
    char *self = (char *)arg0;
    unsigned int flags = *(unsigned int *)(self + 0x10);
    *(int *)(self + 0x18) = 0;
    *(unsigned int *)(self + 0x10) = flags & 0xFFFFFFFEu;
}

/*
 * REVERTED at 20/48 (same size). Semantics are certain:
 *
 *   int rem = *(int *)(arg0 + 0x24) % *(int *)(arg0 + 0x18);
 *   *(int *)(arg0 + 0x24) = rem + 1;
 *   return *(int *)(arg0 + 0x14) + (rem << 6);
 *
 * A wrapping counter: takes the modulo of field 0x24 by field 0x18,
 * writes back rem+1, and returns field 0x14 + rem*64 (a 64-byte-stride
 * table index). Every instruction matches retail including the div trap
 * guard; the residual is the allocator picking the opposite registers
 * for the divisor and the mfhi result ($2/$3 swapped versus retail),
 * which then reorders the tail so the store lands in the jr delay slot
 * where retail puts the addu. Tried: hoisting the base load into a
 * local, and naming rem+1 as a separate local -- neither changed the
 * allocation. Same open scratch-register question as func_001160D8.
 */
/*
 * Attempted, reverted at 20/48 (same size). Semantics certain:
 *     int f(void *arg0) {
 *         char *p = arg0;
 *         int rem = *(int *)(p + 0x24) % *(int *)(p + 0x18);
 *         *(int *)(p + 0x24) = rem + 1;
 *         return *(int *)(p + 0x14) + (rem << 6);
 *     }
 * The div, its trap guard, the mfhi and all four offsets match. Residual
 * is two scheduling/allocation choices: retail keeps the remainder in $2
 * and the divisor in $3 where this compiler picks $v1/$v0, and retail
 * emits `addiu rem+1` before `sll rem,6` where this compiler emits the
 * shift first. Statement order does not steer it -- the store already
 * precedes the return expression in the source.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B0B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B0E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B198);

void *func_0011B1F8(int key, void *arg1) {
    void *outer = *(void **)((char *)arg1 + 0x28);
    while (outer != 0) {
        void *inner = *(void **)((char *)outer + 8);
        while (inner != 0) {
            if (*(int *)inner == key) {
                return inner;
            }
            inner = *(void **)((char *)inner + 0x38);
        }
        outer = *(void **)((char *)outer + 0x14);
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B2F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B438);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B4C8);

/*
 * REVERTED: size mismatch, 56 bytes against retail's 60. Semantics are
 * certain:
 *
 *   char *p = *(char **)arg0;
 *   if (p == 0) return 0;
 *   if (*(int *)(arg0 + 4) != *(int *)(p + 0x18)) return 0;
 *   if (*(int *)(p + 0x10) & 1) return 1;
 *   return 0;
 *
 * Retail keeps TWO exit blocks -- a shared `return 0` and a separate
 * `return 1`, each with its own `jr` -- which is 15 instructions. This
 * compiler merges them into a single exit and sets $v0 in the branch
 * delay slots, 14 instructions. Tried both the && chain and explicit
 * early returns; both merge. The exit structure is not expressible from
 * C here.
 */
/*
 * Attempted, reverted at 27/60. Semantics certain:
 *     int f(void *arg0) {
 *         char *p = arg0, *q = *(char **)p;
 *         if (q != 0 && *(int *)(p + 4) == *(int *)(q + 0x18) &&
 *             (*(int *)(q + 0x10) & 1) != 0) return 1;
 *         return 0;
 *     }
 * Retail jumps all three failing conditions to one shared `return 0`
 * tail. Writing it as early returns was worse (36/60) because it emitted
 * branch-likely (`bnezl`); the combined condition above improved it to
 * 27/60 and is the right shape, but this compiler still fills the branch
 * delay slots differently from retail's plain `beqz`+`nop`.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B6B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B6F8);

extern int func_00118C70(void *);
extern int D_0012FDA0;
extern int D_0012FDA4;

/*
 * Close, not exact (8/92), same size. Logic confirmed: one-shot init --
 * if D_0012FDA0 is still -1, build a stack descriptor {[1]=1, [2]=1,
 * [5]=0} and register it twice via func_00118C70, storing the two
 * results into D_0012FDA0 and D_0012FDA4.
 *
 * Residual is purely which of the three stores lands in the first
 * call's delay slot: retail puts buf[2] there and emits buf[5], buf[1]
 * ahead of it; this compiler puts buf[1] there. Two source orders were
 * tried -- (1,2,5) gives 10/92, (5,1,2) gives 8/92 -- and the rotation
 * rule does not predict this one consistently: (5,1,2) rotated as
 * documented, (1,2,5) did not. Note buf[1] and buf[2] both take the
 * value 1, so they are interchangeable semantically and only their
 * emission order distinguishes the two.
 */
void func_0011B710(void) {
    int buf[8];
    if (D_0012FDA0 == -1) {
        buf[5] = 0;
        buf[1] = 1;
        buf[2] = 1;
        D_0012FDA0 = func_00118C70(buf);
        D_0012FDA4 = func_00118C70(buf);
    }
}

/*
 * REVERTED (size mismatch: ours 132, retail 136). Logic is certain:
 * claim the first free slot of the 32-entry, 0x10-byte table
 * D_00157E80 -- the table func_0011B7F8 below indexes -- under the
 * func_00118CB0/func_00118C90 lock. A slot is free when its +4 word is
 * zero; claiming it writes 0x10000000 there and returns the slot, and
 * a full table returns 0. Both exits drop the lock first.
 *
 *   void *func_0011B770(void) {
 *       char *p;
 *
 *       func_0011B710();
 *       func_00118CB0(D_0012FDA0);
 *       for (p = D_00157E80; p < D_00157E80 + 0x200; p += 0x10) {
 *           if (*(int *)(p + 0x4) == 0) {
 *               *(int *)(p + 0x4) = 0x10000000;
 *               func_00118C90(D_0012FDA0);
 *               return p;
 *           }
 *       }
 *       func_00118C90(D_0012FDA0);
 *       return 0;
 *   }
 *
 * Exactly one instruction short, and it is a register-allocation
 * choice, not a source-shape one. Retail spends a THIRD callee-saved
 * register: $17 holds %hi(D_0012FDA0) for the whole function, costing
 * an sd/ld pair in the prologue and epilogue. This compiler keeps the
 * loop pointer in $16 and parks the same %hi in $4 with a single
 * `move $4,$16`, saving the pair and coming out one instruction ahead.
 * Nothing in the source decides that -- the same C is what retail's
 * compiler turned into the three-register form.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B770);

extern char D_00157E80[];

/* The out-of-range test is written >= 0x20 so the compiler branches on
   the true side to the in-range block, as retail does (sltiu/bnez). */
void *func_0011B7F8(unsigned int arg0) {
    func_0011B710();
    func_00118CB0(D_0012FDA0);
    if (arg0 < 0x20) {
        void *ret = &D_00157E80[arg0 * 0x10];
        func_00118C90(D_0012FDA0);
        return ret;
    } else {
        func_00118C90(D_0012FDA0);
        return 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B868);

extern int D_0012FD9C;
extern int func_00118C70(void *);

void func_0011BBF0(void) {
    int buf[8];
    if (D_0012FD9C == -1) {
        buf[5] = 0;
        buf[2] = 1;
        buf[1] = 1;
        D_0012FD9C = func_00118C70(buf);
    }
}

extern void func_0011BBF0(void);
extern int D_0012FD9C NOT_SDA;

int func_0011BC40(void) {
    func_0011BBF0();
    func_00118CB0(D_0012FD9C);
    return 0;
}

/*
 * REVERTED (size mismatch: ours 16, retail 12). Logic is certain and the
 * tail-call rewrite does fire:
 *
 *   void func_0011BC70(void) { func_00118C90(D_0012FD9C); }
 *
 * It exposes a real limit of tools/fix_tail_calls.py rather than a source
 * problem. Retail schedules the argument load into the jump's delay slot:
 *
 *   lui $2,%hi(D_0012FD9C) / j func_00118C90 / lw $4,%lo(D_0012FD9C)($2)
 *
 * GCC instead spends the call's delay slot on the epilogue reload, so the
 * rewriter hits its case (a) -- no argument setup to carry down -- emits
 * nothing for the slot, and the assembler fills it with a nop. Three
 * instructions plus that nop is 16 bytes.
 *
 * Fixing it would mean the rewriter MOVING a body instruction into the
 * delay slot, which it deliberately never does: every transformation it
 * performs today is a deletion, and that is what makes it safe. Sinking
 * an arbitrary instruction past a jump needs real hazard analysis.
 * Reverted rather than kept, because a size mismatch drifts every later
 * function in the object.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BC70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BC80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BCB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BEB8);

extern void func_001153FC(void *, int, int);
extern int D_0012FD94;
extern char D_001580A8[];

int func_0011BF48(void) {
    D_0012FD94 = 0;
    func_001153FC(D_001580A8, 0, 0x4);
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BF80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C208);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C388);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C5C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C820);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CAE0);

extern int D_0012FDAC;
extern char D_00158140[];
extern int D_00158180;
extern int D_001581C0;

/* Another func_0011B4C8 RPC (see func_001245F8), guarded on the handle
   D_0012FDAC being valid. Both failure exits share the single `return 0`
   that the early guard branches to. */
int func_0011CBC8(int arg0) {
    if (D_0012FDAC < 0) {
        return 0;
    }
    D_001581C0 = arg0;
    if (func_0011B4C8(D_00158140, 1, 0, &D_001581C0, 4,
                      &D_00158180, 4, 0, 0) >= 0) {
        return D_00158180;
    } else {
        return 0;
    }
}

/* Sibling of func_0011CBC8 with command id 2 and -1 as the RPC failure
   result, so the two failure exits cannot share a return.

   Defined old-style ON PURPOSE. func_0011CCB0 just below calls this with
   NO argument at all -- retail's call has a bare nop in its delay slot --
   which a prototype would reject. A K&R definition creates no prototype,
   so both functions compile as retail's source evidently did. */
int func_0011CC38(arg0)
int arg0;
{
    if (D_0012FDAC < 0) {
        return 0;
    }
    D_001581C0 = arg0;
    if (func_0011B4C8(D_00158140, 2, 0, &D_001581C0, 4,
                      &D_00158180, 4, 0, 0) >= 0) {
        return D_00158180;
    } else {
        return -1;
    }
}

void func_0011CCB0(void) {
    func_0011CC38();
}

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

extern int func_00118E70(int);
extern void func_00118EC0(void);

int func_0011D210(void) {
    if (func_00118E70(0x4) & 0x40000) {
        func_00118EC0();
        return 1;
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D358);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D360);

/*
 * REVERTED: size mismatch, 52 bytes against retail's 56. Semantics are
 * certain:
 *
 *   unsigned int n = nbytes >> 2, i = 0;
 *   if (n) do { *dst = *src; src++; i++; dst++; } while (i < n);
 *   return 0;
 *
 * A word-at-a-time copy. Every instruction matches; the missing 4 bytes
 * are a `nop` retail leaves in the loop branch's DELAY SLOT, where this
 * compiler fills the slot with the `addiu $4,$4,4` pointer bump. That is
 * the R5900 short-loop erratum again, in a form the classifier did not
 * look for (it checked for two nops *before* the branch, not an
 * unfilled delay slot after it). No source shape fixes it, and
 * -malign-loops/-falign-loops do nothing here: the former is accepted
 * but is x86-oriented in 2.95, the latter is rejected outright.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D370);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D3A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D3B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D3C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D490);

extern int func_00118EA0(void);
extern void func_0011D4E0(void);
extern void func_00118EB0(void);

void func_0011D4A0(void) {
    if (func_00118EA0() == 0x2000000) {
        func_0011D4E0();
    } else {
        func_00118EB0();
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D4E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D6D4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D960);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D9A8);

extern int func_00118C70(void *);
extern int D_00130420;
extern int D_00130424;

void func_0011D9C0(void) {
    int a[8];
    int b[8];
    a[1] = 1;
    a[2] = 1;
    b[1] = 1;
    b[2] = 1;
    D_00130420 = func_00118C70(a);
    D_00130424 = func_00118C70(b);
}

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

extern void func_00118CF0(void *);
extern void func_00118CE0(void *);

/* Reads a word through func_00118CF0, rewrites its 13..15 bit field to 1,
   pushes it back, re-reads it and restores the original. Returns whether
   the field read back as 0. `srl` (not `sra`) at the end is the tell that
   the scratch word is unsigned.

   Not exact: 10/104, same size. Every instruction and operand matches;
   the residual is entirely prologue scheduling -- retail emits
   `sd $16,0x10; sd $31,0x20` back to back and spends the first call's
   delay slot on the argument, this build sinks the `$16` save into the
   delay slot instead. See the gcc 2.9-ee note in docs/DECOMP_PROGRESS.md:
   this is the sq-then-substitute pipeline scheduling against the wrong
   store width, not a source-shape problem. */
int func_0011DC50(void) {
    unsigned int saved;
    unsigned int cur;
    func_00118CF0(&saved);
    cur = (saved & 0xFFFF1FFF) | 0x2000;
    func_00118CE0(&cur);
    func_00118CF0(&cur);
    func_00118CE0(&saved);
    return ((cur >> 13) & 7) == 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DCB8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DD64);

/* Tail call: retail is `j func_0011D4A0` + nop, with no frame at all.
   Reached via tools/fix_tail_calls.py, which rewrites the compiler's
   call-and-return for the functions listed in tools/tail_call_functions.txt. */
void func_0011DD98(void) {
    func_0011D4A0();
}

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

extern void func_0011FB68(long *v, void *buf);
extern void *func_0011FC08(void *a, void *b, void *c);
extern void func_0011FA38(void *);

/*
 * Close, not exact (18/88), same size so inert. Semantics confirmed:
 * spills both 64-bit args, converts each into a 32-byte buffer via
 * func_0011FB68, combines them into a third buffer with func_0011FC08
 * and hands that to func_0011FA38. Frame size, all three buffer
 * addresses and every instruction match.
 *
 * The entire residual is prologue save ORDER: retail stores $16 before
 * $31 and spends the first jal's delay slot on the argument setup; this
 * compiler saves $31 first and sinks the setup into the delay slot.
 * Both fill the slot -- the scheduler just picks the other instruction.
 *
 * This is the THIRD member of the func_0011FB68 family blocked on
 * exactly this ($s0/$ra save position), after func_00120430 (10/76) and
 * func_0012AAA8 (10/76). The buffers cannot be reordered to steer it
 * because their stack addresses already match retail, and the
 * declaration-order lever only moves locals, not prologue save order.
 * Treat the rest of this family as the same known residual rather than
 * re-deriving it each time.
 */
void func_0011FE48(long a, long b) {
    char buf0[0x20];
    char buf1[0x20];
    char buf2[0x20];
    func_0011FB68(&a, buf0);
    func_0011FB68(&b, buf1);
    func_0011FA38(func_0011FC08(buf0, buf1, buf2));
}

/*
 * Fourth member of the func_0011FB68 family, and the same known residual
 * as func_0011FE48 above -- see that comment. Identical shape, with one
 * extra step: the sign flag in the second buffer is flipped before the
 * combine (retail's `xori $2, $2, 1` on the word at buf1+4), which makes
 * this the subtract to func_0011FE48's add.
 */
void func_0011FEA0(long a, long b) {
    char buf0[0x20];
    char buf1[0x20];
    char buf2[0x20];
    func_0011FB68(&a, buf0);
    func_0011FB68(&b, buf1);
    *(int *)(buf1 + 4) ^= 1;
    func_0011FA38(func_0011FC08(buf0, buf1, buf2));
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011FF08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001201B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120318);

/*
 * Close, not exact (10/76), same size. Logic confirmed: spills both
 * 64-bit args to locals, converts each into a 32-byte buffer via
 * func_0011FB68, then compares the two buffers. Frame layout, all
 * offsets and every instruction match retail.
 *
 * The whole residual is WHERE the $s0 save sits: retail stores it in
 * the prologue alongside $ra and spends the first jal's delay slot on
 * the argument setup (daddu $a1,$sp,$0); this compiler emits the
 * argument setup before the jal and sinks the $s0 save into the delay
 * slot instead. Both fill the slot, the scheduler just picks the other
 * instruction. Hoisting buf1 into an explicit pointer local to make
 * $s0 live earlier was tried and is clearly worse (23/76).
 */
extern void func_0011FB68(long *v, void *buf);
extern int func_00120318(void *a, void *b);

int func_00120430(long arg0, long arg1) {
    int buf0[8];
    int buf1[8];
    long a = arg0;
    long b = arg1;
    func_0011FB68(&a, buf0);
    func_0011FB68(&b, buf1);
    return func_00120318(buf0, buf1);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120480);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120538);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001205D0);

extern void func_0011FA38(void *);

void func_00120670(int arg0, int arg1, int arg2, long arg3) {
    int buf[8];
    buf[0] = arg0;
    buf[1] = arg1;
    buf[2] = arg2;
    *(long *)&buf[4] = arg3;
    func_0011FA38(buf);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001206A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001206B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120740);

extern void func_001206B0(float *, int *);

/*
 * Close, not exact (8/64, same size). Instruction-for-instruction
 * identical to retail apart from which of two instructions takes the
 * call's delay slot: retail emits the `swc1` of the float argument
 * fourth and puts `daddu $5,$29,$0` (the second argument) in the slot;
 * this compiler does the reverse. Pure scheduling -- the store of `f`
 * is the last computation before the call, so it sinks into the slot.
 */
void func_00120778(float arg0) {
    int buf[4];
    float f = arg0;
    func_001206B0(&f, buf);
    func_00120670(buf[0], buf[1], buf[2],
                  (long)(((unsigned long)buf[3] << 32) >> 2));
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001207B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120858);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001208E4);

extern void func_001208E4();
extern void func_00118B20(int, void *, int);
extern void func_00118C80(int);

/* Same stack-descriptor idiom as func_0011BBF0. The second argument to
   func_00118B20 is the address of func_001208E4's *second* instruction --
   retail builds it as one %hi/%lo pair on `func_001208E4 + 4`, so it is a
   code address the source names by symbol, not a separate label.

   Not exact: 24/104, same size. `unsigned short arg0` is confirmed -- it
   is what puts `andi $17,$4,0xFFFF` in the prologue rather than at the
   call site (declaring it `int` and masking at the call costs 4 more
   bytes of mismatch). The rest is the same prologue-scheduling residual
   as func_0011DC50: retail interleaves the three descriptor stores
   between the `$16` and `$31` saves, this build front-loads `sd $31`. */
void func_00120910(unsigned short arg0) {
    int buf[8];
    int h;
    buf[5] = 0;
    buf[2] = 0;
    buf[1] = 1;
    h = func_00118C70(buf);
    func_00118B20(arg0, (char *)func_001208E4 + 4, h);
    func_00118CB0(h);
    func_00118C80(h);
}

extern int func_00120F30(int);
extern int func_0011D960(void);
extern void func_0011D9A8(void);
extern void *D_00159840;

void *func_00120978(void *arg0) {
    void *old;
    int r;
    if (func_00120F30(1) != 0) {
        return 0;
    }
    r = func_0011D960();
    old = D_00159840;
    D_00159840 = arg0;
    if (r != 0) {
        func_0011D9A8();
    }
    return old;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001209D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120A78);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120B28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120BC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120C58);

extern int D_001313E4;
extern int D_001313FC;
extern void func_00120C58(void);

int func_00120CA0(void) {
    int r;

    D_001313E4 = 1;
    r = func_0011D960();
    func_0011AA38(0x80000012, (int)((char *)func_00120C58 + 8), 0);
    if (r != 0) {
        func_0011D9A8();
    }
    D_001313E4 = 0;
    D_001313FC = 1;
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120D18);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120D28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120E98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120F30);

extern void func_0011A6C8();
extern int func_0011B6B8(void *);
extern char D_00153000[];
extern char D_00132E08[];
extern int D_001313D0;

int func_00120FD0(int arg0) {
    if (arg0 == 0) {
        if (D_001313D0 > 0) {
            func_0011A6C8(D_00153000);
        }
        while (func_0011B6B8(D_00132E08) != 0) {
            func_00120910(0x3C);
        }
        return 0;
    }
    return func_0011B6B8(D_00132E08);
}

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

extern void func_00123650(void *);
extern char D_001534E0[];

/*
 * Close, not exact (24/112), same size. Logic is certain: spin while
 * bit 8 of *arg0 is set, and once a 0xFFFFFF countdown goes negative,
 * report through func_0011A6C8(D_001534E0) and kick func_00123650 on
 * every further iteration.
 *
 * The residual is the countdown's initial constant, and it is NOT
 * reachable from C. Retail builds 0x00FFFFFF as
 *     lui $17,0x100 ; addiu $17,$17,-1
 * (the signed %hi/%lo split, which is why splat invented a bogus
 * "D_FFFFFF" symbol for it). Both SN sub-builds emit the logical split
 *     lui $16,0xff  ; ori $16,$16,0xffff
 * instead, for every spelling tried: int, unsigned, long, and a
 * (char *)0xFFFFFF pointer. gcc 2.95's mips_move_1word hands a plain
 * CONST_INT to the assembler as `li`, and gas expands `li` with ori.
 * The lui/addiu pair is what gcc emits for a SYMBOL address, so retail
 * most likely got this value from an absolute/linker-defined symbol
 * rather than a literal.
 *
 * The register roles are swapped with it ($16/$17 exchanged) as a knock
 * -on of which value is materialised first; fixing that alone would not
 * make this exact, so it was not chased.
 */
void func_00123208(void *arg0) {
    int n = 0xFFFFFF;

    while ((*(int *)arg0 & 0x100) != 0) {
        if (n < 0) {
            func_0011A6C8(D_001534E0);
            func_00123650(arg0);
        }
        n--;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123278);

int func_00123280(int arg0) {
    if ((unsigned int)arg0 >> 28 == 7) {
        arg0 &= 0x0FFFFFFF;
        arg0 |= 0x80000000;
    }
    return arg0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001232A8);

extern int D_00132E70[];

int func_001232E0(unsigned int arg0) {
    if (arg0 >= 0xA) {
        return 0;
    }
    return D_00132E70[arg0];
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123308);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001233E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001235C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123630);

/*
 * Attempted and reverted at 70/152 (same size, so inert). Semantics are
 * confirmed and the instruction sequence is structurally identical to
 * retail; the residual is the allocator destination-choice question plus
 * prologue scheduling, neither source-steerable. Decoded C, so a later
 * attempt starts from the meaning:
 *
 *   int func_00123650(int *arg0) {
 *       int en, prev, old;
 *       en = func_0011D960();
 *       prev = *(volatile int *)0x1000F520;          // D_ENABLER
 *       if ((prev & 0x10000) == 0)
 *           *(volatile int *)0x1000F590 = prev | 0x10000;
 *       *(volatile int *)0x1000E000;                 // D_CTRL, discarded
 *       old = *arg0;
 *       *arg0 = old & ~0x100;
 *       *(volatile int *)0x1000F590 = prev;          // restore
 *       if (en != 0) func_0011D9A8();
 *       return old;
 *   }
 *
 * Divergences: retail holds the func_0011D960 result in $7 and the
 * enabler in $6 where this compiler picks $a2/$a1; retail copies the
 * parameter to $17 after both prologue saves where this compiler
 * interleaves it between them; and this compiler hoists the
 * non-volatile *arg0 load above the volatile D_CTRL read (legal, but
 * retail has them the other way). The D_CTRL read is genuinely
 * discarded -- a volatile read for its side effect only.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00123650);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001236E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001238A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001238B0);

extern int func_001238B0(int, int, int, int);
extern int D_00132EA8;

int func_001239D8(int arg0, int arg1, int arg2) {
    int r = func_001238B0(arg0, arg1, arg2, 0x40);
    if (r == 0) {
        D_00132EA8 = 0xB;
    }
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123A10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123AC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123BA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123C30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123D48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123EC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123EE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123F30);

extern int *D_00159B28;
extern int *D_00159B2C;
extern int *D_00159B30;

void func_00124010(int arg0) {
    char *p = (char *)(arg0 | 0x20000000);
    if (D_00159B28 != 0) *D_00159B28 = *(int *)(p + 0x0);
    if (D_00159B2C != 0) *D_00159B2C = *(int *)(p + 0x4);
    if (D_00159B30 != 0) *D_00159B30 = *(int *)(p + 0x90);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124068);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001241E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124338);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124410);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124528);

extern int func_0011B4C8();
extern char D_0015B108[];
extern int D_0015B180;

int func_001245F8(void) {
    func_0011B4C8(D_0015B108, 0x80000963, 0, &D_0015B180, 0x400,
                  &D_0015B180, 0x400, 0, 0);
    return D_0015B180;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124650);

extern void func_00124B60(void *);
extern char D_00153658[];

/* Same RPC shape as func_001245F8 above (9 args: $4-$11 plus one stack
   slot), but with a different command id and an error path.

   The request word goes into the buffer at +4. It has to be written
   through a local pointer, not as (&D_0015B180)[1]: the latter folds to
   the symbol D_0015B180+4, so the compiler builds THAT address and then
   subtracts 4 to pass the buffer. With `buf`, one lui/addiu serves both
   the store and the two pointer arguments, as retail does.

   The test is written >= 0 so the error path is the fall-through and the
   success path is the branch target, letting the result load sit in the
   bgez delay slot. */
int func_001247E8(int arg0) {
    int *buf = &D_0015B180;

    buf[1] = arg0;
    if (func_0011B4C8(D_0015B108, 0x80000904, 0, buf, 0x400,
                      buf, 0x400, 0, 0) >= 0) {
        return D_0015B180;
    } else {
        func_00124B60(D_00153658);
        return 0;
    }
}

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

extern int func_00124920(int);
extern char D_0015B640[];

/*
 * Close, not exact (28/84), same size. Logic confirmed: call
 * func_00124920(arg0); if it returns >= 0, mark entry arg0 of the
 * 0x330-stride table D_0015B640 as {+4 = 1, +8 = result}; return the
 * result either way.
 *
 * Retail computes the entry address once into $5, copies it to $3, and
 * stores with displacements 8($5) and 4($3) -- a redundant register
 * copy. Writing the address once into a `char *e` local coalesces to a
 * single register and comes out 4 bytes SHORT (a size mismatch, so not
 * keepable); recomputing the address per store restores the right size
 * but makes the compiler fold the +4 into the address constant instead
 * of using a store displacement. Two pointer locals (`f = e`) coalesce
 * straight back to one register. So the size and the addressing form
 * are reachable separately here but not together.
 */

int func_00125020(int arg0) {
    int t = func_00124920(arg0);
    if (t >= 0) {
        *(int *)(D_0015B640 + arg0 * 0x330 + 0x4) = 1;
        *(int *)(D_0015B640 + arg0 * 0x330 + 0x8) = t;
    }
    return t;
}

extern void func_00119288(void *a, void *b);

/*
 * Close, not exact (3/100), same size. Logic confirmed: take entry
 * arg0 of the 0x330-stride table D_0015B640, follow its +0xC pointer,
 * record that pointer and pointer+0x80 in a two-slot stack array, call
 * func_00119288(p, p+0x100), then return whichever slot has the smaller
 * +0x7C field -- retail indexes the array with the `slt` result
 * directly, which plain C reproduces.
 *
 * The three differing bytes are one instruction: retail forms the entry
 * address as `addu $2,$2,$4` (sum into the base register) where this
 * compiler emits `addu $a0,$a0,$v0` (sum into the index register).
 * Writing the addition the other way round (`arg0 * 0x330 +
 * D_0015B640`) changes nothing -- GCC canonicalises it -- so this is
 * the allocator's destination choice, not operand order.
 */
void *func_00125078(int arg0) {
    char *e = D_0015B640 + arg0 * 0x330;
    char *p = *(char **)(e + 0xC);
    char *slot[2];
    slot[0] = p;
    slot[1] = p + 0x80;
    func_00119288(p, p + 0x100);
    return slot[*(int *)(slot[0] + 0x7C) < *(int *)(slot[1] + 0x7C)];
}

/*
 * REVERTED (size mismatch: ours 132, retail 128). Logic is certain, and
 * the block structure below reproduces retail's exactly -- the two
 * `return 0` exits share one block, the beqz delay slot is free for the
 * spill, and the D_00132ED8 accesses come out as %lo($base) for [0] and
 * addiu+4 for [1], just as retail has them:
 *
 *   extern int D_00132ED8[];
 *
 *   int func_001250E0(int arg0) {
 *       char *e = D_0015B640 + arg0 * 0x330;
 *       char *p = *(char **)(e + 0xC);
 *       char *slot[2];
 *
 *       slot[0] = p;
 *       slot[1] = p + 0x80;
 *       if (*(int *)(p + 0x7C) == 0 ||
 *           (D_00132ED8[0] == *(int *)(p + 0x7C) &&
 *            D_00132ED8[1] == *(int *)(slot[1] + 0x7C))) {
 *           return 0;
 *       }
 *       D_00132ED8[0] = *(int *)(slot[0] + 0x7C);
 *       D_00132ED8[1] = *(int *)(slot[1] + 0x7C);
 *       return 1;
 *   }
 *
 * The two-slot stack array is not decoration: retail spills the pointer
 * and pointer+0x80 to 0x0/0x4 of a 0x10 frame in a LEAF function, the
 * same idiom already used by func_00125078 just above.
 *
 * Exactly one instruction over, and it is the allocator's destination
 * choice again: retail puts %hi(D_00132ED8) straight into $7 and uses
 * $7 for every later reference, while this compiler emits
 *     lui $2,%hi(D_00132ED8) ; lw $3,%lo(D_00132ED8)($2) ; move $7,$2
 * because it wants $2 for the lui and then needs $2 back for `li $2,1`.
 * Caching the global's base in a local `int *g` removes the copy but
 * also removes an addiu and a reload, landing four bytes SHORT (and
 * folding the two bne into a bnel); combining the conditions the other
 * way (a single `&&` chain returning 1) lets GCC keep both pointers in
 * registers and drops the spills entirely, 16 bytes short. No spelling
 * tried hits 32 instructions.
 */
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

void func_00127378(int arg0) {
    unsigned int *p = (unsigned int *)0x10002010;
    *p = (*p & 0xFF7FFFFF) | (arg0 << 23);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001273A0);

extern void func_001286E8(int, int);

void func_001275A0(int arg0) {
    func_001286E8(arg0, 3);
}

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

extern int D_00132F70[];

void func_00128560(char *arg0, unsigned int arg1) {
    volatile int *reg = (volatile int *)0x10002000;
    *reg = arg1;
    *(int *)(arg0 + 0x818) = D_00132F70[arg1 >> 28];
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128590);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128638);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001286E8);

/*
 * REVERTED -- decode is complete and believed correct; blocked on
 * register allocation, and the overage is a SIZE mismatch (0x114 vs
 * retail's 0x108) that overflows .core_text into .core_data, so it
 * cannot be left in as documented-close.
 *
 * A bitstream refill-and-extract: if the cache is empty or holds fewer
 * than n bits, wait for the DMA channel to go idle, refill from the
 * table, then return the top n bits.
 *
 *   extern long func_00128638_wide(void *, int *) __asm__("func_00128638");
 *
 *   int func_00128860(void *arg0, int n) {
 *       char *s = (char *)arg0;
 *       int bits;
 *       if (*(int *)(s + 0x818) != 0 || *(int *)(s + 0x83C) < n) {
 *           int *tbl = D_00132F70;
 *           int counter = 0;
 *           while ((*(volatile int *)0x10002010 & 0x80004000) == 0x80000000) {
 *               if (counter++ >= 0x1389) {
 *                   func_0012BCC8(*(int *)(s + 0x858));
 *                   counter = 0;
 *               }
 *           }
 *           *(volatile int *)0x10002000 = 0x40000000;
 *           *(int *)(s + 0x818) = tbl[4];
 *           *(int *)(s + 0x838) = (int)func_00128638_wide(s, tbl);
 *           *(int *)(s + 0x83C) = 0x20;
 *       }
 *       bits = *(int *)(s + 0x838);
 *       return (unsigned int)bits >> -n;
 *   }
 *
 * Confirmed right along the way: `counter++ >= 0x1389` is correct, not a
 * violation of the don't-put-++-in-a-comparison lever -- retail carries
 * the `daddu $2,$6,$0` spare move that lever warns about, so here the
 * move is EVIDENCE the ++ belongs inside the comparison. The dsll32/dsra32
 * after the jal is the 64-bit-return narrowing, handled by the _wide alias.
 *
 * Why it fails: retail keeps only $16/$17/$18 across the call (object,
 * D_00132F70 base, n) in a 0x40 frame and REMATERIALISES the hardware
 * constants 0x10002010 / 0x80004000 / 0x80000000 with lui/ori at each
 * use. This compiler hoists all three into callee-saved registers, which
 * forces three extra save/restore pairs and a 0x70 frame. Tried: tbl
 * hoisted before vs after the wait loop (0x114 vs 0x118), and `if` +
 * do/while vs a plain while (identical). The allocator's
 * rematerialise-vs-keep choice is not reachable from C -- same class as
 * the documented destination-choice question.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00128860);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128968);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128A58);

extern void func_00128590(void *);
extern void func_00128968(void *, int);
extern int func_00128860(void *, int);

void func_00128BA8(void *arg0) {
    int pad;

    func_00128590(arg0);
    pad = -(*(volatile int *)0x10002020 & 7) & 7;
    if (pad != 0) {
        func_00128968(arg0, pad);
    }
    while (func_00128860(arg0, 0x18) != 1) {
        func_00128968(arg0, 8);
    }
}

extern void func_00128968(void *, int);
extern int func_00128A58(void *, int);
extern void func_00129180(void *);

int func_00128C28(void *arg0) {
    *(int *)((char *)arg0 + 0x1B4) = func_00128A58(arg0, 5);
    if (func_00128A58(arg0, 1) != 0) {
        func_00128A58(arg0, 1);
        func_00128968(arg0, 7);
        func_00129180(arg0);
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128C90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128DA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128E68);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128F90);

extern void func_00128968(void *, int);
extern int func_00128A58(void *, int);

void func_00129180(void *arg0) {
    while (func_00128A58(arg0, 1) != 0) {
        func_00128968(arg0, 8);
    }
}

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

int func_00129C78(void *arg0) {
    char *p = (char *)arg0;
    int r = 1;
    if (*(int *)(p + 0x8) != 2) {
        int v = *(int *)(p + 0x118);
        *(int *)(p + 0x8) = 2;
        *(int *)(p + 0xAC) = v;
    }
    *(int *)(p + 0x820) = r;
    return r;
}

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

/*
 * REVERTED (size mismatch: ours 32 bytes, retail 28). Semantics are
 * certain and the instruction sequence is identical:
 *
 *   int func_0012AAA8(void *arg0, int arg1) {
 *       return (int)(*(unsigned long *)arg0 >> (0x40 - arg1));
 *   }
 *
 * ld / li 0x40 / subu / dsrlv / dsll32 / dsra32 all match. The single
 * difference is delay-slot filling: retail puts the final `dsra32`
 * (second half of the 64->32 sign-extension for the int return) IN the
 * `jr` delay slot; this compiler emits it before the `jr` and fills the
 * slot with a nop, costing 4 bytes. Tried hoisting the load to a local
 * and hoisting the shift amount to a local -- both still 8 instructions.
 * Not source-steerable; it is the assembler/compiler delay-slot filler,
 * same family as the other scheduling blockers.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AAA8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AAC8);

/*
 * Close, not exact (8/76), same size. Two-argument sibling of
 * func_0012ABB0 above and blocked identically: the instruction multiset
 * is right, but retail schedules `move $16,$4` into the first jal's
 * delay slot while this compiler puts a register save there. Not
 * source-steerable -- see func_0012ABB0's comment for the variants
 * already tried.
 */
int func_0012AB60(void *arg0, int arg1) {
    int r = func_0012AAA8(arg0, arg1);
    func_0012AAC8(arg0, arg1);
    return r;
}

extern int func_0012AAA8(void *, int);
extern void func_0012AAC8(void *, int);

/*
 * Close, not exact (8/68), same size so harmless to everything after it.
 * Logic confirmed. The residual is purely which instruction fills the
 * first jal's delay slot: retail emits the three saves consecutively
 * ($16@0, $17@16, $31@32) and schedules `move $16,$4` into the slot,
 * while this compiler interleaves the $16 save with the move and puts
 * `sd $17,16` in the slot instead. Same instruction multiset, different
 * schedule. Hoisting the result into a pre-declared local (the usual
 * declaration-order lever) changes nothing.
 */
int func_0012ABB0(void *arg0) {
    int r;
    r = func_0012AAA8(arg0, 1);
    func_0012AAC8(arg0, 1);
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012ABF8);

unsigned int func_0012AC50(char *arg0, int arg1) {
    unsigned int v = *(int *)(arg0 + 0x8) + (arg1 >> 3);
    if (v >= *(unsigned int *)(arg0 + 0x24)) {
        v -= *(int *)(arg0 + 0x28);
    }
    return v;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AC7C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AC80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AD08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B008);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B100);

int func_0012B250(void *arg0) {
    func_0012AB60(arg0, 0x38);
    func_0012AB60(arg0, 0x28);
    while (func_0012AAA8(arg0, 1) == 1) {
        func_0012AB60(arg0, 0x18);
    }
    return 1;
}

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

int func_0012BBF8(void *arg0) {
    char *b = *(char **)((char *)arg0 + 0x40);
    char *p;
    p = *(char **)(b + 0x1B8); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1C8); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1D8); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1BC); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1CC); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1DC); if (p != 0) *(int *)(p + 0x28) = 0;
    return 1;
}

/*
 * Close, not exact (12/36), same size. Logic verified: fetch the table
 * at arg0+0x40, index it by arg1*8, store arg3 at +0x10, then return
 * the old value at +0xC while overwriting it with arg2.
 *
 * Retail forms the second pointer as (base + 0xC) + arg1*8; this
 * compiler reassociates to base + (arg1*8 + 0xC). Writing it with the
 * parenthesisation retail uses does not help -- GCC reassociates anyway
 * -- and hoisting `base + 0xC` into its own local makes it WORSE
 * (12/36 -> 17/36). Same associativity/allocation class as the other
 * documented near-misses.
 */
int func_0012BC50(void *arg0, int arg1, int arg2, int arg3) {
    char *base = *(char **)((char *)arg0 + 0x40);
    char *p = base + arg1 * 8;
    char *q = (base + 0xC) + arg1 * 8;
    int old;
    *(int *)(p + 0x10) = arg3;
    old = *(int *)q;
    *(int *)q = arg2;
    return old;
}

/*
 * Close, not exact (12/80, same size so harmless). Dispatches through a
 * table hanging off arg0+0x40: index it by *arg1 (8-byte entries), take
 * the handler at +0xC, and if non-null call it with the entry's +0x10
 * field as a third argument, returning ITS result.
 *
 * The result-is-the-call's-return-value reading matters: a first attempt
 * returned the entry address instead, which kept `entry` live across the
 * call, forced a callee-saved register and made the function 8 bytes
 * long. Retail's `daddu $7,$2,$0` sits AFTER the jalr, so $2 there is
 * the callee's return value, not the entry pointer.
 *
 * Residual is the allocator: retail holds `result` in $7 (a3), this
 * compiler in $6 (a2), and the final move follows.
 */
void *func_0012BC78(void *arg0, int *arg1) {
    void *result = 0;
    if (arg0 != 0) {
        char *tbl = *(char **)((char *)arg0 + 0x40);
        if (tbl != 0) {
            char *entry = tbl + (*arg1 << 3);
            void *(*fn)() = *(void *(**)())(entry + 0xC);
            if (fn != 0) {
                result = fn(arg0, arg1, *(int *)(entry + 0x10));
            }
        }
    }
    return result;
}

/* No declaration needed: the definition above precedes this caller. The
   extern that used to sit here guessed `void (int, void *)` and now
   conflicts with the real signature. */
void func_0012BCC8(int arg0) {
    int local[8];
    local[0] = 1;
    func_0012BC78(arg0, local);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BCF0);

void func_0012BD28(void *arg0, int arg1, int arg2) {
    int *p = (int *)arg0;
    p[1] = arg2;
    p[0] = arg1;
    p[2] = arg1;
    p[3] = arg1;
}

void func_0012BD40(void *arg0) {
    char *p = (char *)arg0;
    *(int *)(p + 0xC) = *(int *)(p + 0x8);
}

void func_0012BD50(void *arg0) {
    char *p = (char *)arg0;
    *(int *)(p + 0x8) = *(int *)(p + 0xC);
}

extern void func_0012C468(void *, void *);
extern char D_00153B38[];

/* Bump allocator out of a region {base, size, used}: round `used` up to
   `align`, reserve `size` bytes, and hand back the aligned offset. On
   overflow it reports through func_0012C468 and returns 0 WITHOUT
   touching `used`. */
unsigned int func_0012BD60(void *arg0, char *r, unsigned int size,
                           unsigned int align) {
    unsigned int aligned;
    unsigned int end;

    aligned = ((*(unsigned int *)(r + 0x8) + align - 1) / align) * align;
    end = aligned + size;
    if (*(unsigned int *)(r + 0x0) + *(unsigned int *)(r + 0x4) < end) {
        func_0012C468(arg0, D_00153B38);
        return 0;
    }
    *(unsigned int *)(r + 0x8) = end;
    return aligned;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BDD0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BF40);

extern void func_0012C0A0(void *);
extern void func_0012BF40(void *);

void func_0012C058(void *arg0) {
    int inner = *(int *)((char *)arg0 + 0x40);
    if (*(int *)(inner + 0x174) != 3) {
        func_0012C0A0(arg0);
    } else {
        func_0012BF40(arg0);
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C0A0);

extern void func_0012C278(void *);

int func_0012C200(void *arg0) {
    char *p = (char *)arg0;
    int inner = *(int *)(p + 0x40);
    int ret = 0;

    if (*(int *)(inner + 0x4) != 0 && *(int *)(inner + 0x8) != 0) {
        func_0012C278((void *)inner);
        *(int *)(p + 0x8) = *(int *)(inner + 0x118) - *(int *)(inner + 0xAC);
        *(int *)(inner + 0x4) = 0;
        ret = 1;
    }
    return ret;
}

/* Tail call: the constant argument setup lands in the jump's delay slot,
   so the field store precedes it. func_00127378 is defined above. */
void func_0012C268(void *arg0) {
    *(int *)((char *)arg0 + 0x848) = 0;
    func_00127378(1);
}

extern void func_00129E30(void *, int, int, int);
extern void func_00129F40(void *, int, int);
extern char D_00153BB8[];

void func_0012C278(void *arg0) {
    char *s = (char *)arg0;
    int n = *(int *)(s + 0x118);

    if (*(int *)(s + 0x120) != 0) {
        func_0012C468(s, D_00153BB8);
    } else if (*(int *)(s + 0x174) == 3) {
        func_00129E30(s, *(int *)(s + 0x1BC), n - 1, n - 1);
    } else {
        func_00129F40(s, *(int *)(s + 0x1CC), *(int *)(s + 0x1DC));
    }
    *(int *)(s + 0x120) = 0;
}

/*
 * REVERTED (size mismatch: ours 88, retail 96). Logic is certain:
 *
 *   void func_0012C2F8(void *arg0) {
 *       char *p = (char *)arg0;
 *       func_00127378(1);
 *       *(int *)(p + 0x590) = 0x70000000;   // scratchpad pointers
 *       *(int *)(p + 0x594) = 0x70001800;
 *       *(int *)(p + 0x6D0) = 0x70001B00;
 *       *(int *)(p + 0x6D4) = 0x70003300;
 *       *(int *)(p + 0x810) = 0;
 *   }
 *
 * Retail holds 0x70000000 in $17 and therefore pays a sd/ld $17 pair,
 * 8 bytes this compiler does not emit because it materialises each
 * constant into a temp just before its store instead of keeping four
 * live at once. Binding all four to locals declared after the call was
 * tried and changes nothing -- GCC folds them straight back into the
 * stores. Reverted rather than kept, because a short function drifts
 * everything after it.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C2F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C358);

extern char D_00153BD8[];
/* Unprototyped: func_0011A6C8 is a varargs definition (blocked as such),
   but calling one is fine -- only defining one needs stdarg.h. */
extern void func_0011A6C8();

void func_0012C420(void *arg0) {
    func_0011A6C8(D_00153BD8, arg0);
}

extern void func_00116248(void *);

void func_0012C430(void *arg0) {
    char buf[0x100];
    func_00116248(buf);
    func_0012C468(arg0, buf);
}

extern void func_0012C420(void *);

void func_0012C468(void *arg0, void *arg1) {
    char *a = (char *)arg0;
    void *t = *(void **)(a + 0x858);
    /* the arg0 null test is retail's, after it has already dereferenced
       arg0 -- one of the "dead-looking guards" that must be written out */
    if (t != 0 && arg0 != 0 && *(int *)(a + 0xC) != 0) {
        int buf[4];
        buf[0] = 0;
        buf[1] = (int)arg1;
        func_0012BC78(t, buf);
    } else {
        func_0012C420(arg1);
    }
}

/*
 * Close, not exact (4/32), same size so harmless. Logic and every
 * instruction match; retail puts the `0x8` store in the `jr` delay slot
 * and `0x4` before it, this compiler chooses the opposite. Tried three
 * source orderings -- all three produced the identical schedule, so the
 * scheduler fixes this independently of statement order.
 */
int func_0012C4C0(void *arg0, int arg1, int arg2) {
    char *p = (char *)arg0;
    *(int *)(p + 0xC) = arg1 >> 4;
    *(int *)(p + 0x10) = arg2 >> 4;
    *(int *)(p + 0x4) = arg1;
    *(int *)(p + 0x8) = arg2;
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C4E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C608);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C8B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C990);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CA70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CBA0);

extern char D_00153C48[];
extern char D_00153C78[];
extern char D_00153C90[];

/* Three more of the func_0012C468 family, same shape as func_0012CC60. */
void func_0012CC30(void *arg0) {
    func_0012C468(arg0, D_00153C48);
}

void func_0012CC40(void *arg0) {
    func_0012C468(arg0, D_00153C78);
}

void func_0012CC50(void *arg0) {
    func_0012C468(arg0, D_00153C90);
}

extern char D_00153CC8[];

/* Tail call: arg0 passes straight through, arg1 is &D_00153CC8 whose
   %lo half retail schedules into the jump's delay slot. */
void func_0012CC60(void *arg0) {
    func_0012C468(arg0, D_00153CC8);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC6C);

extern int func_0012CE48(void *);

/* Tail call with argument setup: retail is
   `lw $4,0x40($4)` / `j func_0012CE48` / `addiu $4,$4,0x4C`. */
int func_0012CC80(char *a) {
    return func_0012CE48(*(char **)(a + 0x40) + 0x4C);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC8C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CCF8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CD60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CE48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CF98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D000);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D068);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D2A0);

extern void func_0012D2A0(void);
extern signed char D_001331D8[];

int func_0012D340(void) {
    if (D_001331D8[0] == 0) {
        func_0012D2A0();
    }
    return D_001331D8[4] == 0x54;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D380);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D3E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D3F0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D440);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D448);

int func_0012D4B0(int arg0) {
    unsigned int v = arg0 & 0xFF;
    return ((v / 10) * 6 + v) & 0xFF;
}

/*
 * REVERTED (size mismatch: ours 28 bytes, retail 32). Semantics certain
 * -- BCD byte to binary:
 *
 *   int func_0012D4E0(int arg0) {
 *       unsigned int v = arg0 & 0xFF;
 *       return (v - (v >> 4) * 6) & 0xFF;
 *   }
 *
 * (`unsigned` matters: it gives retail's `srl`, not `sra`.) Everything
 * matches except the multiply: retail uses the generic two-operand
 * `mult $0,$3,$4` followed by `mflo $3`, while this compiler uses the
 * EE three-operand `mult $v1,$v1,$a0` which writes the result directly
 * and needs no mflo -- one instruction fewer, hence 4 bytes short. That
 * is an ISA/codegen choice, not something the source can steer.
 */
/*
 * Attempted, reverted at 14/32. Semantics certain -- BCD to binary,
 * callee of func_0012D500/func_0012D568:
 *     int f(int arg0) { unsigned v = arg0 & 0xFF;
 *                       return (v - (v >> 4) * 6) & 0xFF; }
 * Every instruction matches except the multiply FORM: retail emits the
 * generic `mult $0, $3, $4` + `mflo $3`, this compiler picks the R5900
 * three-operand `mult $v1, $v1, $a0` which writes rd directly and needs
 * no mflo. Same operands, same order, different instruction selection --
 * not reachable by reshaping the C.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D4E0);

extern int func_0012D4E0(int);

/*
 * Close, not exact (4/104), same size so inert. The ONLY divergence is
 * prologue save order: retail emits `sd $16, 0($sp)` then
 * `sd $31, 0x10($sp)`, this compiler emits them the other way round.
 * Identical offsets, identical everything else including every delay
 * slot. Not expressible from C -- these are compiler-emitted prologue
 * stores, not source statements, so neither statement order nor the
 * declaration-order lever reaches them.
 */
void func_0012D500(unsigned char *p) {
    p[7] = func_0012D4E0(p[7]);
    p[6] = func_0012D4E0(p[6]);
    p[5] = func_0012D4E0(p[5]);
    p[3] = func_0012D4E0(p[3]);
    p[2] = func_0012D4E0(p[2]);
    p[1] = func_0012D4E0(p[1]);
}

extern int func_0012D4B0(int);

/*
 * Close, not exact (4/104), same size so inert. The ONLY divergence is
 * prologue save order: retail emits `sd $16, 0($sp)` then
 * `sd $31, 0x10($sp)`, this compiler emits them the other way round.
 * Identical offsets, identical everything else including every delay
 * slot. Not expressible from C -- these are compiler-emitted prologue
 * stores, not source statements, so neither statement order nor the
 * declaration-order lever reaches them.
 */
void func_0012D568(unsigned char *p) {
    p[7] = func_0012D4B0(p[7]);
    p[6] = func_0012D4B0(p[6]);
    p[5] = func_0012D4B0(p[5]);
    p[3] = func_0012D4B0(p[3]);
    p[2] = func_0012D4B0(p[2]);
    p[1] = func_0012D4B0(p[1]);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D5D0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D688);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D730);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D760);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D788);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D818);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D868);

extern void func_0011DDA0(int);

/* Tail call: `j func_0011DDA0` with the argument zeroed in the delay slot. */
void func_0012DA28(void) {
    func_0011DDA0(0);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DA30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DA38);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DB18);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DDC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DFA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DFB0);

extern short D_0015ED84;
extern short D_0015ED80;

void func_0012E038(void *arg0, int arg1) {
    int *p = (int *)arg0;
    *(int *)&D_0015ED84 = arg1;
    *(int *)&D_0015ED80 = (int)arg0;
    p[arg1 + 1] = 0;
    p[0] = 0;
}

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

extern void func_0012DDC0(void);

/*
 * Close, not exact (2/32), same size. Retail saves/restores $ra with
 * sq/lq here; v1.36 (correctly for core_text overall) emits sd/ld, so
 * the two spill instructions differ and nothing else does. This is one
 * of the ~14 core_text functions on the sq side of that split -- the
 * still-open half of the sq/lq question, not a source-shape problem.
 */
void func_0012EC40(void) {
    *(int *)&D_0015EDC4 = 0;
    func_0012DDC0();
}

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

int func_0012F2E0(int arg0) {
    return (arg0 * 0x5F4) / 0x2E5;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F308);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F348);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F3F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F4A8);
