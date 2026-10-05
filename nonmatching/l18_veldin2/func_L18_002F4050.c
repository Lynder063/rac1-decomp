/* NON_MATCHING func_L18_002F4050 -- src/overlays/l18_veldin2/vendor_002F2AE0.c
 * Best so far: SIZE ours 12848 / retail 12840, checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - func_L18_002D70E8 is declared (int, int, float *, float *, float, int); its definition in vendor_002A8400.c 
 *   float first. Same registers; retail loads $f12 after $a2/$a3 here. func_L18_002D6738 likewise has its two floa
 *   before its last two integers, and func_L18_002F1420 takes a third argument (the vector in $a2).
 *   - Locals that exist only because of how the code comes out: `recs`/`idx` across qcopy in states 5 and 27 (qcop
 *   "memory" clobber makes the compiler reload them otherwise), `off` in state 18, `k` in the state 9 loop, the
 *   unpacked colour bytes r, g, b, a in the tail, `b += 0x10` as its own statement in state 5.
 *   - State 17 passes v1 to func_001F9D48 without having written it; retail does the same (sp+0x30).
 *   - Two 128-bit zero stores through `BossU128` in state 27 (retail: `por`, `sq`, `sq`).
 */
typedef int BossU128 __attribute__((mode(TI)));
typedef struct { float v[4]; } __attribute__((aligned(16))) BossQ;
typedef struct BossMoby {
    char p0[0x10];
    float f10[4];
    unsigned char f20;
    char p21[3];
    int *f24;
    char p28[8];
    unsigned char f30;
    unsigned char f31;
    short f32;
    unsigned short f34;
    char p36[0xA];
    float f40[4];
    unsigned char f50;
    char p51;
    unsigned char f52;
    unsigned char f53;
    char p54[0x1C];
    unsigned char f70;
    char p71[7];
    char *f78;
    char p7C[3];
    unsigned char f7F;
    char p80[0x10];
    int f90;
    int f94;
    char p98[0xE];
    short fA6;
    char pA8[0x18];
    float fC0[4];
    float fD0[4];
} BossMoby;
typedef struct BossData {
    char p0[0x20];
    float f20;
    short f24;
    char p26[2];
    unsigned char f28;
    char p29[7];
    float f30;
    char p34[0x3C];
    float f70[4];
    char p80[0x30];
    BossMoby *fB0;
    int fB4;
    char pB8[8];
    char fC0[0x68];
    float f128;
    char p12C[0x14];
    char f140[0x80];
    unsigned char f1C0[0x40];
    int f200;
    int f204[3];
    int f210;
    int f214;
    char p218[4];
    int f21C;
    int f220;
    char p224[0xC];
    int f230[4];
    int f240[4];
    int f250[4];
    int f260[4];
    int f270;
    int f274;
    char p278[8];
    int f280[3];
    char p28C[8];
    int f294;
    int f298;
    int f29C;
    int f2A0;
    char p2A4[0xC];
    int f2B0;
    char p2B4[0x4C];
    float f300[4];
    float f310[4];
    float f320[4];
    BossMoby *f330;
    unsigned char *f334;
    char *f338;
    unsigned char *f33C;
    int *f340;
    int f344;
    int f348;
    int f34C;
    int f350;
    int f354;
    int f358;
    int f35C;
    int f360;
    int f364;
    int f368;
    char p36C[4];
    float f370;
    float f374;
    char p378[0x14];
    float f38C;
    float f390;
    char p394[4];
    int f398;
    int f39C;
    void *f3A0;
    char *f3A4;
    int f3A8;
    int f3AC;
    int f3B0;
    float f3B4;
    int f3B8;
    float f3BC;
    float f3C0[4];
    float f3D0;
    float f3D4;
    float f3D8;
    float f3DC;
    float f3E0;
} BossData;
typedef struct BossHero {
    char p0[0x80];
    float f80[4];
    float f90[4];
    char pA0[0x20];
    float fC0[4];
    char pD0[0x22C];
    BossMoby *f2FC;
    char p300[0xE];
    short f30E;
    char p310[0x250];
    int *f560;
    char p564[0x74];
    BossMoby *f5D8;
    char p5DC[0x1AA4];
    BossMoby *f2080;
    int f2084;
    int f2088;
    int f208C;
    char p2090[0x14];
    unsigned char f20A4;
    char p20A5[0x1F];
    int f20C4;
} BossHero;
typedef struct BossShared {
    char p0[0x10];
    float f10[4];
    float f20[4];
    int f30;
    int f34;
    char p38[0x12];
    unsigned char f4A;
} BossShared;
/* The hero record (D_0013E633 + 0xE1D elsewhere in this file) and the sound slot table before it. */
extern BossHero D_0013F450;
extern char D_0013E650[];
extern float D_L18_0015F4FC MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern float D_L18_00167840[];
extern int *D_L18_001B11B0[];
/* As the file declares it further down (func_L18_002F8F38 reaches it with lui/lw). Retail reads it through $gp
   outside a delay slot here (+0x2D4), which needs it declared `extern short`: the one difference left. */
extern int D_L18_00162430 MACRO_ADDR;
extern short D_L18_001623F0;
extern short D_L18_00162408;
extern short D_L18_00162420;
extern short D_L18_00162424;
extern short D_L18_00162428;
extern short D_L18_0016242C;
extern void func_L18_002F7278(char *moby);
extern void func_L18_002F72E0(char *moby);
extern void func_L18_002F7F00(char *moby);
extern void func_L18_002F7DC0(char *m);
extern void func_L18_002F86E8(char *moby);
extern void func_L18_002F8CE0(char *moby);
extern void func_L18_002F8408(int unused, int idx);
extern void func_L18_002F8488(int a0, int idx);
extern int func_L18_002F8518(char *moby);
extern int func_L18_002F7CD8(char *moby, float arg, void *x);
extern unsigned char *func_L18_002F8270(char *self);
extern void func_L18_002F8B00(char *moby, void *p);
/* Defined further down with a typedef the file only declares there: no prototype here. */
extern void func_L18_002F8680();
extern void func_L00_00264B40(float, int, int, unsigned char *);
extern void func_L00_0025B178(void *);
extern void func_L00_00211908(void);
extern void func_L00_00299B68(int);
extern void func_L00_00286128(void *, void *);
extern void func_L00_00217718(void *, void *, int, int);
extern void func_L00_002512D8(int);
extern void func_L00_00250800(void *, int, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_L00_001FF500(void *, void *, float);
extern void func_L00_002EBF50(void *, void *, int, int, int);
extern void func_L00_0029ADD8(void);
extern void func_L00_0029A8D0(int i);
extern void func_L00_00264BE8(void *, void *, void *, float, float);
extern void func_L00_00263950(char *, char *, int, float, float);
extern void func_L00_0025F4A8_alt(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int) __asm__("func_L00_0025F4A8");
extern void func_L15_002092E0(void);
extern void func_00219C70(int arg0);
extern void func_00213DE0(void *, int, int, int);
extern void func_001F9BC0(void *);
extern int func_00215570(void *arg0, int arg1);
extern int func_00215B18(char *, float);
extern int func_L00_0025A778(void *, void *, int);
extern int func_001FA8A8(int, int, float);
extern float func_L00_001FF860(float, float);
extern float func_L00_0025CE58(float *, float *, float, float, float, float);
extern float func_L00_00258C80(float lo, float hi);
extern float func_001F9D10(void *, void *);
extern float func_001F9D48(void *, void *);
extern float func_001F9CB8(void *);
extern float func_001F9CE8(void *);
extern float func_001F9878(float);
extern float func_001FA888(int);
extern float func_001FA850(float, float);
extern float func_00214358(void *, int, float);
extern float func_00214158(void);
extern void func_L18_002D8140(int idx);
extern void func_L18_002D81B0(void *moby);
extern void func_L18_002D9358(unsigned char *arg, int value);
extern void func_L18_002D93C0(unsigned char *arg);
extern void func_L18_002E0E90(char *moby, void *v0, void *v1, void *v2, void *v3, void *v4, int a6, int a7, int a8);
extern void func_L18_002EB558(unsigned char *arg, void *src, void *position, int active, float speed);
extern void func_L18_002DD848(char *moby, void *pos, float f);
extern void func_L18_002DCD28(char *pos, float *vec, int arg, float fa, float fb);
extern char *func_L18_002D8070(void *pos, int idx);
extern void *func_L18_002D7F48(float *a, float *b, int idx);
extern char *func_L18_002DD7D0(void *owner, void *vector, float value);
extern char *func_L18_002EB4E0(void *owner, void *vector, int value);
extern float func_L18_002E0F80(void *moby);
extern int func_L18_002E0F90(void *moby);
extern int func_L18_002F1420(char *moby, int idx, float *pos);
extern int func_L18_002FDB28(int idx, float *pos, float *dir, float speed);
extern int func_L18_002FDCA0(int idx);
/* Parameter order as retail sets the arguments up (the floats before the last integers); the definition of
   func_L18_002D70E8 in vendor_002A8400.c lists its float first, with the same registers. */
extern char *func_L18_002D6738(float *pos, float *dir, float *target, float a, float b, int frames, int kind);
extern char *func_L18_002D70E8(int owner, int idx, float *from, float *to, float speed, int frames);

/* Update of the final boss robot (class 1422): one step of its state machine, then its bob, aim and tint. */
void func_L18_002F4050(BossMoby *moby) {
    BossData *d = (BossData *)moby->f78;
    BossMoby *tgt;
    float v0[4];
    float v1[4];
    float v2[4];
    float v3[4];
    float v4[4];
    float slow;
    float ang;
    float *aim;
    float fast;

    func_L18_002F7278((char *)moby);
    func_L18_002F72E0((char *)moby);
    tgt = d->fB0;
    /* The file defines this one without parameters; retail passes the moby. */
    ((void (*)(char *))func_L18_002F3F78)((char *)moby);
    {
        char *o = d->f3A4;
        if (o != 0 && o[0x20] >= 0) {
            func_L00_00264B40(*(float *)&D_L18_00162434, (int)o, 0, d->f1C0);
        }
    }
    if (moby->f31 != 0 && func_001F9D10(moby->f10, D_L18_00167840) < 32.0f) {
        func_L00_0025B178(moby);
        moby->f7F = 0x1A;
    }
    switch (moby->f20) {
    case 0: {
        int i;

        qcopy(d->f3C0, moby->f10);
        moby->f20 = 1;
        moby->f30 = 0xFF;
        moby->f32 = 0x200;
        moby->f34 |= 0x41;
        moby->f94 = 0;
        d->f28 = 3;
        d->f20 = 500.0f;
        d->f30 = 4.0f;
        d->f24 = 500;
        d->f340 = D_L18_001B11B0[d->f260[3]];
        d->f398 = d->f204[0];
        d->f348 = 1;
        d->f368 = -1;
        d->f38C = 350.0f;
        d->f334 = D_L18_00160058 + d->f220 * 0x100;
        d->f3D0 = 0.75f;
        d->f374 = 0.0f;
        for (i = 0; i < 3; i++) {
            func_L18_002F8408((int)moby, d->f204[i]);
        }
        break;
    }
    case 7:
        if (D_L18_0015F6A8 != 2) {
            moby->f34 &= 0xFFBE;
            moby->f94 = moby->f24[4];
            moby->f20 = *(unsigned char *)&d->f39C;
            if (moby->f20 == 5) {
                D_L18_0015F4FC = 1.0f;
            }
            if (moby->f20 == 0x19) {
                func_L00_00211908();
            }
            break;
        }
        if (((BossShared *)&D_L18_0016D2E0)->f30 == 2) {
            if (func_001F9850(0xA28) <= ((BossShared *)&D_L18_0016D2E0)->f34 &&
                ((BossShared *)&D_L18_0016D2E0)->f34 <= func_001F9850(0xB36)) {
                func_L18_002D81B0(d->f330);
            }
        } else if (((BossShared *)&D_L18_0016D2E0)->f30 == 3) {
            if (func_001F9850(0x3B6) < ((BossShared *)&D_L18_0016D2E0)->f34 &&
                ((BossShared *)&D_L18_0016D2E0)->f34 < func_001F9850(0x3C0)) {
                func_L18_002D8140(d->f200);
            }
            if (*(int *)&D_L18_00162430 == 0) {
                char *b = D_L18_0016016C + d->f294 * 0x80;
                func_L00_00286128(b + 0x30, b + 0x70);
                *(int *)&D_L18_00162430 = 1;
            }
        }
        break;
    case 1:
        if (func_00215570(D_0013F450.f80, d->f274) != 0 && D_0013F450.f20A4 == 2) {
            moby->f20 = 7;
            moby->f34 |= 0x41;
            func_L00_00299B68(0);
            d->f39C = 2;
            d->f358 = func_001F9850(600);
            d->f344 = d->f250[3];
            if (moby->f53 != 10) {
                func_00213DE0(moby, 10, 0, func_001F9850(10));
            }
        } else {
            int *t = D_L18_001B11B0[d->f270];
            if (func_L00_0025A778(D_0013F450.f80, t + 4, *t) != 0) {
                moby->f34 &= 0xFFBE;
                moby->f94 = moby->f24[4];
                moby->f20 = 10;
                {
                    int *b = D_L18_001B11B0[d->f260[0]];
                    d->f340 = b;
                    qcopy(d->f3C0, b + 4);
                }
                moby->f40[2] = func_L00_001FF860(D_0013F450.f80[0] - d->f3C0[0],
                                                 D_0013F450.f80[1] - d->f3C0[1]);
                func_L18_002F8488((int)moby, d->f204[0]);
                d->f38C = d->f38C * 0.85714287f;
            } else if (func_001F9D10(D_0013F450.f80, D_L18_0016016C + (d->f250[0] << 7) + 0x30) < 50.0f) {
                moby->f34 &= 0xFFBE;
                moby->f94 = moby->f24[4];
                moby->f20 = 0xC;
                {
                    int *p = D_L18_001B11B0[d->f260[0]];
                    d->f340 = p;
                    qcopy(d->f3C0, (char *)p + *p * 16);
                }
                d->f344 = d->f250[0];
                d->f38C = d->f38C * 0.85714287f;
            } else if (func_001F9D10(D_0013F450.f80, D_L18_0016016C + (d->f250[1] << 7) + 0x30) < 50.0f) {
                moby->f34 &= 0xFFBE;
                moby->f94 = moby->f24[4];
                d->f34C = 1;
                d->f38C = d->f38C * 0.71428573f;
                moby->f20 = 0xC;
                {
                    int *p = D_L18_001B11B0[d->f260[1]];
                    d->f340 = p;
                    qcopy(d->f3C0, (char *)p + *p * 16);
                }
                d->f344 = d->f250[1];
            } else if (func_001F9D10(D_0013F450.f80, D_L18_0016016C + (d->f250[2] << 7) + 0x30) < 50.0f) {
                if (*(int *)&D_L18_00162430 != 0) {
                    func_L18_002D8140(d->f200);
                    if (func_L00_0028EB98(moby, d->f3B0) != 0) {
                        int i = d->f3B0;
                        if (i != -1) {
                            char *e = D_0013E650 + i * 0x70;
                            if (*(BossMoby **)(e + 0x88) == moby && *(unsigned char *)(e + 0x74) != 0) {
                                func_L00_0028EBF0(i);
                            }
                        }
                        d->f3B0 = -1;
                    }
                    moby->f20 = 0x1B;
                    moby->f94 = 0;
                    moby->f34 |= 0x41;
                    d->f34C = 7;
                } else {
                    moby->f34 &= 0xFFBE;
                    moby->f94 = moby->f24[4];
                    d->f34C = 2;
                    d->f38C = d->f38C * 0.5714286f;
                    moby->f20 = 0xC;
                    {
                        int *p = D_L18_001B11B0[d->f260[2]];
                        d->f340 = p;
                        qcopy(d->f3C0, (char *)p + *p * 16);
                    }
                    d->f344 = d->f250[2];
                    d->f358 = func_001F9850(0x168);
                }
            }
        }
        break;
    case 2:
        aim = &moby->f40[2];
        ang = func_L00_001FF860(D_0013F450.f80[0] - moby->f10[0], D_0013F450.f80[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        func_L18_002F7F00((char *)moby);
        if (d->f38C <= 301.0f) {
            if (D_0013F450.f20A4 != 0) {
                D_0013F450.f2080->f94 = 0;
                D_0013F450.f2080->f34 |= 0x41;
            }
            func_L15_002092E0();
            {
                char *b = D_L18_0016016C + d->f2A0 * 0x80;
                func_L00_00217718(b + 0x30, b + 0x70, 0, 1);
            }
            func_L00_002512D8(d->f2B0);
            func_L00_00286128(D_0013F450.f80, D_0013F450.f90);
            func_L18_002F8488((int)moby, d->f204[0]);
            func_L00_00299B68(1);
            moby->f20 = 7;
            moby->f34 |= 0x41;
            if (moby->f53 != 10) {
                func_00213DE0(moby, 10, 0, func_001F9850(0x14));
            }
            d->f39C = 10;
            d->f348 = 0;
            d->f374 = 0.0f;
            {
                int *b = D_L18_001B11B0[d->f260[0]];
                d->f340 = b;
                qcopy(d->f3C0, b + 4);
            }
            moby->f40[2] = func_L00_001FF860(D_0013F450.f80[0] - d->f3C0[0],
                                             D_0013F450.f80[1] - d->f3C0[1]);
            d->f368 = -1;
            break;
        }
        if (moby->f53 == 10 &&
            (func_00215B18((char *)moby, 1.0f) != 0 || func_00215B18((char *)moby, 16.0f) != 0)) {
            qcopy(v0, D_0013F450.fC0);
            if (func_001F9B88(v0[2] - d->f3C0[2]) < 5.0f) {
                if ((float)moby->f50 < 15.0f) {
                    func_L00_00250800(moby, 2, v1);
                } else {
                    func_L00_00250800(moby, 3, v1);
                }
                func_L00_001FF4B0(v2, moby->fC0, D_0015EE6C * 20.0f);
                {
                    float a = func_L00_00258C80(0.08726646f, 0.5235988f);
                    float c = -func_002140F8(0.08726646f, 0.17453292f);
                    float e = func_001F9D48(moby->f10, D_0013F450.f80) * 3.0f;
                    if (e > 120.0f) {
                        e = 120.0f;
                    } else if (e < 60.0f) {
                        e = 60.0f;
                    }
                    func_L18_002D6738(v1, v2, v0, a, c, func_001FA898_r(func_001F9878(e)), 0);
                }
            }
        }
        if ((moby->f70 & 2) != 0 && moby->f53 != 10) {
            func_00213DE0(moby, 10, 0, func_001F9850(0x14));
        }
        break;
    case 9: {
        float lvl;
        int hit;

        aim = &moby->f40[2];
        ang = func_L00_001FF860(D_0013F450.f80[0] - moby->f10[0], D_0013F450.f80[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        qcopy(v0, d->f340 + 4);
        hit = func_L18_002F7CD8((char *)moby, 20.0f, v0);
        lvl = func_L18_002E0F80(d->f334);
        if (moby->f53 == 7) {
            if ((moby->f70 & 2) != 0) {
                func_00213DE0(moby, 8, 0, func_001F9850(10));
            }
        } else {
            func_001F9BF0(v1, d->f340 + 4, d->f3C0);
            func_L00_001FF4B0(v1, v1, D_0015EE6C * 5.0f);
            func_001F9BD8(d->f3C0, d->f3C0, v1);
        }
        if (lvl > 0.5f && lvl < 0.7f) {
            if (moby->f53 != 9) {
                func_00213DE0(moby, 9, 0, 0);
            }
            if (d->f33C == 0) {
                break;
            }
            func_L00_00250800(moby, 1, v1);
            qcopy(v2, D_L18_0016016C + d->f344 * 0x80 + 0x30);
            v2[2] = v2[2] + 10.0f;
            v2[2] = func_00214358(v2, 0, 0.5f);
            func_L18_002EB558(d->f33C, v1, D_L18_0016016C + d->f344 * 0x80 + 0x30, 1, 1.0f);
            d->f33C = 0;
        } else if (lvl >= 0.729f) {
            int i;

            if (moby->f53 != 0) {
                func_00213DE0(moby, 0, 0, func_001F9850(0x14));
            }
            if (hit != 0) {
                moby->f20 = 10;
            }
            for (i = 0; i < 4; i++) {
                int k = d->f34C == 1 ? d->f230[i] : d->f240[i];

                func_L18_002F3038(D_L18_00160058 + k * 0x100);
            }
        }
        if (d->f33C != 0) {
            float f;

            func_L00_00250800(moby, 1, v1);
            f = lvl + lvl;
            if (f > 1.0f) {
                f = 1.0f;
            }
            func_L18_002EB558(d->f33C, v1, D_L18_0015F660, 0, f);
        }
        break;
    }
    case 10: {
        unsigned char *h;

        aim = &moby->f40[2];
        ang = func_L00_001FF860(D_0013F450.f80[0] - moby->f10[0], D_0013F450.f80[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        func_00214D28(&d->f374, D_0015EE6C * 12.0f, D_0015EE70 * 20.0f);
        if (d->f374 != 0.0f) {
            func_001F9BF0(v0, (char *)d->f340 + (d->f348 * 0x10 + 0x10), d->f3C0);
            if (func_001F9CB8(v0) <= d->f374) {
                d->f348 = d->f348 + 1;
            } else {
                func_L00_001FF4B0(v0, v0, d->f374);
            }
            func_001F9BD8(d->f3C0, d->f3C0, v0);
        }
        h = func_L18_002F8270((char *)moby);
        if (h != 0 &&
            (func_00215B18((char *)moby, 1.0f) != 0 || func_00215B18((char *)moby, 16.0f) != 0)) {
            qcopy(v2, h + 0x10);
            qcopy(v0, d->f3C0);
            func_001F9BD8(v0, v0, moby->fC0);
            v0[2] = v0[2] + 6.0f;
            func_L00_001FF4B0(v1, moby->fC0, D_0015EE6C * 10.0f);
            {
                float a = func_L00_00258C80(0.5235988f, 0.7853982f);
                float c = -func_002140F8(0.34906584f, 0.5235988f);
                func_L18_002D6738(v0, v1, v2, a, c, func_001F9850(0x3C), 5);
            }
        }
        if (d->f348 == *d->f340 - 2) {
            if (moby->f53 != 0) {
                func_00213DE0(moby, 0, 0, func_001F9850(0x14));
            }
            moby->f20 = 0xB;
        }
        break;
    }
    case 0xB:
        if (d->f348 != *d->f340) {
            func_00214D28(&d->f374, D_0015EE6C * 10.0f, D_0015EE70 * 20.0f);
            func_001F9BF0(v0, (char *)d->f340 + (d->f348 * 0x10 + 0x10), d->f3C0);
            if (func_001F9CB8(v0) <= d->f374) {
                d->f348 = d->f348 + 1;
            } else {
                func_L00_001FF4B0(v0, v0, d->f374);
            }
            func_001F9BD8(d->f3C0, d->f3C0, v0);
            break;
        }
        if (func_001F9D48(moby->f10, D_0013F450.f80) < 50.0f && D_0013F450.f30E == 0 &&
            (D_0013F450.f2FC == 0 || D_0013F450.f2FC->fA6 != 0x24B)) {
            int *p = d->f340;

            d->f374 = 0.0f;
            qcopy(d->f3C0, (char *)p + *p * 16);
            d->f344 = d->f250[d->f34C];
            if (d->f34C == 2) {
                if (*(int *)&D_L18_001623F0 == 0) {
                    moby->f20 = 4;
                } else {
                    moby->f20 = 0x15;
                    d->f330 = func_L18_002D7F48(d->f3C0, D_0013F450.f80, d->f200);
                }
                break;
            }
            moby->f20 = 0xC;
        }
        break;
    case 4:
        if (D_0013F450.f30E == 0 && (D_0013F450.f2FC == 0 || D_0013F450.f2FC->fA6 != 0x24B)) {
            int i;

            *(int *)&D_L18_001623F0 = 1;
            moby->f20 = 7;
            d->f39C = 5;
            d->f330 = (BossMoby *)func_L18_002D8070(D_0013F450.f80, d->f200);
            moby->f34 |= 0x41;
            func_L00_00299B68(2);
            for (i = 0; i < 3; i++) {
                func_L18_002F8408((int)moby, d->f204[i]);
            }
        }
        break;
    case 5: {
        unsigned char *b = D_L18_00160058 + d->f21C * 0x100;

        b += 0x10;
        *(int *)&D_L18_00162420 = 0;
        v0[0] = func_001F9F90(0.0f) * 6.0f;
        v0[1] = func_001F9FA8(0.0f) * 6.0f;
        v0[2] = 0.0f;
        v1[0] = func_001F9F90(0.7853982f) * 6.0f;
        v1[1] = func_001F9FA8(0.7853982f) * 6.0f;
        v1[2] = 0.0f;
        func_001F9BD8(v0, v0, b);
        func_001F9BD8(v1, v1, b);
        v0[2] = v0[2] + 5.0f;
        v1[2] = v1[2] + 7.0f;
        func_001F9BC0(v2);
        v2[2] = 3.1415927f;
        func_001F9BC0(v3);
        v3[2] = 3.9269907f;
        v2[1] = 0.17453292f;
        v3[1] = 0.5235988f;
        {
            /* In locals: retail does not load them again after the copy. */
            char *recs = D_L18_0016016C;
            int idx = d->f298;

            qcopy(v4, recs + idx * 0x80 + 0x30);
            v4[3] = *(float *)(recs + idx * 0x80 + 0x78);
        }
        func_L18_002E0E90((char *)d->f334, v0, v1, v2, v3, v4, *(int *)&D_L18_00162424,
                          *(int *)&D_L18_00162428, 1);
        D_0013F450.f20C4 = 3;
        moby->f20 = 8;
        func_L18_002D9358(D_L18_00160058 + d->f21C * 0x100, func_001F9850(0x708));
        break;
    }
    case 3:
        if (func_L18_002E0F90(d->f334) == 2) {
            qcopy(d->f3C0, d->f300);
            qcopy(moby->f40, d->f310);
            moby->f20 = 9;
            if (moby->f53 != 7) {
                func_00213DE0(moby, 7, 0, func_001F9850(0x14));
            }
            func_L18_002F8488((int)moby, d->f398);
            func_L18_002F8408((int)moby, d->f204[d->f34C - 1]);
            func_L00_00250800(moby, 1, v0);
            d->f33C = (unsigned char *)func_L18_002EB4E0(moby, v0, 300);
        }
        break;
    case 8:
        moby->f34 |= 0x41;
        if (func_L18_002E0F80(d->f334) >= 1.0f) {
            moby->f20 = 0xC;
            moby->f34 &= 0xFFBE;
            if (moby->f53 != 0) {
                func_00213DE0(moby, 0, 0, func_001F9850(10));
            }
        }
        break;
    case 0x14:
        if (func_001F9908(&d->f354) != 0) {
            d->f354 = func_001F9850(0x14);
            qcopy(v0, d->f3C0);
            v0[2] = v0[2] + 4.0f;
            if (func_L18_002F1420((char *)moby, d->f214, v0) != 0) {
                moby->f20 = 0xC;
            }
        }
        break;
    case 0xC:
        aim = &moby->f40[2];
        ang = func_L00_001FF860(tgt->f10[0] - moby->f10[0], tgt->f10[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        func_L18_002F7F00((char *)moby);
        if ((moby->f70 & 2) == 0) {
            break;
        }
        switch (func_L18_002F8518((char *)moby)) {
        case 0xF:
            moby->f20 = 0xF;
            if (moby->f53 != 10) {
                func_00213DE0(moby, 10, 0, func_001F9850(0x14));
            }
            d->f354 = 0;
            d->f358 = func_001F9850(600);
            d->f35C = func_001F9850(0x168);
            break;
        case 0xD:
            moby->f20 = 0xD;
            if (moby->f53 != 2) {
                func_00213DE0(moby, 2, 0, func_001F9850(0x14));
            }
            d->f354 = 0;
            d->f358 = func_001F9850(func_002140B0(3) * 0x5A + 0x14A);
            d->f35C = func_001F9850((6 - d->f34C) * 0x1E);
            d->f3BC = func_002140F8(-0.333f, 0.333f);
            break;
        case 0x11:
            moby->f20 = 0x11;
            if (moby->f53 != 11) {
                func_00213DE0(moby, 0xB, 0, func_001F9850(0x14));
            }
            d->f354 = func_001F9850(10);
            d->f358 = func_001F9850(600);
            break;
        default:
            moby->f20 = 0x10;
            if (moby->f53 != 6) {
                func_00213DE0(moby, 6, 0, func_001F9850(0x14));
            }
            d->f354 = func_001F9850(0xF);
            d->f358 = func_001F9850(0x168);
            break;
        case 0xE:
            moby->f20 = 0x12;
            if (moby->f53 != 0) {
                func_00213DE0(moby, 0, 0, func_001F9850(0x14));
            }
            {
                float best = 0.0f;
                int i;

                for (i = 0; i < 3; i++) {
                    float w;

                    qcopy(v0, D_L18_0016016C + d->f280[i] * 0x80 + 0x30);
                    w = func_001FA850(
                        func_L00_001FF860(d->f3C0[0] - D_0013F450.f80[0], d->f3C0[1] - D_0013F450.f80[1]),
                        func_L00_001FF860(d->f3C0[0] - v0[0], d->f3C0[1] - v0[1]));
                    if (best < w) {
                        d->f3A8 = d->f280[i];
                        best = w;
                    }
                }
            }
            d->f358 = func_001F9850(900);
            d->f354 = func_001F9850(0xB4);
            break;
        case 0x13:
            moby->f20 = 0x13;
            if (moby->f53 != 1) {
                func_00213DE0(moby, 1, 0, func_001F9850(0x14));
            }
            if (func_001F9D48(moby->f10, D_0013F450.f80) < 16.0f) {
                d->f354 = func_001F9850(0x5A);
            } else {
                d->f354 = 0;
            }
            d->f358 = func_001F9850(600);
            d->f35C = func_001F9850(600);
            d->f338 = func_L18_002DD7D0(moby, d->f3C0, 5.8f);
            break;
        }
        break;
    case 0xE:
        aim = &moby->f40[2];
        ang = func_L00_001FF860(d->f320[0] - moby->f10[0], d->f320[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        func_L00_00250800(moby, 0x13, v0);
        *(BossQ *)v1 = *(BossQ *)d->f320;
        func_L18_002F8680((char *)moby, d->f140, v0, v1);
        d->f3D8 = -3.0f;
        if ((moby->f70 & 2) != 0 && moby->f53 != 8) {
            func_00213DE0(moby, 8, 0, func_001F9850(0x14));
        }
        if (d->f354 != 0) {
            if (d->f33C == 0) {
                func_L00_00250800(moby, 1, v1);
                d->f33C = (unsigned char *)func_L18_002EB4E0(moby, v1,
                                                             func_001F9850(*(int *)&D_L18_0016242C));
            } else if (func_001F9908(&d->f354) != 0) {
                if (moby->f53 != 9) {
                    func_00213DE0(moby, 9, 0, 0);
                }
                d->f354 = func_001F9850(0x78);
                func_L00_00250800(moby, 1, v1);
                func_001F9BF0(v2, d->f320, v1);
                v2[2] = 2.0f;
                func_L00_001FF500(v2, v2, 180.0f);
                func_001F9BD8(v2, v2, v1);
                func_L18_002EB558(d->f33C, v1, v2, 1, 1.0f);
                d->f33C = 0;
                if (d->f358 == 0) {
                    d->f350 = 0xE;
                    moby->f20 = 0xC;
                }
            } else {
                float f = 1.0f - func_001FA888(d->f354) / func_001F9878(90.0f);

                if (f > 1.0f) {
                    f = 1.0f;
                } else if (f < 0.0f) {
                    f = 0.0f;
                }
                func_L00_00250800(moby, 1, v1);
                func_L18_002EB558(d->f33C, v1, d->f320, 0, f);
                if (func_001F9850(0xF) < d->f354) {
                    qcopy(d->f320, tgt->f10);
                }
            }
        }
        func_001F9908(&d->f358);
        break;
    case 0xF:
        aim = &moby->f40[2];
        ang = func_L00_001FF860(tgt->f10[0] - moby->f10[0], tgt->f10[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        func_L18_002F7F00((char *)moby);
        if (func_00215B18((char *)moby, 1.0f) != 0 || func_00215B18((char *)moby, 16.0f) != 0) {
            if (func_002140B0(5) != 0 || d->fB4 == 2) {
                float a;
                float r;

                if (d->fB4 != 2) {
                    qcopy(v1, d->f70);
                } else {
                    qcopy(v1, D_0013F450.f80);
                }
                a = func_00214158();
                r = func_002140F8(1.0f, 10.0f);
                v0[0] = func_001F9F90(a) * r;
                v0[1] = func_001F9FA8(a) * r;
                v0[2] = 0.0f;
                func_001F9BD8(v0, v0, v1);
            } else {
                qcopy(v0, d->f70);
            }
            if (D_0013F450.f208C == 0xF) {
                qcopy(v1, D_L18_0016016C + d->f344 * 0x80 + 0x30);
                func_001F9BF0(v0, v0, v1);
                if (func_001F9CE8(v0) > 29.0f) {
                    func_L00_001FF500(v0, v0, 29.0f);
                }
                func_001F9BD8(v0, v0, v1);
            }
            v0[2] = func_00214358(v0, 0, 0.5f);
            if (func_001F9B88(v0[2] - d->f3C0[2]) < 5.0f) {
                float a;
                float c;
                float e;

                if (func_00215B18((char *)moby, 1.0f) != 0) {
                    func_L00_00250800(moby, 2, v1);
                } else {
                    func_L00_00250800(moby, 3, v1);
                }
                func_L00_001FF4B0(v2, moby->fC0, D_0015EE6C * 20.0f);
                a = func_L00_00258C80(0.08726646f, 0.5235988f);
                c = -func_002140F8(0.08726646f, 0.17453292f);
                e = func_001F9D48(moby->f10, D_0013F450.f80) * 3.0f;
                if (e > 120.0f) {
                    e = 120.0f;
                } else if (e < 60.0f) {
                    e = 60.0f;
                }
                func_L18_002D6738(v1, v2, v0, a, c, func_001FA898_r(func_001F9878(e)), 2);
                func_L18_002F8B00((char *)moby, v1);
            }
        }
        if (func_001F9908(&d->f358) != 0 || (d->f390 > 25.0f && (float)d->f34C < 4.0f)) {
            d->f350 = 0xF;
            moby->f20 = 0xC;
        }
        break;
    case 0xD:
        aim = &moby->f40[2];
        ang = func_L00_001FF860(tgt->f10[0] - moby->f10[0], tgt->f10[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        func_L18_002F7F00((char *)moby);
        if (d->f354 < d->f358 + d->f35C) {
            d->f128 = func_L00_001FF860(1.0f, d->f3BC);
        }
        if (moby->f53 == 2) {
            if ((moby->f70 & 2) != 0) {
                func_00213DE0(moby, 4, 0, func_001F9850(0x14));
            }
        } else if (func_001F9908(&d->f354) != 0 && d->f358 != 0 && moby->f53 != 4) {
            func_00213DE0(moby, 4, 0, func_001F9850(0x14));
        }
        if (moby->f53 == 4) {
            if (func_00215B18((char *)moby, 1.0f) != 0) {
                float f;

                d->f354 = func_001F9850(0x5A);
                d->f360 = func_001F9850(300);
                func_L00_00250800(moby, 0, v0);
                qcopy(v1, moby->fC0);
                func_L00_001FF4B0(v2, moby->fD0, d->f3BC);
                func_001F9BD8(v1, v1, v2);
                f = func_001F9D48(v0, tgt->f10) * 0.5f;
                if (f > 30.0f) {
                    f = 30.0f;
                } else if (f < 0.0f) {
                    f = 0.0f;
                }
                func_L00_001FF4B0(v1, v1, f * D_0015EE6C);
                func_L18_002DCD28((char *)v0, v1, (int)moby, 64.0f, D_0015EE6C * 18.0f);
                func_L18_002F8B00((char *)moby, v0);
                d->f3BC = func_L00_00258C80(0.133f, 0.333f);
            } else if ((moby->f70 & 2) != 0 && moby->f53 != 3) {
                func_00213DE0(moby, 3, 0, func_001F9850(0x14));
            }
        }
        if (func_001F9908(&d->f358) != 0 && func_001F9908(&d->f35C) != 0) {
            d->f350 = 0xD;
            moby->f20 = 0xC;
            if (moby->f53 != 5) {
                func_00213DE0(moby, 5, 0, func_001F9850(0x14));
            }
        }
        break;
    case 0x10:
        aim = &moby->f40[2];
        ang = func_L00_001FF860(D_0013F450.f80[0] - moby->f10[0], D_0013F450.f80[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        func_L18_002F7F00((char *)moby);
        if (func_001F9908(&d->f354) != 0) {
            float a;
            float r;

            qcopy(v0, D_L18_0016016C + d->f344 * 0x80 + 0x30);
            func_L00_001FF4B0(v1, moby->fC0, 3.0f);
            func_001F9BD8(v1, v1, moby->f10);
            v1[2] = v1[2] + 3.0f;
            a = func_00214158();
            r = func_002140F8(3.0f, 29.0f);
            v2[0] = func_001F9F90(a) * r;
            v2[1] = func_001F9FA8(a) * r;
            v2[2] = 0.0f;
            func_001F9BD8(v2, v2, v0);
            v2[2] = v2[2] + 5.0f;
            v2[2] = func_00214358(v2, 0, 0.5f);
            if (func_001F9B88(v2[2] - d->f3C0[2]) < 5.0f) {
                float speed = func_001F9D48(v2, v1) / (float)func_001F9850(0x3C);
                float w = func_002140F8(18.0f, 20.0f);

                func_L18_002D70E8((int)moby, d->f29C, v1, v2, speed,
                                  func_001FA898_r(func_001F9878(w * 60.0f)));
            }
            d->f354 = func_001F9850(0xF);
        }
        if (func_001F9908(&d->f358) != 0) {
            d->f350 = 0x10;
            moby->f20 = 0xC;
        }
        break;
    case 0x11: {
        int n;

        aim = &moby->f40[2];
        ang = func_L00_001FF860(D_0013F450.f80[0] - moby->f10[0], D_0013F450.f80[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        func_L18_002F7F00((char *)moby);
        if ((moby->f70 & 2) != 0 && moby->f53 != 12) {
            func_00213DE0(moby, 0xC, 0, func_001F9850(0x14));
        }
        if ((moby->f53 == 12 && func_001F9908(&d->f354) != 0) || d->f354 == func_001F9850(0x1E)) {
            float f = d->f354 != 0 ? 4.3f : -4.3f;

            func_L00_001FF4B0(v0, moby->fD0, f);
            func_001F9BD8(v0, v0, d->f3C0);
            v0[2] = func_00214358(v0, 0, 0.5f);
            if (func_001F9B88(v0[2] - d->f3C0[2]) < 1.0f) {
                /* v1 is not written in this state; retail passes it all the same. */
                float speed = func_001F9D48(v0, v1) / (float)func_001F9850(0x3C);

                if (func_L18_002FDB28(d->f210, v0, v0, speed) != 0 && d->f354 == 0) {
                    d->f354 = func_001F9850(0x3C);
                }
            }
        }
        n = func_L18_002FDCA0(d->f210);
        if (n >= 11 && func_001F9850(0x3C) > d->f354) {
            d->f354 = func_001F9850(1000);
        } else if (n < 3 && func_001F9850(0x3C) < d->f354) {
            d->f358 = 0;
        }
        if (func_001F9908(&d->f358) != 0) {
            d->f350 = 0x11;
            moby->f20 = 0xC;
            if (moby->f53 != 13) {
                func_00213DE0(moby, 0xD, 0, func_001F9850(0x14));
            }
        }
        break;
    }
    case 0x13: {
        int fire;

        aim = &moby->f40[2];
        ang = func_L00_001FF860(D_0013F450.f80[0] - moby->f10[0], D_0013F450.f80[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        if (func_001F9908(&d->f354) != 0) {
            func_L18_002F7DC0((char *)moby);
        }
        func_L18_002DD848(d->f338, d->f3C0, 5.8f);
        if (func_L00_0028EB98(moby, d->f3B0) == 0) {
            d->f3B0 = func_0022ED80(0xE, 4, (int)moby);
        }
        fire = 0;
        if (func_001F9908(&d->f358) != 0 &&
            (D_0013F450.f208C != 0xF || func_001F9908(&d->f35C) != 0)) {
            fire = 1;
        }
        if (D_0013F450.f208C == 0xF) {
            int *list = D_0013F450.f560;

            if (func_001F9D48(D_0013F450.f80, (char *)list + *list * 16) < 3.0f) {
                fire = 1;
            }
        }
        if (D_0013F450.f2084 == 0x16 && func_001F9D48(moby->f10, D_0013F450.f80) < 12.0f) {
            fire = 1;
        }
        if (func_001F9D48(D_0013F450.f80, D_L18_0016016C + d->f250[2] * 0x80 + 0x30) >
            *(float *)&D_L18_00162408 + 5.8f) {
            fire = 1;
        }
        if (fire) {
            int i = d->f3B0;

            if (i != -1) {
                char *e = D_0013E650 + i * 0x70;
                if (*(BossMoby **)(e + 0x88) == moby && *(unsigned char *)(e + 0x74) != 0) {
                    func_L00_0028EBF0(i);
                }
            }
            d->f3B0 = -1;
            moby->f20 = 0xC;
            if (moby->f53 != 0) {
                func_00213DE0(moby, 0, 0, func_001F9850(0x14));
            }
            d->f350 = 0x13;
        }
        break;
    }
    case 0x12:
        aim = &moby->f40[2];
        ang = func_L00_001FF860(d->f70[0] - moby->f10[0], d->f70[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        {
            /* Retail scales the index before it sets up the call. */
            int off = d->f3A8 * 0x80;

            if (func_L18_002F7CD8((char *)moby, D_0015EE6C * 12.0f, D_L18_0016016C + off + 0x30) != 0) {
                moby->f20 = 0xE;
                if (moby->f53 != 7) {
                    func_00213DE0(moby, 7, 0, func_001F9850(0x14));
                }
                qcopy(d->f320, tgt->f10);
            }
        }
        break;
    case 0x15:
        aim = &moby->f40[2];
        ang = func_L00_001FF860(d->f330->f10[0] - moby->f10[0], d->f330->f10[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        func_L18_002D81B0(d->f330);
        if (func_L18_002F7CD8((char *)moby, D_0015EE6C * 12.0f, d->f330->f10) != 0) {
            int ticks;

            switch (d->f34C) {
            case 0:
                ticks = func_001F9850(0xE10);
                break;
            case 1:
                ticks = func_001F9850(0xA8C);
                break;
            case 2:
                ticks = func_001F9850(0x708);
                break;
            case 3:
                ticks = func_001F9850(0x4B0);
                break;
            case 4:
                ticks = func_001F9850(900);
                break;
            case 5:
            default:
                ticks = func_001F9850(600);
                break;
            }
            func_L18_002D9358(D_L18_00160058 + d->f21C * 0x100, func_001F9850(ticks));
            d->f354 = 0;
            if (d->f34C == 4) {
                moby->f20 = 0x14;
            } else {
                moby->f20 = 0xC;
            }
            d->f364 = 1;
            d->f34C = d->f34C + 1;
        }
        if (*(int *)&D_L18_00162420 != 0) {
            moby->f20 = 5;
        }
        break;
    case 0x1A: {
        int n;

        aim = &moby->f40[2];
        ang = func_L00_001FF860(D_0013F450.f80[0] - moby->f10[0], D_0013F450.f80[1] - moby->f10[1]);
        func_L00_0025CE58(aim, &d->f370, ang, D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f,
                          D_0015EE6C * 6.2831855f);
        func_L18_002F7F00((char *)moby);
        d->f358 = d->f358 + 1;
        n = func_001F9850(0x14);
        if (d->f358 % n == 0) {
            float a = func_001FA748(moby->f40[2], func_002140F8(-30.0f, 30.0f) * 0.017453292f);

            v0[0] = func_001F9F90(a) * 6.0f;
            v0[1] = func_001F9FA8(a) * 6.0f;
            v0[2] = 0.0f;
            v0[2] = func_002140F8(3.0f, 8.0f);
            func_001F9BD8(v0, v0, d->f3C0);
            func_L00_0025F4A8_alt(moby, D_L18_0015F660, v0, 0.0f, 0.0f, 0x14, 6, 0x20, 1.0f, 2.5f, 9.0f,
                                  1.0f, -1, 0.0f, 0, 0, -1, 0);
        }
        if (d->f358 == func_001F9850(0x78)) {
            if (moby->f53 != 14) {
                func_00213DE0(moby, 0xE, 5, 1);
            }
            v0[0] = func_001F9F90(moby->f40[2]) * 3.0f;
            v0[1] = func_001F9FA8(moby->f40[2]) * 3.0f;
            v0[2] = 6.0f;
            func_001F9BD8(v0, v0, d->f3C0);
            func_L00_0025F4A8_alt(moby, D_L18_0015F660, v0, 0.0f, 0.0f, 0x28, 0xA, 0x20, 2.5f, 5.0f, 9.0f,
                                  2.0f, -1, 10.0f, 0, 0, -1, 0);
        }
        if (moby->f52 == moby->f53 && moby->f52 == 14 && func_00215B18((char *)moby, 30.0f) != 0) {
            moby->f20 = 0x1B;
            func_L18_002D93C0(D_L18_00160058 + d->f21C * 0x100);
        }
        break;
    }
    case 0x1B:
        moby->f94 = 0;
        moby->f34 |= 0x41;
        moby->f34 &= 0xEFFF;
        if (d->f34C < 7) {
            func_L00_00299B68(3);
            d->f34C = 7;
            ((BossShared *)&D_L18_0016D2E0)->f4A = 1;
            {
                /* In locals: retail does not load them again after the first copy. */
                char *recs = D_L18_0016016C;
                int idx = d->f294;

                qcopy(((BossShared *)&D_L18_0016D2E0)->f10, recs + idx * 0x80 + 0x30);
                qcopy(((BossShared *)&D_L18_0016D2E0)->f20, recs + idx * 0x80 + 0x70);
            }
            moby->f20 = 7;
            d->f39C = 0x1B;
        } else if (d->f34C == 7) {
            if (D_0013F450.f2FC != 0 && D_0013F450.f30E == 0 && D_0013F450.f2FC->fA6 == 0x247 &&
                D_0013F450.f2084 == 0x22) {
                if (d->f3AC == 0) {
                    d->f3AC = 1;
                }
            } else if (d->f3AC == 0) {
                func_L18_002D8140(d->f200);
            }
            if (d->f3AC != 0) {
                int n = d->f3AC++;

                if (func_001F9850(0x28) < n) {
                    func_L00_00299B68(4);
                    d->f34C = 8;
                    moby->f20 = 7;
                    d->f39C = 0x1B;
                }
            }
        } else if (d->f34C == 8) {
            *(BossU128 *)v0 = 0;
            *(BossU128 *)v1 = 0;
            v0[0] = 660.6f;
            v0[1] = 481.4f;
            v0[2] = 112.6f;
            v1[1] = -0.12f;
            v1[2] = -2.76f;
            func_L00_002EBF50(v0, v1, 1, 0, 0);
            func_L00_00299B68(5);
            d->f34C = 9;
        } else if (d->f34C == 9 && D_L18_0015F6A8 == 0) {
            func_L00_0029ADD8();
            d->f34C = 10;
        } else {
            int k = d->f34C;

            if (k == 10 && D_L18_0015F6A8 == 0) {
                func_L00_0029A8D0(0xB);
                d->f34C = 0xB;
            } else if (k == 0xB && D_L18_0015F6A8 == 0) {
                *(int *)&D_L18_001623F0 = 0;
                *(int *)&D_L18_00162430 = 0;
                func_00219C70(0x21);
                func_0020D678(d->f3A0);
                if (d->f3A4 != 0) {
                    func_0020D678(d->f3A4);
                }
                func_0020D678(moby);
                return;
            }
        }
        break;
    }
    func_L18_002F86E8((char *)moby);
    if (moby->f31 != 0) {
        func_L00_00250800(moby, 8, v0);
        func_L00_00250800(moby, 9, v1);
        func_001F9BF0(v2, v0, v1);
        func_L00_001FF4B0(v2, v2, 0.1f);
        func_L00_00264BE8(v0, v0, v2, 600000.0f, 0.0f);
    }
    if (d->f34C > 1) {
        D_0013F450.f5D8 = moby;
    }
    qcopy(moby->f10, d->f3C0);
    slow = 0.3f;
    fast = 0.03f;
    d->f3D4 = func_001FA748(d->f3D4, D_0015EE6C * 3.1415927f);
    func_00214D88(d->f3D0 * func_001F9FA8(d->f3D4) + d->f3D8, D_0015EE70 * 4.0f, D_0015EE70 * 4.0f,
                  D_0015EE6C * 4.0f, &d->f3DC, &d->f3E0);
    moby->f10[2] = moby->f10[2] + d->f3DC;
    d->f3D8 = 0.0f;
    func_L00_00263950((char *)moby, d->fC0, 7, D_0015EE64 * fast, D_0015EE64 * slow);
    func_L00_00263950((char *)moby, d->f140, 0x13, D_0015EE64 * fast, D_0015EE64 * slow);
    d->f3B4 = func_001FA748(d->f3B4, D_0015EE6C * 3.4906585f);
    {
        int c = func_001FA8A8(0x30C8C8C8, 0x1C393939, func_001F9FA8(d->f3B4) * 0.5f + 0.5f);
        int r = c & 0xFF;
        int g = (c >> 8) & 0xFF;
        int b = (c >> 16) & 0xFF;
        int a = (unsigned int)c >> 24;

        moby->f90 = c;
        d->f3B8 = (a << 24) | ((b / 3) << 16) | (g << 8) | (r / 3);
    }
    if (moby->f31 != 0) {
        func_001F49B0((void (*)(void))func_L18_002F8CE0, moby);
    }
}
