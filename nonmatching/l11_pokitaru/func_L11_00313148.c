/* NON_MATCHING func_L11_00313148 -- src/overlays/l11_pokitaru/vendor_00312BD8.c
 * Best so far: BYTES 31/208 (85.1% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern char D_L11_00167850_a[] __asm__("D_L11_00167850");
extern short D_L11_001621F0_s __asm__("D_L11_001621F0");
extern short D_L11_001621F4_s __asm__("D_L11_001621F4");
extern unsigned char D_0013E633_b[] __asm__("D_0013E633");
extern void *func_L11_00312E10_u(void *, void *, void *, void *, void *, int, float, float, float) __asm__("func_L11_00312E10");
extern void func_001F9908_u(void *) __asm__("func_001F9908");

void func_L11_00313148(void *a, char *s) {
    unsigned char *t;
    int sum;
    char *q;
    float v[4] __attribute__((aligned(16)));
    if (D_0013E633_b[0x2413] == 0) {
        *(char **)(s + 0x88) = 0;
        return;
    }
    t = *(unsigned char **)(s + 0x88);
    if (t != 0) {
        if (t[0x20] == 0xFE) {
            *(char **)(s + 0x88) = 0;
        } else if (t[0x20] == 0xFD) {
            *(char **)(s + 0x88) = 0;
        }
    }
    q = D_L11_00167850_a;
    qcopy(v, q);
    a = func_L11_00312E10_u(a, s, q - 0x10, v, *(char **)(s + 0x88), 0, 0.19634955f, 0.19634955f, 255.0f);
    if (a != *(char **)(s + 0x88)) {
        sum = *(int *)&D_L11_001621F0_s + *(int *)&D_L11_001621F4_s;
        *(char **)(s + 0x88) = a;
        *(int *)(s + 0x8C) = sum;
    } else if (a != 0) {
        func_001F9908_u(s + 0x8C);
    }
}
