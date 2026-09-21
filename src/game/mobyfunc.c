#include "common.h"
#include "structs.h"

/*
 * mobyfunc.cpp in the original source; text 0x20D348-0x20E6B8.
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
extern void func_00204FC0(void *);
extern int D_0018CC20 NOT_SDA;
extern int D_001941C8 NOT_SDA;
extern int D_0016100C;
extern int D_001A0468[];
extern void func_00205830(int a, int b);
typedef struct {
    int _pad0[0x9E];
    int use[5];   /* +0x278 */
    int flags[5]; /* +0x28C */
    int sel;      /* +0x2A0 -- index of the active slot, -1 for none */
    int size[5];  /* +0x2A4 */
} PadSlots;
extern PadSlots D_001A01F0_slots __asm__("D_001A01F0");
extern int D_001A01F0[];
extern int *D_001602E0;
extern unsigned char D_0013D49C NOT_SDA;
extern unsigned char D_0013D49D NOT_SDA;
extern unsigned char D_0013D4A5 NOT_SDA;
extern short D_0015FE24;
extern unsigned char D_0013D4AC NOT_SDA;
extern unsigned char D_0013D4AD NOT_SDA;
extern unsigned char D_0013D4AE NOT_SDA;
extern unsigned char D_0013D4AF NOT_SDA;
extern unsigned char D_0013D4B5 NOT_SDA;
extern int D_001A04B4 NOT_SDA;
extern unsigned char D_0013D4C5 NOT_SDA;
extern int D_001414DC NOT_SDA;
extern unsigned char D_0013D4C0 NOT_SDA;
extern unsigned char D_0013D4C1 NOT_SDA;
extern unsigned char D_0013D4C2 NOT_SDA;
extern unsigned char D_0013D4D3 NOT_SDA;
extern unsigned char D_0013D4D4 NOT_SDA;
extern unsigned char D_0013D4D5 NOT_SDA;
extern unsigned char D_0013D4E0;
extern unsigned char D_0013D4DC NOT_SDA;
extern unsigned char D_0013D4DD NOT_SDA;
extern unsigned char D_0013D4DE NOT_SDA;
extern unsigned char D_0013D4DF NOT_SDA;
extern unsigned char D_0013D4E1 NOT_SDA;
extern unsigned char D_0013D4E9 NOT_SDA;
extern unsigned char D_0013D502 NOT_SDA;
extern unsigned char D_0013D503 NOT_SDA;
extern unsigned char D_0013D504 NOT_SDA;
extern unsigned char D_0013D505 NOT_SDA;
extern unsigned char D_0013D50F NOT_SDA;
extern int D_0013D668[];
extern void func_00209040(void);
extern int func_001FAA28(void *dst, int size, int a, int b);
extern void func_00208860(void *dst);
extern short D_0015EE84;
extern int D_0015EE84_far __asm__("D_0015EE84") NOT_SDA;
extern int D_001A0218[] NOT_SDA;
extern void func_00208458(void *, unsigned char *, int);
extern void func_00208688(void *, unsigned char *);
extern char D_0013D390[];
extern short D_0015EFB0;
extern int D_0015EFB4;
extern int D_001A05C0[];
extern int D_001A08C0[];
extern int func_0020BAD8(int *p);
extern int func_0020BBC8(void *dst, int i, int *table);
extern int func_001236F0(void);
extern int func_001E9730();
extern char D_001E8690[];
extern int D_0013D844 NOT_SDA;
extern unsigned char D_0013D4A8 NOT_SDA;
extern int D_0013D9B4 NOT_SDA;
extern unsigned char D_0013D490[];
extern unsigned char D_0013D5CA NOT_SDA;
extern int D_0013D6B8 NOT_SDA;
extern int D_0013DAE4 NOT_SDA;
extern unsigned char D_0013D4E5 NOT_SDA;
extern int D_0013DB24 NOT_SDA;
extern unsigned char D_0013D4F1 NOT_SDA;
extern int D_0013DC34 NOT_SDA;
extern unsigned char D_0013D605 NOT_SDA;
extern int D_0013D5C8 NOT_SDA;
extern unsigned char D_0013D4B0 NOT_SDA;
extern unsigned char D_0013DE55 NOT_SDA;
extern unsigned char D_0013D5DD NOT_SDA;
extern unsigned char D_0013D5E7 NOT_SDA;

INCLUDE_ASM("asm/nonmatchings/text", func_0020D348); /* CreateMoby(int) */

INCLUDE_ASM("asm/nonmatchings/text", func_0020D440); /* InitMobyInstance(MobyInstance *, int) */

typedef struct {
    char _pad00[0x20];
    unsigned char state; /* 0x20 */
    char _pad21[0x38 - 0x21];
    long unk38; /* 0x38 */
} MobyDel;
extern char *D_0016001C MACRO_ADDR;
extern int D_0015F6F0 MACRO_ADDR;
extern void func_0020EA70(void *, int);

/* DeleteMoby */
void func_0020D678(MobyDel *m) {
    if ((char *)m < D_0016001C) {
        m->state = 0xFD;
    } else {
        m->state = 0xFE;
    }
    m->unk38 = D_0015F6F0 + 2;
    func_0020EA70(m, 0x80807F7F);
}

extern unsigned char D_001AAF40[];

/*
 * REVERTED -- same size, but the residual is a CSE the source cannot
 * express. Semantics are certain; p[0x52] selects a table entry and
 * p[0x50]/p[0x51] index within it:
 *
 *   void func_0020D6D0(unsigned char *p) {
 *       unsigned char *t;
 *       if (p[0x52] != 0xFF) {
 *           t = *(unsigned char **)(p + 0x24) + 0x48;
 *           *(int *)(p + 0x68) =
 *               *(int *)(*(int *)(t + p[0x52] * 4) + p[0x50] * 4 + 0x1C);
 *           p[0x7E] = *(unsigned char *)(*(int *)(t + p[0x52] * 4) + 0x12);
 *           p[0x7C] = *(unsigned char *)(*(int *)(t + p[0x52] * 4) + 0x11);
 *       } else {
 *           p[0x7C] = p[0x52];
 *           p[0x7E] = 0;
 *           *(int *)(p + 0x68) = (int)&D_001AAF40[p[0x50] << 11];
 *       }
 *       *(int *)(p + 0x6C) =
 *           *(int *)(*(int *)(*(char **)(p + 0x24) + p[0x53] * 4 + 0x48) +
 *                    p[0x51] * 4 + 0x1C);
 *   }
 *
 * Two things were learned and both are already right above:
 *   - `!= 0xFF` (not `== 0xFF`) puts the blocks in retail's order, with
 *     the sentinel case as the far block;
 *   - holding `base + 0x48` in ONE local gives retail's zero-displacement
 *     loads. Recomputing the address per use folds 0x48 into the load
 *     displacement instead, which is 3 instructions out.
 *
 * What is left: retail RELOADS p[0x52] with `lbu` for each of the three
 * uses, while this compiler keeps the value from the `!= 0xFF` compare in
 * a register and re-masks it with `andi` before each use (1690 differing
 * words, all of them that pattern). Writing each use as a separate
 * expression does not stop the CSE; only `volatile` would, and that also
 * serialises the accesses, which retail's schedule interleaves. Retail's
 * compiler simply did not CSE the byte load across the branch.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020D6D0);

/*
 * Reverted. Semantics are certain (the object at arg0 caches an actor
 * slot index in byte 0x7D and a wanted index in byte 0x7C):
 *
 *   void func_0020D790(void *arg0) {
 *       unsigned char *s = (unsigned char *)arg0;
 *       unsigned char id = s[0x7D];
 *       if (id != 0xFF) {
 *           char *e = D_0013E650 + id * 0x70;          // 0x70 stride
 *           if (*(int *)(e + 0x88) != (int)arg0) {
 *               s[0x7D] = 0xFF;
 *           } else if (*(short *)(e + 0x7E) != s[0x7C]) {
 *               func_0022EAB0(id);
 *               s[0x7D] = 0xFF;
 *           }
 *       } else if (s[0x7C] != 0xFF) {
 *           func_0022ED80(s[0x7C], 4, arg0);
 *           s[0x7D] = s[0x7C];
 *       }
 *   }
 *
 * That spelling is the right size (0x98) and 79/152 bytes off. The whole
 * residual is one register copy: retail loads byte 0x7D into $v1, keeps
 * $v1 for the equality tests and copies it into $a1 for use as the table
 * index and as func_0022EAB0's argument, so everything after the first
 * branch sits one word later than ours.
 *
 * Three spellings were tried to get that copy back, with counts:
 *   - `unsigned char id` used for both roles          79/152, size OK
 *   - separate `unsigned char j = s[0x7C]` in the else 31/38 words,
 *     and 8 bytes SHORT (it also flips $s0/$s1 and grows the frame)
 *   - `int id = s[0x7D]` with the tests spelled on
 *     `s[0x7D]` directly                              17/38 words, but
 *     4 bytes LONG -- this one does produce retail's copy, in the
 *     opposite direction ($a1 loaded, copied to $v1)
 * The third is the closest and shows the copy is reachable from C; what
 * is not yet found is the spelling that makes the COMPARISON operand the
 * load's destination and the index operand the copy. Left as a stub
 * rather than a size mismatch.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020D790);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D828);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D830);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D928);

/* Attach a fresh node to arg0's list at +0x64, seeded with 1.0f scales. */
/* AttachManipulator */
void func_0020D960(char *arg0, int arg1, unsigned char *arg2) {
    char *e;
    char *f;
    char *tbl;
    int idx;

    if (arg2[1] != 0) {
        return;
    }
    arg2[0] = (char)arg1;
    arg2[1] = 1;
    *(float *)(arg2 + 0x1C) = 1.0f;
    *(float *)(arg2 + 0x20) = 1.0f;
    *(float *)(arg2 + 0x24) = 1.0f;
    *(float *)(arg2 + 0x28) = 1.0f;

    tbl = *(char **)(*(char **)(arg0 + 0x24) + 0x1C);
    idx = arg2[0];
    e = *(char **)(tbl + idx * 4 + 4);
    f = *(unsigned char *)e + e;
    *(int *)(arg2 + 4) = (*(unsigned char *)(f + 4) << 6) + 0x70000000;

    *(int *)(arg2 + 8) = *(int *)(arg0 + 0x64);
    *(int *)(arg0 + 0x64) = (int)arg2;
}

/*
 * Reverted: size mismatch (ours=100, retail=144 -- 44 bytes short).
 * DetachManipulator: unlink arg1 from the singly-linked list headed
 * by arg0+0x64 (next pointer at +8 of each node), then always call
 * func_001F99B0(arg1, 0, 0x40) whether or not it was found.
 *
 *   void func_0020D9D8(void *arg0, void *arg1) {
 *       char *base = (char *)arg0;
 *       char *cur;
 *       char *next;
 *       if (arg1 == 0) {
 *           return;
 *       }
 *       cur = *(char **)(base + 0x64);
 *       if (cur == arg1) {
 *           *(void **)(base + 0x64) = *(void **)((char *)arg1 + 8);
 *           goto done;
 *       }
 *       next = *(char **)(cur + 8);
 *       if (next == 0) {
 *           goto done;
 *       }
 *       if (next != arg1) {
 *           cur = next;
 *           do {
 *               next = *(char **)(cur + 8);
 *               if (next == 0) {
 *                   goto done;
 *               }
 *               if (next == arg1) {
 *                   break;
 *               }
 *               cur = next;
 *           } while (1);
 *       }
 *       *(void **)(cur + 8) = *(void **)((char *)arg1 + 8);
 *   done:
 *       func_001F99B0(arg1, 0, 0x40);
 *   }
 *
 * A single-exit `goto done` was needed to get retail's ONE shared
 * call site instead of one per return path (fixed a much larger
 * initial gap). What's left: retail's "check next, branch on == 0
 * vs == target" pattern is duplicated three times (once before the
 * loop, once as the loop's own top, once merged into the not-found
 * landing pad) with each copy scheduled slightly differently; this
 * compiler recognizes all the duplicated checks are identical code
 * and collapses them into one shared loop entered from multiple
 * points, matching retail's semantics with visibly fewer
 * instructions. Same compiler-is-smarter-than-retail class as
 * several other reverts this session, just larger in scale.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020D9D8); /* DetachManipulator */

extern int D_001B2F40[];

int func_0020DA68(int v) {
    int i = 0;
    int *p = D_001B2F40;
    do {
        if (*p == 0 || *p == v) {
            *p = v;
            return i;
        }
        i++;
        p++;
    } while (i < 0x10);
    return -1;
}

void func_0020DAB0(void) {
    int sentinel = 0xFF;
    char **p = (char **)D_001B2F40;
    int i = 0xF;
    do {
        char *e = *p;
        i--;
        if (e != 0) {
            if ((*(unsigned char *)(e + 0x20) & 0x80) != 0 ||
                *(unsigned char *)(e + 0x52) != sentinel) {
                *p = 0;
            }
        }
        p++;
    } while (i >= 0);
}

/* func_001FA460 is declared above with a single argument, for the
   func_00215328 site; this one passes a source as well. */
extern void func_001FA460_2(void *, void *) __asm__("func_001FA460");
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_002116A0(void *, int, int *, void *);
extern void func_001FA540(void *, void *, void *);
extern void func_00211548(void *, int, void *, void *);
extern void func_001F9EC0(void *, void *, void *);

/* Scale the single vertex block at arg2+0x30 by the object's 0x2C field
   in 1/1024 units, then run it through the two per-object transforms at
   arg0+0xC0 and arg0+0x10. 0x3A800000 is exactly 2^-10. */
void func_0020DAF8(char *arg0, int arg1, char *arg2) {
    char buf[0x40];
    int n;
    char *v;
    float s;

    s = *(float *)(arg0 + 0x2C) * 0.0009765625f;
    n = arg1;
    func_002116A0(arg0, 1, &n, arg2);
    v = arg2 + 0x30;
    func_001F9C30(v, v, s);
    func_001FA460_2(buf, arg0 + 0xC0);
    func_001FA540(arg2, buf, arg2);
    func_001F9BD8(v, v, arg0 + 0x10);
}

/* The many-vertex form of the same thing: arg1 blocks of 0x10 bytes
   starting at arg3, each scaled and transformed in place. */
void func_0020DB98(char *arg0, int arg1, void *arg2, char *arg3) {
    char *v = arg3;
    int n = arg1;
    float s;

    s = *(float *)(arg0 + 0x2C) * 0.0009765625f;
    func_00211548(arg0, arg1, arg2, arg3);
    if (n > 0) {
        do {
            func_001F9C30(v, v, s);
            n--;
            func_001F9EC0(v, v, arg0 + 0xC0);
            func_001F9BD8(v, v, arg0 + 0x10);
            v += 0x10;
        } while (n != 0);
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020DC38);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DC40); /* DmaMobyTextures */

extern int D_001B6880[];
extern void *D_001B3580[];
extern short D_001B6100[];

/*
 * REVERTED (size mismatch: 224 vs retail's 216). Decode is certain --
 * PatchMobyGifs: for each moby class index in the negative-terminated
 * D_001B6880 list, walk its joint chain (D_001B3580[idx]->+0x20, 0x10
 * stride, +0xC's sign bit ending the chain). Each joint has its own
 * tag-byte chain (0xFF-terminated, walked ONE byte per iteration,
 * unconditionally -- not gated on the second lookup, an earlier wrong
 * reading of the delay slot); each tag looks up a pair of 14-bit
 * values in D_001B6100 (as a raw sign-extended `short`, no masking --
 * retail has no `andi` here, so real data apparently never sets the
 * top bit) and folds them into the low bits of a 0x40-stride GIF-tag
 * entry's +0x30/+0x40 fields (entry = joint's +0xC field with the top
 * bit masked off, computed unconditionally every joint the same way
 * retail's delay slot does it), advancing to the next entry every tag.
 *
 *   extern int D_001B6880[];
 *   extern void *D_001B3580[];
 *   extern short D_001B6100[];
 *
 *   void func_0020DD48(void) {
 *       int *outer = D_001B6880;
 *       int idx = *outer;
 *       int more;
 *
 *       while (idx >= 0) {
 *           char *cls = *(char **)((char *)D_001B3580 + idx * 4);
 *           unsigned char *joint = *(unsigned char **)(cls + 0x20);
 *
 *           do {
 *               char *entry = (char *)(*(int *)(joint + 0xC) & 0x7FFFFFFF);
 *               if (*joint != 0xFF) {
 *                   unsigned char *p = joint;
 *                   unsigned char tag;
 *                   do {
 *                       short *lut;
 *                       short v1, v2;
 *                       int old;
 *                       tag = *p;
 *                       lut = D_001B6100 + tag * 2;
 *                       v1 = lut[0];
 *                       if (v1 != 0) {
 *                           old = *(int *)(entry + 0x30);
 *                           *(int *)(entry + 0x30) = (old & 0xFFFFC000) | v1;
 *                       }
 *                       v2 = lut[1];
 *                       p++;
 *                       if (v2 != 0) {
 *                           old = *(int *)(entry + 0x40);
 *                           *(int *)(entry + 0x40) = (old & 0xFFFFC000) | v2;
 *                       }
 *                       tag = *p;
 *                       entry += 0x40;
 *                   } while (tag != 0xFF);
 *               }
 *               more = *(int *)(joint + 0xC) >= 0;
 *               joint += 0x10;
 *           } while (more);
 *           outer++;
 *           idx = *outer;
 *       }
 *   }
 *
 * Toolchain quirk found along the way, worth remembering: declaring
 * `int more;` INSIDE the outer do-block (the one whose body contains
 * an `if` with its own nested `do-while`) makes this compiler reject
 * `more` as undeclared at its own `while (more);` -- a genuine parser
 * bug in this SN GCC 2.95.3 build for a do-while-inside-if-inside-
 * do-while shape. Renaming changes nothing; hoisting the declaration
 * to function scope (as above) is the fix.
 *
 * The lookup needed a single shared pointer (`lut[0]`/`lut[1]`, not
 * two independent `D_001B6100[tag*2]`/`[tag*2+1]` array accesses) to
 * get retail's one-address-computation-two-loads shape, and the
 * `(unsigned short)` cast on the OR had to go (retail relies on the
 * data never setting the sign bit). Both were real, confirmed bugs,
 * not just scheduling. What is left, 8 bytes: retail recomputes
 * `joint + 0x10` fresh in the loop-back delay slot; this compiler
 * hoists that add earlier in the block regardless of statement
 * position, since nothing between depends on the order. Not reached
 * from source.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020DD48); /* PatchMobyGifs */

extern int D_001414D0 NOT_SDA;
extern float D_001CAE00[] NOT_SDA;
extern void func_0020E360(void *, void *);
extern float func_001FA058(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);

void func_0020DE20(void) {
    float buf[4];
    float a;

    func_0020E360((void *)D_001414D0, buf);
    a = func_001FA058(buf[0], buf[1]);
    D_001CAE00[0] = func_001F9F90(a) * 0.14f;
    D_001CAE00[1] = func_001F9FA8(a) * 0.14f;
    D_001CAE00[2] = -0.99f;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020DEB0);

extern void func_00118D80(int);
extern void func_00212578(int, int);
extern char D_00165600[];
extern int D_0015F718;
extern short D_0015F71C;              /* SDA, gp -0x75E4 */

/*
 * Close, not exact (9/68), same size so harmless to anything after it.
 * Same instructions as retail; the residual is the allocator's
 * destination-reuse choice again -- retail emits lui $4 /
 * lw $4,%lo(D_0015F718)($4) and schedules the SDA load into the jal
 * delay slot, while this compiler materializes into $2, loads the SDA
 * value into $5 first and puts the %lo load in the delay slot.
 * Binding the first argument to a local to force its evaluation order
 * was tried and changed nothing.
 */
/* ProcessMobyAnimData(void) */
void func_0020DFF8(void) {
    func_00118D80(0);
    func_001F9A98((void *)0x70003800, D_00165600, 0x800);
    func_00212578(D_0015F718, *(int *)&D_0015F71C);
}


/* InitMobyClassDists(void) */
void func_0020E040(void) {
    func_001F99B0((void *)0x70003A00, (void *)0x40000000, 0x380);
}

extern void func_001F9A98(void *, void *, int);
extern char D_001B3200[];

/* StashMobyClassDists(void) */
void func_0020E068(void) {
    func_001F9A98(D_001B3200, (void *)0x70003A00, 0x380);
}

/* RestoreMobyClassDists(void) */
void func_0020E098(void) {
    func_001F9A98((void *)0x70003A00, D_001B3200, 0x380);
}

extern void func_00234B48(void *, int);
extern void func_002347F0(void *);
extern void func_00234C98(int, int);
extern void func_001F2560(void);
extern unsigned short D_0010FA90 NOT_SDA;
extern char D_0010FAA0[];
extern int D_0015F704 MACRO_ADDR;
extern char D_00100080[];
extern int D_0015EF78 MACRO_ADDR;
extern int D_0016000C MACRO_ADDR;
extern int D_0015EF74 MACRO_ADDR;
extern int D_0015FFD0 MACRO_ADDR;
extern int D_00160040 MACRO_ADDR;
extern int D_00160014 MACRO_ADDR;
extern int D_00161000 MACRO_ADDR;
extern int D_00161008 MACRO_ADDR;

/*
 * REVERTED (size mismatch: 168 vs retail's 184). Decode is certain --
 * pure straight-line setup, no branches:
 *
 *   void func_0020E0C8(void) {
 *       func_00234B48(D_0010FAA0, D_0010FA90);
 *       D_0015F704 = 6;
 *       func_002347F0(D_00100080);
 *       func_00234C98(0x47, 0x5360B);
 *       D_0016000C = D_00161000;
 *       D_0015EF74 = D_0015EF78;
 *       D_0015FFD0 = D_00161000 + 0x10;
 *       func_001F2560();
 *       D_00160040 = 0;
 *       D_00161008 = *(int *)&D_0015F71C - 0x10000;
 *       D_00160014 = D_0015F718;
 *   }
 *
 * (needs D_0010FA90 NOT_SDA and D_0015F704/D_0015EF78/D_0016000C/
 * D_0015EF74/D_0015FFD0/D_00160040/D_00160014/D_00161000/D_00161008
 * all MACRO_ADDR to reproduce retail's individual store shapes -- that
 * much is confirmed exactly matching). Two residuals, 16 bytes: retail
 * materialises `&D_0015FFD0` into a dead register (lui+addiu, never
 * read) alongside the gp-relative store the `D_0015FFD0 = ...`
 * assignment itself produces -- the SAME MACRO_ADDR symbol expanded
 * twice for one C statement, same as the func_0011D3C8-family finding
 * -- plus an unexplained `addiu $5,0,1` this compiler never emits
 * anywhere in the sequence. Tried: reusing a `v = D_00161000;` local
 * across both the D_0016000C and D_0015FFD0 stores (805, worse); an
 * explicit `*(&D_0015FFD0) = ...` dead-reference (805, same). Neither
 * reproduces the dead address computation; what produces it from
 * source is not understood.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020E0C8); /* DrawMobysSetup(void) */

INCLUDE_ASM("asm/nonmatchings/text", func_0020E180); /* DrawMobyList */

extern void func_001F2560_a(void *) __asm__("func_001F2560");
extern void func_0020DC40(void *);
extern void func_001F2558(void *, int);
extern void func_0020DFF8(void);
extern void func_00212508(void *);
extern char D_0015FFE0[];
extern char D_0015FFF0[] MACRO_ADDR;
extern int D_00160038 MACRO_ADDR;
extern int D_00160040 MACRO_ADDR;

/*
 * REVERTED (size mismatch: 176 vs retail's 172). Decode is certain:
 *
 *   void func_0020E200(void) {
 *       func_001F2560(D_0015FFE0);   // no-op stub, arg discarded
 *       func_0020DC40(D_0015FFE0);
 *       func_001F2558(D_0015FFE0, 5); // no-op stub, args discarded
 *       if (D_0018A3B0[10] != 0) {
 *           func_0020DFF8();
 *           if (D_00160038 != 0) {
 *               func_00212508(D_0015FFF0);
 *           }
 *       }
 *       func_001F2558(D_0015FFF0, 3);
 *       if (D_0018A3B0[10] != 0) {
 *           if (D_00160040 != 0) {
 *               func_0020DEB0();
 *           }
 *       }
 *   }
 *
 * (D_0015FFF0/D_00160038/D_00160040 all need MACRO_ADDR; without it on
 * D_0015FFF0 the compiler caches its address in a second saved
 * register across the three uses, growing the frame from 0x20 to
 * 0x30 -- confirmed exactly matching once added). Two residuals, 4
 * bytes: retail encodes the D_00160038 check as `beql` (branch
 * likely, nullified delay) where this compiler always emits plain
 * `beqz` for it regardless of the surrounding if/else polarity tried;
 * and the final func_001F2558(D_0015FFF0, 3) call completes a0 before
 * loading a1's constant, where this compiler does the reverse --
 * forcing the pointer through its own local first didn't change it.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020E200); /* DrawMobysCleanUp */

extern int D_0018A3D8;
extern int D_00160018 MACRO_ADDR;
extern int D_00160014 MACRO_ADDR;
extern int D_00161000 MACRO_ADDR;
extern int D_00161008 MACRO_ADDR;
extern char D_001E8730[];
extern void func_0020E0C8(void);
extern void func_0020E200(void);
extern int func_00212658(int, int, int, int);

/* DrawMobys */
void func_0020E2B0(void) {
    func_0020E0C8();
    if (D_0018A3D8 != 0) {
        func_0020E040();
        D_00160014 = func_00212658(D_00160018, D_00160014, -1, 1);
        if (D_00161000 > D_00161008) {
            func_001E9730(D_001E8730);
        }
    }
    func_0020E200();
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020E330);

/*
 * Close but not exact (13/32 bytes): packs 4 values into a 64-bit
 * field: *(long*)(arg0+0x38) = (arg1<<32) | arg2 | (arg3<<8) | (arg4<<16).
 * Same operations/order as retail (confirmed via objdump: same dsll32/
 * dsll/or sequence), but the widen-and-shift-by-32 for arg1 lands in a
 * different register than retail. Not investigated to a fix -- same
 * general family as the scratch-register-allocation-choice question,
 * on the widening step specifically.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020E340);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E360);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E3D0);
