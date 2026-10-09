/* NON_MATCHING func_L06_0030A0A8 -- src/overlays/l06_blarg/vendor_002FE5D0.c
 * Best so far: SIZE ours 1500 / retail 1496, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 06 moby update (1496 bytes): state machine on m[0x20] (cases 0, 2, 3, 4) with two vector-burst loops in 
 *   Best candidate p3.c: size 1520 vs 1496. The block order and the int-typed globals (lwc1 + cvt.s.w, e.g. D_L06_
 *   Wall to unblock: the loop-invariant hoist of m+0xC0 and the CSE of m+0x10 are the difference; retail's saved s
 */
extern int func_L00_00200290(char *, float);
extern void func_001FA1F8(void *, void *);
extern int func_001F9908(void *);
extern void func_L00_00260108(void *, void *, int, float, float);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_002140B0(int);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BC0(void *);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001FA8A8(int, int, float);
extern char *func_00219780(void *, void *, void *, int, int, int, int, int, int);
extern void func_L00_00258DB0(float *, float, float);
extern float D_0015EE6C MACRO_ADDR;
extern short D_L06_0016238C;
extern short D_L06_00162380;
extern short D_L06_00162384;
extern short D_L06_00162388;
extern short D_L06_00162390;
extern short D_L06_00162394;
extern short D_L06_00162398;
extern short D_L06_0016239C;
extern short D_L06_001623A0;
extern short D_L06_001623A4;
extern short D_L06_001623A8;
extern short D_L06_001623AC;
extern short D_L06_001623B0;
extern short D_L06_001623B4;
extern short D_L06_001623B8;
extern short D_L06_001623BC;
extern short D_L06_001623C0;
extern short D_L06_001623C4;
extern short D_L06_001623C8;
extern short D_L06_001623CC;
extern short D_L06_001623D0;
extern short D_L06_001623D4;
extern short D_L06_001623D8;
extern short D_L06_001623DC;
extern short D_L06_001623E0;
extern short D_L06_001623E4;
extern short D_L06_001623E8;
extern short D_L06_001623EC;
extern short D_L06_001623F0;
extern short D_L06_001623F4;
extern short D_L06_001623F8;
extern short D_L06_001623FC;
extern short D_L06_00162400;
extern short D_L06_00162404;
extern short D_L06_00162408;
extern short D_L06_0016240C;

/* Level 06 moby update: state machine (0-4); states 3 and 4 run a burst of spark vectors. */
void func_L06_0030A0A8(char *m)
{
    char *d = *(char **)(m + 0x78);
    float v1[4];
    float v2[4];
    float v3[4];
    float v4[4];

    qcopy(v1, m + 0x10);
    v1[3] = 3.0f;
    if (func_L00_00200290((char *)v1, 64.0f) == -1) {
        return;
    }
    switch ((unsigned char)m[0x20]) {
    case 0:
        func_001FA1F8(m + 0xC0, m + 0x40);
        if (*(int *)(d + 4) != 0) {
            m[0x20] = 1;
        } else if (*(int *)d != 0) {
            m[0x20] = 4;
        } else {
            m[0x20] = 3;
        }
        break;
    case 2:
        if (func_001F9908(m + 0x28)) {
            func_L00_00260108(m, m + 0x10, -1, 0.333f, 13.0f);
            if (*(int *)d != 0) {
                m[0x20] = 4;
            } else {
                m[0x20] = 3;
            }
        }
        break;
    case 4:
        {
            int n;
            int k;
            int c19;
            int c18;
            int c17;
            int c16;
            int c2;
            float z;
            n = 1;
            if (func_001F9908(d + 0x24)) {
                n = 5;
                *(int *)(d + 0x24) = func_001FA898_r(func_001F9878(func_002140F8(60.0f, 120.0f)));
            }
            if (func_002140B0(4) != 0 && n < 2) {
                return;
            }
            if (n != 0) {
                k = n;
                do {
                    k--;
                    func_L00_001FF4B0(v2, m + 0xC0, *(float *)&D_L06_00162380 * (func_002140F8(-*(float *)&D_L06_0016238C, *(float *)&D_L06_0016238C) + 1.0f) * D_0015EE6C);
                    z = *(float *)&D_L06_00162384 * (func_002140F8(-*(float *)&D_L06_0016238C, *(float *)&D_L06_0016238C) + 1.0f) * D_0015EE6C;
                    func_001F9BC0(v3);
                    v3[2] = z;
                    func_L00_001FF4B0(v4, m + 0xD0, D_0015EE6C * func_002140F8(-*(float *)&D_L06_00162388, *(float *)&D_L06_00162388));
                    func_001F9BD8(v3, v3, v4);
                    v2[3] = func_002140F8(*(float *)&D_L06_001623A0, *(float *)&D_L06_001623A4);
                    v3[3] = func_002140F8(*(float *)&D_L06_001623A8, *(float *)&D_L06_001623AC);
                    c19 = func_001FA8A8(*(int *)&D_L06_001623B0, *(int *)&D_L06_001623B4, func_002140F8(0.0f, 1.0f));
                    c18 = func_001FA8A8(*(int *)&D_L06_001623B8, *(int *)&D_L06_001623BC, func_002140F8(0.0f, 1.0f));
                    c17 = func_001FA898_r(func_001F9878(*(float *)&D_L06_00162390 * func_002140F8(0.0f, 1.0f) + 1.0f));
                    c16 = func_001FA898_r(func_001F9878(*(float *)&D_L06_00162394 * (func_002140F8(-*(float *)&D_L06_0016239C, *(float *)&D_L06_0016239C) + 1.0f)));
                    c2 = func_001FA898_r(func_001F9878(*(float *)&D_L06_00162398 * (func_002140F8(-*(float *)&D_L06_0016239C, *(float *)&D_L06_0016239C) + 1.0f)));
                    func_00219780(m + 0x10, v2, v3, c19, c18, c17, c16, c2, -1);
                } while (k != 0);
            }
        }
        break;
    case 3:
        if (func_001F9908(m + 0x20)) {
            int cnt;
            int k;
            int c19;
            int c18;
            int c17;
            int c16;
            int c2;
            float z;
            *(int *)(d + 0x20) = func_001FA898_r(func_001F9878(func_002140F8((float)*(int *)&D_L06_00162404, (float)*(int *)&D_L06_00162408)));
            cnt = func_002140B0(7) ? 1 : func_002140B0(5) + 5;
            if (cnt > 0) {
                k = cnt;
                do {
                    k--;
                    func_L00_00258DB0(v4, 0.0f, *(float *)&D_L06_001623D0 * D_0015EE6C);
                    func_L00_001FF4B0(v2, m + 0xC0, *(float *)&D_L06_001623C0 * (func_002140F8(-*(float *)&D_L06_001623CC, *(float *)&D_L06_001623CC) + 1.0f) * D_0015EE6C);
                    func_001F9BD8(v2, v2, v4);
                    func_L00_001FF4B0(v3, v2, *(float *)&D_L06_001623C4 * (func_002140F8(-*(float *)&D_L06_001623CC, *(float *)&D_L06_001623CC) + 1.0f) * D_0015EE6C);
                    v3[2] = v3[2] - *(float *)&D_L06_001623C8 * D_0015EE6C;
                    v2[3] = func_002140F8(*(float *)&D_L06_001623E4, *(float *)&D_L06_001623E8);
                    v3[3] = func_002140F8(*(float *)&D_L06_001623EC, *(float *)&D_L06_001623F0);
                    c19 = func_001FA8A8(*(int *)&D_L06_001623F4, *(int *)&D_L06_001623F8, func_002140F8(0.0f, 1.0f));
                    c18 = func_001FA8A8(*(int *)&D_L06_001623FC, *(int *)&D_L06_00162400, func_002140F8(0.0f, 1.0f));
                    c17 = func_001FA898_r(func_001F9878(*(float *)&D_L06_001623D4 * func_002140F8(0.0f, 1.0f) + 1.0f));
                    c16 = func_001FA898_r(func_001F9878(*(float *)&D_L06_001623D8 * (func_002140F8(-*(float *)&D_L06_001623E0, *(float *)&D_L06_001623E0) + 1.0f)));
                    c2 = func_001FA898_r(func_001F9878(*(float *)&D_L06_001623DC * (func_002140F8(-*(float *)&D_L06_001623E0, *(float *)&D_L06_001623E0) + 1.0f)));
                    func_00219780(m + 0x10, v2, v3, c19, c18, c17, c16, c2, *(int *)&D_L06_0016240C);
                } while (k != 0);
            }
        }
        break;
    }
}
