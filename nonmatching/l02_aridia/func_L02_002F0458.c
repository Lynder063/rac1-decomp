/* NON_MATCHING func_L02_002F0458 -- src/overlays/l02_aridia/vendor_002E21F8.c
 * Best so far: SIZE ours 2512 / retail 2516, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * Cannot land as written (#define in a candidate): rewrite that in plain C first.
 * What the last attempts found:
 *   Level 02 moby update (class 1479), 2516 bytes. Dispatch on moby[0x20]: state 0 calls func_001FA1F8, state 1 an
 *   Runs used: 13 of 16 (p0 to p11, p10 inline offsets 2476). Stopped at budget: no form reached the same size, an
 */
extern short D_L02_001620D8;
extern short D_L02_001620DC;
extern short D_L02_001620E0;
extern short D_L02_001620E4;
extern short D_L02_001620EC;
extern short D_L02_001620F0;
extern short D_L02_001620F4;
extern short D_L02_001620F8;
extern short D_L02_001620FC;
extern short D_L02_00162100;
extern short D_L02_00162104;
extern short D_L02_00162108;
extern short D_L02_0016210C;
extern short D_L02_00162110;
extern short D_L02_00162114;
extern short D_L02_00162118;
extern short D_L02_0016211C;
extern short D_L02_00162120;
extern short D_L02_00162124;
extern short D_L02_00162128;
extern short D_L02_0016212C;
extern short D_L02_00162130;
extern short D_L02_00162134;
extern short D_L02_00162138;
extern short D_L02_0016213C;
extern short D_L02_00162140;
extern short D_L02_00162144;
extern short D_L02_00162148;
extern short D_L02_0016214C;
extern short D_L02_00162150;
extern short D_L02_00162154;
extern short D_L02_00162158;
extern short D_L02_0016215C;
extern short D_L02_00162160;
extern short D_L02_00162164;
extern short D_L02_00162168;
extern short D_L02_0016216C;
extern short D_L02_00162170;
extern short D_L02_00162174;
extern short D_L02_00162178;
extern short D_L02_0016217C;
extern short D_L02_00162180;
extern short D_L02_00162184;
extern short D_L02_00162188;
extern short D_L02_0016218C;
extern short D_L02_00162190;
extern short D_L02_00162194;
extern short D_L02_00162198;
extern short D_L02_0016219C;
extern short D_L02_001621A0;
extern short D_L02_001621A4;
extern short D_L02_001621A8;
extern short D_L02_001621AC;
extern short D_L02_001621B0;
extern short D_L02_001621B4;
extern short D_L02_001621B8;
extern short D_L02_001621BC;
extern short D_L02_001621C0;
extern short D_L02_001621C4;
extern short D_L02_001621C8;
extern short D_L02_001621CC;
extern short D_L02_001621D0;
extern short D_L02_001621D4;
extern short D_L02_001621D8;
extern short D_L02_001621DC;
extern short D_L02_001621E0;
extern short D_L02_001621E4;
extern short D_L02_001621E8;
extern short D_L02_001621EC;
extern short D_L02_001621F0;
extern short D_L02_001621F4;
extern float D_0015EE6C MACRO_ADDR;
extern void func_001FA1F8(void *, void *);
extern int func_L00_00200290(void *, float);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898(float);
extern int func_002140B0(int);
extern void func_L00_00258DB0(float *, float, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001FA8A8(int, int, float);
extern char *func_00219780(void *, void *, void *, int, int, int, int, int, int);
extern void func_001F9BC0(void *);
extern void func_0020D678(void *);

#define GF(x) (*(float *)&(x))
#define GI(x) (*(int *)&(x))

/* Level 02 moby update (class 1479): state machine on moby[0x20], vector loops. */
void func_L02_002F0458(unsigned char *moby) {
    unsigned char *d;
    unsigned char *pos;
    unsigned char *pm;
    unsigned char *pd;
    float vec[4];
    float A[4];
    float B[4];
    float C[4];
    float *pA;
    float *pB;
    float *pC;
    int cnt, r, a2, a16, a17, a18, a19, a20, st;
    float z, t, t1, t2, t20;

    st = moby[0x20];
    d = *(unsigned char **)(moby + 0x78);
    switch (st) {
    case 0:
        moby[0x20] = d[0] + 1;
        func_001FA1F8(moby + 0xC0, moby + 0x40);
        return;
    case 1:
        pos = moby + 0x10;
        qcopy(vec, pos);
        vec[3] = 6.0f;
        r = func_L00_00200290(vec, 120.0f);
        if (r == -1) return;
        pA = A;
        pB = B;
        pC = C;
        pm = moby + 0xC0;
        if (func_001F9908((int *)(d + 0xC0))) {
            *(int *)(d + 0xC0) = func_001FA898(func_001F9878(func_002140F8((float)GI(D_L02_0016219C), (float)GI(D_L02_001621A0))));
            cnt = func_002140B0(7) ? 1 : func_002140B0(5) + 5;
            if (cnt > 0) {
                do {
                    cnt--;
                    func_L00_00258DB0(pC, 0.0f, GF(D_L02_00162168) * D_0015EE6C);
                    z = func_002140F8(-GF(D_L02_00162164), GF(D_L02_00162164)) + 1.0f;
                    func_L00_001FF4B0(pA, pm, (GF(D_L02_00162158) * z) * D_0015EE6C);
                    func_001F9BD8(pA, pA, pC);
                    z = func_002140F8(-GF(D_L02_00162164), GF(D_L02_00162164)) + 1.0f;
                    func_L00_001FF4B0(pB, pA, (GF(D_L02_0016215C) * z) * D_0015EE6C);
                    pB[2] = pB[2] - GF(D_L02_00162160) * D_0015EE6C;
                    t1 = func_002140F8(GF(D_L02_0016217C), GF(D_L02_00162180));
                    pA[3] = t1;
                    t2 = func_002140F8(GF(D_L02_00162184), GF(D_L02_00162188));
                    pB[3] = t2;
                    t = func_002140F8(0.0f, 1.0f);
                    a19 = func_001FA8A8(GI(D_L02_0016218C), GI(D_L02_00162190), t);
                    t = func_002140F8(0.0f, 1.0f);
                    a18 = func_001FA8A8(GI(D_L02_00162194), GI(D_L02_00162198), t);
                    t = func_002140F8(0.0f, 1.0f);
                    a17 = func_001FA898(func_001F9878((float)GI(D_L02_0016216C) * t + 1.0f));
                    z = func_002140F8(-GF(D_L02_00162178), GF(D_L02_00162178)) + 1.0f;
                    a16 = func_001FA898(func_001F9878((float)GI(D_L02_00162170) * z));
                    z = func_002140F8(-GF(D_L02_00162178), GF(D_L02_00162178)) + 1.0f;
                    a2 = func_001FA898(func_001F9878((float)GI(D_L02_00162174) * z));
                    func_00219780(pos, pA, pB, a19, a18, a17, a16, a2, GI(D_L02_001621A4));
                } while (cnt != 0);
            }
        }
        if (func_002140B0(4)) return;
        z = func_002140F8(-GF(D_L02_00162124), GF(D_L02_00162124)) + 1.0f;
        func_L00_001FF4B0(pA, pm, (GF(D_L02_00162118) * z) * D_0015EE6C);
        z = func_002140F8(-GF(D_L02_00162124), GF(D_L02_00162124)) + 1.0f;
        t20 = (GF(D_L02_0016211C) * z) * D_0015EE6C;
        func_001F9BC0(pB);
        B[2] = t20;
        z = func_002140F8(-GF(D_L02_00162120), GF(D_L02_00162120));
        func_L00_001FF4B0(pC, moby + 0xD0, z * D_0015EE6C);
        func_001F9BD8(pB, pB, pC);
        t1 = func_002140F8(GF(D_L02_00162138), GF(D_L02_0016213C));
        A[3] = t1;
        t2 = func_002140F8(GF(D_L02_00162140), GF(D_L02_00162144));
        B[3] = t2;
        t = func_002140F8(0.0f, 1.0f);
        a20 = func_001FA8A8(GI(D_L02_00162148), GI(D_L02_0016214C), t);
        t = func_002140F8(0.0f, 1.0f);
        a19 = func_001FA8A8(GI(D_L02_00162150), GI(D_L02_00162154), t);
        t = func_002140F8(0.0f, 1.0f);
        a18 = func_001FA898(func_001F9878((float)GI(D_L02_00162128) * t + 1.0f));
        z = func_002140F8(-GF(D_L02_00162134), GF(D_L02_00162134)) + 1.0f;
        a16 = func_001FA898(func_001F9878((float)GI(D_L02_0016212C) * z));
        z = func_002140F8(-GF(D_L02_00162134), GF(D_L02_00162134)) + 1.0f;
        a2 = func_001FA898(func_001F9878((float)GI(D_L02_00162130) * z));
        func_00219780(pos, pA, pB, a20, a19, a18, a16, a2, -1);
        return;
    case 2:
        if (func_001F9908((int *)(d + 0xC4))) {
            *(int *)(d + 0xC8) = (*(int *)(d + 0xC8) < 0x15) ? 30 : 10;
            *(int *)(d + 0xC4) = func_001FA898(func_001F9878(func_002140F8(120.0f, 180.0f)));
        }
        pos = moby + 0x10;
        qcopy(vec, pos);
        vec[3] = 6.0f;
        r = func_L00_00200290(vec, 120.0f);
        if (r == -1) {
            if (func_002140B0(4)) return;
        }
        pA = A;
        pB = B;
        pC = C;
        pm = moby + 0xC0;
        pd = moby + 0xD0;
        if (func_001F9908((int *)(d + 0xC0))) {
            *(int *)(d + 0xC0) = func_001FA898(func_001F9878(func_002140F8((float)GI(D_L02_001621EC), (float)GI(D_L02_001621F0))));
            cnt = func_002140B0(7) ? 1 : func_002140B0(5) + 5;
            if (cnt > 0) {
                do {
                    cnt--;
                    func_L00_00258DB0(pC, 0.0f, GF(D_L02_001621B8) * D_0015EE6C);
                    z = func_002140F8(-GF(D_L02_001621B4), GF(D_L02_001621B4)) + 1.0f;
                    func_L00_001FF4B0(pA, pm, (GF(D_L02_001621A8) * z) * D_0015EE6C);
                    func_001F9BD8(pA, pA, pC);
                    z = func_002140F8(-GF(D_L02_001621B4), GF(D_L02_001621B4)) + 1.0f;
                    func_L00_001FF4B0(pB, pA, (GF(D_L02_001621AC) * z) * D_0015EE6C);
                    pB[2] = pB[2] - GF(D_L02_001621B0) * D_0015EE6C;
                    t1 = func_002140F8(GF(D_L02_001621CC), GF(D_L02_001621D0));
                    pA[3] = t1;
                    t2 = func_002140F8(GF(D_L02_001621D4), GF(D_L02_001621D8));
                    pB[3] = t2;
                    t = func_002140F8(0.0f, 1.0f);
                    a19 = func_001FA8A8(GI(D_L02_001621DC), GI(D_L02_001621E0), t);
                    t = func_002140F8(0.0f, 1.0f);
                    a18 = func_001FA8A8(GI(D_L02_001621E4), GI(D_L02_001621E8), t);
                    t = func_002140F8(0.0f, 1.0f);
                    a17 = func_001FA898(func_001F9878((float)GI(D_L02_001621BC) * t + 1.0f));
                    z = func_002140F8(-GF(D_L02_001621C8), GF(D_L02_001621C8)) + 1.0f;
                    a16 = func_001FA898(func_001F9878((float)GI(D_L02_001621C0) * z));
                    z = func_002140F8(-GF(D_L02_001621C8), GF(D_L02_001621C8)) + 1.0f;
                    a2 = func_001FA898(func_001F9878((float)GI(D_L02_001621C4) * z));
                    func_00219780(pos, pA, pB, a19, a18, a17, a16, a2, GI(D_L02_001621F4));
                } while (cnt != 0);
            }
        }
        z = func_002140F8(-GF(D_L02_001620E4), GF(D_L02_001620E4)) + 1.0f;
        func_L00_001FF4B0(pA, pm, (GF(D_L02_001620D8) * z) * D_0015EE6C);
        z = func_002140F8(-GF(D_L02_001620E4), GF(D_L02_001620E4)) + 1.0f;
        t20 = (GF(D_L02_001620DC) * z) * D_0015EE6C;
        func_001F9BC0(pB);
        pB[2] = t20;
        z = func_002140F8(-GF(D_L02_001620E0), GF(D_L02_001620E0));
        func_L00_001FF4B0(pC, pd, z * D_0015EE6C);
        func_001F9BD8(pB, pB, pC);
        t1 = func_002140F8(GF(D_L02_001620F8), GF(D_L02_001620FC));
        pA[3] = t1;
        t2 = func_002140F8(GF(D_L02_00162100), GF(D_L02_00162104));
        pB[3] = t2;
        t = func_002140F8(0.0f, 1.0f);
        a19 = func_001FA8A8(GI(D_L02_00162108), GI(D_L02_0016210C), t);
        t = func_002140F8(0.0f, 1.0f);
        a18 = func_001FA8A8(GI(D_L02_00162110), GI(D_L02_00162114), t);
        t = func_002140F8(0.0f, 1.0f);
        a17 = func_001FA898(func_001F9878((float)*(int *)(d + 0xC8) * t + 1.0f));
        z = func_002140F8(-GF(D_L02_001620F4), GF(D_L02_001620F4)) + 1.0f;
        a16 = func_001FA898(func_001F9878((float)GI(D_L02_001620EC) * z));
        z = func_002140F8(-GF(D_L02_001620F4), GF(D_L02_001620F4)) + 1.0f;
        a2 = func_001FA898(func_001F9878((float)GI(D_L02_001620F0) * z));
        func_00219780(pos, pA, pB, a19, a18, a17, a16, a2, -1);
        return;
    case 3:
        func_0020D678(moby);
        return;
    }
}
