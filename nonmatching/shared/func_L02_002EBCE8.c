/* NON_MATCHING func_L02_002EBCE8 -- src/overlays/shared/vendor_002A5218.c
 * Best so far: SIZE ours 560 / retail 548, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Spins four rings around a moby: per ring adds speed to angle (wrapped to 0..255), re-rolls a counter, builds a
 *   Closest is p6.c (SIZE 548, BYTES 228): do-while with float *a, float *end=a+4, int *s, int i (+=4), exit on i<
 *   Every form exiting on the pointer biv (int a < end) merges s into a (532 bytes); a separate j counter keeps j 
 */
extern void func_001F9BF0(void *dst, void *a, void *b);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001F9908(void *);
extern int func_001F9850(int);
extern float func_001FA888(int);
extern float func_001F9B88(float);
extern int func_001FA8A8(int, int, float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern void func_L00_00273E08(void *, int, int, int, int, int, int, float);
extern float D_L02_00167440[];

/* Spins four rings around a moby: advances each angle, re-rolls the counter, draws the ring. */
void func_L02_002EBCE8(char *m) {
    float tmp[8];
    char *d = *(char **)(m + 0x78);
    float *a = (float *)d;
    float *end = a + 4;
    int *s = (int *)(d + 0x20);
    int i = 0;
    int j = 0;
    func_001F9BF0(tmp, m + 0x10, D_L02_00167440);
    *(float *)(m + 0x18) += 0.5f;
    func_L00_001FF4B0(tmp, tmp, -0.3f);
    func_L00_001FF4B0(tmp + 4, tmp, 0.1f);
    func_001F9BD8(tmp, tmp, m + 0x10);
    *(float *)(m + 0x18) -= 0.5f;
    do {
        char *cnt;
        float v = *a + *(float *)((char *)end + i);
        float f;
        int c, b;
        *a = v;
        if (v >= 255.0f) *a = v - 255.0f;
        else if (v <= 0.0f) *a = v + 255.0f;
        cnt = d + 0x20;
        if (func_001F9908(s)) *(int *)(cnt + i) = func_001F9850(255);
        s++;
        f = func_001FA888(func_001F9850(255) - *(int *)(cnt + i));
        c = func_001FA8A8(0x4040FFFF, 0x1040FFFF, func_001F9B88(0.5f - f / (float)func_001F9850(255)));
        b = func_001FA898_r(*a);
        a++;
        func_L00_00273E08(tmp, c, b & 0xFF, 0x35, 1, 2, 0, *(float *)(d + i + 0x30));
        i += 4;
        j++;
        func_001F9BD8(tmp, tmp, tmp + 4);
    } while (j < 4);
}
