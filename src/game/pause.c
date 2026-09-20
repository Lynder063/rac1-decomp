#include "common.h"
#include "structs.h"

/*
 * pause.cpp in the original source; text 0x219C08-0x228A58.
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
extern int D_001B2F40[];
extern void func_001FA460_2(void *, void *) __asm__("func_001FA460");
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_002116A0(void *, int, int *, void *);
extern void func_001FA540(void *, void *, void *);
extern void func_00211548(void *, int, void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern int D_001414D0 NOT_SDA;
extern float D_001CAE00[] NOT_SDA;
extern void func_0020E360(void *, void *);
extern float func_001FA058(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_00118D80(int);
extern void func_00212578(int, int);
extern char D_00165600[];
extern int D_0015F718;
extern short D_0015F71C;
extern char D_001B3200[];
extern int func_001160D8(void);
extern float func_00214158(void);
extern float func_002140F8(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9DC0(void *, void *, float);
extern void func_001FA460(void *);
extern void func_002150B0(void *, void *);
extern void func_001FA480(void *, void *);
extern float func_0020D830(void);
extern float func_00215A98(int, float);
extern unsigned char D_0014BFC0[];
extern unsigned char D_0013E620[];
extern unsigned char D_0013D510[];
extern void func_0012F068(void *);
extern void func_002177F0(int);
extern short D_001517D0[];
extern void func_0012EDE0(void *);
extern void func_0012EFE8(void);
extern char D_001E8980[];
extern int func_0012EE98(int, int, int, void *);
extern void func_001F9978(void);
extern int func_00217628_v(void) __asm__("func_00217628");
extern void func_00122598(int);
extern void func_00217130(void);
extern void func_0012EC40(void);
extern void func_0012DDC0(void);
extern void func_0012EC30(void);
extern int func_0012F030(void);
extern void func_002167C0(short, short, short);
extern void func_002169B8(short, short, short);
extern short D_001517F0 NOT_SDA;
extern char D_0013CA40[];
extern int D_001CDAE0 NOT_SDA;
extern void func_00124650(void);
extern void func_00124B88(int);
extern int func_00124BC8(void *, void *);
extern void func_00217F68(void *);
extern void func_001F68E8(void *a, void *b, void *c, void *d, void *e);
extern void *func_001FE540(void);
extern int func_00205790(void);
extern void func_0020BA00(char *out);
extern void func_00217588(void);

INCLUDE_ASM("asm/nonmatchings/text", func_00219C08);

INCLUDE_ASM("asm/nonmatchings/text", func_00219C70); /* PauseAllSounds */

INCLUDE_ASM("asm/nonmatchings/text", func_00219E48);

/* Hoisted from further down the file: this is its first use, and a
   second NOT_SDA extern for the same object in one translation unit is
   a hard error. */
extern char D_001D5F70[] NOT_SDA;
extern int D_0015F6E8 MACRO_ADDR;

void func_00219E60(void) {
    char *p = D_001D5F70;
    D_0015F6E8 = 3;
    *(int *)p = 0x2D;
    *(int *)(p + 0xC) = 0;
    *(int *)(p + 0x10) = 0;
    *(int *)(p + 0x110) = 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00219E90);

INCLUDE_ASM("asm/nonmatchings/text", func_0021A0B0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021A1A0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021A610);

/*
 * REVERTED (size mismatch). Logic is certain; written straight from the
 * branch chain it comes out several instructions short, and the tail
 * collapses into a `movn` where retail keeps two separate returns.
 *
 *   int func_0021ACD8(int arg0) {
 *       int v;
 *       if (*(int *)(*(char **)(D_001D5F70 + 4) + 0x40) != arg0) return 0;
 *       if ((*(int *)(D_0013CA40 + 0x1C4) & 0xD00) != 0
 *               && *(int *)(D_001D5F70 + 0x124) == 0) return 1;
 *       if ((*(int *)(D_0013CA40 + 0x1C4) & 0x10) == 0) return 0;
 *       v = *(int *)(*(char **)(D_001D5F70 + 4) + 0x38);
 *       if (v != 0) { *(int *)(D_001D5F70 + 8) = v; return 0; }
 *       if (*(int *)(D_001D5F70 + 0x124) == 0) return -1;
 *       return 0;
 *   }
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0021ACD8);

INCLUDE_ASM("asm/nonmatchings/text", func_0021AD68);

INCLUDE_ASM("asm/nonmatchings/text", func_0021AEF8);

extern int D_0015EF90;
extern char D_001D4B90[];
extern char D_001D4BC0[];

int func_0021B108(void *arg0) {
    *(char **)((char *)arg0 + 0x34) =
        (D_0015EF90 != 0) ? D_001D4B90 : D_001D4BC0;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021B138);

int func_0021B278(void) {
    return 0;
}

int func_0021B280(void) {
    return 0;
}

int func_0021B288(void *arg0) {
    *(int *)((char *)arg0 + 0x44) = -1;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021B298);

INCLUDE_ASM("asm/nonmatchings/text", func_0021BB90);

INCLUDE_ASM("asm/nonmatchings/text", func_0021C1B0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021C6C0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021C790);

INCLUDE_ASM("asm/nonmatchings/text", func_0021C840);

int func_0021CD98(void) {
    return 0;
}


/* D_001D5F70 + 0xCB. Retail addresses this one byte BOTH ways -- through
   its own %hi/%lo here and as 0xCB($16) off the D_001D5F70 base a few
   instructions later -- so it really is two names on one address in the
   original source, and splat has the second as its own linker symbol. */
extern char D_001D603B[];
extern short D_001517D0[];

/*
 * Pause/menu teardown. When the D_001517D0+8 state word is clear, drop
 * the active slot: clear the 0xCB flag byte, toggle 0x1000 in that
 * slot's flag word and mark no slot active. When it is SET instead and
 * the 0xCB byte is still set, run func_00217588 first, then clear the
 * byte and invalidate the slot outright (flags = -1, not a toggle).
 *
 * The two tests read D_001517D0[4] twice rather than being one if/else,
 * and that IS the source: the indirect store into the slot table between
 * them kills gcc 2.95's memory, so retail reloads the halfword and
 * re-materialises the base. Written as if/else it collapses to a single
 * test.
 *
 * D_001A01F0 is the struct from func_00205790 above; `sel` at +0x2A0
 * sits between the flag array and the size array, which is why flags is
 * 5 entries and not 6.
 *
 * `char *g = D_001D5F70;` is load-bearing: writing the two accesses as
 * D_001D5F70[0xCB] lets gcc fold 0xCB into the symbol addend, giving
 * %hi/%lo(D_001D5F70+203) and a base register already at +0xCB. Retail
 * keeps the UNOFFSET base in $16 and puts 0xCB in both displacements.
 * Same instruction count, but it also changes what the branch delay
 * slot gets filled with, so it is a byte difference, not just cosmetic.
 */
int func_0021CDA0(void) {
    int cur;

    if (D_001517D0[4] == 0) {
        cur = D_001A01F0_slots.sel;
        if (cur != -1) {
            D_001D603B[0] = 0;
            D_001A01F0_slots.flags[cur] ^= 0x1000;
            D_001A01F0_slots.sel = -1;
        }
    }
    if (D_001517D0[4] != 0) {
        char *g = D_001D5F70;
        if (*(unsigned char *)(g + 0xCB) != 0) {
            func_00217588();
            g[0xCB] = 0;
            D_001A01F0_slots.flags[D_001A01F0_slots.sel] = -1;
            D_001A01F0_slots.sel = -1;
        }
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021CE60); /* DrawMapScreen */

extern int D_001A0414;
extern int D_001CFBF4;
extern int D_001CFAD8;
extern void func_0020C7A0(void *);
extern int func_0020CA50(void *, void *, void *, int);

int func_0021D420(void *arg0) {
    int *p;

    func_0020C7A0(arg0);
    *(int *)((char *)arg0 + 0x7C) =
        func_0020CA50((void *)0x70000000, (void *)0, (void *)0x70000100, 1);
    p = (int *)((char *)arg0 + 0x30);
    p += D_001A0414;
    if (*p != -1) {
        D_001CFBF4 = ((int *)0x70000000)[*p];
        D_001CFAD8 = ((int *)0x70000100)[*p];
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021D4C0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021D7A0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021D9C8);

extern int D_00141FA0[];

int func_0021DA60(void *arg0) {
    int *src = (int *)((char *)arg0 + 0x30);
    int *dst = D_00141FA0;
    int i = 7;
    do {
        *dst++ = *src++;
    } while (--i >= 0);
    return 0;
}

extern char D_001D0A50[];
extern char D_001D0A88[];

int func_0021DA98(void *arg0) {
    *(char **)((char *)arg0 + 0x34) =
        (D_0013D5CA != 0) ? D_001D0A50 : D_001D0A88;
    return 0;
}

extern int D_001A0418 NOT_SDA;

int func_0021DAC8(void) {
    D_001A0418 = -1;
    return 0;
}

extern void func_00226D50(int);

int func_0021DAE0(void) {
    func_00226D50(1);
    return 0;
}

extern int D_0015EEF0 MACRO_ADDR;
extern int D_0013E6A0;

int func_0021DB00(void) {
    D_0013E6A0 = (D_0015EEF0 * 8) / 10;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021DB30);

INCLUDE_ASM("asm/nonmatchings/text", func_0021DE08); /* DrawSoundMenu */

typedef struct {
    unsigned short v;
    short pad;
} Half4;
typedef struct {
    unsigned short a;
    short b;
    char pad[8];
} Rec0C;
extern int D_0015EF30 MACRO_ADDR;
extern Rec0C D_001CFFC0[];
extern unsigned char D_00141F08[];
extern Half4 D_00199812[];

int func_0021E170(void) {
    int i;
    for (i = 0; i < D_0015EF30;) {
        int j = i + 1;
        unsigned char k;
        D_001CFFC0[i].b = 1;
        k = D_00141F08[D_0015EF30 - j];
        D_001CFFC0[i].a = D_00199812[k].v;
        i = j;
    }
    D_001CFFC0[D_0015EF30].a = 0;
    return 0;
}

int func_0021E1F8(void) {
    return 0;
}

typedef struct {
    int key;
    int flags;
} PadBind;

/* Aliased rather than renamed: func_00227018 further down still walks
   the same table as a flat int array. */
extern PadBind D_001D6448_t[] __asm__("D_001D6448");

extern int D_001D6078;
extern int D_00137C80[];
extern int func_00217628_3(int, int, int) __asm__("func_00217628");

int func_0021E200(char *arg0) {
    int i;
    char *g;
    func_00226D50(1);
    *(int *)(arg0 + 0x54) = 0;
    *(int *)(arg0 + 0x38) = 0;
    g = D_001D5F70;
    for (i = 0; i < 5; i++) {
        if (D_001D6448_t[i].key != 0
            && (unsigned int)D_001D6448_t[i].key
                   < *(unsigned int *)(g + 0x10C)) {
            D_001D6448_t[i].flags |= 2;
        }
    }
    *(int *)(arg0 + 0x50) = 0;
    if (D_001517D0[4] == 0) {
        if (func_00217628_3(D_001D6078, D_00137C80[0x1528 / 4],
                            D_00137C80[0x152C / 4]) != 0) {
            *(int *)(arg0 + 0x50) = 1;
        } else {
            *(int *)(arg0 + 0x50) = 3;
        }
    }
    *(int *)(arg0 + 0x10) |= 4;
    return 0;
}

/* D_0015F780 is SDA elsewhere; pause.cpp stores it through $at. */
extern int D_0015F780_m __asm__("D_0015F780") MACRO_ADDR;
extern int D_001997FC;

int func_0021E2D0(int arg0) {
    if (D_001517D0[4] != 0 && *(int *)(arg0 + 0x50) == 1) {
        func_00217588();
    }
    func_00226D50(1);
    {
        int v = *(int *)(arg0 + 0x54);
        if (v != 0) {
            int w = *(int *)(arg0 + 0x38);
            D_0015F780_m = v;
            D_001997FC = w;
        }
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021E340);

INCLUDE_ASM("asm/nonmatchings/text", func_0021E4B0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021E950);

/*
 * Close but not exact, reverted: conditional-move vs. branch.
 * Logic is `short v = (D_001414F4 == 1) ? 0 : 3;
 * *(short*)(*(char**)(arg0+0x34) + 2) = v; return 0;`.
 *
 * Retail branches (`addiu $3,$0,1` / `beq $4,$3`, the 0 materialized in
 * the delay slot and the 3 on the fall-through) and stores once at the
 * join. This compiler won't produce that shape:
 *  - single-store forms (`v=0; if (cond) v=3;`, an if/else assigning v,
 *    and a ternary) all compile branchlessly to `xori`/`movz` -- 23/40.
 *  - a two-store form (`if (cond) p[1]=0; else p[1]=3;`) does branch,
 *    and with the polarity written as `!= 1` even gets retail's exact
 *    `beq`, but then needs an extra `b` to join, so it's 15/40.
 * So: retail's compiler chose a branch where this one prefers a
 * conditional move for the same select-then-store. This is the mirror
 * image of func_001FF4F8, where retail used `movn` and this compiler
 * would not produce it -- the cmov heuristics differ in both
 * directions, which is worth knowing before spending long on either.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0021EDD8);

INCLUDE_ASM("asm/nonmatchings/text", func_0021EE00);

int func_0021EF30(void) {
    return 0;
}

int func_0021EF38(void *arg0) {
    char *p = (char *)arg0;
    *(float *)(p + 0x38) = 3.14159274f;
    *(int *)(p + 0x34) = 0;
    *(int *)(p + 0x44) = 0;
    *(int *)(p + 0x48) = 0;
    return 0;
}

int func_0021EF60(char *arg0) {
    *(int *)(arg0 + 0x44) = func_002267C0(*(int *)(arg0 + 0x44));
    *(int *)(arg0 + 0x48) = func_002267C0(*(int *)(arg0 + 0x48));
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021EFA0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021F118);

extern float func_001FA748(float, float);

void func_0021F200(char *arg0) {
    *(float *)(arg0 + 0x48) = func_001FA748(*(float *)(arg0 + 0x48), 0.01f);
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021F238);

extern char *D_001D5F74 NOT_SDA;
extern void func_0020E180(int, int);

int func_0021F610(char *arg0) {
    char *p = *(char **)(D_001D5F74 + 0x40);
    char *e = *(int *)(p + 0x3C) * 10 + *(char **)(p + 0x48);
    int v;

    if (((unsigned char *)&D_0013D5C8)[*(short *)(e + 6)] == 0) {
        return 0;
    }
    v = *(int *)(arg0 + 0x44);
    if (v != 0) {
        func_0020E180(v, 1);
    }
    v = *(int *)(arg0 + 0x48);
    if (v != 0) {
        func_0020E180(v, 1);
    }
    return 8;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021F6A0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021F7D0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021F898); /* DrawQuitGameMenu */

extern char D_00187040[];
extern void func_00220128(void *);
extern void *func_00226720_a(int) __asm__("func_00226720");

/* Attach marker object 0x46E to arg0, parked just above the camera
   focus in D_00187040's 0x140 block, and point it back at its owner
   through the node at +0x78. Always returns 0. */
int func_0021FA50(void *arg0) {
    char *o = (char *)func_00226720_a(0x46E);
    char *t;

    if (o != 0) {
        t = D_00187040;
        *(char **)((char *)arg0 + 0x44) = o;
        *(short *)(o + 0x34) = 0;
        *(float *)(o + 0x10) = *(float *)(t + 0x140) + 8.0f;
        *(float *)(o + 0x14) = *(float *)(t + 0x144) + 0.5f;
        *(float *)(o + 0x18) = *(float *)(t + 0x148) - 0.1f;
        *(float *)(o + 0x44) = -1.9f;
        *(void **)(o + 0x74) = (void *)func_00220128;
        **(void ***)(o + 0x78) = arg0;
    }
    return 0;
}

extern int func_002267C0(int);

int func_0021FAF8(char *arg0) {
    *(int *)(arg0 + 0x44) = func_002267C0(*(int *)(arg0 + 0x44));
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021FB28); /* DrawItemsMenu */

INCLUDE_ASM("asm/nonmatchings/text", func_0021FF80); /* DrawGBsShipMenu__maybe */

extern float func_001FA748(float, float);

void func_00220128(void *arg0) {
    *(float *)((char *)arg0 + 0x40) =
        func_001FA748(*(float *)((char *)arg0 + 0x40), 0.02f);
}

INCLUDE_ASM("asm/nonmatchings/text", func_00220160);

extern void func_00234C98(int, int);
extern void func_00205E70(void);

int func_00220338(void) {
    func_00234C98(0x42, 0x44);
    func_00234C98(0x47, 0xB);
    func_00205E70();
    return 8;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00220370); /* DrawMissionsMenu */

extern void func_001F4630(int);
extern void func_001F4748(void);
/* func_001F68E8 is defined above with pointer parameters; this site
   passes a packed 64-bit colour in $a2, and func_001FE540 above is
   declared (void) while retail's caller here passes an id in $a0 --
   reach both through aliases rather than redeclaring them. */
extern void func_001F68E8_c(int, int, long, void *, int)
    __asm__("func_001F68E8");
extern void *func_001FE540_id(int) __asm__("func_001FE540");

/* Sibling of func_00220338 above: the same two func_00234C98 setup
   calls, then two banner draws. 0x80FFA888 is spelled `long` (64-bit)
   so it builds via ori/dsll/ori rather than a sign-extending lui. */
int func_00220600(void) {
    func_00234C98(0x42, 0x44);
    func_00234C98(0x47, 0xB);
    func_001F4630(0);
    func_001F68E8_c(4, 7, 0x80FFA888L, func_001FE540_id(0x4EE0), -1);
    func_001F68E8_c(4, 0x17, 0x80FFA888L, func_001FE540_id(0x4F05), -1);
    func_001F4748();
    return 2;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00220690);

extern short D_001602B0;              /* SDA, gp -0x6A50 */
extern void func_00201640(int, int, int, int, long, long);
extern int func_00200198(int, int);
extern void func_00200468(int, int, int, int, int, int);

void func_002208F8(int x, int y, int flag) {
    func_00201640(x - 5, y - 5, x + 5, y + 5, 0x80FFA888L, 0);
    func_00201640(x - 4, y - 4, x + 4, y + 4, *(int *)&D_001602B0, 0);
    if (flag != 0) {
        int c = func_00200198(0xE99E, 1);
        func_00200468(c, x - 0xD, y - 0x12, 0x1E, 0x1E, 0x80);
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_002209A0);

extern void func_001F5800(int, int, int, int, int, int, int, int, long,
                          long);
extern short D_00151880[];
extern long D_001A0448;

/* Eight register arguments ($a0-$a3, $t0-$t3) then two 64-bit stack
   slots -- both written with `sd`, so they are `long`, not `long long`
   (which would be 128-bit here). */
int func_00220C90(void *arg0) {
    if (*(int *)((char *)arg0 + 0x44) < 2) {
        return 0;
    }
    func_001F5800(0, 0, D_00151880[0xB0], D_00151880[0xB1], 0, 0,
                  *(int *)((char *)arg0 + 0x38),
                  *(int *)((char *)arg0 + 0x3C), 0x80808080L, D_001A0448);
    return 0x10;
}

extern int func_00226EA8(int);

/*
 * Sibling of func_00220DA0 below: same slot set (0x44/0x48/0x4C/0x50/
 * 0x54/0x5C) on the same object, seeded here instead of torn down.
 *
 * Byte mismatch, correct size (0x94), 2 of 37 words: retail stores the
 * -1 to 0x54 before 0x50 and we do the reverse. Four spellings of the
 * tail were tried -- 5C/54/50 (this one, 2 words off), 5C/50/54 (4),
 * 54/5C/50 (6), and the chained `*(s+0x50) = *(s+0x54) = -1` (6) -- so
 * source order is not what decides it here; the -1 is a live value
 * produced in the branches ($v1), and the scheduler picks the store
 * order. Kept rather than reverted: the size is right, so nothing
 * downstream moves.
 */
int func_00220D08(void *arg0) {
    char *s = (char *)arg0;

    *(int *)(s + 0x44) = 0;
    *(int *)(s + 0x48) = func_00226EA8(*(int *)(s + 0x34) & 0x200);
    *(int *)(s + 0x4C) = func_00226EA8(*(int *)(s + 0x34) & 0x200);
    if ((*(int *)(s + 0x34) & 0x200) == 0) {
        if (*(int *)(s + 0x48) == 0) {
            *(int *)(s + 0x48) = func_00226EA8(1);
        }
        if (*(int *)(s + 0x4C) == 0) {
            *(int *)(s + 0x4C) = func_00226EA8(1);
        }
    }
    *(int *)(s + 0x5C) = 0;
    *(int *)(s + 0x54) = -1;
    *(int *)(s + 0x50) = -1;
    return 0;
}

extern int func_00226F68(int);

int func_00220DA0(void *arg0) {
    char *s = (char *)arg0;
    *(int *)(s + 0x48) = func_00226F68(*(int *)(s + 0x48));
    *(int *)(s + 0x4C) = func_00226F68(*(int *)(s + 0x4C));
    *(int *)(s + 0x50) = -1;
    *(int *)(s + 0x54) = -1;
    *(int *)(s + 0x44) = -1;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00220DF0);

INCLUDE_ASM("asm/nonmatchings/text", func_00221380);

INCLUDE_ASM("asm/nonmatchings/text", func_00221688);

INCLUDE_ASM("asm/nonmatchings/text", func_002217C8);

INCLUDE_ASM("asm/nonmatchings/text", func_00221888);

INCLUDE_ASM("asm/nonmatchings/text", func_00221B58);

INCLUDE_ASM("asm/nonmatchings/text", func_00221E60);

INCLUDE_ASM("asm/nonmatchings/text", func_00222070); /* DrawCheatsMenu */

INCLUDE_ASM("asm/nonmatchings/text", func_002222F8);

INCLUDE_ASM("asm/nonmatchings/text", func_002224A8);

INCLUDE_ASM("asm/nonmatchings/text", func_00222640);

INCLUDE_ASM("asm/nonmatchings/text", func_00222708);

int func_00222840(void) {
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00222848);

extern int D_0013CC04 NOT_SDA;
extern char D_001D2678[];
extern char *D_001D5F78 NOT_SDA;

int func_00222950(void) {
    if (D_0013CC04 & 0x40) {
        D_001D5F78 = D_001D2678;
    }
    return 0;
}

extern void func_001FDF78(int, int, int, int);

int func_00222978(void *arg0) {
    int *p = (int *)arg0;
    func_001FDF78(p[6], p[6] + p[8], p[7], p[7] + p[9]);
    return 2;
}

INCLUDE_ASM("asm/nonmatchings/text", func_002229B0);

extern int func_00226EA8(int);
extern char *D_001D5F74 NOT_SDA;

int func_00222A90(void *arg0) {
    *(int *)(D_001D5F74 + 0x84) = 0;
    *(int *)((char *)arg0 + 0x54) = func_00226EA8(0);
    return 0;
}

extern int func_00226F68(int);

int func_00222AD0(void *arg0) {
    *(int *)((char *)arg0 + 0x54) = func_00226F68(*(int *)((char *)arg0 + 0x54));
    return 0;
}

/*
 * Near-miss, same size (4 words differ, allocator only): in the default
 * arm retail keeps the D_001D5F70 base in $v1 (the register that held
 * D_0015EFB0) with the loaded pointer in $a0 and the value in $a1; we
 * get base $a1, pointer $a0, value $v1. Spellings tried (asm-differ
 * score, lower is better; all 0x94 bytes):
 *   this one (if/!=, base local per arm)                       25
 *   base, pointer and value as separate locals in the arm      45
 *   la-macro alias (MACRO_ADDR) for the base in the arm        235
 *   switch with default first and break                        2430
 * D_0013CBE4 is NOT a macro access: retail splits its lui into the
 * second beq's delay slot and branches past it, which only the split
 * form can do (MACRO_ADDR there trips check_macro_slots).
 */
/* D_0015EFB0 is SDA elsewhere; pause.cpp reaches it through the
   assembler macro. */
extern int D_0015EFB0_m __asm__("D_0015EFB0") MACRO_ADDR;
extern int D_0013CBE4;

int func_00222B00(void) {
    int v;
    char *g;
    if (D_0015EFB0_m != 0x10 && D_0015EFB0_m != 1) {
        g = D_001D5F70;
        *(int *)(g + 8) = *(int *)(*(char **)(g + 4) + 0x38);
        return 0;
    }
    v = D_0013CBE4;
    if (v & 0x20) {
        g = D_001D5F70;
        *(int *)(g + 0xD4) = 0;
        *(int *)(g + 8) = *(int *)(*(char **)(g + 4) + 0x38);
        *(int *)(*(char **)(g + 4) + 0x84) = 1;
    } else if (v & 0x10) {
        g = D_001D5F70;
        *(int *)(g + 8) = *(int *)(*(char **)(g + 4) + 0x38);
        *(int *)(*(char **)(g + 4) + 0x84) = 0;
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00222B98);

/*
 * Close but not exact (24/60): int func(void *arg0) {
 *   *(int *)((char *)arg0+0x34) = D_001D48A8[D_0015EE84 % 19];
 *   return 0; }
 * Notably the *shape* is exactly right, including the real `divu` and
 * its div-by-zero trap guard -- see the constant-division note in the
 * techniques section. The residual is the known allocator-varying
 * issue: retail does `lui $5` / `lw $5` (loading into the register it
 * just built the address in), this compiler does `lui $3` / `lw $5`,
 * and it orders the divisor's `addiu` before the load rather than
 * after. Same as func_0021B108's entry. Reverted per the size-of-diff
 * precedent.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00222D70);

INCLUDE_ASM("asm/nonmatchings/text", func_00222DB0);

INCLUDE_ASM("asm/nonmatchings/text", func_00222E98);

INCLUDE_ASM("asm/nonmatchings/text", func_00222FA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00223140);

INCLUDE_ASM("asm/nonmatchings/text", func_002232E0);

int func_00223478(void *arg0) {
    *(int *)((char *)arg0 + 0x40) = 0;
    *(int *)((char *)arg0 + 0x50) = 0;
    *(int *)((char *)arg0 + 0x3C) = 0;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00223490);

INCLUDE_ASM("asm/nonmatchings/text", func_00223810);

INCLUDE_ASM("asm/nonmatchings/text", func_002239F0); /* ObtainAllGoldWeaponsMenu */

INCLUDE_ASM("asm/nonmatchings/text", func_00223B40); /* DrawEndScreenMenuMaybe */

INCLUDE_ASM("asm/nonmatchings/text", func_00223E40);

extern void func_00226D50(int);

int func_00223FD0(void *arg0) {
    func_00226D50(1);
    *(int *)((char *)arg0 + 0x48) = func_00226EA8(0);
    *(int *)((char *)arg0 + 0x4C) = 0;
    return 0;
}

int func_00224010(void *arg0) {
    *(int *)((char *)arg0 + 0x48) = func_00226F68(*(int *)((char *)arg0 + 0x48));
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00224040);

INCLUDE_ASM("asm/nonmatchings/text", func_002243E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00224728);

INCLUDE_ASM("asm/nonmatchings/text", func_00224C30);

INCLUDE_ASM("asm/nonmatchings/text", func_002250B8);

INCLUDE_ASM("asm/nonmatchings/text", func_00225358);

INCLUDE_ASM("asm/nonmatchings/text", func_00225548);

INCLUDE_ASM("asm/nonmatchings/text", func_002255F8);

void func_00225DF0(void) {
}

void func_00225DF8(void) {
}

INCLUDE_ASM("asm/nonmatchings/text", func_00225E00);

INCLUDE_ASM("asm/nonmatchings/text", func_00225FB8);

INCLUDE_ASM("asm/nonmatchings/text", func_002260A8);

INCLUDE_ASM("asm/nonmatchings/text", func_00226250);

INCLUDE_ASM("asm/nonmatchings/text", func_00226380);

INCLUDE_ASM("asm/nonmatchings/text", func_00226410);

/* Hoisted from the func_00227A70 block below so this earlier caller can
   see it -- a second NOT_SDA extern for the same symbol is a hard
   error. */
extern unsigned char D_001B3E40[] NOT_SDA;
extern void *func_0020D348(void);
extern void func_0020ED48(void *);
extern void func_0020E340(void *, int, int, int, int);

/* Spawn the pickup/marker object for slot arg0, unless that slot is
   disabled (0xFF in D_001B3E40). Fresh objects get 0xFF/0xFF/1 in the
   0x30 block, are registered, tinted mid-grey, and if their descriptor
   says so, flagged 0x18 at +0x73.

   Two things mattered for the constant 0xFF, which retail keeps in a
   single callee-saved register across the call: the +0x30 store must be
   through `unsigned char` (as `char` it is the DIFFERENT constant -1
   and gets its own `li`), and the byte store must come BEFORE the
   halfword store. Written the other way round the compiler makes the
   QImode 255 a fresh pseudo instead of reusing the HImode one, and the
   function comes out 4 bytes long.

   Near-miss, 2/40 words, size-exact and therefore inert: retail does
   `addu $v0,$a0,$v0`, keeping the incoming argument and landing the
   element address in $v0, where this build overwrites $a0 because arg0
   is dead after the test. Naming the base in a local first does not
   move it -- the recorded allocator destination question. */
void *func_00226720(int arg0) {
    char *o;

    if (D_001B3E40[arg0] == 0xFF) {
        return 0;
    }
    o = (char *)func_0020D348();
    if (o != 0) {
        *(unsigned char *)(o + 0x30) = 0xFF;
        *(short *)(o + 0x32) = 0xFF;
        *(char *)(o + 0x20) = 0;
        *(char *)(o + 0x31) = 1;
        func_0020ED48(o);
        func_0020E340(o, 0x202020, 0xE, 0xE, 0);
        if (*(unsigned char *)(*(int *)(o + 0x24) + 6) != 0) {
            *(char *)(o + 0x73) = 0x18;
        }
    }
    return o;
}

extern int D_0015F6F0 MACRO_ADDR;
extern void func_0020D678(void *); /* DeleteMoby */

int func_002267C0(int arg0) {
    if (arg0 == 0) {
        return 0;
    }
    func_0020D678((void *)arg0);
    *(long *)(arg0 + 0x38) = D_0015F6F0;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00226808);

/*
 * Reverted (size mismatch: 128 vs retail's 132). Semantics are certain
 * and every instruction but one is reproduced:
 *
 *   int func_002268F0(void *arg0) {
 *       int *p = (int *)((char *)arg0 + 0x44);
 *       unsigned short *q;
 *       int i;
 *       for (i = 0x17; i >= 0; i--) { *p = func_002267C0(*p); p++; }
 *       *(int *)((char *)arg0 + 0x3C) =
 *           func_00226F68(*(int *)((char *)arg0 + 0x3C));
 *       q = (unsigned short *)D_001517D0;
 *       if ((unsigned int)(q[0x2D] - 6) >= 2) { q[0x2D] = 5; }
 *       return 0;
 *   }
 *
 * The single residual is a standalone `nop` retail emits between the
 * loop body's `sw` and its `bgez` -- the short-loop pad. Everything
 * after it is instruction-for-instruction identical, just shifted one
 * word. Not source-steerable, so this stays a stub.
 *
 * Worth keeping from the attempt: taking the D_001517D0 base into a
 * local declared AFTER the calls is what stopped the compiler hoisting
 * its %hi/%lo into a callee-saved register in the prologue; retail
 * materialises it in $v1 at the point of use. Spelling the global
 * inline in the expression hoists it. (Same lever fixed the base in
 * func_00227D20 below.)
 */
INCLUDE_ASM("asm/nonmatchings/text", func_002268F0);

INCLUDE_ASM("asm/nonmatchings/text", func_00226978);

extern void func_0020E180(int, int);

int func_00226CF8(void *arg0) {
    int *p = (int *)((char *)arg0 + 0x44);
    int i = 0x17;
    do {
        if (*p != 0) {
            func_0020E180(*p, 1);
        }
        i--;
        p++;
    } while (i >= 0);
    return 4;
}

void func_00226D48(void) {
}

INCLUDE_ASM("asm/nonmatchings/text", func_00226D50);


extern int func_00227018(int handle);

/* Find the first binding that is enabled (bit 0 clear, or set when
   `invert` is given), still has a key and is not already claimed, claim
   it, and scrub its buffer with 0xDEADBEEF. Returns the key, or 0 if
   there is nothing to claim. */
int func_00226EA8(int invert) {
    int i;
    int f;
    int n;

    for (i = 0; i < 5; i++) {
        if (invert != 0) {
            f = D_001D6448_t[i].flags ^ 1;
        } else {
            f = D_001D6448_t[i].flags;
        }
        if ((f & 1) == 0 && D_001D6448_t[i].key != 0 &&
            (D_001D6448_t[i].flags & 2) == 0) {
            D_001D6448_t[i].flags |= 2;
            n = func_00227018(D_001D6448_t[i].key);
            func_001F99B0(D_001D6448_t[i].key, 0xDEADBEEF, n);
            return D_001D6448_t[i].key;
        }
    }
    return 0;
}

/*
 * Byte mismatch at correct size (0xB0), 2 of 44 words, and they are one
 * swap: retail materialises the `return 0` value BEFORE the `and` that
 * clears the bit, we do it after. Both are independent single
 * instructions feeding a branch and its delay slot. Tried and did not
 * move it: an explicit result local assigned before the store and
 * returned afterwards (byte-identical). Scheduling placement, the
 * recorded dead end.
 *
 * Everything else is exact, including the shared 0xCB latch handled the
 * same way as in func_0021CDA0 -- `char *g = D_001D5F70;` with 0xCB in
 * the displacement, not folded into the symbol addend.
 *
 * Release the binding whose key matches. Bit 1 means "bound"; bit 2 on
   top of that means it also owns the shared 0xCB latch, which has to be
   handed back through func_00217588 first. Always returns 0 so callers
   can assign it straight over their handle. */
int func_00226F68(int key) {
    int i;
    int f;
    char *g;

    for (i = 0; i < 5; i++) {
        if (D_001D6448_t[i].key == key) {
            f = D_001D6448_t[i].flags;
            if ((f & 2) != 0) {
                if ((f & 4) != 0) {
                    g = D_001D5F70;
                    D_001D6448_t[i].flags = f ^ 4;
                    if (*(unsigned char *)(g + 0xCB) != 0) {
                        func_00217588();
                        g[0xCB] = 0;
                    }
                    f = D_001D6448_t[i].flags;
                }
                D_001D6448_t[i].flags = f & ~2;
                return 0;
            }
        }
    }
    return 0;
}

extern int D_001D6448[];

int func_00227018(int arg0) {
    int *e = D_001D6448;
    int i = 0;
    do {
        if (e[0] == arg0) {
            return (e[1] & 1) ? 0x4F000 : 0x11800;
        }
        i++;
        e += 2;
    } while (i < 5);
    return -1;
}

int func_00227068(int arg0) {
    int i = 0;
    int *base = D_001D6448;
    int *e = base + 1;
    do {
        i++;
        if (e[-1] != arg0) {
            e += 2;
            continue;
        }
        e[0] |= 4;
        return 0;
    } while (i < 5);
    return 1;
}

/* Twin of func_00227068 above, clearing bit 2 instead of setting it.
   Written in exactly that function's shape -- the separate `base` local
   is what stops %lo+4 folding into one addiu, which is what an earlier
   round's revert was missing. */
int func_002270B0(int arg0) {
    int i = 0;
    int *base = D_001D6448;
    int *e = base + 1;
    do {
        i++;
        if (e[-1] != arg0) {
            e += 2;
            continue;
        }
        e[0] &= ~4;
        return 0;
    } while (i < 5);
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00227100);

extern int D_00160450 MACRO_ADDR;
typedef struct {
    int unk00;
    int arg[13];
} Rec38;
extern Rec38 D_001D6250[];

int func_00227890(int a0, int a1, int a2, int a3, int a4, int a5, int a6,
                  int a7, int a8, int a9, int a10, int a11, int a12) {
    int n = D_00160450;
    Rec38 *r;
    if (n >= 8) {
        return -1;
    }
    D_00160450 = n + 1;
    r = &D_001D6250[n];
    r->arg[0] = a0;
    r->arg[1] = a1;
    r->arg[2] = a2;
    r->arg[3] = a3;
    r->arg[4] = a4;
    r->arg[5] = a5;
    r->arg[6] = a6;
    r->arg[7] = a7;
    r->arg[8] = a8;
    r->arg[9] = a9;
    r->arg[10] = a10;
    r->unk00 = 0;
    r->arg[11] = a11;
    r->arg[12] = a12;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00227928);

extern int D_001D641C;

int func_002279D0(void) {
    if (D_001517D0[4] != 0) {
        char *g = D_001D5F70;
        if (*(unsigned char *)(g + 0xCB) != 0) {
            func_00217588();
            g[0xCB] = 0;
        }
    }
    D_001D641C = 0;
    D_00160450 = 0;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00227A30);

extern char D_001D5D58[] NOT_SDA;
extern char *D_001B3580[] NOT_SDA;

/* Drain the pending list at D_001D5F70+0xA8/+0xAC, clearing +0x48 on each
   referenced object, then reset the count. Both the start and the count
   are re-read every iteration.

   Near-miss (29/36), size-exact, and now structurally identical to
   retail block for block. Two levers got it here:
     - taking the base into a local `char *g` instead of indexing the
       extern array directly fixed the loop's offsets;
     - declaring `p` INSIDE the loop body rather than before the `while`
       moves its initialisation into the loop preheader, where retail
       has it. Spelled before the loop, gcc hoists the %hi/%lo of
       D_001D5D58 and the `sll`/`addu` above the guard, and the loop's
       .p2align then eats the slack as a nop. Let gcc build the
       induction variable itself and the preheader comes out right.

   What is left is two things, neither source-reachable:
     - the allocator permutation: retail puts D_001B3E40 in $9 and
       D_001B3580 in $8, this build swaps them, and every $v0/$v1 in
       the loop body is correspondingly transposed. Splitting the
       nested index into `int k = D_001B3E40[a];` does not move it.
     - retail COPIES the raw %hi of D_001D5F70 into $t2 in the prologue
       and rebuilds the pointer with `addiu $2,$10,%lo` for the final
       store, keeping both the full pointer and the bare high half live
       across the loop. This build re-does the whole `lui` at the end
       instead -- same instruction count, different encoding. The
       two-names-on-one-symbol trick
       (`extern char D_001D5F70_2[] __asm__("D_001D5F70");`) was tried
       here and changes nothing: it defeats CSE of the full address,
       which we already lack, not of the high half, which is what
       retail is sharing. */
void func_00227A70(void) {
    char *g = D_001D5F70;
    int i = *(int *)(g + 0xA8);

    while (i < *(int *)(g + 0xA8) + *(int *)(g + 0xAC)) {
        char *p = D_001D5D58 + i * 8;
        int a = *(int *)p;
        int b = *(int *)(p + 4);

        i++;
        *(int *)(D_001B3580[D_001B3E40[a]] + b * 4 + 0x48) = 0;
    }
    *(int *)(D_001D5F70 + 0xAC) = 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00227B00);

extern char D_0015EF98[] MACRO_ADDR;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern char D_00141FC0[];
extern void func_00121A80(void *);
extern void func_0012D818(void *);
extern void func_00208FA0(void);
extern void func_00208338(void *);

void func_00227C78(int arg0, int arg1) {
    char *b = D_0013D390;
    func_00121A80(D_0015EF98);
    func_0012D818(D_0015EF98);
    func_00208FA0();
    func_00208338(D_00141FC0 + (D_0015EE84_m << 11));
    func_0020BA00((char *)arg0);
    *(int *)(b + 0xF4) = arg0;
    *(int *)(b + 0x14) = arg1;
    *(int *)(b + 0xC8) = 0;
    if (*(int *)(b + 0xE4) < 0) {
        *(int *)(b + 0xE8) = 0;
        *(int *)(b + 0xE4) = 0x13;
    }
}

/*
 * Reverted (size mismatch: 136 vs retail's 144). Semantics are certain:
 *
 *   void func_00227D20(int arg0, int arg1) {
 *       char *b;
 *       func_00209DC0(arg0);
 *       func_00121A80(D_0015EF98);
 *       func_0012D818(D_0015EF98);      // see note below
 *       func_0020BA00(arg0);
 *       b = D_0013D390;
 *       *(int *)(b + 0xC8) = 0;
 *       *(int *)(b + 0x14) = arg1;
 *       *(int *)(b + arg1 * 0x1C + 0x20) = 0;
 *       *(int *)(b + 0xF4) = arg0;
 *       if (*(int *)(b + 0xE4) < 0) {
 *           *(int *)(b + 0xE8) = 0;
 *           *(int *)(b + 0xE4) = 0x13;
 *       }
 *   }
 *
 * Blocked by the delay-slot policy, not by source shape: retail leaves
 * both of the middle `jal`s' delay slots as bare `nop`s (8 bytes) where
 * this compiler schedules the next %hi/%lo setup into them. That is a
 * per-site choice in retail, not a rule -- see the "unfilling call delay
 * slots" entry in docs/DECOMP_PROGRESS.md.
 *
 * Two levers were confirmed on the way, and both are reusable:
 *  - Declaring the base pointer AFTER the last call keeps it out of a
 *    callee-saved register; retail materialises D_0013D390 in $v1 at the
 *    point of use. Spelling the global inline instead anchors the base
 *    on the first offset referenced (D_0013D390+0xC8, giving offsets
 *    -180/-168 rather than retail's 200/20/244/228).
 *  - Retail re-materialises %hi/%lo of D_0015EF98 for the second call
 *    rather than reusing the first call's register. Both forms cost four
 *    instructions, so CSE is a tie; binding two distinct C names to the
 *    one asm symbol
 *        extern char D_0015EF98[];
 *        extern char D_0015EF98_2[] __asm__("D_0015EF98");
 *    settles it retail's way. NEW LEVER -- first use in this tree.
 *
 * With both applied the only differences left were the two nops and an
 * arg0/arg1 swap between $s0 and $s1.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00227D20);

INCLUDE_ASM("asm/nonmatchings/text", func_00227DB0);

extern int D_0015F6D0 MACRO_ADDR;
extern int D_0015EF24 MACRO_ADDR;
extern int D_0015EE80 MACRO_ADDR;

void func_00228110(void) {
    int t;
    if (D_0015F6D0 != 0) {
        return;
    }
    t = D_0015EF24;
    D_0015EF24 = t + 1;
    if ((t + 1) % 50 == 0 && D_0015EE80 != 0) {
        D_0015EF24 = t + 0xB;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_00228160);

extern int D_001D6860[];
extern int D_001D74C0[];
extern int D_001D6760[];

void func_00228268(void) {
    func_001F99B0(D_001D6860, 0, 0xC60);
    func_001F99B0(D_001D74C0, 0, 0xC60);
    func_001F99B0(D_001D6760, 0, 0x100);
}

INCLUDE_ASM("asm/nonmatchings/text", func_002282B8);

INCLUDE_ASM("asm/nonmatchings/text", func_002282D0);

/*
 * Dispatch on a leading short: 0 and 1 each call a handler and advance
 * the pointer differently, anything else returns it unchanged.
 *
 * An earlier round reverted this at 4 bytes short and read the residual
 * as a delay-slot problem -- retail spends the first jal's delay slot on
 * `addiu $16,$16,0x20`, we emitted a nop. The real cause was one level
 * up: with a `return` inside each arm, gcc folds the advance into the
 * return value (`addu $2,$16,32`, one instruction), and there is then
 * nothing left for the delay slot. Retail updates the pointer and copies
 * it to $v0 separately, three times, which is what a SINGLE `return p`
 * at the join gives: the copy belongs to the join block and the
 * delay-slot filler duplicates it into both branches.
 *
 * So this is the exit-cross-jumping lever used the other way round.
 * The usual reach is to SPLIT exits that gcc merged; here retail really
 * does share one, and the fix was to stop returning early. When a
 * 4-byte shortfall looks like a missing delay-slot fill, check first
 * whether an expression got folded that retail kept in two steps.
 */
void *func_00228400(char *p) {
    short v = *(short *)p;
    if (v == 0) {
        func_00229098(p);
        p += 0x20;
    } else if (v == 1) {
        func_002291E8(p);
        p += 0x30;
    }
    return p;
}

extern int *D_00161000 MACRO_ADDR;
extern char D_001D8120[];
extern short D_00160460;              /* SDA, gp -0x68A0 */
extern void func_002298B0(int, int);

void func_00228458(int arg0, int idx, int n) {
    D_00161000[0] = 0x30000003;
    D_00161000[1] = (int)(D_001D8120 + n * 0x30);
    D_00161000[2] = 0x13000000;
    D_00161000[3] = 0x50000003;
    D_00161000 += 4;
    func_002298B0(arg0, ((int *)&D_00160460)[idx]);
}

INCLUDE_ASM("asm/nonmatchings/text", func_002284E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00228690);

INCLUDE_ASM("asm/nonmatchings/text", func_00228860);
