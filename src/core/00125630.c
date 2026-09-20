#include "common.h"
#include "structs.h"

/*
 * core_text object 0x125630-0x12A2F0. Boundaries are retail's linker fill
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
extern int D_0012FCF0 NOT_SDA;
extern void func_00118E90(int arg0, void *arg1);
extern void *D_00154A40 NOT_SDA;
extern int D_00155080[];
extern void func_001193F8(int);
extern void func_00118AD0(int, int);
extern int D_00154F54;
extern int D_0012FD04;
extern int D_00154F64 NOT_SDA;
extern int D_00154F6C NOT_SDA;
extern void func_0011AA90(int, int, int, int, int, int, int);
extern void func_0011AA00(void);
extern int D_0012FD08 NOT_SDA;
extern int func_0011D960(void);
extern void func_0011D9A8(void);
extern int func_00118C70(void *);
extern int D_0012FDA0;
extern int D_0012FDA4;
extern char D_00157E80[];
extern int D_0012FD9C;
extern void func_0011BBF0(void);
extern int D_0012FD9C NOT_SDA;
extern int func_001151B4();
extern char D_0012FCEC[];
extern char D_001580A8[];
extern int D_0012FDA8;
extern void func_001153FC(void *, int, int);
extern int D_0012FD94;
extern int D_0012FDAC;
extern char D_00158140[];
extern int D_00158180;
extern int D_001581C0;
extern char D_00158528[];
extern int D_0012FDB4;
extern int func_0011CE70(int arg0, int arg1, int arg2, void *arg3);
extern int func_00118E70(int);
extern void func_00118EC0(void);
extern int func_00118EA0(void);
extern void func_0011D4E0(void);
extern void func_00118EB0(void);
extern int D_00130420;
extern int D_00130424;
extern void func_00118CF0(void *);
extern void func_00118CE0(void *);
extern int D_00130BD0[];
extern char D_00130428[];
extern int func_0011DC50(void);
extern void func_0011DBE8(int, int);
extern void func_0011DBF8(int, void *, int);
extern int func_0011DC40(int);
extern void func_00118D80(int);
extern void func_001206B0(float *, int *);
extern void func_001208E4();
extern void func_00118B20(int, void *, int);
extern void func_00118C80(int);
extern int func_00120F30(int);
extern void *D_00159840;
extern int D_001313E0;
extern int D_001313E8;
extern int D_001313EC;
extern int D_001313F0;
extern int D_001313E4;
extern int D_001313FC;
extern void func_00120C58(void);
extern int func_0011B4C8();
extern int func_00120D28(int);
extern void func_00118C90(int);
extern char D_00132590[];
extern int D_00131440;
extern void func_0011A6C8();
extern int func_0011B6B8(void *);
extern char D_00153000[];
extern char D_00132E08[];
extern int D_001313D0;
extern int func_00121040(int);
extern int D_001325C0;
extern char D_00132E40[];
extern void func_00123650(void *);
extern char D_001534E0[];
extern int D_00132E70[];
extern int func_001238B0(int, int, int, int);
extern int D_00132EA8;
extern int *D_00159B28;
extern int *D_00159B2C;
extern int *D_00159B30;
extern char D_0015B108[];
extern int D_0015B180;
extern void func_00124B60(void *);
extern char D_00153658[];
extern int func_00124920(int);
typedef struct {
    char unk_00[4];
    int  unk_04;
    int  unk_08;
    char *unk_0C;
    char unk_10[0x320];
} Ent330;
extern Ent330 D_0015B640[];
extern void func_00119288(void *a, void *b);

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

extern void func_0012C468(void *, void *);
extern char D_00153968[];

/* arg0 is a moby/entity-ish struct: a table index at +0x810 selects a
 * +0x140-strided sub-entry whose +0x6CC field gets set, and several
 * other struct-pointer outputs get filled from +0x150/+0x174 flags.
 * Ends by clearing bit 0 of *a4, reporting through func_0012C468 (an
 * already-matched "log to D_00153968" family member) first when
 * +0x150 == 1. The func_0012C468 call takes arg0 -- the moby struct,
 * still live in $4 -- not a4/s0, which is a common trap here. */
int func_00127C80(void *a0, int *a1, int *a2, int *a3, int *a4) {
    int idx;
    char *entry;
    int ret = 1;
    int c;
    int mask;

    idx = *(int *)((char *)a0 + 0x810);
    entry = (char *)a0 + idx * 0x140;
    *(int *)(entry + 0x6CC) = 1;
    *(int *)((char *)a0 + 0x1B0) = 1;

    if (*(int *)((char *)a0 + 0x150) == 2) {
        *(int *)((char *)a1 + 0x14) = 0;
        *(int *)((char *)a1 + 0x10) = 0;
        *(int *)((char *)a1 + 0x4) = 0;
        *(int *)((char *)a1 + 0x0) = 0;
    }

    if (*(int *)((char *)a0 + 0x174) == 3) {
        *a2 = 2;
    } else {
        *a2 = 1;
        c = (*(int *)((char *)a0 + 0x174) == 2);
        a3[1] = c;
        *a3 = c;
    }

    if (*(int *)((char *)a0 + 0x150) == 1) {
        func_0012C468(a0, D_00153968);
        ret = 0;
    }
    mask = *a4;
    mask &= ~1;
    *a4 = mask;
    return ret;
}

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

extern void func_0012BCC8(int);

/* Spins until the VIF1 DMA channel (D_CHCR 0x10002010) reports idle,
   nudging the IOP via func_0012BCC8 every 5001 spins so a stalled
   stream cannot deadlock. Same wait loop documented on func_00128860. */
void func_00128590(void *arg0) {
    int counter = 0;

    while ((*(volatile int *)0x10002010 & 0x80004000) == 0x80000000) {
        if (counter++ >= 0x1389) {
            func_0012BCC8(*(int *)((char *)arg0 + 0x858));
            counter = 0;
        }
    }
}

/*
 * REVERTED (SIZE mismatch -- always fatal downstream). Decode is
 * certain: the same spin-wait as func_00128590, on channel
 * 0x10002000, exiting either when the channel word goes non-negative
 * or when D_CHCR (0x10002010) bit 0x4000 comes up. It returns the raw
 * 64-bit channel word; func_00128860 narrows it with dsll32/dsra32,
 * so the return type is `long` (see the _wide alias note there).
 *
 *   long func_00128638(void *arg0) {
 *       volatile long *chcr = (volatile long *)0x10002000;
 *       long v;
 *       int counter = 0;
 *       while ((v = *chcr) < 0 && (*(volatile int *)0x10002010 & 0x4000) == 0) {
 *           if (counter++ >= 0x1389) {
 *               func_0012BCC8(*(int *)((char *)arg0 + 0x858));
 *               counter = 0;
 *           }
 *       }
 *       return v;
 *   }
 *
 * Retail is 176 bytes. Spellings tried, all short:
 *   - as above (chcr a local, 0x10002010 spelled inline):      160
 *     Block-for-block IDENTICAL to retail; the whole 16-byte gap is
 *     that retail hoists BOTH hardware addresses into callee-saved
 *     registers ($17 = 0x10002000, $16 = 0x10002010, $18 = arg0,
 *     0x40 frame) while this compiler hoists only 0x10002010 and
 *     leaves the channel read as an absolute `ld $4,268443648`,
 *     saving one register pair and its lui/ori setup.
 *   - both addresses as locals declared at the top:            120
 *     Hoisting the second one makes GCC rotate the loop the other
 *     way (`b` into the bottom test), which is structurally wrong.
 *   - guard + do/while, both addresses as locals inside the if: 152
 *
 * This refutes the base-pointer/timing lever for CONSTANT addresses:
 * declaring the pointer at the top of the function does NOT pin a
 * literal MMIO address into a callee-saved register the way it pins
 * a global's base. It is the same rematerialise-vs-keep allocator
 * choice already recorded on func_00128860, which is the sibling
 * that shares this exact wait loop.
 */
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

/*
 * REVERTED (size mismatch: ours 148, retail 144). Logic is certain:
 *
 *   void func_00129600(void *arg0, int arg1, int arg2) {
 *       char *s = (char *)arg0;
 *       int v, w;
 *
 *       if (arg2 != 0) {
 *           if (*(int *)(s + 0x174) == 3) {
 *               if (*(int *)(s + 0x150) == 3) {
 *                   v = *(int *)(s + 0x1C4);
 *               } else {
 *                   v = *(int *)(s + 0x1B8);
 *               }
 *               func_00129E30(s, v, arg1 - 1, arg1);
 *           } else {
 *               if (*(int *)(s + 0x150) == 3) {
 *                   v = *(int *)(s + 0x1D4);
 *                   w = *(int *)(s + 0x1E4);
 *               } else {
 *                   v = *(int *)(s + 0x1C8);
 *                   w = *(int *)(s + 0x1D8);
 *               }
 *               func_00129F40(s, v, w, arg1 - 1);
 *           }
 *       }
 *       if (*(int *)(s + 0xF8) == 1) {
 *           *(int *)(s + 0xF8) = 2;
 *       }
 *   }
 *
 * Note the arity evidence: func_00129F40 takes FOUR arguments here but
 * only three at its call in func_0012C278, so whichever declaration is
 * in scope must be prototype-less (see the K&R note in
 * docs/DECOMP_PROGRESS.md).
 *
 * One instruction over, and it is register choice again. arg1 has to
 * move out of $5 because $5 becomes an outgoing argument. Retail moves
 * it to $7 with a single `daddu $7,$5,$0` -- $7 is free until it is
 * needed, and it is exactly where the E30 call wants arg1 anyway, while
 * the F40 path overwrites it in place with arg1 - 1. This compiler
 * parks it in $8 instead and then needs a second `move $7,$8` for the
 * E30 call. Hoisting arg1 or arg1 - 1 into named locals does not move
 * it.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00129600);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129690);

extern char D_00153A80[];
extern void func_00116248_4(void *, char *, int, int) __asm__("func_00116248");
extern void func_0012C468_a(void *, void *) __asm__("func_0012C468");

/* Does the request at arg1 fit the heap described by arg0? A sized
   request (+0xE0 non-zero) has to fit both the byte budget at +0xDC and
   the entry budget at +0xE0; an unsized one has to fit width * height
   against +0xE4. On a refusal, format the two figures into the message
   at D_00153A80 and report it. Returns whether it fits. */
int func_00129948(void *arg0, void *arg1) {
    char buf[0x100];
    char *h = (char *)arg0;
    char *q = (char *)arg1;
    int e = *(int *)(h + 0xE0);
    int ok;

    if (e != 0) {
        ok = *(int *)(h + 0xDC) >= *(int *)(q + 0x4) &&
             e >= *(int *)(q + 0x8);
    } else {
        ok = *(int *)(h + 0xE4) >= *(int *)(q + 0xC) * *(int *)(q + 0x10);
    }
    if (ok == 0) {
        func_00116248_4(buf, D_00153A80, *(int *)(q + 0x4),
                        *(int *)(q + 0x8));
        func_0012C468_a(arg0, buf);
    }
    return ok;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001299E8);

int func_00129C78(void *arg0) {
    Obj40 *s = (Obj40 *)arg0;
    int r = 1;
    if (s->unk008 != 2) {
        int v = s->unk118;
        s->unk008 = 2;
        s->unk0AC = v;
    }
    s->unk820 = r;
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129CA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129E30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129F40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A0F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A268);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A2EC);
