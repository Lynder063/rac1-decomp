/* NON_MATCHING func_L00_002AB910 -- src/overlays/shared/vendor_002AB910.c
 * Best so far: SIZE ours 8844 / retail 8860, checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   * because 0x3F3000 then takes $22 instead of $23, &n sits in $23 and hi(game globals)/&old swap $23/$30
 *   all the way up, and the reload slots are 0x194/0x198 instead of 0x198/0x19C.
 *   - p8.c (second lerp colour as the literal 0x3F3030) shows the cascade: everything before +0x17b0 is then
 *   identical to retail, registers included. p6/p7 (one variable for hit data and best target) give a clean
 *   $22<->$23 exchange instead.
 *   - The neighbouring stub func_L00_002AEDD0 has the same splash code: there the 0x30 lives in $30 and both
 *   $30 and the 0x3F3000 register are loaded with 0 before the second loop, so in the original these two
 *   values are variables assigned more than once (not constants). Finding that source form is the unblock.
 */
typedef int Q910 __attribute__((mode(TI)));
typedef float V910[4] __attribute__((aligned(16)));
typedef union { Q910 q; float f[4]; } U910;
typedef struct { float f[4]; } F910;
typedef struct { Q910 q[5]; } B910;
typedef struct M910 M910;
typedef struct W910 W910;
struct W910 {
    U910 vel;
    char p10[0x20];
    M910 *owner;
    short h34;
    short h36;
    char p38[8];
    float f40;
    char p44[4];
    int i48;
    M910 *p4C;
    short h50;
    short h52;
    M910 *p54;
    int i58;
    int i5C;
    float f60;
    float f64;
    int i68;
    float f6C;
    float f70;
    int i74;
    int i78;
};
struct M910 {
    char p0[0x10];
    U910 pos;
    unsigned char state;
    char p21[3];
    char *p24;
    char p28[0xC];
    unsigned short flags;
    char p36[0xA];
    float rx;
    float ry;
    float rz;
    char p4C[6];
    unsigned char b52;
    unsigned char anim;
    char p54[0x1C];
    unsigned char b70;
    char p71[7];
    W910 *v;
    char p7C[0x18];
    int i94;
    char p98[0xC];
    unsigned char bA4;
    char pA5;
    short cls;
    char pA8[0x14];
    unsigned char bBC;
    char pBD[3];
    float mtx[4][4];
};
typedef struct {
    float dir[4];
    M910 *moby;
    int flags;
    unsigned char b8;
    unsigned char b9;
    unsigned short cls;
    float fC;
    int i10;
} __attribute__((aligned(16))) Qry910;
typedef struct {
    char p0[0x88];
    float f88;
    char p8C[0x2FC - 0x8C];
    unsigned char *p2FC;
    char p300[0x1090 - 0x300];
    M910 *hero;
    char p1094[0x2080 - 0x1094];
    M910 *cam;
    char p2084[0x20];
    unsigned char b20A4;
    unsigned char b20A5;
    char p20A6[9];
    unsigned char b20AF;
} G910;
typedef struct { char p0[0x11]; unsigned char b11; } E910;
typedef struct {
    char p0[0x18];
    M910 *moby;
    int i1C;
    U910 pos;
    char p30[0x10];
    U910 nrm;
} H910;
typedef struct { char p0[0x160]; float f160; char p164[4]; int i168; } Cam910;

extern B910 D_L00_001E9BB0;
extern B910 D_L00_001E9C00;
extern G910 D_G910 __asm__("D_0013F450");
extern E910 D_E910 __asm__("D_0013E620");
extern H910 D_H910 __asm__("D_L00_00173F40");
extern Cam910 D_Cam910 __asm__("D_L00_00166D80");
extern M910 *D_L00_00173F58;
extern float D_L00_00173F68[];
extern char D_L00_00173F70[];
extern char D_0013E633[];
extern float D_0015EE60 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern int D_L00_0015F6B0 MACRO_ADDR;
extern short D_L00_00161390;
extern short D_L00_00161398;
extern short D_L00_001614A0;
extern short D_L00_001614A4;
extern s32 D_L00_00166EC0[];
extern int *D_L00_00178000[];
extern char * D_L00_001ABD80[];
extern char D_L00_001B0B30[];
extern unsigned char *D_L00_001B2400[];

extern float func_001F9CB8(void *);
extern unsigned char *func_L00_0025D390(unsigned char *);
extern int func_L00_002AB548(W910 *, M910 *, int);
extern void func_001FA218(void *, void *);
extern void func_0020DAF8(char *, int, char *);
extern void func_001FA540(void *, void *, void *);
extern void func_001FA480(void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001F9850(int);
extern int func_002140B0(int);
extern float func_00214440(float *, void *);
extern void func_001F9C30(void *, void *, float);
extern float func_002140F8(float, float);
extern int func_L00_0026FF20(void *, void *, float, float);
extern void func_L00_001FF500(void *, void *, float);
extern float func_001FA888(int);
extern float func_001F9878(float);
extern float func_001F9FA8(float);
extern float func_001F9F90(float);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern int func_L00_001F3958(void);
extern void func_L00_002A5158_910(int, int, int, float, float, float, float) __asm__("func_L00_002A5158");
extern void func_001F9BC0(float *);
extern char *func_L00_002D9340(void *, float);
extern float func_00214158(void);
extern int func_L00_00258BC8(int, int);
extern void func_L00_002703E8(void *, void *, int, int);
extern s32 func_L00_0025F410(s32);
extern float func_00214358(void *, int, float);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF610(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_001F9C78(void *, void *);
extern f32 func_001F9B88(f32);
extern float func_001F9B50(float);
extern float func_L00_001FF860(float, float);
extern float func_L00_002004C0(float, float, float);
extern int func_L00_00261478(void *, void *, void *, void *, void *, void *);
extern void func_L00_0028EBF0(int);
extern void func_00213DE0(void *, int, int, int);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
extern int func_001F9908_910(int *) __asm__("func_001F9908");
extern void func_L00_0025A8C0(void *, void *, int, void *, float);
extern int func_L00_001F2BE8(void *, int, void *, void *, float);
extern int func_L00_001F10E0(float, void *, int, void *);
extern void func_L00_00263BF8(void *, char *, char *, float, float, float);
extern int func_001F9938(void *);
extern void *func_L00_0025B478(void *, int, int);
extern f32 func_001F9D48(void *, void *);
extern f32 func_001F9D10(void *, void *);
extern int func_L00_002594C8_910(void *, void *, void *, float, float, float, float, int) __asm__("func_L00_002594C8");
extern void func_L00_00260108(void *, void *, int, float, float);
extern void func_L00_00260878(void *, void *);
extern void func_0020D678(void *);
extern float func_001FA748(float, float);
extern void func_L00_0025BA50(void *, void *, void *, int, int, int, int, int, float, float, float);
extern float func_L00_0025A748(void *);
extern void func_L00_00274788(void *, void *, int, float, float, float, int, int, int);
extern int func_L00_00237B70_910(int, int, float) __asm__("func_L00_00237B70");
extern unsigned func_L00_0025D140(unsigned c, int mask);
extern void *func_L00_0026CA10_910(void *, void *, int, int, float, int, int, int, int) __asm__("func_L00_0026CA10");
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int);
extern int func_001FA898(float);
extern char *func_L00_0026CD70_910(char *, char *, int, int, float, int, int) __asm__("func_L00_0026CD70");
extern void func_00215C00(void *, f32, f32, f32);
extern char *func_L00_002D4CE8(char *a, char *b, int c, char *d);
extern void func_L00_0025B040(unsigned char *, float);

/* Mine (moby class 74) update: falls and bounces, sticks to what it hits, homes on a nearby target and explodes. */
void func_L00_002AB910(M910 *m) {
    B910 a = D_L00_001E9BB0;
    B910 b = D_L00_001E9C00;
    U910 c;
    U910 old;
    U910 up;
    W910 *v;
    M910 *hd;
    int st;

    hd = 0;
    old.q = 0;
    up.q = 0;
    old.f[2] = D_0015EE6C + D_0015EE6C;
    up.f[2] = 1.0f;
    c.q = old.q;
    v = m->v;
    if ((D_G910.b20A5 != 0 || D_G910.b20AF != 0) && m->state == 0) {
        m->flags |= 0x41;
    } else {
        m->flags &= 0xFFBE;
    }
    if ((D_G910.hero == 0 || D_G910.hero->cls != 0xBE) && m->state == 0) {
        func_0020D678(m);
        return;
    }
    if (D_G910.b20A4 != 0 && m->state == 0) {
        func_0020D678(m);
        return;
    }
    if (v->owner != 0 && v->owner->state != 0xFE && v->owner->state != 0xFD
        && v->owner->cls == 0xBE && v->h36 == 0 && 0.0f < func_001F9CB8(v)) {
        if (D_G910.p2FC == 0 || func_L00_0025D390(D_G910.p2FC) == 0) {
            func_L00_002AB548(v, m, 1);
        } else if (func_L00_002AB548(v, m, 0) == 0) {
            func_L00_002AB548(v, m, 2);
        }
    }
    st = m->state;
    if (st == 0) {
        if (D_G910.hero != 0 && D_G910.hero->cls == 0xBE) {
            float m1[4][4];
            float m2[4][4];
            U910 rot;
            {
                rot.q = 0;
                rot.f[0] = 3.1415927f;
                func_001FA218(m1, &rot);
                func_0020DAF8((char *)v->owner, 0, (char *)m2);
                func_001FA540(m1, m2, m1);
                func_001FA480(m->mtx, m1);
                m->i94 = 0;
                m->flags |= 0x100;
            }
            return;
        }
        func_0020D678(m);
        return;
    }
    {
        Qry910 q;
        {
            float k;
            float dist;
            float gz;

            m->flags &= 0xFEFF;
            qcopy(&old, &m->pos);
            if (!(st & 4)) {
                func_001F9BD8(&m->pos, &m->pos, v);
                if (v->h50 == 0) {
                    v->vel.f[2] -= D_0015EE70 * 9.8f;
                } else {
                    v->vel.f[2] -= D_0015EE70 * 9.8f / 10.0f;
                    if (func_002140B0(func_001F9850(6) - 1) == 0) {
                        float wz = func_00214440((float *)&m->pos, &q);

                        func_001F9C30(&q, v, 0.25f);
                        func_L00_0026FF20(&m->pos, &q, func_002140F8(0.05f, 0.1f) * 210000.0f, wz);
                    }
                }
            }
            q.flags = 0x830000;
            q.fC = 3.0f;
            q.moby = m;
            q.i10 = 1;
            qcopy(&q, v);
            func_L00_001FF500(&q, &q, 1.0f);
            q.b8 = 2;
            q.dir[3] = 5627.925f;
            q.b9 = 1;
            q.cls = m->cls;
            m->pos.f[2] -= 0.4f;
            q.dir[2] = 1.0f;
            k = func_001FA888(D_L00_0015F6B0 - v->i74);
            k = k / func_001F9878(*(float *)&D_L00_001614A4);
            if (1.0f < k) {
                k = 1.0f;
            } else if (k < 0.0f) {
                k = 0.0f;
            }
            m->pos.f[2] -= v->f6C * func_001F9FA8(v->f70) * k;
            if (!(m->state & 4) && func_L00_001EFFF0(&old, &m->pos, 0x10, (int)m, (int)&q) != 0) {
                if (v->h50 == 0 && func_L00_001F3958() == 0 && v->vel.f[2] < 0.0f) {
                    V910 t;
                    V910 n;
                    {
                        int i;
                        char *p;

                        func_L00_002A5158_910(*(int *)&D_L00_00161390, *(int *)&D_L00_00161398, 1, m->pos.f[0], m->pos.f[1], 0.5f, -0.35f);
                        v->h50 = 1;
                        func_001F9BC0((float *)v);
                        v->vel.f[2] = D_0015EE6C * -1.5f;
                        t[0] = m->pos.f[0];
                        t[1] = m->pos.f[1];
                        t[2] = D_L00_00173F68[0];
                        p = func_L00_002D9340(t, 2.0f);
                        if (p != 0) {
                            p[0x23] = 0x70;
                        }
                        for (i = 0; i < 16; i++) {
                            float ang = func_00214158();
                            float rr = func_002140F8(D_0015EE6C * 0.0f, D_0015EE6C * 3.0f);
                            int life;

                            n[0] = func_001F9F90(ang) * rr;
                            n[1] = func_001F9FA8(ang) * rr;
                            n[2] = func_002140F8(D_0015EE6C * 3.0f, D_0015EE6C * 6.5f);
                            life = func_L00_00258BC8(0x5A, 0x78);
                            func_L00_002703E8(t, n, func_002140B0(2), life);
                        }
                    }
                } else if (v->h50 != 0 || func_L00_001F3958() != 0) {
                    V910 t;
                    V910 n;
                    V910 r;
                    V910 ov;
                    {
                        if (D_H910.moby != 0
                            && (func_L00_0025F410((int)D_H910.moby) != 0 || (D_H910.moby->flags & 0x5000))
                            && D_H910.moby->cls != m->cls
                            && D_H910.moby != D_G910.cam
                            && D_H910.moby != v->owner) {
                            m->bBC = 1;
                            if (m->state != 1) {
                                qcopy(&m->pos, &D_H910.pos);
                                m->pos.f[2] = func_00214358(&m->pos, 0, 0.5f);
                            }
                        } else if (D_H910.moby != 0 && D_H910.moby->cls == m->cls) {
                            func_001F9BF0(&D_H910.nrm, &m->pos, &D_H910.moby->pos);
                            if (v->vel.f[2] < D_0015EE6C * -9.8f) {
                                m->bBC = 1;
                                qcopy(&m->pos, &D_H910.pos);
                                func_L00_001FF610(&c, v, &D_H910.nrm);
                                func_L00_001FF4B0(&c, &c, D_0015EE6C + D_0015EE6C);
                                func_L00_001FF4B0(&up, &D_H910.nrm, 1.0f);
                            } else {
                                qcopy(&m->pos, &D_H910.pos);
                                func_L00_001FF4B0(t, &D_H910.nrm, D_0015EE70 * 9.7f);
                                func_001F9BD8(&m->pos, &m->pos, t);
                                func_L00_001FF610(v, v, &D_H910.nrm);
                                func_001F9C30(v, v, 0.4f);
                                func_L00_001FF4B0(t, &D_H910.nrm, 1.0f);
                                func_001F9C78(t, &up);
                                qcopy(n, &D_H910.nrm);
                                goto orient;
                            }
                        } else if ((D_H910.moby != 0 && D_H910.moby != D_G910.cam && D_H910.moby != v->owner) || D_H910.i1C > 0) {
                            if (v->h50 != 0 || func_L00_001F3958() == 0 || v->vel.f[2] < D_0015EE6C * -9.8f) {
                                m->bBC = 1;
                                qcopy(&m->pos, &D_H910.pos);
                                func_L00_001FF610(&c, v, &D_H910.nrm);
                                func_L00_001FF4B0(&c, &c, D_0015EE6C + D_0015EE6C);
                                func_L00_001FF4B0(&up, &D_H910.nrm, 1.0f);
                            } else {
                                if (D_H910.moby != 0) {
                                    hd = (M910 *)func_L00_0025D390((unsigned char *)D_H910.moby);
                                }
                                qcopy(&m->pos, &D_H910.pos);
                                func_L00_001FF4B0(t, &D_H910.nrm, D_0015EE70 * 9.7f);
                                func_001F9BD8(&m->pos, &m->pos, t);
                                *(Q910 *)ov = v->vel.q;
                                func_L00_001FF610(v, v, &D_H910.nrm);
                                func_001F9C30(v, v, 0.6f);
                                v->vel.f[2] *= 0.5f;
                                if (v->f6C == 0.0f) {
                                    float ph;

                                    v->f6C = func_001F9B88(ov[2]) * 2.0f;
                                    ph = -2.3561945f;
                                    if (0.0f < ov[2]) {
                                        ph = 0.7853982f;
                                    }
                                    v->f70 = ph;
                                    v->i74 = D_L00_0015F6B0;
                                }
                                func_L00_001FF4B0(t, &D_H910.nrm, 1.0f);
                                if (0.707f < func_001F9C78(t, &up) && ov[2] < 0.0f) {
                                    float fz = func_00214358(&m->pos, 0, 0.5f);

                                    if (m->pos.f[2] < fz) {
                                        m->pos.f[2] = fz;
                                    }
                                    v->vel.f[2] = -v->vel.f[2];
                                    if (func_001F9CB8(v) < D_0015EE6C * 0.5f || hd != 0) {
                                        func_001F9BC0((float *)v);
                                        m->state |= 4;
                                        m->i94 = *(int *)(m->p24 + 0x10);
                                        if (D_H910.moby != 0 && hd != 0) {
                                            v->p4C = D_H910.moby;
                                        }
                                    }
                                }
                                qcopy(n, &D_H910.nrm);
                            orient:
                                {
                                    r[0] = n[0] * func_001F9F90(m->rz) + n[1] * func_001F9FA8(m->rz);
                                    r[1] = n[1] * func_001F9F90(m->rz) - n[0] * func_001F9FA8(m->rz);
                                    r[2] = n[2];
                                    m->rx = func_L00_002004C0(m->rx, -func_L00_001FF860(func_001F9B50(r[0] * r[0] + r[2] * r[2]), r[1]), 0.05235988f);
                                    m->ry = func_L00_002004C0(m->ry, func_L00_001FF860(r[2], r[0]), 0.05235988f);
                                }
                            }
                        }
                    }
                }
            } else if (m->state & 4) {
                float fz = func_00214358(&m->pos, 0, 0.5f);

                if (v->p4C != 0) {
                    if (!(v->p4C != 0 && v->p4C->state != 0xFE && v->p4C->state != 0xFD)) {
                        m->bBC = 1;
                        v->p4C = 0;
                    } else if (D_L00_00173F58 != 0) {
                        hd = (M910 *)func_L00_0025D390((unsigned char *)D_L00_00173F58);
                        if (hd != 0) {
                            func_L00_00261478(m, v->p4C, &m->pos, &m->rx, &m->pos, &m->rx);
                        }
                    }
                    if (hd == 0) {
                        int s;

                        m->state = 1;
                        s = v->i68;
                        if (s != -1) {
                            char *tab = D_0013E633 + 0x1D;
                            char *e = tab + s * 0x70;

                            if (*(M910 **)(e + 0x88) == m && *(unsigned char *)(e + 0x74) != 0) {
                                func_L00_0028EBF0(s);
                            }
                        }
                        v->vel.f[2] = 0.0f;
                        v->i68 = -1;
                        v->h34 = func_001F9850(0x78);
                        v->p4C = 0;
                    }
                } else if (!(m->state & 0x10)) {
                    if (m->pos.f[2] - fz < D_0015EE70 * 40.0f) {
                        m->pos.f[2] = fz;
                        v->h34 = 0;
                        if (D_H910.moby != 0 && func_L00_0025D390((unsigned char *)D_H910.moby) != 0) {
                            v->p4C = D_H910.moby;
                        }
                    } else {
                        int s;

                        m->state = 1;
                        s = v->i68;
                        if (s != -1) {
                            char *tab = D_0013E633 + 0x1D;
                            char *e = tab + s * 0x70;

                            if (*(M910 **)(e + 0x88) == m && *(unsigned char *)(e + 0x74) != 0) {
                                func_L00_0028EBF0(s);
                            }
                        }
                        v->vel.f[2] = 0.0f;
                        v->i68 = -1;
                        v->h34 = func_001F9850(0x78);
                    }
                }
                if ((v->p54 == 0 || v->p54->state == 0xFE || v->p54->state == 0xFD || !(v->p54->flags & 0x1000))
                    && (m->state & 0x10)) {
                    int s;

                    m->state = 1;
                    s = v->i68;
                    if (s != -1) {
                        char *tab = D_0013E633 + 0x1D;
                        char *e = tab + s * 0x70;

                        if (*(M910 **)(e + 0x88) == m && *(unsigned char *)(e + 0x74) != 0) {
                            func_L00_0028EBF0(s);
                        }
                    }
                    v->vel.f[2] = 0.0f;
                    v->p54 = 0;
                    v->i68 = -1;
                    v->h34 = func_001F9850(0x78);
                    if (m->anim != 0) {
                        func_00213DE0(m, 0, 0, 10);
                    }
                }
                if (v->p54 != 0 && (m->state & 0x10)) {
                    V910 t;
                    V910 n;
                    Qry910 q2;
                    U910 probe;
                    U910 d;
                    {
                        float sp;
                        float lim;
                        int mode;

                        *(Q910 *)n = m->pos.q;
                        if ((m->b70 & 2) && m->b52 == 1 && m->anim != 2) {
                            func_00213DE0(m, 2, 0, 10);
                        }
                        if (func_L00_0028EB98(m, v->i68) == 0) {
                            v->i68 = func_0022ED80(1, 4, (int)m);
                        }
                        sp = v->f40 + D_0015EE70 * 15.0f;
                        lim = D_0015EE6C * 4.0f;
                        v->f40 = sp;
                        if (lim < sp) {
                            v->f40 = lim;
                        }
                        mode = v->h52;
                        if (mode == 1) {
                            m->pos.f[2] += D_0015EE60 * 0.05f;
                            if (func_001F9908_910(&v->i48) != 0) {
                                v->i48 = func_001F9850(7);
                                v->h52 = 2;
                            }
                        } else if (mode == 2) {
                            m->pos.f[2] -= D_0015EE60 * 0.05f;
                            if (func_001F9908_910(&v->i48) != 0) {
                                v->h52 = 0;
                            }
                        }
                        func_001F9BF0(t, &v->p54->pos, &m->pos);
                        func_L00_001FF4B0(t, t, v->f40);
                        func_001F9BD8(&m->pos, &m->pos, t);
                        func_L00_0025A8C0(&q2, m, 0x10000, t, 1.0f);
                        qcopy(&probe, &m->pos);
                        probe.f[2] += 0.35f;
                        if (func_L00_001F2BE8(&probe, 0x10, m, &q2, 0.35f) != 0
                            && D_L00_00173F58 != 0
                            && D_L00_00173F58->cls != 0x363
                            && D_L00_00173F58->cls != 0x4A
                            && D_L00_00173F58->cls != 0x458
                            && D_L00_00173F58->cls != 0x365
                            && D_L00_00173F58->cls != 0x367) {
                            m->bBC = 1;
                        }
                        qcopy(&probe, &m->pos);
                        probe.f[2] += 0.25f;
                        if (func_L00_001F10E0(0.25f, &probe, 0, m) != 0) {
                            func_001F9BF0(&d, D_L00_00173F70, &probe);
                            func_001F9BD8(&m->pos, &m->pos, &d);
                        }
                        if (func_001F9908_910(&v->i58) != 0) {
                            m->bBC = 1;
                        }
                    }
                }
                func_L00_00263BF8(m, (char *)&v->f60, (char *)&v->f64, 0.5235988f, D_0015EE6C * 0.5235988f, D_0015EE6C * 0.29670596f);
                if (m->state & 4) {
                    V910 t;
                    {
                        func_001F9BF0(t, &m->pos, &old);
                        v->vel.q = *(Q910 *)t;
                    }
                }
            }
            if (!(m->state & 2) && func_001F9938(&v->h34) != 0) {
                m->state |= 2;
                v->p54 = 0;
            }
            {
                char *res = func_L00_0025B478(m, 0x830000, 0);

                if (res != 0 && *(M910 **)(res + 0x20) != 0 && (*(M910 **)(res + 0x20))->cls != m->cls) {
                    m->bBC = 1;
                }
            }
            m->bA4 = 0xFF;
            if (m->state & 2) {
                if (!(m->state & 4)
                    || (func_001F9D48(&D_G910.cam->pos, &m->pos) < 0.75f
                        && func_001F9B88(m->pos.f[2] - D_G910.f88) < 0.25f
                        && (m->state & 0x10))) {
                    m->bBC = 1;
                } else if (func_001F9D10(&D_G910.cam->pos, &m->pos) < 0.75f) {
                    V910 t;
                    V910 n;
                    V910 r;
                    {
                        func_001F9BF0(r, &m->pos, &D_G910.cam->pos);
                        *(Q910 *)t = *(Q910 *)r;
                        func_L00_001FF4B0(t, t, 0.75f);
                        func_001F9BD8(r, &D_G910.cam->pos, t);
                        *(Q910 *)n = *(Q910 *)r;
                        func_L00_002594C8_910(m, &m->pos, n, 0.4f, 0.25f, 0.25f, 0.5235988f, 0);
                    }
                } else {
                    M910 *best = 0;
                    float range = (func_001FA888(*((unsigned char *)&D_E910 + 0x11)) + 1.0f) * 4.0f;
                    int i;
                    M910 *o;

                    if (v->i78 != 0) {
                        range *= 3.0f;
                    }
                    i = 0;
                    o = (M910 *)D_L00_001ABD80[i];
                    while (o != 0) {
                        float rg;
                        unsigned char *p;

                        if (30.0f < func_001F9D10(&m->pos, &o->pos)) {
                            goto next;
                        }
                        if (func_001F9D10(&m->pos, &o->pos) < 1.5f) {
                            m->bBC = 1;
                            break;
                        }
                        if (func_L00_0025F410((int)o) != 0) {
                            goto next;
                        }
                        rg = range;
                        p = func_L00_0025D390((unsigned char *)o);
                        if (p != 0) {
                            rg = range + func_001FA888(p[0xA]) * 0.125f;
                        }
                        if (!(func_001F9D48(&m->pos, &o->pos) < rg)) {
                            goto next;
                        }
                        if (!(func_001F9B88(o->pos.f[2] - m->pos.f[2]) < 2.0f)) {
                            goto next;
                        }
                        if (v->p54 != 0 && v->p54->state != 0xFE && v->p54->state != 0xFD) {
                            goto next;
                        }
                        if (best != 0) {
                            float d1 = func_001F9D48(&m->pos, &o->pos);

                            if (!(d1 < func_001F9D48(&m->pos, &best->pos))) {
                                goto next;
                            }
                        }
                        m->state |= 0x10;
                        best = o;
                        func_00213DE0(m, 1, 0, func_001F9850(3));
                        func_0022ED80(0, 0, (int)m);
                        v->f40 = 0.0f;
                        v->i58 = func_001F9850(600);
                        v->h52 = 1;
                        v->i48 = func_001F9850(7);
                    next:
                        i++;
                        o = (M910 *)D_L00_001ABD80[i];
                    }
                    if (best != 0) {
                        v->p54 = best;
                    }
                }
            }
            v->i78 = 0;
            if (v->i5C < 0 || *(int *)&D_L00_001614A0 != 0) {
                func_L00_00260108(m, &m->pos, -1, 0.33f, 13.0f);
                func_L00_00260878(m, D_L00_001B0B30);
                func_0020D678(m);
            }
            {
                float amp = v->f6C;

                if (0.05f < amp) {
                    float damped = D_0015EE60 * -0.012000024f * amp + amp;

                    v->f6C = damped;
                    if (damped < 0.05f) {
                        v->f6C = 0.05f;
                    }
                }
            }
            k = func_001FA888(D_L00_0015F6B0 - v->i74);
            k = k / func_001F9878(*(float *)&D_L00_001614A4);
            if (1.0f < k) {
                k = 1.0f;
            } else if (k < 0.0f) {
                k = 0.0f;
            }
            v->f70 = func_001FA748(v->f70, D_0015EE6C * 6.2831855f);
            m->pos.f[2] = m->pos.f[2] + v->f6C * func_001F9FA8(v->f70) * k + 0.4f;
            if (m->bBC != 0) {
                dist = func_001F9D48(&m->pos, D_L00_00166EC0);
                if (v->h50 == 0) {
                    V910 t;
                    {
                        float s = func_001FA888(D_E910.b11) * 0.5f + 1.0f;
                        int hit = func_L00_001F2BE8(&m->pos, 0x10, m, 0, s + s);

                        *(Q910 *)t = m->pos.q;
                        func_L00_0025BA50(m, t, D_L00_00178000, hit, 0, 0x810000, 4, 1, 3.0f, 0.25f, 1.5f);
                    }
                }
                gz = func_L00_0025A748(&m->pos);
                if (v->h50 != 0) {
                    V910 t;
                    V910 n;
                    V910 r;
                    {
                        float wz;
                        int i;
                        int j;
                        int l;
                        int cb;
                        int cg;
                        int cr;
                        int lo;

                        *(Q910 *)t = m->pos.q;
                        t[2] += 3.5f;
                        wz = func_00214358(t, 0, 0.5f);
                        for (i = 0; i < 150; i++) {
                            *(Q910 *)r = 0;
                            r[0] = func_002140F8(-1.0f, 1.0f);
                            r[1] = func_002140F8(-1.0f, 1.0f);
                            r[2] = func_002140F8(-0.5f, -2.0f);
                            *(Q910 *)n = *(Q910 *)r;
                            func_L00_001FF4B0(n, n, func_002140F8(D_0015EE6C * 4.0f, D_0015EE6C * 8.0f));
                            func_L00_0026FF20(&m->pos, n, func_002140F8(0.05f, 0.1f) * 210000.0f, wz);
                        }
                        cb = 0x7F;
                        cg = 0x60;
                        cr = 0x60;
                        for (j = 0; j < 150; j++) {
                            float rr;
                            float ang;

                            *(Q910 *)r = 0;
                            r[0] = func_002140F8(D_0015EE6C * -0.75f, D_0015EE6C * 0.75f);
                            r[1] = func_002140F8(D_0015EE6C * -0.75f, D_0015EE6C * 0.75f);
                            r[2] = func_002140F8(D_0015EE6C * 4.0f, D_0015EE6C * 16.0f);
                            *(Q910 *)n = *(Q910 *)r;
                            rr = func_002140F8(0.0f, 0.35f);
                            ang = func_00214158();
                            r[0] = func_001F9F90(ang) * rr;
                            r[1] = func_001F9FA8(ang) * rr;
                            r[2] = 0.0f;
                            func_001F9BD8(r, r, &m->pos);
                            r[2] = wz + 0.5f;
                            n[2] -= rr * D_0015EE6C * 8.0f;
                            func_L00_00274788(r, n, 0, func_002140F8(0.35f, 1.25f), wz, D_0015EE70 * 20.0f, (0x16 << 24) | (cb << 16) | (cg << 8) | cr, (cb << 16) | (cg << 8) | cr, 1);
                        }
                        lo = 0x30;
                        for (l = 0; l < 20; l++) {
                            int c1 = func_L00_00237B70_910(0x7F000000, (0x7F << 24) | (cb << 16) | (cg << 8) | cr, func_002140F8(0.25f, 1.0f));
                            int c2 = func_L00_00237B70_910(0, (0x3F << 16) | (0x30 << 8) | lo, func_002140F8(0.5f, 1.0f));
                            float sz;
                            int life;

                            r[0] = func_002140F8(-3.0f, 3.0f);
                            r[1] = func_002140F8(-3.0f, 3.0f);
                            r[2] = func_002140F8(D_0015EE6C * 4.0f, D_0015EE6C * 14.0f);
                            func_L00_001FF4B0(r, r, func_002140F8(1.5f, 3.0f) * D_0015EE6C);
                            r[2] = func_002140F8(3.0f, 6.0f) * D_0015EE6C;
                            *(Q910 *)n = m->pos.q;
                            n[2] = wz;
                            c1 = func_L00_0025D140(c1, D_E910.b11);
                            c2 = func_L00_0025D140(c2, D_E910.b11);
                            sz = func_002140F8(31500.002f, 52500.0f);
                            life = func_L00_00258BC8(func_001F9850(0x5A), func_001F9850(0x96));
                            func_L00_0026CA10_910(n, r, c1, c2, sz, life, 1, D_L00_001B2400[11][0], -1);
                        }
                    }
                } else if (gz + 2.0f < m->pos.f[2]) {
                    V910 t;
                    {
                        func_001F9BC0(t);
                        func_L00_0025F4A8(m, t, 0, 0.0f, 0.0f, 3, 3, 5, 2.0f, 1.0f, 4.0f, 1.0f, 2, 7.0f, 0, 1, -1, D_E910.b11);
                    }
                } else {
                    float sc = func_001FA888(D_E910.b11) * 0.5f + 1.0f;
                    int cnt = func_001FA898(dist * 15.0f);
                    int i;

                    for (i = 0; i < cnt; i++) {
                        int kind = func_002140B0(4);
                        float tbl[4] = { D_0015EE6C * 14.0f, D_0015EE6C * 22.0f, D_0015EE6C * 12.0f, 0.0f };
                        V910 n;
                        V910 r;
                        {
                            float rr;
                            float ang;

                            *(Q910 *)r = 0;
                            r[0] = func_002140F8(D_0015EE6C * -0.5f, D_0015EE6C * 0.5f) * sc;
                            r[1] = func_002140F8(D_0015EE6C * -0.5f, D_0015EE6C * 0.5f) * sc;
                            r[2] = func_002140F8(D_0015EE6C * 4.0f, tbl[kind]) * sc;
                            *(Q910 *)n = *(Q910 *)r;
                            rr = func_002140F8(0.0f, kind == 1 ? 0.5f : 0.25f) * sc;
                            ang = func_00214158();
                            r[0] = func_001F9F90(ang) * rr;
                            r[1] = func_001F9FA8(ang) * rr;
                            r[2] = 0.0f;
                            func_001F9BD8(r, r, &m->pos);
                            r[2] -= rr * func_001F9F90(0.785398f);
                            n[2] -= rr * D_0015EE6C * 8.0f;
                            switch (kind) {
                            case 0: {
                                int c1 = func_L00_0025D140(0x1F101820, D_E910.b11);
                                float sz = func_002140F8(200000.0f, 300000.0f) * sc;
                                int life = func_L00_00258BC8(func_001F9850(0xB4), func_001F9850(0xF0));

                                func_L00_0026CD70_910((char *)r, (char *)n, c1, 0x101010, sz, life, 0);
                                break;
                            }
                            case 1: {
                                int c1 = func_L00_0025D140(0x3F081020, D_E910.b11);
                                int c2 = func_L00_0025D140(0x0F081020, D_E910.b11);
                                float sz = func_002140F8(50000.0f, 100000.0f) * sc;

                                func_L00_0026CD70_910((char *)r, (char *)n, c1, c2, sz, func_001F9850(0xB4), 1);
                                break;
                            }
                            case 2: {
                                int c1 = func_L00_0025D140(func_002140B0(100) < 0x28 ? 0x5FF8F8F8 : 0x2F486078, D_E910.b11);
                                int c2;
                                float sz;
                                int life;

                                c2 = func_L00_0025D140(0x0F000020, D_E910.b11);
                                sz = sc * 150000.0f;
                                life = func_L00_00258BC8(func_001F9850(0x1E), func_001F9850(0x2D));
                                func_L00_0026CD70_910((char *)r, (char *)n, c1, c2, sz, life, 2);
                                break;
                            }
                            case 3: {
                                int c1 = func_L00_00237B70_910(0x7F000000, 0x7F182030, func_002140F8(0.25f, 1.0f));
                                int c2 = func_L00_00237B70_910(0, 0x5F5F5F, func_002140F8(0.5f, 1.0f));
                                float sz;
                                int life;

                                c1 = func_L00_0025D140(c1, D_E910.b11);
                                c2 = func_L00_0025D140(c2, D_E910.b11);
                                func_00215C00(n, func_002140F8(0.0f, 1.0f) * D_0015EE6C, ang, func_00214158());
                                sz = func_002140F8(200000.0f, 300000.0f) * sc;
                                life = func_L00_00258BC8(func_001F9850(0xF0), func_001F9850(0x12C));
                                func_L00_0026CD70_910((char *)r, (char *)n, c1, c2, sz, life, 3);
                                break;
                            }
                            }
                        }
                    }
                }
                m->bBC = 0;
                if (D_E910.b11 != 0) {
                    func_0022ED80(3, 0, (int)m);
                } else {
                    func_0022ED80(2, 0, (int)m);
                }
                D_Cam910.f160 = dist < 20.0f ? 0.4f - dist * 0.0175f : 0.050000012f;
                D_Cam910.i168 = func_001F9850(0x19);
                func_001F9D10(&m->pos, D_0013E633 + 0xE9D);
                if (D_E910.b11 != 0) {
                    func_L00_002D4CE8((char *)&b, (char *)&m->pos, 0, 0);
                } else {
                    func_L00_002D4CE8((char *)&a, (char *)&m->pos, 0, 0);
                }
                func_L00_00260878(m, D_L00_001B0B30);
                func_0020D678(m);
            } else {
                func_L00_0025B040((unsigned char *)m, 0.25f);
            }
        }
    }
}
