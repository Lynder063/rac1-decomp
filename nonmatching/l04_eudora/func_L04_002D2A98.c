/* NON_MATCHING func_L04_002D2A98 -- src/overlays/l04_eudora/vendor_002CB800.c
 * Best so far: BYTES 25/7712 (99.7% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - run 5 (p4): BYTES 25/7712, same bytes. Copy written inside the last argument and only the D70 product held i
 *   - run 6 (p5): BYTES 25/7712, same bytes. 2.5f through a single-assignment local and the 17.0 constant held in 
 *   - run 7 (p6): BYTES 25/7712, same bytes. One float local reused for the reach and the 2.5f, both frame-time gl
 *   Stop notes:
 *   - What it does: woodcut_bot update. Reads damage (func_L00_0025B478/0025B4D0) and reacts per hit type, runs th
 *   - Best: p4.c, BYTES 25/7712 (p3..p6 compile to the same bytes). Two spots left. (1) +0x98..+0xA4, call to func
 *   - Tried against (1): copy as its own statement or inside the last argument, float first or after the pointer i
 *   - Things the lead should know: the stack layout only comes out with these scopes (attack test as two nested if
 */
typedef int u128 __attribute__((mode(TI)));
typedef struct { int v[6]; } WBJoints;
typedef struct { float v[5]; } WBAngles;

typedef struct WBData {
    /* 0x000 */ char pad000[0x20];
    /* 0x020 */ float hp;
    /* 0x024 */ short f24;
    /* 0x026 */ char pad026[2];
    /* 0x028 */ unsigned char f28;
    /* 0x029 */ unsigned char f29;
    /* 0x02A */ char pad02A[6];
    /* 0x030 */ float f30;
    /* 0x034 */ char pad034[4];
    /* 0x038 */ int f38;
    /* 0x03C */ char pad03C[0x1C];
    /* 0x058 */ unsigned char f58;
    /* 0x059 */ char pad059;
    /* 0x05A */ unsigned char f5A;
    /* 0x05B */ char pad05B[0x55];
    /* 0x0B0 */ char fB0[7];
    /* 0x0B7 */ unsigned char fB7;
    /* 0x0B8 */ char pad0B8[8];
    /* 0x0C0 */ char fC0[0x10];
    /* 0x0D0 */ float fD0;
    /* 0x0D4 */ float fD4;
    /* 0x0D8 */ float fD8;
    /* 0x0DC */ float fDC;
    /* 0x0E0 */ int fE0;
    /* 0x0E4 */ int fE4;
    /* 0x0E8 */ float fE8;
    /* 0x0EC */ char pad0EC[0x11];
    /* 0x0FD */ unsigned char fFD;
    /* 0x0FE */ char pad0FE[0x12];
    /* 0x110 */ float f110;
    /* 0x114 */ float f114;
    /* 0x118 */ char pad118[8];
    /* 0x120 */ unsigned char f120;
    /* 0x121 */ unsigned char f121;
    /* 0x122 */ char pad122[0xE];
    /* 0x130 */ char f130[0x30];
    /* 0x160 */ char f160[0xB7];
    /* 0x217 */ unsigned char f217;
    /* 0x218 */ char pad218[0x198];
    /* 0x3B0 */ float f3B0[4];
    /* 0x3C0 */ unsigned char f3C0;
    /* 0x3C1 */ unsigned char f3C1;
    /* 0x3C2 */ short t3C2;
    /* 0x3C4 */ short t3C4;
    /* 0x3C6 */ short t3C6;
    /* 0x3C8 */ float f3C8;
    /* 0x3CC */ char pad3CC[4];
    /* 0x3D0 */ float f3D0;
    /* 0x3D4 */ float f3D4;
    /* 0x3D8 */ float f3D8;
    /* 0x3DC */ int f3DC;
    /* 0x3E0 */ float f3E0;
    /* 0x3E4 */ float f3E4;
    /* 0x3E8 */ float f3E8;
} WBData;

typedef struct WBMoby {
    /* 0x00 */ char pad00[0x10];
    /* 0x10 */ float pos[4];
    /* 0x20 */ unsigned char state;
    /* 0x21 */ char pad21[0x10];
    /* 0x31 */ unsigned char f31;
    /* 0x32 */ char pad32[0xE];
    /* 0x40 */ float rot[4];
    /* 0x50 */ char pad50[2];
    /* 0x52 */ unsigned char anim;
    /* 0x53 */ unsigned char anim2;
    /* 0x54 */ char pad54[4];
    /* 0x58 */ float f58;
    /* 0x5C */ char pad5C[0x14];
    /* 0x70 */ unsigned char f70;
    /* 0x71 */ char pad71[7];
    /* 0x78 */ WBData *d;
    /* 0x7C */ char pad7C[3];
    /* 0x7F */ unsigned char f7F;
    /* 0x80 */ char pad80[0x24];
    /* 0xA4 */ unsigned char fA4;
    /* 0xA5 */ char padA5[0x17];
    /* 0xBC */ unsigned char fBC;
} WBMoby;

typedef struct WBQuery {
    /* 0x00 */ float v[4];
    /* 0x10 */ void *m;
    /* 0x14 */ int f14;
    /* 0x18 */ int f18;
    /* 0x1C */ float f1C;
    /* 0x20 */ int f20;
    /* 0x24 */ int pad24[3];
} WBQuery;

extern void func_L00_00260D30(void *, void *, float);
extern void func_L00_00264B40(float, void *, int, void *);
extern float func_001F9D10(void *, void *);
extern void func_L00_0025B178(void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9D48(void *, void *);
extern float func_0020D830(void *);
extern void func_001F9938(void *);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0(float, void *, void *, int, int, int);
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_0025E4B0(void *, void *);
extern float func_001F9878(float);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern void func_L00_002A27C8(void *);
extern float func_001FA748(float, float);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_0020DB98(void *, int, void *, void *);
extern void func_L00_001EFFF0(void *, void *, int, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_L00_001F2BE8(void *, float, int, void *, void *);
extern void func_0020D960(void *, int, void *);
extern void func_L04_002D27F8(void *);
extern void *func_001153FC(void *, int, int);
extern int func_002140B0(int);
extern int func_L00_0025A778(void *, void *, int);
extern float func_002140F8(float, float);
extern int func_00215B18(void *, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L00_001FF240(void *, void *, void *);
extern float func_00214158(void);
extern void func_L00_002B0B98(void *, void *, void *, void *, int, int, float, float);
extern void func_L04_00296FA8(void *, void *);
extern int func_L04_00296938(void *, void *, float, float, float);
extern void func_00215C00(void *, float, float, float);
extern float func_L00_00259148(float, float, void *, float, float, float);
extern int func_L00_0025D6F0(void *, void *);
extern void func_L00_00265050(void *, int, void *, void *, int, int, float, void *, void *, void *);
extern void func_0020D678(void *);
extern void func_L00_0025E590(void *, void *);
extern void func_L00_002594C8(void *, void *, void *, int, float, float, float, float);
extern void func_L00_001FFED8(void *, int, float);
extern void func_001FA588(void *, void *, void *);
extern float func_00214358(void *, int, float);

extern float D_L04_00166FC0[];
extern unsigned char D_0013E633[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;
extern WBJoints D_L04_001DC750;
extern WBAngles D_L04_001DC768;
extern unsigned char *D_L04_001B0930[];
extern float D_L04_0015F660[] MACRO_ADDR;

// Update function of the woodcut bot (moby class 563): damage reaction, saw attack, patrol/chase state machine, recoil and gravity.
void func_L04_002D2A98(WBMoby *m) {
    int excited = 0;
    WBData *d = m->d;
    unsigned char *p120;
    short *tm;
    float *pos;
    unsigned char *p;
    float tgt[4];
    float unused[16];
    float v60[4];
    float v70[4];
    float adiff;
    float dist;
    float hd;

    if (d->f38 != 0 || d->t3C6 != 0) excited = 1;
    func_L00_00260D30(m, tgt, excited ? d->f3E8 * 2.0f : d->f3E8);
    p = &d->f120;
    func_L00_00264B40(2.5f, m, 6, p120 = p);
    pos = m->pos;
    if (m->f31 != 0 && func_001F9D10(pos, D_L04_00166FC0) < 27.0f) {
        func_L00_0025B178(m);
        m->f7F = 0x15;
    }
    adiff = func_001FA850(m->rot[2], func_L00_001FF860(tgt[0] - m->pos[0], tgt[1] - m->pos[1]));
    dist = func_001F9D48(pos, tgt);
    hd = func_0020D830(m);
    qcopy(v60, pos);
    qcopy(v70, pos);
    func_001F9938(&d->t3C4);

    if (m->state != 0xB && m->state != 0) {
        int r;
        int htype;
        float damage;
        float angle;
        float one;
        float v[4];

        damage = 0.0f;
        p = (unsigned char *)func_L00_0025B478(m, 0xA10000, 0);
        r = func_L00_0025B4D0(m, p, &d->hp, 0, &htype, &damage, 0, 4);
        d->fE0 = 0x15E;
        d->fE8 = 0.35f;
        if (p != 0 && damage != 0.0f && m->state != 0 && d->t3C4 == 0) {
            unsigned char *src;
            float a;
            float b;
            float c;
            float f;

            src = *(unsigned char **)(p + 0x20);
            one = 1.0f;
            if (src != 0) {
                unsigned char *h = D_0013E633 + 0xE1D;
                if (src != *(unsigned char **)(h + 0x1090)) {
                    angle = func_L00_001FF860(m->pos[0] - *(float *)(src + 0x10), m->pos[1] - *(float *)(src + 0x14));
                } else {
                    angle = func_L00_001FF860(m->pos[0] - *(float *)(h + 0x80), m->pos[1] - *(float *)(h + 0x84));
                }
            } else {
                unsigned char *h = D_0013E633 + 0xE1D;
                angle = func_L00_001FF860(m->pos[0] - *(float *)(h + 0x80), m->pos[1] - *(float *)(h + 0x84));
            }
            a = D_0015EE70 * 30.0f;
            b = D_0015EE70 * 10.0f;
            c = D_0015EE6C * 5.5f;
            d->fE4 = 9;
            d->fD0 = a;
            d->fFD = 0;
            d->fD4 = b;
            d->fD8 = c;
            d->hp -= damage;
            if (d->hp <= 0.0f) r = 1;
            switch (r) {
            case 0:
                break;
            case 1:
            case 2:
                d->fD8 = D_0015EE6C * 7.0f;
                f = D_0015EE70 * 17.0f;
                d->fDC = D_0015EE6C * 13.0f;
                d->fD4 = f;
                *(u128 *)v = *(u128 *)(p + 0x10);
                func_L00_0025BBA0(v, &angle, &d->fD8, &d->fDC);
                func_L00_0025D5B0(angle, m, d->fC0, 8, 1, 0);
                d->f110 = 14.0f;
                d->f114 = 24.0f;
                m->state = 0xB;
                func_L00_002584A8(m, 0, -1);
                d->fB7 = 0x78;
                func_L00_0025E4B0(m, d->fB0);
                d->f3E4 = (2.0f / func_001F9878(15.0f)) * 2.0f;
                break;
            case 3:
            case 6:
                d->f3C8 = -0.5235988f;
                if (m->anim != 4 || hd < 16.0f || hd > 27.0f) {
                    short cls;

                    m->fBC |= 5;
                    func_00213DE0(m, 5, 0, func_001F9850(3));
                    func_L00_002A27C8(d->f160);
                    m->state = 9;
                    cls = *(short *)(*(char **)(p + 0x20) + 0xA6);
                    if (cls == 0x131 || cls == 0xB0) {
                        d->f3E4 = (2.0f / func_001F9878(15.0f)) * 0.5f;
                    } else {
                        d->f3E4 = 2.0f / func_001F9878(15.0f);
                    }
                    *(u128 *)v = *(u128 *)(p + 0x10);
                    func_L00_0025BBA0(v, &angle, &d->f3E4, &one);
                    d->fB7 = 0x78;
                    func_L00_0025E4B0(m, d->fB0);
                    d->t3C4 = func_001F9850(0xF);
                    d->t3C6 = func_001F9850(0xF0);
                }
                break;
            case 4:
            case 5:
                func_00213DE0(m, 6, 0, func_001F9850(10));
                func_L00_002A27C8(d->f160);
                m->state = 1;
                d->f3E4 = 2.0f / func_001F9878(15.0f);
                *(u128 *)v = *(u128 *)(p + 0x10);
                func_L00_0025BBA0(v, &angle, &d->f3E4, &one);
                m->rot[2] = func_001FA748(3.1415927f, angle);
                d->fB7 = 0x78;
                func_L00_0025E4B0(m, d->fB0);
                d->t3C4 = func_001F9850(0x1E);
                d->t3C2 = func_001F9850(0xB4);
                d->t3C6 = func_001F9850(0xF0);
                break;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                break;
            }
        }
    }
    m->fA4 = 0xFF;
    if (d->f38 != 0) d->t3C6 = func_001F9850(0xF0);
    tm = &d->t3C2;
    d->f38 = 0;
    func_001F9938(&d->t3C6);

    if (m->state == 8) {
        if (m->anim == 4 && hd > 16.0f && hd < 27.0f) {
            WBJoints joints = D_L04_001DC750;
            float pts[6][4];
            WBQuery s;
            float mid[4];
            int i;

            s.f14 = 0x10001;
            s.f1C = 1.0f;
            s.m = m;
            func_001F9BF0(&s, D_0013E633 + 0xE9D, pos);
            func_L00_001FF4B0(&s, &s, D_0015EE6C * 5.0f);
            s.f20 = 1;
            func_0020DB98(m, 6, &joints, pts);
            for (i = 0; i < 5; i++) func_L00_001EFFF0(pts[i], pts[i + 1], 9, m, &s);
            func_001F9BD8(mid, pts[0], pts[4]);
            func_001F9C30(mid, mid, 0.5f);
            func_L00_001F2BE8(mid, func_001F9D10(pts[0], pts[4]) * 0.5f, 0x10, m, &s);
            func_L00_00250800(m, 0x11, mid);
            func_L00_001F2BE8(mid, 0.5f, 0x10, m, &s);
        }
    }
    func_001F9938(tm);

    switch (m->state) {
    case 0:
        d->hp = 2.0f;
        d->f24 = 2;
        d->f30 = 1.0f;
        d->f28 = 1;
        d->f29 = 0;
        m->fBC = 0;
        d->f3E0 = 0.0f;
        d->t3C6 = 0;
        d->f58 = 8;
        d->f5A = 8;
        qcopy(d->f3B0, pos);
        if (d->f121 == 0) func_0020D960(m, 6, p120);
        func_L04_002D27F8(m);
        if (d->f3C0 != 0) {
            m->state = 3;
            func_00213DE0(m, 0xB, 0, func_001F9850(10));
        } else {
            m->state = 1;
        }
        break;
    case 1:
        if (m->f70 & 2) {
            if (excited ? (d->f3E8 * 2.0f < dist) : (d->f3E8 < dist)) {
                int anims[6];

                func_001153FC(anims, 0, 0x18);
                anims[5] = 1;
                func_00213DE0(m, anims[func_002140B0(6)], 0, func_001F9850(0x14));
            } else {
                func_00213DE0(m, 0, 0, func_001F9850(0x14));
            }
        }
        if (d->t3C2 == 0) {
            if (dist < 3.0f && adiff < 1.5707964f) {
                func_00213DE0(m, 4, 0, func_001F9850(10));
                m->state = 8;
            } else if (excited ? (dist < d->f3E8 * 2.0f) : (dist < d->f3E8)) {
                if (m->fBC & 1) {
                    if (excited || d->f3DC == -1 || func_L00_0025A778(tgt, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) != 0) {
                        m->state = 5;
                        m->fBC |= 8;
                    }
                } else {
                    d->f3D0 = 0.0f;
                    func_00213DE0(m, 0x10, 0, func_001F9850(10));
                    func_L00_002A27C8(d->f160);
                    m->state = 0xA;
                    m->fBC |= 1;
                }
            }
            if (!excited) {
                if (func_001F9D48(pos, d->f3B0) > 2.0f) {
                    if (d->f3E8 < dist || (d->f3DC != -1 && func_L00_0025A778(tgt, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) == 0)) {
                        m->state = 6;
                        m->fBC |= 8;
                    }
                }
            }
        }
        break;
    case 2:
        if (m->anim == 2 && (m->f70 & 2)) {
            if (excited || d->f3DC == -1 || func_L00_0025A778(tgt, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) != 0) {
                m->state = 5;
                m->fBC |= 8;
            } else {
                func_00213DE0(m, 0, 0, func_001F9850(10));
                m->state = 1;
            }
        }
        break;
    case 3: {
        if (m->anim != 0 && (m->f70 & 2)) {
            func_00213DE0(m, 0xC, 0, func_001F9850(10));
            m->f58 = func_002140F8(0.8f, 1.2f);
        }
        if (func_00215B18(m, 36.0f) != 0) {
            int i;

            for (i = 0; i < 20; i++) {
                float p[4];
                float vel[4];
                float off[4];
                float rot[4];
                float mtx[16];

                *(u128 *)rot = 0;
                rot[0] = func_002140F8(-1.0f, 1.0f);
                rot[1] = func_002140F8(-1.0f, 1.0f);
                rot[2] = func_002140F8(-1.0f, 1.0f);
                *(u128 *)off = *(u128 *)rot;
                func_L00_00250800(m, 0, p);
                vel[0] = func_001F9F90(m->rot[2]) * -(func_002140F8(5.0f, 10.0f) * D_0015EE6C);
                vel[1] = func_001F9FA8(m->rot[2]) * -(func_002140F8(5.0f, 10.0f) * D_0015EE6C);
                vel[2] = 0.0f;
                func_L00_001FF4B0(off, off, D_0015EE6C * 3.0f);
                off[2] += D_0015EE6C * 3.0f;
                func_L00_001FF240(mtx, vel, off);
                rot[0] = func_00214158();
                rot[1] = func_00214158();
                rot[2] = func_00214158();
                func_L00_002B0B98(m, vel, p, rot, 0x5EC, 0, 0.35f, 0.7f);
            }
        }
        if (d->t3C2 == 0) {
            if (dist < 3.0f && adiff < 1.5707964f) {
                func_00213DE0(m, 4, 0, func_001F9850(10));
                m->state = 8;
            } else if (excited ? (dist < d->f3E8 * 2.0f) : (dist < d->f3E8)) {
                if (m->fBC & 1) {
                    if (excited || d->f3DC == -1 || func_L00_0025A778(tgt, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) != 0) {
                        m->state = 5;
                        m->fBC |= 8;
                    }
                } else {
                    d->f3D0 = 0.0f;
                    func_00213DE0(m, 0x10, 0, func_001F9850(10));
                    func_L00_002A27C8(d->f160);
                    m->state = 0xA;
                    m->fBC |= 1;
                }
            }
        }
        break;
    }
    case 4:
        if (excited) {
            if (dist < 3.0f && adiff < 1.5707964f) {
                func_00213DE0(m, 4, 0, func_001F9850(10));
                func_L00_002A27C8(d->f160);
                m->state = 8;
            } else if (d->f3DC == -1 || func_L00_0025A778(tgt, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) != 0) {
                m->state = 5;
                m->fBC |= 8;
            } else if (adiff > 1.5707964f) {
                d->f3D0 = 0.0f;
                func_00213DE0(m, 0x10, 0, func_001F9850(10));
                func_L00_002A27C8(d->f160);
                m->state = 0xA;
            }
        } else {
            m->state = 1;
        }
        break;
    case 5: {
        if (m->fBC & 8) {
            m->fBC &= ~8;
            func_L04_00296FA8(m, d->f160);
        }
        func_L04_00296938(m, d->f160, D_0015EE6C * 4.0f, func_L00_001FF860(tgt[0] - m->pos[0], tgt[1] - m->pos[1]), D_0015EE70 * 20.0f);
        if (dist < 3.0f && adiff < 1.5707964f) {
            func_00213DE0(m, 4, 0, func_001F9850(10));
            func_L00_002A27C8(d->f160);
            m->state = 8;
        } else if (d->f3DC != -1) {
            float v[4];

            v[0] = func_001F9F90(m->rot[2]) * 2.0f;
            v[1] = func_001F9FA8(m->rot[2]) * 2.0f;
            v[2] = 0.0f;
            p = (unsigned char *)v;
            func_001F9BD8(p, p, pos);
            if (func_L00_0025A778(p, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) == 0) {
                if (excited && func_L00_0025A778(tgt, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) == 0) {
                    m->state = 7;
                } else if (func_L00_0025A778(tgt, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) != 0) {
                    d->f3D0 = 0.0f;
                    func_00213DE0(m, 0x10, 0, func_001F9850(10));
                    func_L00_002A27C8(d->f160);
                    m->state = 0xA;
                }
            }
            if (!excited) {
                if (func_L00_0025A778(tgt, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) == 0) {
                    m->state = 6;
                }
            }
        }
        break;
    }
    case 6:
        if (m->fBC & 8) {
            m->fBC &= ~8;
            func_L04_00296FA8(m, d->f160);
        }
        if (dist < 3.0f && adiff < 1.5707964f) {
            func_00213DE0(m, 4, 0, func_001F9850(10));
            func_L00_002A27C8(d->f160);
            m->state = 8;
        } else {
            if (m->fBC & 8) {
                m->fBC &= ~8;
                func_L04_00296FA8(m, d->f160);
            }
            if (func_001F9D48(pos, d->f3B0) < 2.0f) {
                m->state = 7;
            } else {
                func_L04_00296938(m, d->f160, D_0015EE6C * 4.0f, func_L00_001FF860(d->f3B0[0] - m->pos[0], d->f3B0[1] - m->pos[1]), D_0015EE70 * 20.0f);
                if (d->f3DC != -1) {
                    float v[4];

                    v[0] = func_001F9F90(m->rot[2]) * 2.0f;
                    v[1] = func_001F9FA8(m->rot[2]) * 2.0f;
                    v[2] = 0.0f;
                    func_001F9BD8(v, v, pos);
                    if (func_L00_0025A778(v, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) == 0) {
                        d->f3D0 = 0.0f;
                        func_00213DE0(m, 0x10, 0, func_001F9850(10));
                        func_L00_002A27C8(d->f160);
                        m->state = 0xA;
                        m->fBC |= 0x10;
                    } else if (func_L00_0025A778(tgt, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) != 0) {
                        m->state = 7;
                    }
                }
            }
        }
        break;
    case 7:
        if (dist < 3.0f && adiff < 1.5707964f) {
            func_00213DE0(m, 4, 0, func_001F9850(10));
            func_L00_002A27C8(d->f160);
            m->state = 8;
        } else {
            func_L04_00296938(m, d->f160, D_0015EE6C * 0.0f, m->rot[2], D_0015EE70 * 20.0f);
            if (d->f217 == 0) {
                if (excited) {
                    m->state = 4;
                } else {
                    m->state = 1;
                }
            }
        }
        break;
    case 8:
        if (m->anim == 4 && (m->f70 & 2)) {
            d->t3C2 = 0;
            func_00213DE0(m, 0, 0, func_001F9850(10));
            m->state = 1;
        }
        break;
    case 9:
        if (m->anim2 != 5 || (m->anim == 5 && (m->f70 & 2))) {
            if (m->fBC & 4) {
                m->fBC &= ~4;
                if (d->f3DC == -1) {
                    func_00213DE0(m, 0, 0, func_001F9850(10));
                    m->state = 1;
                    d->t3C2 = 0;
                } else {
                    WBAngles tab = D_L04_001DC768;
                    float v[4];
                    float sign = 1.0f;
                    int found = 0;
                    int i;

                    for (i = 0; i < 9; i++) {
                        unsigned char *h = D_0013E633 + 0xE1D;
                        float ang;

                        if ((i & 1) == 0) {
                            sign = 1.0f;
                            if (func_002140B0(100) & 1) sign = -1.0f;
                        } else {
                            sign = -sign;
                        }
                        ang = func_001FA748(sign * tab.v[i >> 1], func_L00_001FF860(m->pos[0] - *(float *)(h + 0x80), m->pos[1] - *(float *)(h + 0x84)));
                        func_00215C00(v, 6.0f, ang, m->rot[1]);
                        func_001F9BD8(v, v, pos);
                        if (func_L00_0025A778(v, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) != 0) {
                            found = 1;
                            func_00213DE0(m, 0x10, 0, func_001F9850(10));
                            d->f3D4 = ang;
                            d->f3D8 = 0.0f;
                            break;
                        }
                    }
                    if (!found) {
                        if (m->anim == 5) {
                            if (dist < 3.0f && adiff < 1.5707964f) {
                                func_00213DE0(m, 4, 0, func_001F9850(10));
                                m->state = 8;
                            } else {
                                func_00213DE0(m, 0, 0, func_001F9850(10));
                                m->state = 1;
                            }
                        } else {
                            func_00213DE0(m, 0, 0, func_001F9850(10));
                            m->state = 1;
                            d->t3C2 = 0;
                        }
                    }
                }
            } else {
                float v[4];

                if (hd < 28.0f && m->anim == 0x10) {
                    float lim = D_0015EE60 * 0.11111111f;

                    if (d->f3D8 < lim) {
                        d->f3D8 = d->f3D8 + D_0015EE70 * 20.0f;
                    } else {
                        d->f3D8 = lim;
                    }
                    func_00215C00(v, d->f3D8, d->f3D4, m->rot[1]);
                    func_001F9BD8(pos, pos, v);
                    m->rot[2] = func_L00_00259148(m->rot[2], func_L00_001FF860(tgt[0] - m->pos[0], tgt[1] - m->pos[1]), &d->f3D0, D_0015EE70 * 3.1415927f, D_0015EE70 * 6.2831855f, D_0015EE6C * 4.1887903f);
                } else if (d->f3D8 > 0.0f) {
                    d->f3D8 -= D_0015EE70 * 200.0f;
                    func_00215C00(v, d->f3D8, d->f3D4, m->rot[1]);
                    func_001F9BD8(pos, pos, v);
                    m->rot[2] = func_L00_00259148(m->rot[2], func_L00_001FF860(tgt[0] - m->pos[0], tgt[1] - m->pos[1]), &d->f3D0, D_0015EE70 * 3.1415927f, D_0015EE70 * 6.2831855f, D_0015EE6C * 4.1887903f);
                } else {
                    m->state = 1;
                    d->t3C2 = 0;
                }
            }
        }
        break;
    case 10:
        if (m->anim == 0x10 && (m->f70 & 2)) {
            if ((m->fBC & 0x10) || func_L00_0025A778(tgt, D_L04_001B0930[d->f3DC] + 0x10, *(int *)D_L04_001B0930[d->f3DC]) == 0) {
                m->state = 6;
                func_00213DE0(m, 0, 0, func_001F9850(10));
            } else {
                m->state = 5;
                func_00213DE0(m, 0, 0, func_001F9850(10));
            }
            m->fBC = (m->fBC | 8) & ~0x10;
        } else if (m->fBC & 0x10) {
            m->rot[2] = func_L00_00259148(m->rot[2], func_L00_001FF860(d->f3B0[0] - m->pos[0], d->f3B0[1] - m->pos[1]), &d->f3D0, D_0015EE70 * 3.1415927f, D_0015EE70 * 6.2831855f, D_0015EE6C * 4.1887903f);
        } else {
            m->rot[2] = func_L00_00259148(m->rot[2], func_L00_001FF860(tgt[0] - m->pos[0], tgt[1] - m->pos[1]), &d->f3D0, 0.03f, 0.3f, D_0015EE6C * 6.4577184f);
        }
        break;
    case 11:
        if ((func_L00_0025D6F0(m, d->fC0) & 0x40) || m->pos[2] < 1.0f) {
            func_L04_002D29E8(m);
            func_L00_00265050(m, 0x6CB, pos, m->rot, 0, 0, 0.0f, D_L04_0015F660, D_L04_0015F660, D_L04_0015F660);
            func_L00_00265050(m, 0x6CC, pos, m->rot, 0, 0, 0.0f, D_L04_0015F660, D_L04_0015F660, D_L04_0015F660);
            func_L00_00265050(m, 0x6CD, pos, m->rot, 0, 0, 0.0f, D_L04_0015F660, D_L04_0015F660, D_L04_0015F660);
            func_0020D678(m);
            return;
        }
        break;
    }

    {
        float w[16];

        func_L00_0025E590(m, d->fB0);
        if (d->f3E4 > 0.0f) {
            unsigned char *h = D_0013E633 + 0xE1D;

            w[0] = func_001F9F90(func_L00_001FF860(m->pos[0] - *(float *)(h + 0x80), m->pos[1] - *(float *)(h + 0x84))) * d->f3E4;
            w[1] = func_001F9FA8(func_L00_001FF860(m->pos[0] - *(float *)(h + 0x80), m->pos[1] - *(float *)(h + 0x84))) * d->f3E4;
            w[2] = 0.0f;
            func_001F9BD8(w, w, pos);
            d->f3E4 += -2.0f / (func_001F9878(15.0f) * func_001F9878(15.0f));
            func_L00_002594C8(m, pos, w, 1, 0.25f, 1.0f, 0.75f, 0.87266463f);
        }
        d->f3C8 *= 0.96f;
        func_L00_001FFED8(w, 1, d->f3C8);
        func_L00_001FFED8(d->f130, 2, 0.0f);
        func_001FA588(d->f130, d->f130, w);
        if (m->state != 9) d->f3C1 = m->state;
        if (m->state != 5 && m->fBC != 6) {
            float g;

            d->f3E0 += D_0015EE70 * 9.8f;
            m->pos[2] -= d->f3E0 - 2.0f;
            g = func_00214358(pos, 0, 0.5f);
            m->pos[2] -= 2.0f;
            if (m->pos[2] < g) {
                m->pos[2] = g;
                d->f3E0 = 0.0f;
            }
            if (m->pos[2] < 2.0f) {
                func_L00_002584A8(m, 0, -1);
                func_0020D678(m);
            }
        }
    }
}
