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

extern int D_001601C0 MACRO_ADDR;
extern char D_001CE500[];
extern int D_001CE300[];
typedef struct { int a; int b; } Pair_2F00;
extern Pair_2F00 D_001CDD00[];
extern void func_001F9A00(void *, void *, int);
extern int func_001F9968(int);

/* ParseParticleTexs */
void func_00202F00(int *hdr, int base, int *list, int count) {
    int n = hdr[0];
    int off = hdr[2];
    int size = hdr[3];
    int *p = hdr + 4;
    int i;

    for (i = 0; i < n; i++, p++) {
        if (*p == 0) D_001CE300[i] = (int)D_001CE500;
        else D_001CE300[i] = *p - (off - (int)D_001CE500);
    }
    func_001F9A00(D_001CE500, (char *)hdr + off, size);
    for (D_001601C0 = 0; D_001601C0 < count; D_001601C0++) {
        int a = base + *list++;
        int b = *list++;
        int c = base + *list++;
        int d = *list++;
        D_001CDD00[D_001601C0].a = (a << 4) + b;
        D_001CDD00[D_001601C0].b = (c << 4) + func_001F9968(d);
    }
}

extern int func_001F9968(int);
extern int D_0015F55C MACRO_ADDR;
extern char D_0018D540[];

/*
 * Same-size near-miss (154/220 bytes). Builds one 0x10-byte entry per
 * pair of input words: two nibble-shifted values written directly,
 * two more passed through func_001F9968 (clz-style helper) first, then
 * the low 8 bytes of the entry zero-filled (a `long`, not `long long`,
 * cast is required here -- the latter compiles to a 128-bit sq/por
 * instead of retail's 64-bit sd $0,...).
 *
 * D_0015F55C is reset unconditionally at entry, before the count>0
 * guard, matching retail. The D_0018D540 base address is loaded once
 * into a saved register only on the count>0 path (declared inside the
 * `if`, not hoisted above it) -- that alone closed the function to an
 * exact SIZE match (was 224 vs retail's 220; now byte-equal at 220).
 * The remaining diff is pure scheduling: retail packs one `sh` store
 * into a `jal`'s delay slot where this compiler schedules the pointer
 * increment there instead, and picks the opposite of two candidate
 * argument-register assignments ($4 vs $5) for the helper calls. Tried
 * reordering the two-word read pairs and moving the entry-address
 * computation to different points in the block; neither changed the
 * schedule. Same unreachable-scheduling class as func_0020E200 and
 * func_00123308.
 */
void func_00203038(int *buf, int count) {
    D_0015F55C = 0;
    if (count > 0) {
        char *base = D_0018D540;
        do {
            char *entry;
            int a, b;
            int r1;

            a = *buf;
            buf++;
            entry = base + D_0015F55C * 0x10;
            b = *buf;
            buf++;
            a >>= 4;
            *(short *)(entry + 0xA) = a;
            a = *buf;
            buf++;
            b >>= 4;
            *(short *)(entry + 0x8) = b;
            r1 = func_001F9968(a);
            a = *buf;
            buf++;

            entry = base + D_0015F55C * 0x10;
            *(short *)(entry + 0xC) = r1;
            r1 = func_001F9968(a);

            entry = base + D_0015F55C * 0x10;
            D_0015F55C++;
            *(short *)(entry + 0xE) = r1;
            *(long *)entry = 0;
        } while (D_0015F55C < count);
    }
}

extern char *D_0016055C MACRO_ADDR;

/*
 * Reverted: size mismatch (ours=424, retail=440 -- 16 bytes/4
 * instructions short). PatchSkyDef-adjacent fixup: relocates offset
 * fields inside arg0 (a SkyDef, see skyfunc.c) from load-time
 * relative offsets to absolute pointers, then builds one 0x10-byte
 * icon entry per particle-tex table row (same shape as
 * func_00203038, but reading and writing the SAME array in place --
 * 4 words consumed = 0x10 bytes = exactly one written entry), then
 * walks the shells[] array at +0x20 relocating each shell pointer
 * and its own nested list.
 *
 * Recovered source (semantically correct -- every load/store/branch
 * matches retail's operation and operand offsets one-for-one; this
 * was checked instruction-by-instruction against the target .s):
 *
 *   void func_00203118(void *arg0) {
 *       char *s3 = (char *)arg0;
 *       int v0, v1, a0, a2;
 *       int i;
 *
 *       v0 = *(int *)(s3 + 0x10);
 *       v1 = *(int *)(s3 + 0x14);
 *       a0 = *(int *)(s3 + 0x18);
 *       v0 += (int)s3;
 *       a2 = *(int *)(s3 + 0x1C);
 *       v1 += (int)s3;
 *       D_0016055C = s3;
 *       a0 += (int)s3;
 *       *(short *)(s3 + 4) = 1;
 *       *(int *)(s3 + 0x10) = v0;
 *       *(int *)(s3 + 0x14) = v1;
 *       if (a2 != 0) {
 *           *(int *)(s3 + 0x18) = a0;
 *           *(int *)(s3 + 0x1C) = a2 + (int)s3;
 *       }
 *
 *       i = 0;
 *       if (*(short *)(D_0016055C + 0xC) > 0) {
 *           char *hdr = (char *)D_0016055C;
 *           char *stream = *(char **)(hdr + 0x10);
 *           char *hdr2;
 *           do {
 *               char *entry;
 *               int a, b, r1, idx;
 *
 *               idx = i;
 *               a = *(int *)stream;
 *               stream += 4;
 *               entry = *(char **)(hdr + 0x10) + idx * 0x10;
 *               b = *(int *)stream;
 *               stream += 4;
 *               a >>= 4;
 *               *(short *)(entry + 0xA) = a;
 *
 *               entry = *(char **)(hdr + 0x10) + idx * 0x10;
 *               a = *(int *)stream;
 *               stream += 4;
 *               b >>= 4;
 *               *(short *)(entry + 0x8) = b;
 *               r1 = func_001F9968(a);
 *
 *               a = *(int *)stream;
 *               stream += 4;
 *               i++;
 *
 *               entry = *(char **)(D_0016055C + 0x10) + idx * 0x10;
 *               *(short *)(entry + 0xC) = r1;
 *               r1 = func_001F9968(a);
 *
 *               hdr2 = (char *)D_0016055C;
 *               entry = *(char **)(hdr2 + 0x10) + idx * 0x10;
 *               *(short *)(entry + 0xE) = r1;
 *               *(long *)entry = 0;
 *           } while (i < *(short *)(hdr2 + 0xC));
 *       }
 *
 *       if (*(short *)((char *)D_0016055C + 6) > 0) {
 *           char *hdr = (char *)D_0016055C;
 *           int j = 0;
 *           do {
 *               int *slot = (int *)(hdr + 0x20 + j * 4);
 *               int next_j = j + 1;
 *               char *rel = (char *)(*slot + (int)s3);
 *               *slot = (int)rel;
 *               j = next_j;
 *               if (*(int *)rel > 0) {
 *                   char *q = rel;
 *                   int k = 0;
 *                   do {
 *                       int *inner = (int *)(q + 0x20);
 *                       *inner = *inner + (int)s3;
 *                       k++;
 *                       q += 0x20;
 *                   } while (k < *(int *)rel);
 *               }
 *           } while (j < *(short *)(hdr + 6));
 *       }
 *   }
 *
 * The residual is GCC finding tail-merge opportunities retail's
 * build didn't take (e.g. hoisting the epilogue's first `lq $31`
 * into an early-exit branch's delay slot, and general basic-block
 * merging around the shells-loop's `blez`), each shaving an
 * instruction retail keeps duplicated. This is the
 * compiler-is-smarter-than-retail class of mismatch, not a
 * source-shape bug -- register pressure/frame size (0x60, 6 saved
 * regs) and every operand offset already match exactly.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00203118);

INCLUDE_ASM("asm/nonmatchings/text", func_002032D0); /* LoadHudBanks(void) */

/*
 * The heap cursor. Retail reaches it with the one-register macro form
 * (both the load and the $at store), so it is MACRO_ADDR; D_0019A500
 * next to it is the ordinary split lui/%lo, so it stays plain.
 *
 * func_00203548 is 3/100: two addu operand orders are reversed
 * (`addu $2,$4,$2` and the $3/$4 pair in the tail). Every spelling of
 * both address expressions -- base-first, index-first, array indexing
 * on a cast pointer, the base hoisted into a local -- compiles to the
 * identical instruction stream, so this is the known
 * operand-order-is-not-source-steerable case.
 */
extern int *D_0015EF4C MACRO_ADDR;
extern char *D_0019A500;
extern void func_0020C468(int);

/* LoadCompressedHudBank(int, char *). Each scaled index in its own local
   gives retail's base-first addu; written inline, the multiply goes
   first. */
void func_00203548(int idx, int size) {
    if (((size + 0xF) & 0xFFFFFFF0) != 0) {
        int *base = D_0015EF4C;
        int off = idx * 8;
        func_0020C468(*(int *)((char *)base + off + 0x28) + (int)base);
    }
    {
        int off = idx * 4;
        *(int *)(D_0019A500 + off + 0x74) = 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_002035B0);

/*
 * Reverted: size mismatch (ours=296/312, retail=332). SetUpVisGifViewer
 * (int *, int, int, int, int, int): builds a 4-quad GIF-tag block.
 * arg5 >= 0 indexes a 24-byte/3-long table row (fields 0 and 2 pass
 * straight through, field 1 feeds the low tag word); arg5 < 0 selects
 * one of two fixed 2-long templates (or a literal constant for
 * arg5 == -1).
 *
 * Recovered source (semantics checked against the target .s field by
 * field -- every offset, mask and shift matches):
 *
 *   extern long D_0019E640[][3];
 *   extern long D_0019E7C0[2];
 *   extern long D_0019E7D8[2];
 *
 *   void func_00203808(long *out, int arg1, int arg2, int arg3,
 *                       int arg4, int arg5) {
 *       long f0 = D_0019E640[arg5][0];
 *       long f1 = D_0019E640[arg5][1];
 *
 *       if (arg5 >= 0) {
 *           long f2 = D_0019E640[arg5][2];
 *           unsigned long a3w = (unsigned long)arg3 << 32;
 *
 *           *out = (f1 & 0x1C) | (((unsigned long)arg2 << 6) | 0x20) | a3w;
 *           out += 2;
 *           *out = (unsigned long)arg1 | ((unsigned long)arg4 << 2) |
 *                  ((unsigned long)arg5 << 24);
 *           out += 2;
 *           *(out + 2) = f2;
 *           *out = f0;
 *       } else if (arg5 < -1) {
 *           long *tpl = D_0019E7C0;
 *           unsigned long a3w = (unsigned long)arg3 << 32;
 *
 *           if (arg5 == -3) {
 *               tpl = D_0019E7D8;
 *           }
 *           *out = ((unsigned long)arg2 << 6) | a3w | 0x20;
 *           out += 2;
 *           *out = 5;
 *           out += 2;
 *           *out = tpl[0];
 *           out += 2;
 *           *out = tpl[1];
 *       } else {
 *           unsigned long a3w = (unsigned long)arg3 << 32;
 *           unsigned long c = 0x8000;
 *
 *           c <<= 29;
 *           c |= 0x9980;
 *           c <<= 19;
 *           c |= 0x7FFB;
 *           *out = ((unsigned long)arg2 << 6) | a3w | 0x20;
 *           out += 2;
 *           *out = 5;
 *           out += 2;
 *           *out = c;
 *           out += 2;
 *           *out = 0;
 *       }
 *   }
 *
 * Two open problems, not one: (1) `long long` on any of the 64-bit
 * shift-by-32 expressions here trips "unsupported wide integer
 * operation" -- must use `long`/`unsigned long`, consistent with
 * [[rac1-64bit-field-type]]. (2) retail loads D_0019E640[arg5][0] and
 * [1] UNCONDITIONALLY before testing arg5's sign (even for arg5 < 0,
 * an out-of-bounds read retail's own source apparently didn't guard),
 * but this compiler proves those two reads are unused on the negative
 * paths and deletes them (296 vs retail's 332, 36 bytes short).
 * Marking them `volatile` forces the reads back but also forces them
 * through stack spills instead of registers, regressing further (312
 * bytes and 17640 diff words vs 3100). Neither the size gap nor the
 * dead-read problem is source-steerable with the tools tried so far.
 */
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

/*
 * Reverted: size mismatch (ours=224, retail=236 -- 12 bytes short).
 * Register slot D_00160000 for the (arg0, arg1, arg2, arg3) object,
 * tagging it with arg3 in both the D_001B3E40 byte flag table and the
 * D_001B3C80 slot->tag table, then bump the counter. If arg0 is a
 * live pointer, stash its +0x2C field in D_001B6500 first and hand
 * off to func_00203B70 for full init; otherwise func_00213BB8 alone
 * is enough to clear/free the slot.
 *
 * Recovered source (every load/store/branch offset checked against
 * the target .s and matches):
 *
 *   extern int D_00160000 MACRO_ADDR;
 *   extern unsigned char D_001B3E40[] NOT_SDA;
 *   extern short D_001B3C80[];
 *   extern char *D_001B3580[] NOT_SDA;
 *   extern int D_001B6500[];
 *   extern void func_00213BB8(void);
 *   extern void func_00203B70(void *, int, int, int);
 *
 *   void func_00203E78(void *arg0, int arg1, int arg2, int arg3) {
 *       int idx = D_00160000;
 *       unsigned char b = *(unsigned char *)&D_00160000;
 *
 *       D_001B3E40[arg3] = b;
 *       D_001B3C80[idx] = (short)arg3;
 *       D_001B3580[idx] = (char *)arg0;
 *
 *       if (arg0 == 0) {
 *           func_00213BB8();
 *           D_00160000 = D_00160000 + 1;
 *       } else {
 *           D_001B6500[idx] = *(int *)((char *)arg0 + 0x2C);
 *           func_00213BB8();
 *           func_00203B70(arg0, arg1, arg2, arg3);
 *           D_00160000 = D_00160000 + 1;
 *       }
 *   }
 *
 * MACRO_ADDR on D_00160000 closed the frame size (0x50, matching
 * retail) by stopping the address from being cached in a saved
 * register across the calls. The residual is retail duplicating the
 * "reload, increment, store" sequence in both branches while this
 * compiler notices the two branches converge to the identical
 * operation and tail-merges them into one shared copy -- same
 * compiler-is-smarter-than-retail class as func_00203118.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00203E78);

INCLUDE_ASM("asm/nonmatchings/text", func_00203F68);

INCLUDE_ASM("asm/nonmatchings/text", func_00204340);

INCLUDE_ASM("asm/nonmatchings/text", func_00204918);

extern int D_00137C80[];
extern char D_1FF7FF0[];
extern int func_002175C8(int, int, int);

int func_00204BE8(void) {
    int *hdr = D_00137C80;
    int want = ((hdr[0x13F] << 11) + 0x1057) & 0xFFFFF000;

    D_0015EF4C = (int *)(((int)D_1FF7FF0 - want) & -0x10);
    *D_0015EF4C = 0x60;
    func_002175C8((int)D_0015EF4C + *D_0015EF4C, hdr[0x13E], hdr[0x13F]);
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00204C60);

INCLUDE_ASM("asm/nonmatchings/text", func_00204FC0);

INCLUDE_ASM("asm/nonmatchings/text", func_00205218);

extern void func_00204FC0(void *);
extern int D_0018CC20 NOT_SDA;
extern int D_001941C8 NOT_SDA;
extern int D_0016100C;

extern int D_0016100C_m __asm__("D_0016100C") MACRO_ADDR;

/* ParseSpaceSceneChunk(int). Near-miss, 2/80: retail adds the index as
   addu $a0,$s0,$a0 (base first), ours index first. The index in its own
   local, a typed int pointer, and a struct with the table as a member do
   not flip it (the struct also costs 4 bytes). D_0016100C is read through
   a MACRO_ADDR alias, which took it from 7 bytes to 2. */
void func_00205220(int arg0) {
    char *base = (char *)&D_0018CC20;
    int off = arg0 * 4;
    char *p = base + off;
    *(int *)(base + 0x5C) = *(int *)(p + 0x60);
    func_00204FC0(p);
    *(int *)(base + 0x5C) = D_001941C8 + D_0016100C_m;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00205270);
