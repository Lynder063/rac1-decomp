/* NON_MATCHING func_L16_002CAC40 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: SIZE ours 468 / retail 472, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Updates a linked moby's movement and follows it while its state is active.
 *   Best p0.c is 468/472 bytes. The compiler keeps the state in $s2 where retail keeps constant 1; this shifts the
 *   Three source forms produced the same difference. Needs an allocator/control-flow source shape insight.
 */
extern short D_L16_00161A4C;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char D_0013E633[];
extern float func_00214D28(float *, float, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_00215570(void *, int);
extern void func_001F49B0(void (*)(void), void *);
extern void func_L16_002CB098(void);
extern void func_L16_002CAE18(unsigned char *);
extern void func_L16_002CB000(int, void *);

/* Updates a linked moby's movement and follows it while its state is active. */
void func_L16_002CAC40(unsigned char *m) {
    char *d = *(char **)(m + 0x78);
    float vec[4];
    float target;
    int one = 1;
    switch (m[0x20]) {
    case 0:
        *(int *)(d + 0x5C) |= 4;
        m[0x31] = 0;
        *(unsigned short *)(m + 0x34) |= one;
        if (*(int *)(d + 0x60) == -1) {
            *(unsigned short *)(m + 0x34) |= 2;
        } else {
            m[0x20] = 2;
        }
        *(int *)(d + 0x74) = -1;
        break;
    case 1:
        target = -(*(float *)&D_L16_00161A4C * D_0015EE6C);
        if (*(float *)(d + 0x6C) != target) {
            func_00214D28((float *)(d + 0x6C), target, D_0015EE70 * 12.0f);
            func_L00_001FF4B0(vec, m + 0xC0, *(float *)(d + 0x6C));
            func_L16_002CB000(m[0x21], vec);
        }
        if (func_00215570(D_0013E633 + 0xE9D, *(int *)(d + 0x68))) m[0x20] = one;
        func_001F49B0(func_L16_002CB098, m);
        break;
    case 2:
        target = *(float *)&D_L16_00161A4C * D_0015EE6C;
        if (*(float *)(d + 0x6C) != target) {
            func_00214D28((float *)(d + 0x6C), target, D_0015EE70 * 12.0f);
            func_L00_001FF4B0(vec, m + 0xC0, *(float *)(d + 0x6C));
            func_L16_002CB000(m[0x21], vec);
        }
        if (func_00215570(D_0013E633 + 0xE9D, *(int *)(d + 0x64))) m[0x20] = 2;
        func_001F49B0(func_L16_002CB098, m);
        break;
    }
    if (m[0x20]) func_L16_002CAE18(m);
}
