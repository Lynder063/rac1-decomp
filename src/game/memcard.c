#include "common.h"
#include "structs.h"

/*
 * memcard.cpp in the original source; text 0x209A60-0x20C210.
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

INCLUDE_ASM("asm/nonmatchings/text", func_00209A60);

INCLUDE_ASM("asm/nonmatchings/text", func_00209BB8);

extern int D_001A05C0[];
extern int D_001A08C0[];
extern int func_0020BAD8(int *p);
extern void func_0020BD70(void *src, int i, int *table);
extern int func_001E9730();
extern char D_001E8500[];

/* The counterpart of func_0020BA00 below: both descriptor sizes are
   recomputed and checked against the ones stored in the blob, then the
   blobs are read back in the same order they were written. The read
   cursor is the parameter, which retail keeps in $s2. */
/* memcard_RestoreGame */
void func_00209CE8(int arg0) {
    char *p = (char *)arg0;
    int a;
    int b;
    int i;

    a = func_0020BAD8(D_001A05C0);
    b = func_0020BAD8(D_001A08C0);
    if (*(int *)p != a || *(int *)(p + 4) != b) {
        func_001E9730(D_001E8500);
        return;
    }
    p += 8;
    func_0020BD70(p, 0, D_001A05C0);
    p += a;
    for (i = 0; i < 0x14; i++) {
        func_0020BD70(p, i, D_001A08C0);
        p += b;
    }
}

/*
 * 3/168: the only residual is the allocator holding the loaded pointer
 * in $2 where retail uses $3. Everything else, including saving the
 * three globals across func_00209CE8 and the $at store of D_0015EE84,
 * is instruction-for-instruction retail.
 */
extern int D_00137C80[];
extern void func_001FDF10(int, void *, void *);
extern void func_00217748(int);
extern void func_002176C8(int, int, int);
extern void func_00209CE8(int);
extern int D_0015EEE8 MACRO_ADDR;
extern int D_0015EEEC MACRO_ADDR;
extern int D_0015EEF0 MACRO_ADDR;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;

void func_00209DC0(void) {
    int a;
    int b;
    int s0;
    int s1;
    int s2;

    func_001FDF10(D_00137C80[5] << 11, &a, &b);
    func_00217748(1);
    func_002176C8(a, D_00137C80[4], D_00137C80[5]);
    s2 = D_0015EEF0;
    s1 = D_0015EEEC;
    s0 = D_0015EEE8;
    func_00209CE8(a + *(int *)(a + 0x10));
    D_0015EEF0 = s2;
    D_0015EEEC = s1;
    D_0015EEE8 = s0;
    D_0015EE84_m = 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00209E68);

extern int D_001A05C0[];
extern int D_001A08C0[];
extern int func_0020BAD8(int *p);
extern int func_0020BBC8(void *dst, int i, int *table);

/* Serialise both descriptor tables into the caller's buffer: the two
   sizes first, then one blob for D_001A05C0 and twenty for D_001A08C0,
   each call returning how far to advance. The write cursor is the
   parameter itself -- retail keeps both in $s2. */
/* memcard_MakeWholeSave */
void func_0020BA00(char *out) {
    int i;

    *(int *)out = func_0020BAD8(D_001A05C0);
    *(int *)(out + 4) = func_0020BAD8(D_001A08C0);
    out += 8;
    out += func_0020BBC8(out, 0, D_001A05C0);
    for (i = 0; i < 0x14; i++) {
        out += func_0020BBC8(out, i, D_001A08C0);
    }
}

extern int func_001236F0(void);
/* Unprototyped deliberately: this is the varargs function, so callers
   legitimately pass different argument counts/types, and two agents
   declared it incompatibly. Both callers are byte-exact and must not
   be edited; an unprototyped declaration satisfies all call sites
   with identical codegen. (Only varargs *definitions* need stdarg.h;
   calling one is fine.) */
extern int func_001E9730();
extern char D_001E8690[];

/* memcard_Init */
void func_0020BAA8(void) {
    if (func_001236F0()) {
        func_001E9730(D_001E8690);
    }
}

/* memcard_GetDataSize */
int func_0020BAD8(int *p) {
    int n = 8;
    while (p[0] != 0) {
        n += 8;
        n += p[1];
        p += 4;
        n = (n + 3) & ~3;
    }
    return n + 8;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020BB10); /* memcard_Checksum */

/*
 * Attempted and reverted at 15/60 (25%). Logic is confirmed:
 *   int n = arg0[1];
 *   result = 0; if (n) result = (func_0020BB10(arg0 + 2, arg0[0]) == n);
 *   return result;
 * Correct size and the right instructions, but retail emits the
 * `result = 0` (`daddu $2,$0,$0`) in the *prologue*, between the stack
 * adjust and the register spills, whereas this compiler always places it
 * after the spills -- shifting the rest of the stream. Tried: single
 * result variable, early-return form, if/else form, and both
 * declaration orders (the last-statement-emits-first rotation rule does
 * not reach into prologue scheduling). Prologue placement of a constant
 * looks unsteerable from source shape, same family as the other
 * scheduling sub-cases.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020BB88); /* memcard_TestChecksum */

extern void func_001F9A00(void *dst, void *src, int len);
extern int func_0020BB10(void *data, int len);

/* Walks a descriptor table (four words per entry: base, element size,
   tag, unused) and writes one { tag, size, data } record per entry into
   the caller's buffer, four-byte aligned, terminated by { -1, 0 }. The
   header it leaves at the front is { payload length, checksum }, and the
   return value is the total including that header. */
/*
 * Byte mismatch, correct size (0x E8), 39 of 232 bytes: the allocator puts
 * the table cursor in $s1 and the write cursor in $s0, where retail has
 * them the other way round, and it initialises the cursor before the
 * `table[0] != 0` test instead of after it. Everything else is retail's
 * instruction sequence.
 *
 * Spellings tried, all identical output: a separate `int *t = table` local
 * versus advancing the parameter itself; the source address computed at
 * the call versus in a local. That local IS load-bearing for the rest --
 * computing it before the two header stores is what makes the compiler
 * reload table[1] for them, as retail does (1807 -> 517 differing words).
 * The remaining residual is allocator destination choice, the recorded
 * dead end.
 */
/* memcard_PrepData */
int func_0020BBC8(void *dst, int i, int *table) {
    char *out = (char *)dst + 8;
    int total = 0;

    if (table[0] != 0) {
        do {
            char *src = (char *)table[0] + i * table[1];

            total += 8;
            *(int *)out = table[2];
            *(int *)(out + 4) = table[1];
            out += 8;
            func_001F9A00(out, src, table[1]);
            out += table[1];
            total += table[1];
            table += 4;
            out = (char *)(((int)out + 3) & -4);
            total = (total + 3) & -4;
        } while (table[0] != 0);
    }
    total += 8;
    *(int *)(out + 4) = 0;
    *(int *)out = -1;
    *(int *)((char *)dst + 4) = func_0020BB10((char *)dst + 8, total);
    *(int *)dst = total;
    return total + 8;
}

typedef struct {
    int a;        /* 0x00 */
    int b;        /* 0x04 */
    int c;        /* 0x08 */
    int d;        /* 0x0C */
    char name[8]; /* 0x10 */
    int valid;    /* 0x18 */
} McEntry;        /* 0x1C */
typedef struct {
    char hdr[0x20];
    McEntry e[5];
    char pad[0x14];
} McSlot;         /* 0xC0 */
extern McSlot D_0013D390_s[] __asm__("D_0013D390");
extern int func_0020BB88(char *); /* memcard_TestChecksum */

/* memcard_RestoreInfo(char *, int, int). Advancing the buf parameter
   itself and copying the name with memcpy both matter for retail's
   registers; re-indexing the entry per store keeps its daddu copies. */
void func_0020BCB0(char *buf, int slot, int idx) {
    D_0013D390_s[slot].e[idx].valid = func_0020BB88(buf) == 0;
    buf += 0x10;
    D_0013D390_s[slot].e[idx].a = *(int *)buf;
    buf += 0xC;
    D_0013D390_s[slot].e[idx].b = *(int *)buf;
    buf += 0xC;
    D_0013D390_s[slot].e[idx].c = *(int *)buf;
    buf += 0xC;
    D_0013D390_s[slot].e[idx].d = *(int *)buf;
    buf += 0xC;
    memcpy(D_0013D390_s[slot].e[idx].name, buf, 8);
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020BD70); /* memcard_RestoreData(char *, char *, int, mc_data *) */

INCLUDE_ASM("asm/nonmatchings/text", func_0020BFC8); /* memcard_Save(int, int) */
