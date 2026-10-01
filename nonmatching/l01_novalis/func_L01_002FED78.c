/* NON_MATCHING func_L01_002FED78 -- src/overlays/l01_novalis/vendor_002FABE8.c
 * Best so far: BYTES 15/540 (97.2% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L01_002FED78
 *   Breakable pot update (Lombyte port, p1.c is best: BYTES 15/540). State machine 0/1/2; state 2 shatters into 4 
 *   Only difference: in the preheader of the 4-iteration loop retail does `lui $s3` straight into the saved reg af
 *   Six wordings (for/do-while, local for class ptr, local for D ptr, float[] vs char[] D, callee int/void) give t
 */
#include "common.h"

typedef struct { float x, y, z, w; } __attribute__((aligned(16))) SV4;
extern char *func_L00_0025B478(void *, int, int);
extern void func_L01_00279790(void *);
extern void func_001F9BC0(void *);
extern float func_001FA748(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9BD8(void *, void *, void *);
extern void *func_L00_00265050(char *src, int cls, float *pos, void *mat, int a8, int a9, float *v10, float *v11, float scale, float *v12);
extern void func_L01_00279E10(void *, int);
extern void func_0020D678(void *);
extern float D_L01_0015F660[];

/* Update for a breakable pot: waits for its hit flag, then shatters into four sparks. Adapted from Lombyte (MIT) for PAL: overlays/l01/unclassified_002f9810.c, FUN_L01_002fd9a0. */
void func_L01_002FED78(char *m) {
    char *hit;
    int flag;
    int i;
    float ang;
    float s;
    SV4 off;
    SV4 rot;

    flag = 0;
    hit = func_L00_0025B478(m, 0x10000, 0);
    switch (*(unsigned char *)(m + 0x20)) {
    case 0:
        m[0x20] = 1;
        break;
    case 1:
        if (hit != 0 && *(float *)(hit + 0x2C) > 0.0f) {
            flag = 1;
        }
        if (flag) {
            m[0x20] = 2;
        }
        break;
    case 2:
        func_0022ED80(0, 0, (int)m);
        func_L01_00279790(m);
        s = *(float *)(m + 0x2C) / *(float *)(*(char **)(m + 0x24) + 0x24);
        i = 0;
        do {
            ang = (float)i * 1.5707964f;
            func_001F9BC0(&rot);
            rot.z = func_001FA748(ang, 0.87266463f);
            off.x = func_001F9F90(ang) * -0.57f * s;
            off.y = func_001F9FA8(ang) * -0.57f * s;
            off.z = 0.0f;
            func_001F9BD8(&off, &off, m + 0x10);
            off.z += s * 1.2f;
            func_L00_00265050(m, 0x719, (float *)&off, &rot, 0, 0, D_L01_0015F660, D_L01_0015F660, 0.0f, D_L01_0015F660);
            i++;
        } while (i < 4);
        func_L01_00279E10(m, 0x718);
        func_0020D678(m);
        break;
    }
}
