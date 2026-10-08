/* NON_MATCHING func_L00_00274908 -- src/overlays/shared/partupd_00272158.c
 * Best so far: SIZE ours 1144 / retail 1140, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   PartType64Update-style particle update: adjusts the moby's velocity block at m+0x20 through three helper calls
 *   p0.c is the size-correct candidate (1140 bytes) but 842 bytes differ: the register assignment is off (the allo
 */
extern s32 D_0015EE84 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern short D_L00_001602E8;
s32 func_001F9938_72BC0b(void *) __asm__("func_001F9938");
extern void func_001F9BD8(void *, void *, void *);
extern int func_002140B0(int);
f32 func_002140F8_273578(f32, f32) __asm__("func_002140F8");
extern int func_001F9850(int);
extern int func_L00_00258BC8(int, int);
extern void func_L00_0026CA10(void *, void *, int, int, int, int, int, int, float);
extern unsigned char *func_L00_00272488(void *, int, int, float, float);
extern int func_L00_00237B70(float, int, int);
extern void func_L00_001FF4B0(void *, void *, float);
extern char *func_L00_0026CD70(float f, char *a, char *b, int c, int d, int e, int g);
extern void func_L00_002688A8(void *);

typedef struct { float x, y, z, w; } __attribute__((aligned(16))) P4_74908;

/* Particle type 64 update: ages the moby's particle, drives its colour and spawns follow-on parts while D_0015EE84 is 10. */
void func_L00_00274908(char *m) {
    char *v = m + 0x20;
    char *p = m + 0x10;
    P4_74908 tmp;
    unsigned int w;
    int b0, b1, b2, q, col, col2, x, y, z, x18, x17;
    float f20, r, a, b;

    if (func_001F9938_72BC0b(m + 0xA)) {
        *(float *)(v + 0x8) = *(float *)(v + 0x8) - *(float *)(v + 0x14);
    }
    func_001F9BD8(p, p, v);
    ((unsigned char *)m)[8] += 2;
    if (*(float *)(m + 0x18) < *(float *)(v + 0x10)) {
        w = *(unsigned int *)(m + 4);
        b2 = (w >> 16) & 0xFF;
        b0 = w & 0xFF;
        b1 = (w & 0xFF00) >> 8;
        if (func_002140B0(*(int *)&D_L00_001602E8 - 1) == 0) {
            *(float *)(m + 0x18) = *(float *)(v + 0x10);
            r = func_002140F8_273578(1.0f, 3.5f);
            *(float *)(v) = *(float *)(v) * r;
            r = func_002140F8_273578(1.0f, 3.5f);
            *(float *)(v + 0x4) = *(float *)(v + 0x4) * r;
            r = func_002140F8_273578(-1.0f, -1.5f);
            *(float *)(v + 0x8) = *(float *)(v + 0x8) * r;
            f20 = *(float *)(m + 0xC) * 0.5f;
            x = func_001F9850(0x3C);
            y = func_001F9850(0x78);
            z = func_L00_00258BC8(x, y);
            func_L00_0026CA10(p, v, *(int *)(m + 4), *(int *)(v + 0x18), z, 0,
                              ((unsigned char *)m)[2], ((unsigned char *)m)[3], f20);
        } else {
            *(float *)(m + 0x18) = *(float *)(v + 0x10);
            r = func_002140F8_273578(-5.0f, 5.0f);
            *(float *)(v) = *(float *)(v) + r * D_0015EE6C;
            r = func_002140F8_273578(-5.0f, 5.0f);
            *(float *)(v + 0x4) = *(float *)(v + 0x4) + r * D_0015EE6C;
            r = func_002140F8_273578(-0.5f, -1.0f);
            *(float *)(v + 0x8) = *(float *)(v + 0x8) * r;
            f20 = *(float *)(m + 0xC) * 0.25f;
            x = func_001F9850(0x1E);
            y = func_001F9850(0x3C);
            z = func_L00_00258BC8(x, y);
            func_L00_0026CA10(p, v, *(int *)(m + 4), *(int *)(v + 0x18), z, 0,
                              ((unsigned char *)m)[2], ((unsigned char *)m)[3], f20);
        }
        if (D_0015EE84 == 10) {
            if (func_002140B0(0x13) == 0) {
                qcopy(&tmp, p);
                tmp.z = tmp.z + 0.1f;
                q = func_002140B0(6) + 0x34;
                col = (q << 24) | (b2 << 16) | (b1 << 8) | b0;
                func_L00_00272488(&tmp, 0, col, 0.05f, 10500.0f);
            }
            if (func_002140B0(9) == 0) {
                col2 = 0x7F000000 | (b2 << 16) | (b1 << 8) | b0;
                f20 = 1.0f;
                r = func_002140F8_273578(0.25f, 1.0f);
                x18 = func_L00_00237B70(r, 0x7F000000, col2);
                r = func_002140F8_273578(0.5f, 1.0f);
                x17 = func_L00_00237B70(r, 0, 0x5F00);
                a = func_002140F8_273578(-1.0f, 1.0f);
                *(float *)(v) = a;
                b = func_002140F8_273578(-1.0f, 1.0f);
                *(int *)(v + 0x8) = 0;
                r = func_002140F8_273578(1.5f, 3.0f);
                *(float *)(v + 4) = b;
                func_L00_001FF4B0(v, v, r * D_0015EE6C);
                *(float *)(v + 0x8) = D_0015EE6C * 3.0f;
                qcopy(&tmp, p);
                tmp.z = tmp.z - 1.5f;
                f20 = func_002140F8_273578(420000.0f, 630000.0f);
                x = func_001F9850(0x5A);
                y = func_001F9850(0x96);
                z = func_L00_00258BC8(x, y);
                func_L00_0026CD70(f20, (char *)&tmp, v, x18, x17, z, 3);
            }
        }
    }
    func_L00_002688A8(m);
}
