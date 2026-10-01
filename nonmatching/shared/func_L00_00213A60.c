/* NON_MATCHING func_L00_00213A60 -- src/overlays/shared/help_0020CDF0.c
 * Best so far: BYTES 26/1020 (97.5% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Help-camera step: moves the camera position by an offset vector, tries up to 8 candidate positions (func_L00_0
 *   Best candidate p6.c: same size (1020), 26 bytes differ, all one register swap: retail keeps the camera pointer
 *   Structure that got there: separate pointer variables for loop (h) and post-loop (k); `if (c != 0 || s != 0) {.
 */
extern void func_001F9BC0(void *);
extern void func_L00_00235040(void);
extern void func_L00_00234090(float *dst, float *src, float dz);
extern void func_L00_00233D50(float *dst, float *src, float h);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_001F10E0(float, void *, int, void *);
extern int func_L00_001F1D20(float, float, void *, int, int);
extern int func_L00_001F34F0(float, void *);
extern void func_001F9BF0(float *, float *, float *);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern float D_0015EE60 MACRO_ADDR;

extern char D_0013E633[];
extern char D_L00_00173F70[];

/* Moves the help camera and tests the result; returns 1 when settled, -1 when it is too far. */
int func_L00_00213A60(int arg) {
    float v0[4];
    float v1[4];
    float v2[4];
    char *p;
    char *q;
    char *h;
    char *k;
    int r;
    int i;
    char *g = (char *)D_0013E633 + 0xE1D;
    float len;

    if (*(int *)(g + 0x1CC) != 0) return 1;
    qcopy(v0, g + 0x80);
    func_001F9BC0(v1);
    if (*(short *)(g + 0x22DA) != 0) {
        func_L00_00235040();
        *(short *)(g + 0x22DA) = 0;
    }
    if (*(int *)(g + 0x208C) != 0x11) {
        unsigned char c = *(unsigned char *)(g + 0x20B3);
        if (c != 0 || *(short *)(g + 0x1F8) != 0) {
            if (c == 1 || *(short *)(g + 0x1F8) != 0) {
                func_L00_00234090(v1, v1, 0.6f);
            } else {
                func_L00_00233D50(v1, v1, -*(float *)(g + 0x224));
            }
        } else {
            v1[2] = *(float *)(g + 0x224);
        }
    }
    g = (char *)D_0013E633 + 0xE9D;
    func_001F9BD8(g, g, v1);
    r = 0x24;
    if (*(int *)(g + 0x2004) == 0x7F) r = 0xD24;
    for (i = 0; i < 8; i++) {
        h = (char *)D_0013E633 + 0xE1D;
        if (*(unsigned char *)(h + 0x20B3) != 0) {
            if (func_L00_001F10E0(D_0015EE60 * 0.4f, h + 0x80, r, *(void **)(h + 0x2080)) == 0) break;
        } else {
            if (*(int *)(h + 0x208C) == 0x11) {
                if (func_L00_001F10E0(0.6f, h + 0x80, r, *(void **)(h + 0x2080)) == 0) break;
            } else if (*(int *)(h + 0x208C) == 0xF) {
                if (func_L00_001F10E0(D_0015EE60 * 0.45f, h + 0x80, r, *(void **)(h + 0x2080)) == 0) break;
            } else {
                float t = *(float *)(h + 0x220) - *(float *)(h + 0x224);
                if (t < 0.05f) t = 0.05f;
                if ((func_L00_001F1D20(*(float *)(h + 0x234), t, h + 0x80, r, *(int *)(h + 0x2080)) | func_L00_001F34F0(*(float *)(h + 0x234), h + 0x80)) == 0) break;
            }
        }
        p = (char *)D_0013E633 + 0xE9D;
        qcopy(p, D_L00_00173F70);
        qcopy(p + 0x180, D_L00_00173F70 + 0x10);
        qcopy(p + 0x190, D_L00_00173F70 - 0x10);
        q = p - 0x80;
        *(unsigned char *)(q + 0x257) = 1;
        *(int *)(q + 0x23C) = *(int *)(D_L00_00173F70 - 0x18);
    }
    k = (char *)D_0013E633 + 0xE9D;
    func_001F9BF0((float *)k, (float *)k, v1);
    func_001F9BF0(v2, (float *)k, v0);
    len = func_001F9CB8(v2);
    if (*(float *)(k + 0x1B4) * 1.5f < len) {
        if (arg != 0xF) return -1;
        if (v2[0] > 512.0f) v2[0] = 512.0f;
        else if (v2[0] < -512.0f) v2[0] = -512.0f;
        if (v2[1] > 512.0f) v2[1] = 512.0f;
        else if (v2[1] < -512.0f) v2[1] = -512.0f;
        if (v2[2] > 512.0f) v2[2] = 512.0f;
        else if (v2[2] < -512.0f) v2[2] = -512.0f;
        k = (char *)D_0013E633 + 0xE1D;
        func_L00_001FF4B0(v2, v2, *(float *)(k + 0x234));
        func_001F9BD8(k + 0x80, v0, v2);
        return -1;
    }
    return 1;
}
