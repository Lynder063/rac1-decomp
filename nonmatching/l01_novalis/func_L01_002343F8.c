/* NON_MATCHING func_L01_002343F8 -- src/overlays/l01_novalis/help_002343F8.c
 * Best so far: SIZE ours 1264 / retail 1268, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   HeroMovePipeline (level 01): per-tick hero move pipeline. Best candidate p2.c, SIZE 1264 vs 1268, not EXACT af
 *   Differences left: the prologue saves $s6 (retail stops at $s5; the allocator gives the long-lived A pointer $2
 *   Unblock: the 6-pointer register pressure needs a different live-range shape (retail reuses $16 for G then P); 
 */
typedef int HeroQ __attribute__((mode(TI)));
typedef union {
    HeroQ q;
    float f[4];
} HeroVec;

typedef struct {
    unsigned char p0[0x80];
    HeroVec v80;
    HeroVec v90;
    unsigned char pA0[0x40];
    HeroVec vE0;
    HeroVec vF0;
    HeroVec v100;
    HeroVec v110;
    HeroVec v120;
    HeroVec v130;
    HeroVec v140;
    unsigned char p150[0x10];
    float f160;
    float f164;
    float f168;
    float f16C;
    unsigned char p170[0x5C];
    int i1CC;
    unsigned char p1D0[0x64];
    float f234;
    unsigned char p238[0x4];
    int i23C;
    unsigned char p240[0x17];
    char c257;
    unsigned char p258[0x84];
    float f2DC;
    unsigned char p2E0[0x218];
    int i4F8;
    unsigned char p4FC[0x424];
    HeroVec v920;
    unsigned char p930[0x1754];
    int i2084;
} HeroHero;

extern char D_0013E633[];
extern float D_0015EE6C MACRO_ADDR;
extern void func_L00_00234800(int, void *, void *);
extern float func_L00_00234250(float *v);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_L00_002342F8(float *);
extern void func_L00_002343A0(float *, float *, float);
extern float func_001F9CB8(void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BC0(void *);
extern void func_L00_00213E60(void);
extern void func_L01_002333D8(void);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_002136A8(void);
extern float func_001F9C78(void *, void *);
extern void func_L00_00234150(float *, float *);
extern void func_L00_00234420(float *, float *, float);
extern float func_001F9CE8(void *);
extern float func_L00_00213A08(void *);
extern void func_001F9C30(void *, void *, float);

// HeroMovePipeline: per-tick move and collision pipeline for the hero (level 01).
// Written from the assembly.
void func_L01_002343F8(void) {
    HeroVec sp0;
    HeroVec sp1;
    HeroVec sp2;
    HeroHero *h;
    HeroVec *x;
    HeroVec *q;
    HeroVec *e;
    HeroVec *k;
    float r;
    float t;

    x = (HeroVec *)(D_0013E633 + 0xE9D);
    qcopy(&sp0, x);
    h = (HeroHero *)((char *)x - 0x80);
    func_L00_00234800(h->i4F8, (char *)x + 0x70, (char *)x + 0x10);
    if (h->i2084 == 0x22 || h->i2084 == 0x14) {
        if (h->i1CC == 0) {
            x = (HeroVec *)((char *)x + 0x60);
            r = func_L00_00234250(x->f);
            if (h->f234 - 0.02f < r) {
                func_L00_001FF4B0(x, x, h->f234 - 0.02f);
            }
        }
        x = (HeroVec *)(D_0013E633 + 0xEFD);
        r = func_L00_002342F8(x->f);
        t = -h->f2DC;
        if (r < t) {
            func_L00_002343A0(x->f, x->f, (0.0f < t) ? 0.0f : t);
        }
    } else {
        if (h->i1CC == 0) {
            x = (HeroVec *)((char *)x + 0x60);
            r = func_001F9CB8(x);
            if (h->f234 - 0.02f < r) {
                func_L00_001FF4B0(x, x, h->f234 - 0.02f);
            }
        }
    }
    x = (HeroVec *)(D_0013E633 + 0xE9D);
    func_001F9BD8(x, x, (char *)x + 0x60);
    q = (HeroVec *)((char *)x + 0x8A0);
    func_001F9BD8(x, x, q);
    func_001F9BC0(q);
    h->i23C = 0;
    h->c257 = 0;
    r = func_001F9CB8((char *)x + 0x70);
    if (r <= 0.0001f) {
        func_L00_00213E60();
        func_L01_002333D8();
        func_001F9BF0((char *)x + 0x80, x, &sp0);
        func_L00_002136A8();
    } else {
        func_L01_002333D8();
    }
    x = (HeroVec *)(D_0013E633 + 0xF2D);
    func_001F9BF0(x, (HeroVec *)((char *)x - 0x90), &sp0);
    q = (HeroVec *)((char *)x + 0x20);
    qcopy(q, x);
    k = (HeroVec *)((char *)x + 0x10);
    qcopy(k, x);
    func_L00_001FF4B0(x, x, 1.0f);
    e = (HeroVec *)((char *)x - 0x30);
    r = func_001F9C78(x, e);
    if (r < 0.0f) {
        r = 0.0f;
    }
    func_L00_001FF4B0(x, e, r);
    qcopy(&sp1, e);
    func_L00_00234150(sp1.f, sp1.f);
    func_L00_00234150(q->f, q->f);
    func_L00_001FF4B0(q, q, 1.0f);
    r = func_001F9C78(q, &sp1);
    if (r < 0.0f) {
        r = 0.0f;
    }
    func_L00_001FF4B0(q, &sp1, r);
    qcopy(&sp2, e);
    func_L00_00234420(sp2.f, sp2.f, 0.0f);
    func_L00_00234420(k->f, k->f, 0.0f);
    func_L00_001FF4B0(k, k, 1.0f);
    r = func_001F9C78(k, &sp2);
    if (r < 0.0f) {
        r = 0.0f;
    }
    func_L00_001FF4B0(k, &sp2, r);
    h = (HeroHero *)((char *)x - 0x110);
    h->f160 = func_001F9CB8(x);
    h->f164 = func_001F9CE8(x);
    qcopy(&sp1, x);
    r = func_L00_00213A08(&sp1);
    h->f168 = r;
    if (r < 0.0f) {
        h->f168 = 0.0f;
    }
    qcopy(&sp1, (HeroVec *)((char *)x - 0x90));
    k = (HeroVec *)((char *)x - 0x20);
    e = (HeroVec *)((char *)x - 0x10);
    r = func_001F9CB8(k);
    if (0.0001f < r) {
        func_001F9BD8((HeroVec *)((char *)x - 0x90), (HeroVec *)((char *)x - 0x90), k);
        t = h->vF0.f[3];
        func_001F9BC0(k);
        h->vF0.f[3] = t;
        func_L00_00213E60();
        func_L01_002333D8();
        func_001F9BF0(e, (HeroVec *)((char *)x - 0x90), &sp0);
        func_L00_002136A8();
    }
    func_001F9BF0((char *)x + 0x30, (HeroVec *)((char *)x - 0x90), &sp1);
    t = h->vF0.f[3];
    h->vF0.f[3] = 0.0f;
    h->v140.f[3] = t;
    func_001F9BF0(e, (HeroVec *)((char *)x - 0x90), &sp0);
    h->f16C = 0.0f;
    if (0.004f < h->f164) {
        r = h->v100.f[2] / h->f164;
        h->f16C = r;
        if (0.5f < r) {
            h->f16C = 0.5f;
        } else if (r < -0.5f) {
            h->f16C = -0.5f;
        }
    }
    if (D_0015EE6C * 52.0f < h->f160) {
        func_001F9C30(e, e, (D_0015EE6C * 52.0f) / h->f160);
        h->f160 = D_0015EE6C * 52.0f;
    }
}
