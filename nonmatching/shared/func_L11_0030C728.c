/* NON_MATCHING func_L11_0030C728 -- src/overlays/shared/vendor_002C99E0.c
 * Best so far: SIZE ours 1140 / retail 1144, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Ocean update (moby class 1111): state-0 init path, then a 2-step wave update (f49 call at the end). Best so fa
 *   Left: the first 2-step loop is counted down (bgez) where retail counts up (slti $18,2), the stores of the tide
 */
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern float func_001FA888(int);
extern float func_001F9FA8(float);
extern void f49(void *, void *) __asm__("func_001F49B0");
extern void func_L11_0030BCD8(void);
extern char D_L11_00161E98[];
extern char D_L11_00161E9C[];
extern float D_L11_00167840[];
extern char D_L11_00167700[];
extern char D_L11_00161284[];
extern char D_L11_00161283[];
extern char D_L11_00161286[];
extern char D_L11_00161280[];
extern char D_L11_00161281[];
extern char D_L11_00161282[];
extern char D_L11_00161285[];
extern short D_L11_001628C0;
extern short D_00111E88;
extern short D_00111EAC;
extern char D_L11_001D9DC0[];
extern char D_L11_00161EAC[];
extern char D_L11_0016135C[];
extern char D_L11_00161364[];
extern char D_L11_0016136C[];
extern char D_L11_00161360[];
extern char D_L11_00161368[];
extern char D_L11_00161EA8[] MACRO_ADDR;
extern int D_L11_0015F6B0 MACRO_ADDR;
extern float D_0015EE7C MACRO_ADDR;

/* Ocean update: clamps two wave offsets to the -1..1 range and sets the level's tide values. */
void func_L11_0030C728(char *moby) {
    char *p78 = *(char **)(moby + 0x78);
    int k;
    float src[4];
    float out[4];
    if (((unsigned char *)moby)[0x20] == 0) {
        ((unsigned char *)moby)[0x30] = 0xFF;
        ((unsigned char *)moby)[0x20] = 1;
        {
            int *a = (int *)D_L11_00161E98;
            int *b = (int *)D_L11_00161E9C;
            for (k = 0; k < 2; k++) {
                *a = 0;
                a += 2;
                *b = 0;
                b += 2;
            }
        }
        qcopy(&D_L11_001628C0, D_L11_00167840);
        *(float *)&D_00111EAC = *(float *)(p78 + 0x14);
        return;
    }
    if (180.0f < *(float *)(D_L11_00167700 + 0x148)) {
        D_L11_00161284[0] = 0x28;
        D_L11_00161283[0] = 0x40;
        D_L11_00161286[0] = 0x90;
        D_L11_00161280[0] = 0x28;
        D_L11_00161281[0] = 0x90;
        D_L11_00161282[0] = 0x90;
        D_L11_00161285[0] = 0x90;
    }
    func_001F9BF0(src, D_L11_00167700 + 0x140, &D_L11_001628C0);
    qcopy(&D_L11_001628C0, D_L11_00167700 + 0x140);
    if (*(float *)(p78 + 0x20) < *(float *)(D_L11_00167700 + 0x148)) {
        float *w = (float *)&D_00111E88;
        char *e98 = D_L11_00161E98;
        char *e9c = D_L11_00161E9C;
        k = 0;
        do {
            func_001F9C30(out, src, (w[k] + w[k]) / (*(float *)(p78 + 0x18) * 5.0f));
            if (1.0f < out[0] || out[0] < 1.0f) {
                out[0] = out[0] - func_001FA888(func_001FA898_r(out[0]));
            }
            if (1.0f < out[1] || out[1] < 1.0f) {
                out[1] = out[1] - func_001FA888(func_001FA898_r(out[1]));
            }
            *(float *)e98 = *(float *)e98 + out[0];
            *(float *)e9c = *(float *)e9c + out[1];
            if (1.0f < *(float *)e98) {
                *(float *)e98 = *(float *)e98 - 1.0f;
            }
            if (*(float *)e98 < -1.0f) {
                *(float *)e98 = *(float *)e98 + 1.0f;
            }
            if (1.0f < *(float *)e9c) {
                *(float *)e9c = *(float *)e9c - 1.0f;
            }
            if (*(float *)e9c < -1.0f) {
                *(float *)e9c = *(float *)e9c + 1.0f;
            }
            e98 += 8;
            e9c += 8;
            k++;
        } while (k < 2);
    }
    {
        int m = D_L11_0015F6B0;
        float a = func_001F9FA8(func_001FA888(m % 360) * 0.017444444820284843f - 3.14f);
        float b = *(float *)D_L11_00161EAC + a * 0.25f;
        *(int *)D_L11_0016135C = 1;
        *(float *)D_L11_00161364 = 512.0f;
        *(float *)D_L11_0016136C = 1024.0f;
        *(float *)D_L11_00161360 = 512.0f;
        *(float *)D_L11_00161368 = b;
        *(float *)D_L11_00161EA8 = b;
    }
    {
        for (k = 0; k < 2; k++) {
            char *p5 = D_L11_001D9DC0 + k * 8;
            char *p3 = D_L11_00161E98 + k * 8;
            char *p4 = D_L11_00161E9C + k * 8;
            float sum = *(float *)p3 + *(float *)p5 * D_0015EE7C;
            *(float *)p3 = sum;
            if (1.0f < sum) {
                *(float *)p3 = sum - 1.0f;
            }
            if (*(float *)p3 < -1.0f) {
                *(float *)p3 = *(float *)p3 + 1.0f;
            }
            sum = *(float *)p4 + *(float *)(p5 + 4) * D_0015EE7C;
            *(float *)p4 = sum;
            if (1.0f < sum) {
                *(float *)p4 = sum - 1.0f;
            }
            if (*(float *)p4 < -1.0f) {
                *(float *)p4 = *(float *)p4 + 1.0f;
            }
        }
    }
    f49((void *)func_L11_0030BCD8, moby);
}
