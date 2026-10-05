/* NON_MATCHING func_L00_00299E70 -- src/overlays/shared/tieproc_00299108.c
 * Best so far: BYTES 2/740 (99.7% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L00_00299E70: level teardown/reset: clamps a state halfword, sets flags, deletes the mobys of a table (de
 *   Best is p4.c (BYTES 44/740, sizes equal). Left: the delete loop's register shape (retail: ld in $s1, copy in $
 *   Tried: local copy, global re-referenced in the loop (gives the copy but cond folds into biv), explicit pointer
 *   Round q27/s10: claimed after s10 had reached N=8; not attempted (no runs used).
 *   q29/u07: p9-p14 ported from Lombyte's FUN_L00_00298b18 (struct for D_L00_0016C960 as alias CT, Obj struct for 
 */
extern void func_002348B8(void);
extern void func_001F4E08(int);
extern void func_L00_00299108(void);
extern void func_001F3140(void);
extern void func_0020D678(void *);
extern void func_L00_00222B80(int, int);
extern float func_00214358(void *, int, float);
extern float func_001F9B88(float);
extern void func_L00_00233950(void);
extern void func_L00_00217718(void *, void *, int, int);
extern void func_00217AE8(void *, void *, int);
extern int func_001F9850(int);
extern void func_L00_002666C8(int v);

typedef struct { char pad[0x5A]; unsigned short x5a; } O5A;
typedef struct { unsigned char cnt; } MC;
typedef struct { char pad[0xC]; unsigned char n; char pad2[0x3B]; int x48[1]; } MCls;
typedef struct { char pad[0x24]; MCls *cls; } Mob;
typedef struct { char pad[0x10]; float v[4]; char pad2[0x24]; short n; char pad3[4]; unsigned char x4a; unsigned char x4b; char pad4[0x12A]; Mob *m[1]; } CT;
typedef struct { char p0[0x20]; unsigned char st; char p1[0x13]; unsigned short flags; char p2[0x70]; short type; char p3[0x58]; } Obj;
typedef struct { char pad[0x34]; unsigned short flags; } Fl;
typedef struct { char pad[8]; Fl *a; void *b; } AB;
typedef struct { char pad[0xEC]; Fl *p; } PP;
typedef struct { char pad[0x20A5]; char x20a5; } Hd;

extern unsigned char D_0014171B[] NOT_SDA;
extern char D_0013E633[];
extern CT D_L00_0016C960_c __asm__("D_L00_0016C960");
extern int D_L00_0015F6BC MACRO_ADDR;
extern float D_L00_0016CBF0;
extern int D_L00_00167114 NOT_SDA;
extern int D_L00_0015F6A8 MACRO_ADDR;
extern int D_L00_0015F4FC MACRO_ADDR;
extern Obj *D_L00_0016009C MACRO_ADDR;
extern char D_L00_0016C970[];
extern AB D_L00_00179200;
extern PP D_L00_001BA070 NOT_SDA;

// Level teardown: clears the moby table, flags, camera floats and cached objects.
void func_L00_00299E70(void) {
    Obj *o;
    O5A *h = (O5A *)((char *)D_0014171B + 0x100B5 - 0);
    char *p, *b;
    float g, f;
    int i;
    if ((unsigned short)(h->x5a - 6) >= 2) h->x5a = 5;
    D_L00_0015F6BC = 1;
    func_002348B8();
    func_001F4E08(12);
    func_L00_00299108();
    D_L00_00167114 = D_L00_0016C960_c.x4b;
    D_L00_0016CBF0 = 0.63f;
    D_L00_0015F6A8 = 0;
    D_L00_0015F4FC = 0;
    func_001F3140();
    for (i = 0; i < D_L00_0016C960_c.n; i++) {
        Mob *m = D_L00_0016C960_c.m[i];
        if (m) {
            m->cls->n--;
            m->cls->x48[m->cls->n] = 0;
            func_0020D678(m);
        }
    }
    for (o = D_L00_0016009C; o->st != 0xFF; o++) {
        if (!(o->st & 0x80) && (o->type == 0x4A || o->type == 0xCB)) o->flags &= 0xFF7F;
    }
    p = D_0013E633 + 0xE9D;
    func_L00_00222B80(0, 1);
    g = func_00214358(p, 0, 0.5f);
    if (2.0f < g) {
        p -= 0x80;
        if (func_001F9B88(*(float *)(p + 0x88) - g) < 4.5f) *(float *)(p + 0x88) = g;
    }
    b = D_0013E633 + 0xE1D;
    b[0x20A5] = 0;
    func_L00_00233950();
    if (D_L00_0016C960_c.x4a) {
        f = func_00214358(D_L00_0016C960_c.v, 0, 0.5f);
        if (2.0f < f && func_001F9B88(D_L00_0016C960_c.v[2] - f) < 2.0f) D_L00_0016C960_c.v[2] = f;
        func_L00_00217718(D_L00_0016C970, D_L00_0016C970 + 0x10, 0, 1);
    }
    if (D_L00_00179200.a) D_L00_00179200.a->flags &= ~1;
    if (D_L00_001BA070.p) {
        D_L00_001BA070.p->flags &= ~1;
        D_L00_001BA070.p = 0;
    }
    if (D_L00_00179200.a) {
        Fl *a = D_L00_00179200.a;
        void *b = D_L00_00179200.b;
        D_L00_00179200.a = 0;
        D_L00_00179200.b = 0;
        func_00217AE8(a, b, 1);
    }
    func_L00_002666C8(func_001F9850(30));
}
