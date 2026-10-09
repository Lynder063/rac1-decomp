/* NON_MATCHING func_L10_002EAD50 -- src/overlays/l10_orxon/vendor_002E30F8.c
 * Best so far: SIZE ours 1152 / retail 1156, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Gate_2 update (moby class 1424): a four-state machine on m[0x20] that copies m+0x10 into the data block, calls
 *   Left: (1) case 0 orders `addiu 0xFF`, `lq`, `sb` as retail does, ours is `lq` then `sb` (the sb needs to come 
 *   Budget used: 10 runs. Would unblock: a way to get the xori without the extra stack slot, then the case 0 order
 */
typedef int u128 __attribute__((mode(TI)));
typedef struct { char pad0[0x454]; unsigned char collected[1]; } L10State;

extern unsigned char D_0013E633[];
extern unsigned char D_0014171B[];
extern unsigned char D_0013DE4B[];
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern char *D_L10_00160058_c __asm__("D_L10_00160058") MACRO_ADDR;
extern int D_L10_001BAC60[];
extern L10State D_L10_001BB9C0;
extern void func_L10_002F6E10(int);
extern float func_001FA748(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern float func_001FA888(int);
extern int func_001F9908(void *);

// Level 10 gate_2 update: four-state machine on m[0x20], moby class 1424.
void func_L10_002EAD50(char *m) {
    char *d = *(char **)(m + 0x78);
    unsigned char st = *(unsigned char *)(m + 0x20);
    switch (st) {
    case 0: {
        unsigned short id;
        int n;
        float v[3];
        u128 out;
        float p, q;
        *(u128 *)d = *(u128 *)(m + 0x10);
        ((unsigned char *)m)[0x30] = 0xFF;
        if (D_0013E633[0x2EC1] != 0 ||
            D_L10_001BB9C0.collected[(short)(id = *(unsigned short *)(m + 0xB2))] != 0 ||
            ((*(int *)(D_0014171B + 0xAB75 + ((((short)id >> 5) * 4) + (D_0015EE84_m << 8))) >> (id & 0x1F)) & 1) != 0) {
            p = func_001F9F90(func_001FA748(*(float *)(m + 0x48), 3.14159265f));
            v[0] = p * 1.5f;
            q = func_001F9FA8(func_001FA748(*(float *)(m + 0x48), 3.14159265f));
            v[1] = q * 1.5f;
            ((int *)v)[2] = 0;
            func_001F9BD8(&out, d, v);
            *(u128 *)(m + 0x10) = out;
            m[0x20] = 3;
        } else {
            n = *(int *)(d + 0x1C);
            if (n > 0) {
                char *e = D_L10_00160058_c + (n << 8);
                *(unsigned short *)(e + 0x34) |= 2;
            }
            m[0x20] = 1;
        }
        break;
    }
    case 1: {
        unsigned short id;
        int n;
        if (D_0013E633[0x2EC1] != 0 ||
            D_L10_001BB9C0.collected[(short)(id = *(unsigned short *)(m + 0xB2))] != 0 ||
            ((*(int *)(D_0014171B + 0xAB75 + ((((short)id >> 5) * 4) + (D_0015EE84_m << 8))) >> (id & 0x1F)) & 1) != 0) {
            *(u128 *)(m + 0x10) = *(u128 *)d;
            m[0x20] = 3;
            n = *(int *)(d + 0x1C);
            if (n > 0) {
                char *e = D_L10_00160058_c + (n << 8);
                *(unsigned short *)(e + 0x34) &= 0xFFFD;
            }
        } else if (D_0013DE4B[9] != 0) {
            n = *(int *)(d + 0x1C);
            if (n > 0) {
                char *e = D_L10_00160058_c + (n << 8);
                *(unsigned short *)(e + 0x34) &= 0xFFFD;
            }
            *(int *)(D_0014171B + 0xAB75 + ((((short)*(unsigned short *)(m + 0xB2) >> 5) * 4) + (D_0015EE84_m << 8)))
                |= st << (*(unsigned short *)(m + 0xB2) & 0x1F);
            D_L10_001BAC60[(short)*(unsigned short *)(m + 0xB2) >> 5] |= st << (*(unsigned short *)(m + 0xB2) & 0x1F);
            if (*(int *)(d + 0x10) > 0) func_L10_002F6E10(*(int *)(d + 0x10));
            *(int *)(d + 0x14) = func_001FA898_r(func_001F9878(90.0f));
            m[0x20] = 2;
        }
        break;
    }
    case 2: {
        float v[3];
        u128 out;
        float x, y, z, b0, y2, z2;
        x = func_001F9F90(func_001FA748(*(float *)(m + 0x48), 3.14159265f));
        y = func_001FA888(func_001FA898_r(func_001F9878(90.0f)) - *(int *)(d + 0x14));
        z = func_001F9878(90.0f);
        v[0] = x * 1.5f * y / z;
        b0 = func_001F9FA8(func_001FA748(*(float *)(m + 0x48), 3.14159265f));
        y2 = func_001FA888(func_001FA898_r(func_001F9878(90.0f)) - *(int *)(d + 0x14));
        z2 = func_001F9878(90.0f);
        v[1] = b0 * 1.5f * y2 / z2;
        ((int *)v)[2] = 0;
        func_001F9BD8(&out, d, v);
        *(u128 *)(m + 0x10) = out;
        if (func_001F9908(d + 0x14)) m[0x20] = 3;
        break;
    }
    case 3: {
        unsigned short id;
        if (D_0013E633[0x2EC1] == 0 &&
            D_L10_001BB9C0.collected[(short)(id = *(unsigned short *)(m + 0xB2))] == 0 &&
            ((*(int *)(D_0014171B + 0xAB75 + ((((short)id >> 5) * 4) + (D_0015EE84_m << 8))) >> (id & 0x1F)) & 1) != 1) {
            *(u128 *)(m + 0x10) = *(u128 *)d;
            m[0x20] = 0;
        }
        break;
    }
    }
}
