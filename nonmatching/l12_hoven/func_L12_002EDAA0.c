/* NON_MATCHING func_L12_002EDAA0 -- src/overlays/l12_hoven/vendor_002EDAA0.c
 * Best so far: SIZE ours 928 / retail 924, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped (5 of 10 runs used): best p3.c, 912 bytes against retail's 924 (p2.c is the same size). The function i
 *   hq13 n03 (p4-p11, budget spent; best p11.c, 924 bytes = retail size, 64 bytes differ): the state byte at 0x20 
 */
extern float D_0015EE6C MACRO_ADDR;
extern float D_L12_0015F4FC MACRO_ADDR;
extern short D_L12_00161A4C;
extern short D_L12_00161A50;
extern short D_L12_00161A54;
extern short D_L12_00161A60;
extern short D_L12_00161A64;
extern short D_L12_00161A68;
extern short D_L12_00161A6C;
extern short D_L12_00161A70;
extern short D_L12_00161A74;
extern short D_L12_00161A78;
extern short D_L12_00161A7C;
extern short D_L12_00161A80;
extern short D_L12_00161A84;
extern short D_L12_00161A88;

extern float func_00214158(void);
extern int func_001F9850(int);
extern float func_001FA748(float, float);
extern int func_001F9908(int *);
extern float func_001FA888(int);
extern float func_002140F8(float, float);
extern void func_L00_00258DB0(float *, float, float);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern char *func_00219780(void *, void *, void *, int, int, int, int, int, int);
extern float func_00214D28(float *, float, float);
extern void func_L12_002EDE40(char *);

/* Water reservoir update: steers the surface height and draws the ring of strips. */
void func_L12_002EDAA0(char *moby) {
    unsigned char *mu = (unsigned char *)moby;
    char *data = *(char **)(moby + 0x78);
    float v10[4];
    float v20[4];
    float v30[4];
    float v40[4];
    float v50[4];
    float f1;
    float f20;
    float f21;
    float t;
    int bc;
    int bc2;
    int r2;

    switch (mu[0x20]) {
    case 0:
        mu[0x20] = 1;
        mu[0xBC] = 2;
        *(float *)data = func_00214158();
        *(float *)(data + 8) = 5.0f;
        break;
    case 1:
        bc = mu[0xBC];
        if (bc & 8) {
            mu[0xBC] = 1;
            *(int *)(data + 4) = func_001F9850(*(int *)&D_L12_00161A50);
        } else if (bc & 4) {
            mu[0xBC] = 2;
            *(int *)(data + 4) = func_001F9850(*(int *)&D_L12_00161A50);
        }
        *(float *)data = func_001FA748(*(float *)data, *(float *)&D_L12_00161A4C * 0.0174532924f * D_0015EE6C);
        break;
    }
    f1 = D_L12_0015F4FC;

    if (f1 == 0.0f) {
        if (func_001F9908((int *)(data + 4)) == 0) {
            if (mu[0xBC] & 1) {
                f20 = 1.0f - func_001FA888(*(int *)(data + 4)) / func_001FA888(*(int *)&D_L12_00161A50);
            } else {
                f20 = func_001FA888(*(int *)(data + 4)) / func_001FA888(*(int *)&D_L12_00161A50);
            }
            f21 = 0.0f;
            if (func_002140F8(f21, 1.0f) < f20) {
                func_L00_00258DB0(v10, f21, *(float *)&D_L12_00161A54);
                func_L00_00258DB0(v20, f21, *(float *)&D_L12_00161A54);
                func_L00_00258DB0(v30, f21, *(float *)&D_L12_00161A54);
                func_001F9BF0(v40, v10, v20);
                v40[2] = v40[2] + (*(float *)&D_L12_00161A80 - *(float *)&D_L12_00161A7C);
                func_001F9BF0(v50, v20, v30);
                t = (float)*(int *)&D_L12_00161A6C;
                f20 = 2.0f / t;
                v50[2] = v50[2] + (*(float *)&D_L12_00161A84 - *(float *)&D_L12_00161A80);
                func_001F9C30(v40, v40, f20);
                func_001F9C30(v50, v50, f20);
                func_001F9BD8(v10, v10, moby + 0x10);
                if (mu[0xBC] & 1) {
                    v40[2] = -v40[2];
                    v50[2] = -v50[2];
                    v10[2] = v10[2] + *(float *)&D_L12_00161A84;
                } else {
                    v10[2] = v10[2] + *(float *)&D_L12_00161A80;
                }
                func_002140F8(*(float *)&D_L12_00161A60, *(float *)&D_L12_00161A64);
                t = func_002140F8(*(float *)&D_L12_00161A60, *(float *)&D_L12_00161A64);
                v40[3] = t;
                v50[3] = t;
                r2 = func_001F9850(*(int *)&D_L12_00161A6C);
                func_00219780(v10, v40, v50, *(int *)&D_L12_00161A74, *(int *)&D_L12_00161A74,
                              *(int *)&D_L12_00161A68, r2, *(int *)&D_L12_00161A70, *(int *)&D_L12_00161A78);
            }
        }
        bc2 = mu[0xBC];
        if ((bc2 & 1) && *(int *)(data + 4) == 0) {
            func_00214D28((float *)(data + 8), -1.0f, *(float *)&D_L12_00161A88 * D_0015EE6C);
        } else if (bc2 & 2) {
            func_00214D28((float *)(data + 8), 3.0f, *(float *)&D_L12_00161A88 * D_0015EE6C);
        }
    }
    func_001F49B0((void (*)(void))func_L12_002EDE40, moby);
}
