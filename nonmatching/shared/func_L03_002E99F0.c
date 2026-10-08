/* NON_MATCHING func_L03_002E99F0 -- src/overlays/shared/vendor_00292AC0.c
 * Best so far: BYTES 22/260 (91.5% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern int D_L03_0015F050_i __asm__("D_L03_0015F050") MACRO_ADDR;
extern void func_001F9978_u(void) __asm__("func_001F9978");
extern void func_001FA218_u(void *, void *) __asm__("func_001FA218");

void func_L03_002E99F0(char *cam) {
    float v[4] __attribute__((aligned(16)));
    float mat[16] __attribute__((aligned(16)));
    char *tbl = (char *)D_L03_0015F050_i;
    char *a = *(char **)(cam + 0x70) + 0x10;
    char *d;
    char *ent;
    int idx;
    char *p;
    *(float *)(a + 0x4C) = 1.5f;
    *(int *)(a + 0x40) = 0;
    *(int *)(*(char **)(cam + 0x70) + 0x80) = 0;
    d = *(char **)(cam + 0x70);
    *(float *)(d + 4) = 0.02f;
    *(float *)(d + 8) = 0.1f;
    *(int *)(d + 0xC) = 0;
    idx = *(short *)(cam + 0x84);
    ent = tbl + (idx << 5);
    p = *(char **)(ent + 0x1C);
    if (idx < 0) {
        func_001F9978_u();
    } else {
        *(float *)(a + 0x4C) = *(float *)(p + 0x18);
    }
    qcopy(cam + 0x30, ent);
    qcopy(v, ent + 0x10);
    func_001FA218_u(mat, v);
    qcopy(cam, mat);
    qcopy(cam + 0x10, mat + 4);
    qcopy(cam + 0x20, mat + 8);
    qcopy(cam + 0x40, cam);
    *(short *)(cam + 0x7E) = 0;
}
