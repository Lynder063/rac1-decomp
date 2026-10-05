/* NON_MATCHING func_L00_002AEDD0 -- src/overlays/shared/vendor_002AB910.c
 * Best so far: SIZE ours 6488 / retail 6500, checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   | D_L00_00166EC0, D_L00_00178000 | address | arrays |
 *   ## Runs
 *   - p0: SIZE 6488/6500. First complete candidate (parts joined).
 *   - p1: SIZE 6472/6500. Moby struct fields, colour OR order, one explode-block vector v, wrapper block for block
 *   - p2: SIZE 6460/6500. F2BE8 float-first, cam.f160 ternary, alpha casts in family II. pos still in $fp (retail 
 *   - p3: SIZE 6572/6500. Base colours moved to explode-block top + shifted family II: NOT folded (wr/wg/wb live, 
 *   - p4: SIZE 6460/6500. p3 colour change reverted (p2 form); zero colour built in two statements (c0 = b|g; c0 |
 *   - p5: SIZE 6468/6500. One int i for loops A, E and the particle loop (explode-block scope), own counter for sp
 */
typedef struct {
    u128 q[5];
} Rec_2aedd0;
typedef struct {
    int c[6];
} C6_2aedd0;
typedef struct {
    V2AE110 v;
    char pad10[0x40];
    unsigned char *owner;
    short h54;
    short h56;
    char pad58[0x10];
    short h68;
    short h6a;
} D_2aedd0;
typedef struct {
    V2AE110 dir;
    unsigned char *moby;
    int flags;
    unsigned char kind;
    unsigned char on;
    short cls;
    float fDC;
    int iE0;
} Q_2aedd0;
typedef struct {
    char p0[0x80];
    float f80[4];
    char p90[0x26C];
    unsigned char *f2FC;
    char p300[0xD90];
    unsigned char *f1090;
    char p1094[0xFEC];
    unsigned char *f2080;
    char p2084[0x20];
    unsigned char f20A4;
    unsigned char f20A5;
    char p20A6[9];
    unsigned char f20AF;
} Hero_2aedd0;
typedef struct {
    char p0[0x160];
    float f160;
    char p164[4];
    int f168;
} Cam_2aedd0;
extern Hero_2aedd0 hero_2aedd0 __asm__("D_0013F450");
extern unsigned char opt_2aedd0[] __asm__("D_0013E620");
extern Cam_2aedd0 D_L00_00166D80;
extern Rec_2aedd0 D_L00_001E9C50;
extern C6_2aedd0 D_L00_001E9CA0;
extern C6_2aedd0 D_L00_001E9CB8;
extern unsigned char *D_L00_001B2400[];
extern int *D_L00_00178000[];
extern s32 D_L00_00166EC0[];
extern s32 D_L00_00173F40[0x1C];
extern float D_L00_00173F68;
extern int D_L00_00160830 MACRO_ADDR;
extern int D_L00_0016007C MACRO_ADDR;
extern unsigned char *D_L00_00161390 MACRO_ADDR;
extern int D_L00_00161398 MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern short D_L00_001614C0;
extern short D_L00_001614C4;
extern short D_L00_001614C8;
extern short D_L00_001614CC;
extern short D_L00_001614D0;
extern short D_L00_001614D4;
extern short D_L00_001614D8;
extern short D_L00_001614DC;
extern short D_L00_001614E0;
extern short D_L00_001614E4;
extern short D_L00_001614E8;
extern short D_L00_001614EC;
extern short D_L00_001614F0;
extern short D_L00_001614F4;
extern short D_L00_001614F8;
extern short D_L00_001614FC;
extern short D_L00_00161500;
extern float func_001F9CB8(void *);
extern unsigned char *func_L00_0025D390(unsigned char *);
extern int func_L00_002AE6B0(void *, void *, int);
extern int func_001FA898(float);
extern void func_001F9C30(void *, void *, float);
extern void func_L00_00258DB0(float *, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001FA8A8(int, int, float);
extern char *func_00219780(void *, void *, void *, int, int, int, int, int, int);
extern int func_002140B0(int);
extern float func_00214440(void *, void *);
extern int func_L00_0026FF20(void *, void *, float, float);
extern void func_L00_001FF500(void *, void *, float);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern int func_L00_001F3958(void);
extern void func_L00_002A5158(void *, int, int, float, float, float, float);
extern char *func_L00_002D9340(void *, float);
extern float func_00214158(void);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern int func_L00_00258BC8(int, int);
extern void func_L00_002703E8(void *, void *, int, int);
extern void func_L00_001FF610(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BF0(void *, void *, void *);
extern int func_L00_001F2BE8(void *, int, void *, void *, float);
extern void func_L00_0025BA50(void *, void *, void *, int, int, int, int, int, float, float, float);
extern float func_001F9C78(void *, void *);
extern char *func_L00_002B0738(char *, char *, int, int, int);
extern void func_L00_001FF548(void *, void *, float);
extern unsigned func_L00_0025D140(unsigned c, int mask);
extern void func_L00_0026B890(void *, void *, int, int, float, int, int, int, int, float);
extern void func_L00_002E0CB8(void *, void *, void *, float, int, unsigned char, unsigned char, unsigned char, int);
extern void func_L00_0025D0E0(int *, int *, int *, int);
extern int func_L00_0028EF68(int i, int a1, int v, int k);
extern int func_0022ED80(int, int, int);
extern float func_00214358(void *, int, float);
extern float func_L00_0025A748(void *);
extern void func_L00_00274788(void *, void *, float, float, float, int, int, int, int);
extern int func_L00_00237B70(float, int, int);
extern void *func_L00_0026CA10(void *, void *, int, int, int, int, int, int, float);
extern f32 func_001F9D10(void *, void *);
extern char *func_L00_002D4CE8(char *, char *, int, char *);
extern float func_L00_0025F368(float);
extern float func_L00_0025C700(float, float, float);

/* Update of moby class 121, a thrown bomb: it flies and spins, bounces once on the ground, explodes on a hit or when its timer runs out, then its blast ring grows for 15 frames. */
void func_L00_002AEDD0(unsigned char *m) {
    Rec_2aedd0 rec = D_L00_001E9C50;
    V2AE110 delta;
    V2AE110 old;
    V2AE110 a;
    V2AE110 b;
    V2AE110 proj;
    D_2aedd0 *d;

    b.q = 0;
    b.f[2] = D_0015EE6C * 2.0f;
    a.q = b.q;
    b.q = 0;
    b.f[2] = 1.0f;
    d = *(D_2aedd0 **)(m + 0x78);
    if ((hero_2aedd0.f1090 == 0 || *(short *)(hero_2aedd0.f1090 + 0xA6) != 0xC0) && m[0x20] == 0) {
        func_0020D678(m);
        return;
    }
    if (hero_2aedd0.f20A4 != 0 && m[0x20] == 0) {
        func_0020D678(m);
        return;
    }
    if ((hero_2aedd0.f20A5 != 0 || hero_2aedd0.f20AF != 0) && m[0x20] == 0) {
        *(unsigned short *)(m + 0x34) |= 0x41;
    } else {
        *(unsigned short *)(m + 0x34) &= ~0x41;
    }
    if (*(short *)(d->owner + 0xA6) == 0xC0 && d->h56 == 0 && func_001F9CB8(d) > 0.0f) {
        if (hero_2aedd0.f2FC == 0 || func_L00_0025D390(hero_2aedd0.f2FC) == 0) {
            func_L00_002AE6B0(d, m, 1);
        } else if (func_L00_002AE6B0(d, m, 0) == 0) {
            func_L00_002AE6B0(d, m, 2);
        }
    }
    if (m[0x20] == 1) {
        V2AE110 c;
        float t;
        int cr;
        int cg;
        int cb;

        c.q = 0;
        c.f[0] = 128.0f;
        c.f[1] = 128.0f;
        c.f[2] = 128.0f;
        c.f[3] = 255.0f;
        func_001F9938(&d->h6a);
        t = func_001FA888(d->h6a) / func_001FA888(func_001F9850(0x1E));
        cr = func_001FA898((c.f[0] - 255.0f) * t + 255.0f);
        cg = func_001FA898((c.f[1] - 64.0f) * t + 64.0f);
        cb = func_001FA898((c.f[2] - 64.0f) * t + 64.0f);
        *(int *)(m + 0x90) = (cb << 16) | ((cg << 8) | 0xFF000000) | cr;
        if (d->h68 == 0) {
            if ((D_L00_0015F6B0 & 7) == 0) {
                int i;

                for (i = 0; i < *(int *)&D_L00_001614FC; i++) {
                    V2AE110 v1;
                    V2AE110 v2;
                    V2AE110 v3;
                    int p0;
                    int p1;
                    int n0;
                    int n1;
                    int n2;

                    func_001F9C30(&v1, d, *(float *)&D_L00_001614C4);
                    func_L00_00258DB0(v3.f, 0.0f, *(float *)&D_L00_001614C8 * D_0015EE6C);
                    func_001F9BD8(&v1, &v3, &v1);
                    func_001F9BC0(v2.f);
                    v1.f[3] = func_002140F8(*(float *)&D_L00_001614DC, *(float *)&D_L00_001614E0);
                    v2.f[3] = func_002140F8(*(float *)&D_L00_001614E4, *(float *)&D_L00_001614E8);
                    p0 = func_001FA8A8(*(int *)&D_L00_001614EC, *(int *)&D_L00_001614F0, func_002140F8(0.0f, 1.0f));
                    p1 = func_001FA8A8(*(int *)&D_L00_001614F4, *(int *)&D_L00_001614F8, func_002140F8(0.0f, 1.0f));
                    n0 = func_001FA898(func_001F9878((float)*(int *)&D_L00_001614CC * func_002140F8(0.0f, 1.0f) + 1.0f));
                    n1 = func_001FA898(func_001F9878((float)*(int *)&D_L00_001614D0 * (func_002140F8(-*(float *)&D_L00_001614D8, *(float *)&D_L00_001614D8) + 1.0f)));
                    n2 = func_001FA898(func_001F9878((float)*(int *)&D_L00_001614D4 * (func_002140F8(-*(float *)&D_L00_001614D8, *(float *)&D_L00_001614D8) + 1.0f)));
                    v2.f[2] -= *(float *)&D_L00_001614C0 * D_0015EE70 * (float)n1;
                    func_00219780(m + 0x10, &v1, &v2, p0, p1, n0, n1, n2, *(int *)&D_L00_00161500);
                }
            }
        }
        {
            Q_2aedd0 q;

            *(float *)(m + 0x40) = func_001FA748(*(float *)(m + 0x40), D_0015EE6C * 2.0943952f);
            *(float *)(m + 0x44) = func_001FA748(*(float *)(m + 0x44), D_0015EE6C * 7.853982f);
            qcopy(&old, m + 0x10);
            func_001F9BD8(m + 0x10, m + 0x10, d);
            if (d->h68 == 0) {
                d->v.f[2] -= D_0015EE70 * 11.0f;
            } else {
                d->v.f[2] -= D_0015EE70 * 11.0f / 10.0f;
                if (func_002140B0(func_001F9850(6) - 1) == 0) {
                    float h = func_00214440(m + 0x10, &q);

                    func_001F9C30(&q, d, 0.25f);
                    func_L00_0026FF20(m + 0x10, &q, func_002140F8(0.05f, 0.1f) * 210000.0f, h);
                }
            }
            q.moby = m;
            q.flags = 0x830000;
            if (d->h54 < func_001F9850(0x12C) - func_001F9850(0xA)) {
                q.flags |= 1;
            }
            q.iE0 = 1;
            q.fDC = 2.0f;
            qcopy(&q, d);
            func_L00_001FF500(&q, &q, 1.0f);
            q.dir.f[2] = 1.0f;
            q.dir.f[3] = 5627.9248f;
            q.kind = 2;
            q.cls = *(short *)(m + 0xA6);
            q.on = 1;
            if (d->h68 != 0) {
                d->h68++;
            }
            if (func_L00_001EFFF0(&old, m + 0x10, 0x10, (int)m, (int)&q)) {
                if (d->h68 == 0 && func_L00_001F3958() == 0 && d->v.f[2] < 0.0f) {
                    V2AE110 p;
                    V2AE110 vel;
                    char *s;
                    int i;

                    func_L00_002A5158(D_L00_00161390, D_L00_00161398, 1, *(float *)(m + 0x10), *(float *)(m + 0x14), 0.5f, -0.35f);
                    d->h68 = 1;
                    func_001F9BC0(d->v.f);
                    d->v.f[2] = D_0015EE6C * -1.5f;
                    p.f[0] = *(float *)(m + 0x10);
                    p.f[1] = *(float *)(m + 0x14);
                    p.f[2] = D_L00_00173F68;
                    s = func_L00_002D9340(&p, 2.0f);
                    if (s != 0) {
                        s[0x23] = 0x70;
                    }
                    for (i = 0; i < 16; i++) {
                        float ang = func_00214158();
                        float r = func_002140F8(D_0015EE6C * 0.0f, D_0015EE6C * 3.0f);
                        int n;

                        vel.f[0] = func_001F9F90(ang) * r;
                        vel.f[1] = func_001F9FA8(ang) * r;
                        vel.f[2] = func_002140F8(D_0015EE6C * 3.0f, D_0015EE6C * 6.5f);
                        n = func_L00_00258BC8(0x5A, 0x78);
                        func_L00_002703E8(&p, &vel, func_002140B0(2), n);
                    }
                } else if (d->h68 != 0 || func_L00_001F3958() != 0) {
                    if (D_L00_00173F40[6] != 0) {
                        if ((D_L00_00173F40[6] != (int)hero_2aedd0.f2080 && D_L00_00173F40[6] != (int)d->owner) || d->h54 < func_001F9850(0x12C) - func_001F9850(0xA)) {
                            if (*(int *)(D_L00_00173F40[6] + 0x74) != D_L00_00160830 || *(short *)(D_L00_00173F40[6] + 0xA6) == 0x336) {
                                int *h = D_L00_00173F40;

                                m[0xBC] = 1;
                                qcopy(m + 0x10, h + 8);
                                func_L00_001FF610(&a, d, h + 16);
                                func_L00_001FF4B0(&a, &a, D_0015EE6C * 2.0f);
                                func_L00_001FF4B0(&b, h + 16, 1.0f);
                            }
                        }
                    } else if (D_L00_00173F40[7] > 0) {
                        int *h = D_L00_00173F40;

                        m[0xBC] = 1;
                        qcopy(m + 0x10, h + 8);
                        func_L00_001FF610(&a, d, h + 16);
                        func_L00_001FF4B0(&a, &a, D_0015EE6C * 2.0f);
                        func_L00_001FF4B0(&b, h + 16, 1.0f);
                    }
                }
            } else if (func_001F9938(&d->h54)) {
                m[0xBC] = 1;
                func_001F9BD8(&a, &a, d);
            }
            if (m[0xBC] != 0) {
                float s = func_001FA888(opt_2aedd0[0xA]) + 1.0f;
                float dist;

                func_001F9C30(&a, &a, s);
                func_001F9BF0(&delta, D_L00_00166EC0, m + 0x10);
                dist = func_001F9CB8(&delta);
                if (d->h68 < func_001F9850(0x14)) {
                    V2AE110 p;
                    int n;

                    n = func_L00_001F2BE8(m + 0x10, 0x10, m, 0, s * 0.5f);
                    p.q = *(u128 *)(m + 0x10);
                    func_L00_0025BA50(m, &p, D_L00_00178000, n, 0, 0x830000, 2, 1, 2.0f, 1.0f, 1.0f);
                    m[0x20] = 2;
                }
                if (D_L00_0016007C > 0x32) {
                    int i;

                    for (i = 0; i < 10; i++) {
                        V2AE110 v;
                        V2AE110 t;

                        t.q = 0;
                        t.f[0] = func_002140F8(-1.0f, 1.0f);
                        t.f[1] = func_002140F8(-1.0f, 1.0f);
                        v.q = t.q;
                        func_L00_001FF4B0(&proj, &b, func_001F9C78(&v, &b));
                        func_001F9BF0(&v, &v, &proj);
                        func_L00_001FF4B0(&proj, &b, func_002140F8(0.0f, 1.0f));
                        func_001F9BD8(&v, &v, &proj);
                        func_L00_001FF4B0(&v, &v, s * func_002140F8(3.5f, 6.5f) * D_0015EE6C);
                        func_001F9BD8(&v, &v, &a);
                        func_L00_002B0738((char *)(m + 0x10), (char *)&v, func_L00_00258BC8(func_001F9850(0x3C), func_001F9850(0x78)), 0, opt_2aedd0[0xA]);
                    }
                }
                if (d->h68 < func_001F9850(0x14)) {
                    V2AE110 v;
                    V2AE110 t;
                    float d2 = dist * 2.0f;
                    float g;
                    int r2;
                    int g2;
                    int b2;
                    int cnt;
                    int i;

                    if (D_L00_0016007C > 0x14) {
                        for (i = 0; i < 4; i++) {
                            t.q = 0;
                            t.f[0] = func_002140F8(-1.0f, 1.0f);
                            t.f[1] = func_002140F8(-1.0f, 1.0f);
                            v.q = t.q;
                            func_L00_001FF4B0(&proj, &b, func_001F9C78(&v, &b));
                            func_001F9BF0(&v, &v, &proj);
                            func_L00_001FF4B0(&proj, &b, func_002140F8(0.0f, 1.0f));
                            func_001F9BD8(&v, &v, &proj);
                            func_L00_001FF4B0(&v, &v, s * func_002140F8(6.5f, 10.0f) * D_0015EE6C);
                            func_001F9BD8(&v, &v, &a);
                            func_L00_002B0738((char *)(m + 0x10), (char *)&v, func_L00_00258BC8(func_001F9850(0x3C), func_001F9850(0x5A)), 1, opt_2aedd0[0xA]);
                        }
                    }
                    t.q = 0;
                    t.f[0] = func_002140F8(-1.0f, 1.0f);
                    t.f[1] = func_002140F8(-1.0f, 1.0f);
                    t.f[2] = func_002140F8(-1.0f, 1.0f);
                    v.q = t.q;
                    delta.f[2] += dist * 0.5f;
                    func_L00_001FF4B0(&v, &v, dist / 5.0f * D_0015EE6C);
                    func_L00_001FF4B0(&delta, &delta, d2 * D_0015EE6C);
                    func_001F9BD8(&v, &v, &delta);
                    func_L00_001FF548(&v, &v, D_0015EE6C * 10.0f);
                    func_L00_002B0738((char *)(m + 0x10), (char *)&v, func_L00_00258BC8(func_001F9850(0x3C), func_001F9850(0x5A)), 1, opt_2aedd0[0xA]);
                    cnt = 4;
                    if (dist < 6.0f) {
                        cnt = func_001FA898(dist) + 1;
                    }
                    g = 0.0f;
                    if (dist < 7.0f) {
                        g = 7.0f - dist;
                    }
                    for (i = 0; i < cnt; i++) {
                        float spd = s * func_002140F8(8.0f, 10.0f) * D_0015EE6C - g * D_0015EE6C;
                        C6_2aedd0 c1 = D_L00_001E9CA0;
                        C6_2aedd0 c2 = D_L00_001E9CB8;

                        func_L00_0026B890(m + 0x10, &a,
                                          func_L00_0025D140(c1.c[func_002140B0(6)], opt_2aedd0[0xA]),
                                          func_L00_0025D140(c2.c[func_002140B0(6)], opt_2aedd0[0xA]),
                                          s * 400000.0f,
                                          func_L00_00258BC8(func_001F9850(0xF), func_001F9850(0x14)),
                                          func_L00_00258BC8(func_001F9850(0x19), func_001F9850(0x1E)),
                                          0, 0, spd);
                    }
                    if (dist > 9.0f) {
                        int r;
                        int gg;
                        int bb;

                        func_L00_002E0CB8(m, m + 0x10, &a, s * 4.0f, func_001F9850(0xF), 0x7F, 0x7F, 0x7F, 0x20);
                        r = 0x7F;
                        gg = 0x20;
                        bb = 0;
                        func_L00_0025D0E0(&r, &gg, &bb, opt_2aedd0[0xA]);
                        func_L00_002E0CB8(m, m + 0x10, &a, s * 4.0f, func_001F9850(0x18), r, gg, bb, 0x20);
                    }
                    r2 = 0x7F;
                    g2 = 0x3F;
                    b2 = 0;
                    func_L00_0025D0E0(&r2, &g2, &b2, opt_2aedd0[0xA]);
                    func_L00_002E0CB8(m, m + 0x10, &a, s * 4.0f, func_001F9850(0x14), r2, g2, b2, 0x30);
                    r2 = 0x60;
                    g2 = 0x10;
                    b2 = 0;
                    func_L00_0025D0E0(&r2, &g2, &b2, opt_2aedd0[0xA]);
                    func_L00_002E0CB8(m, m + 0x10, &a, s * 3.5f, func_001F9850(0x1B), r2, g2, b2, 0x40);
                    r2 = 0x20;
                    g2 = 0;
                    b2 = 0;
                    func_L00_0025D0E0(&r2, &g2, &b2, opt_2aedd0[0xA]);
                    func_L00_002E0CB8(m, m + 0x10, &a, s * 3.0f, func_001F9850(0x1D), r2, g2, b2, 0x20);
                }
                if (d->h68 >= func_001F9850(0x14)) {
                    V2AE110 n;
                    float h;
                    int i;

                    *(float *)(m + 0x18) += 1.0f;
                    h = func_00214440(m + 0x10, &n);
                    *(float *)(m + 0x18) -= 1.0f;
                    for (i = 0; i < 150; i++) {
                        V2AE110 v;
                        V2AE110 t;

                        t.q = 0;
                        t.f[0] = func_002140F8(-1.0f, 1.0f);
                        t.f[1] = func_002140F8(-1.0f, 1.0f);
                        t.f[2] = func_002140F8(-0.5f, 2.0f);
                        v.q = t.q;
                        func_L00_001FF4B0(&v, &v, s * func_002140F8(D_0015EE6C * 4.0f, D_0015EE6C * 8.0f));
                        func_L00_0026FF20(m + 0x10, &v, func_002140F8(0.05f, 0.1f) * 210000.0f, h);
                    }
                }
                d->v.f[0] = 0.0f;
                m[0xBC] = 0;
                if (d->h68 >= func_001F9850(0x14)) {
                    func_L00_0028EF68(0x16, 0, (int)m, 0);
                } else if (opt_2aedd0[0xA] != 0) {
                    func_0022ED80(1, 0, (int)m);
                } else {
                    func_0022ED80(0, 0, (int)m);
                }
                if (d->h68 != 0) {
                    V2AE110 p;
                    float gz;
                    float wz;

                    p.q = *(u128 *)(m + 0x10);
                    p.f[2] += 3.5f;
                    gz = func_00214358(&p, 0, 0.5f);
                    wz = func_L00_0025A748(&p);
                    if (gz != wz && gz - wz < 1.2f) {
                        V2AE110 v;
                        V2AE110 w;
                        int wr = 0x60;
                        int wg = 0x60;
                        int wb = 0x7F;
                        int zr = 0;
                        int zg = 0;
                        int zb = 0;
                        int i;

                        for (i = 0; i < 100; i++) {
                            float r;
                            float ang;

                            w.q = 0;
                            w.f[0] = func_002140F8(D_0015EE6C * -0.75f, D_0015EE6C * 0.75f);
                            w.f[1] = func_002140F8(D_0015EE6C * -0.75f, D_0015EE6C * 0.75f);
                            w.f[2] = func_002140F8(D_0015EE6C * 4.0f, D_0015EE6C * 14.0f);
                            v.q = w.q;
                            r = func_002140F8(0.0f, 0.35f);
                            ang = func_00214158();
                            w.f[0] = func_001F9F90(ang) * r;
                            w.f[1] = func_001F9FA8(ang) * r;
                            w.f[2] = 0.0f;
                            func_001F9BD8(&w, &w, m + 0x10);
                            w.f[2] = gz + 0.5f;
                            v.f[2] -= r * D_0015EE6C * 8.0f;
                            func_L00_00274788(&w, &v, func_002140F8(0.25f, 1.0f), gz, D_0015EE70 * 20.0f,
                                              ((zb & 0xFF) << 16) | ((zg & 0xFF) << 8) | (zr & 0xFF),
                                              (wb << 16) | ((wg << 8) | (0x16 << 24)) | wr,
                                              (wb << 16) | (wg << 8) | wr,
                                              1);
                        }
                        {
                            int hr = 0x30;
                            int hg = 0x30;
                            int hb = 0x3F;

                            for (i = 0; i < 20; i++) {
                                int c0 = func_L00_00237B70(func_002140F8(0.25f, 1.0f), 0x7F << 24, (wb << 16) | ((wg << 8) | (0x7F << 24)) | wr);
                                int c1 = func_L00_00237B70(func_002140F8(0.5f, 1.0f), 0, ((hb & 0xFF) << 16) | ((hg & 0xFF) << 8) | (hr & 0xFF));
                                float sz;

                                w.f[0] = func_002140F8(-3.0f, 3.0f);
                                w.f[1] = func_002140F8(-3.0f, 3.0f);
                                w.f[2] = func_002140F8(D_0015EE6C * 4.0f, D_0015EE6C * 14.0f);
                                func_L00_001FF4B0(&w, &w, func_002140F8(1.5f, 3.0f) * D_0015EE6C);
                                w.f[2] = func_002140F8(3.0f, 6.0f) * D_0015EE6C;
                                v.q = *(u128 *)(m + 0x10);
                                v.f[2] = gz;
                                sz = func_002140F8(31500.002f, 52500.0f);
                                func_L00_0026CA10(&v, &w, c0, c1, func_L00_00258BC8(func_001F9850(0x5A), func_001F9850(0x96)), 1, *D_L00_001B2400[11], -1, sz);
                            }
                        }
                    }
                }
                if (dist < 20.0f) {
                    D_L00_00166D80.f160 = 0.4f - dist * 0.0175f;
                } else {
                    D_L00_00166D80.f160 = 0.4f - 20.0f * 0.0175f;
                }
                D_L00_00166D80.f168 = func_001F9850(0x19);
                func_001F9D10(m + 0x10, hero_2aedd0.f80);
                func_L00_002D4CE8((char *)&rec, (char *)(m + 0x10), 0, 0);
                if (m[0x20] != 2) {
                    func_0020D678(m);
                    return;
                }
            }
        }
    } else if (m[0x20] != 2) {
        int v;

        d->h6a++;
        v = func_001FA898(func_001F9FA8(func_L00_0025F368((float)d->h6a * 0.068f)) * 96.0f) + 0x9F;
        *(int *)(m + 0x90) = (v << 16) | ((v << 8) | 0xFF000000) | v;
    }
    if (m[0x20] == 2) {
        V2AE110 p;
        int n;

        *(unsigned short *)(m + 0x34) |= 0x41;
        n = func_L00_001F2BE8(m + 0x10, 0x10, m, 0,
                              func_L00_0025C700(0.5f, (func_001FA888(*(opt_2aedd0 + 0xA)) + 1.0f) * 3.0f - 0.5f,
                                                func_001FA888(m[0xBC]) / (float)func_001F9850(0xF)));
        p.q = *(u128 *)(m + 0x10);
        func_L00_0025BA50(m, &p, D_L00_00178000, n, 0, 0x830000, 2, 1, 2.0f, 1.0f, 1.0f);
        if (++m[0xBC] > func_001F9850(0xF)) {
            func_0020D678(m);
        }
    }
}
