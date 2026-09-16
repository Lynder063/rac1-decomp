#include "common.h"
#include "structs.h"

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
    Node1E4 *self = (Node1E4 *)arg0;
    self->owner = (void *)arg3;
    self->flags = arg1;
    self->handle = arg2;
    self->fn20 = func_001162B8;
    self->fn24 = func_00116320;
    self->fn28 = func_001163A0;
    self->fn2C = func_00116408;
    self->unk04 = 0;
    self->unk08 = 0;
    self->unk10 = 0;
    self->unk18 = 0;
    self->self = self;
    self->unk00 = 0;
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
        *(void **)arg1 = table[idx];
        table[idx] = arg1;
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
    Node1E4 *s = (Node1E4 *)arg0;
    int r = func_00116108_wide((int *)s->owner,
                               (void *)(int)s->handle, arg1, arg2);
    if (r >= 0) {
        s->pos += r;
    } else {
        s->flags = (unsigned short)s->flags & 0xEFFF;
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
    Node1E4 *s = (Node1E4 *)arg0;
    long r = func_00114518_wide((int *)s->owner,
                                (void *)(int)s->handle, arg1, arg2);
    if (r == -1) {
        s->flags = (unsigned short)s->flags & 0xEFFF;
    } else {
        s->pos = r;
        s->flags = (unsigned short)s->flags | 0x1000;
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

extern int func_0011D960(void);
extern void func_0011D9A8(void);

/* Claim the first free 0x40-byte slot in the table {next_id, base,
   count} at arg0, with interrupts held off across the search. A claimed
   slot records its index and state in +0x10, points +0x14 at itself and
   takes the next id; id 0 is skipped, so after handing out 1 the
   counter jumps straight to 2. Returns the slot, or 0 if the table is
   full.

   Two shapes mattered. `i` must be assigned AFTER the func_0011D960
   call: initialised in its declaration it is live across the call, so
   it lands in a third callee-saved register and drags in a save/restore
   pair, where retail keeps it in $v1.

   And the id fan-in has to be written as an explicit if/ELSE with a
   separate assignment in each arm. Retail rematerialises `addiu $v1,$0,1`
   in the taken arm even though $v1 already holds that value, and no
   form that computes the value once -- including writing the redundant
   `id = 1;` after the store -- survives: the compiler folds it away and
   the function comes out 4 bytes short. Giving the two arms their own
   assignments to `id` keeps both definitions alive. */
void *func_0011AFE8(void *arg0) {
    char *a = (char *)arg0;
    int n;
    char *p;
    int i;
    int id;
    int v;

    func_0011D960();
    n = *(int *)(a + 0x8);
    i = 0;
    p = *(char **)(a + 0x4);
    while (i < n) {
        if ((*(int *)(p + 0x10) & 1) == 0) {
            *(int *)(p + 0x10) = (i << 16) | 5;
            v = *(int *)a + 1;
            *(int *)a = v;
            if (v == 1) {
                *(int *)a = v + 1;
                id = 1;
            } else {
                id = v;
            }
            *(char **)(p + 0x14) = p;
            *(int *)(p + 0x18) = id;
            func_0011D9A8();
            return p;
        }
        i++;
        p += 0x40;
    }
    func_0011D9A8();
    return 0;
}

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

/*
 * REVERTED (SIZE mismatch, 168 vs retail 180, both spellings). Decode is
 * certain -- completion handler for a request block. Two message codes
 * do extra work before the common teardown: 0x8000000A runs the
 * target's own callback, 0x80000009 copies three fields back into it.
 * Then, whatever the message was, close the target's handle if it is
 * still valid, release its buffer and clear the pointer.
 *
 *   extern void func_00118CA0(int h);
 *
 *   void func_0011B0E0(char *p) {
 *       char *o;
 *       int h;
 *
 *       switch (*(unsigned int *)(p + 0x20)) {
 *       case 0x8000000A:
 *           o = *(char **)(p + 0x1C);
 *           if (*(int *)(o + 0x1C) != 0) {
 *               (*(void (**)(int))(o + 0x1C))(*(int *)(o + 0x20));
 *           }
 *           break;
 *       case 0x80000009:
 *           o = *(char **)(p + 0x1C);
 *           *(int *)(o + 0x24) = *(int *)(p + 0x24);
 *           *(int *)(o + 0x14) = *(int *)(p + 0x28);
 *           *(int *)(o + 0x18) = *(int *)(p + 0x2C);
 *           break;
 *       }
 *       o = *(char **)(p + 0x1C);
 *       h = *(int *)(o + 0x8);
 *       if (h >= 0) {
 *           func_00118CA0(h);
 *       }
 *       func_0011B090(*(void **)o);
 *       *(int *)o = 0;
 *   }
 *
 * Everything after the dispatch is byte-correct, including the reload of
 * `o` in exactly the three places retail reloads it (after the indirect
 * call, and on each path that had not loaded it yet) and NOT on the path
 * where the callback pointer was null. Writing `o` once after the switch
 * and letting each arm use it is what produces that.
 *
 * The three missing words are all in the dispatch, and this is the
 * finding worth keeping:
 *
 *   retail   beq  m,0xA -> caseA      ours   beq m,0x9 -> case9
 *            sltu 0xA,m                      bne m,0xA -> default
 *            bnel      -> default            (fall through to caseA)
 *            beq  m,0x9 -> case9
 *            b         -> default
 *
 * Retail's is gcc's case-node DECISION TREE rooted at the HIGHER value,
 * with the redundant `index > root` test that a tree root with only a
 * left child always emits. Ours is the same routine's two-node CHAIN,
 * rooted at the lower value. gcc 2.95 only rebalances a case list of
 * more than two nodes; at exactly two it leaves the chain. So retail's
 * switch had MORE cases than are reachable here -- at least three, with
 * 0x8000000A as the median -- and the extra ones compiled to nothing we
 * can see. No two-case spelling can produce the three-test tree:
 * switch and if/else-if chain give byte-identical 168-byte output, and
 * an explicit hand-written `if (m > 0x8000000A)` guard is folded away
 * because its arm is empty. Not reachable from a two-case source.
 */
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

/* Byte-exact once tools/fix_tail_calls.py learned to sink the last body
   instruction into the tail jump's delay slot. An earlier round reverted
   this at 16 bytes against retail's 12 and correctly identified the
   cause -- retail has `lui / j / lw(delay)` where we had
   `lui / lw / j / nop` -- but left it as a rewriter limitation. It was
   not: SN's assembler fills a delay slot only from AFTER the branch, so
   at the end of a function it has nothing to take. Moving the one
   preceding instruction down is safe by construction, not by analysis;
   the reasoning is written out in the rewriter. */
void func_0011BC70(void) {
    func_00118C90(D_0012FD9C);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BC80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BCB0);

extern int func_001151B4();
extern char D_0012FCEC[];
extern char D_001580A8[];
extern int D_0012FDA8;

/* Three-way compare-and-confirm: the slot D_001580A8 has to agree with
   the scratch buffer D_0012FCEC, then with the handle D_0012FDA8, and
   finally the two of those with each other. Only the last comparison's
   result is reported, as a 0/1.

   The two globals are bound to locals, buffer first, purely to fix the
   order the compiler materialises their %hi halves in: used directly,
   the slot's lui comes first and the function is 4/140. Declaration
   order of the locals decides it. */
int func_0011BEB8(void) {
    char *buf = D_0012FCEC;
    char *slot = D_001580A8;
    int r = 0;

    if (func_001151B4(slot, buf, 4) != 0 &&
        func_001151B4(slot, D_0012FDA8, 4) != 0) {
        r = func_001151B4(buf, D_0012FDA8, 4) != 0;
    }
    return r;
}

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

extern char D_00158528[];
extern int D_0012FDB4;

/* Twin of func_0011BEB8 on a different slot/handle pair. */
int func_0011CDE0(void) {
    char *buf = D_0012FCEC;
    char *slot = D_00158528;
    int r = 0;

    if (func_001151B4(slot, buf, 4) != 0 &&
        func_001151B4(slot, D_0012FDB4, 4) != 0) {
        r = func_001151B4(buf, D_0012FDB4, 4) != 0;
    }
    return r;
}

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

extern int D_00130BD0[];
extern char D_00130428[];
extern int func_0011DC50(void);
extern void func_0011DBE8(int, int);
extern void func_0011DBF8(int, void *, int);
extern int func_0011DC40(int);
extern void func_00118D80(int);

/* Bring up the two fixed channels from the D_00130BD0 table, load the
   0x7A8-byte image at D_00130428 to 0x80074000, then walk the remaining
   table entries handing each one its func_0011DC40 result. Does nothing
   unless func_0011DC50 says the hardware is in the right state.

   The loop counter has to be UNSIGNED. As `int`, gcc normalises the
   two-to-three loop into a count-down from zero (`addu $18,$18,-1` /
   `bgezl`) and the function comes out 4 bytes short; as `unsigned` it
   keeps retail's count-up with `sltiu`, which is the tell in retail's
   own code. Worth remembering: signedness of a loop variable decides
   whether this compiler is allowed to reverse the loop.

   Near-miss (4/43), size-exact: two pairs of adjacent instructions are
   scheduled the other way round -- the 0x7A8 immediate against the %lo
   of D_00130428, and the two argument loads for the third func_0011DBE8
   call. Feeding that call through explicit temporaries in retail's
   order does not move it. */
void func_0011DCB8(void) {
    int *g;
    int *p;
    unsigned int i;

    if (func_0011DC50() == 0) {
        return;
    }
    i = 2;
    g = D_00130BD0;
    p = g + 4;
    func_0011DBE8(g[0], g[1]);
    func_0011DBF8((int)0x80074000, D_00130428, 0x7A8);
    func_00118D80(0);
    func_00118D80(2);
    func_0011DBE8(g[2], g[3]);
    for (; i < 3; i++) {
        func_0011DBE8(p[0], func_0011DC40(p[0]));
        p += 2;
    }
}

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

extern long func_00120480(int);
extern long func_0011FF08(long, long);
/* func_0011FE48 is defined below returning void (it ends in a call
   whose result it passes on); reach it through an alias here. */
extern long func_0011FE48_v(long, long) __asm__("func_0011FE48");

/*
 * Soft-float 64-bit-integer to double. func_00120480 is int->double,
 * func_0011FF08 multiply and func_0011FE48 add, all taking and
 * returning the bit pattern in a GPR, so everything here is spelled
 * `long` (the 64-bit type; `long long` would be 128-bit here).
 *
 * Byte mismatch, correct size (0x98): instruction for instruction the
 * same, but retail builds 0x40F0000000000000 once into $s1 and copies
 * it into $a1 for each call while we rebuild it inline at both sites.
 * The two forms cost the same four instructions, so the size is right;
 * hoisting the constant into a local does not move it (the compiler
 * propagates it straight back).
 *
 * The `& 0xFFFFFFFFL` before the cast is load-bearing: `(int)x` alone
 * is 12 bytes short, because retail masks with a materialised
 * 0xFFFFFFFF (lui/dsrl32/and) and only then sign-extends.
 * The two constants are doubles written as their bit patterns:
 * 0x40F0000000000000 is 65536.0 (applied twice to scale the high half
 * by 2^32) and 0x41F0000000000000 is 4294967296.0, added to the low
 * half when it is negative so it reads as unsigned.
 */
long func_0011E7C8(long x) {
    long hi;
    long lo;
    long k = 0x40F0000000000000L;
    int lo32;

    hi = func_00120480((int)(x >> 32));
    hi = func_0011FF08(hi, k);
    hi = func_0011FF08(hi, k);
    lo32 = (int)(x & 0xFFFFFFFFL);
    lo = func_00120480(lo32);
    if (lo32 < 0) {
        lo = func_0011FE48_v(lo, 0x41F0000000000000L);
    }
    return func_0011FE48_v(hi, lo);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011E860);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011EEC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011EF28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011F4F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011FA38);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011FB68);

/*
 * 0x11FC08-0x1206A0 is not game code: it is libgcc's fp-bit.c (soft-float
 * double), rebuilt from GCC's own source with Sony's 2.9-ee compiler.
 * See src/libgcc/README.md. core_text continues in src/core_text_2.c.
 */
