/* NON_MATCHING func_L18_002FB6B0 -- src/overlays/l18_veldin2/vendor_002F9D48.c
 * Best so far: SIZE ours 456 / retail 464, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Two spark bursts: 2 sparks from vec a (speed +-random) with func_L00_0026DEA0, then 3 sparks from vec b altern
 */
extern int func_002140B0(int);
extern char *func_L00_0026DEA0(void *, int, void *, int, float, float, float, float);
extern int func_001F9850(int);
extern int func_001FA898_r(float) __asm__("func_001FA898");
typedef int u128 __attribute__((mode(TI)));

// Spawns two bursts of sparks (2 then 3 particles) flying from the given points.
void func_L18_002FB6B0(void *p, void *q, void *o, float f, float g) {
    float a[4];
    float b[4];
    void *pb;
    int i = 1;
    *(u128 *)a = *(u128 *)p;
    *(u128 *)b = *(u128 *)q;
    pb = b;
    do {
        unsigned char *r;
        int s = func_002140B0(0x10);
        int t = func_002140B0(2);
        int v = -s;
        if (t == 0) v = s;
        r = (unsigned char *)func_L00_0026DEA0(a, v, o, 0x7F204080, 0.0f, 1.0f, 0.9f, f);
        if (r != 0) {
            char *w = (char *)r + 0x20;
            *(short *)(r + 0xA) = func_001F9850(0xF);
            r[9] = func_001FA898_r(4.0f) + 0x40;
            *(int *)(w + 4) = 2;
            w[0xA] = 0x7F;
            w[0xB] = r[0xA];
        }
    } while (--i >= 0);
    {
        int spd = 0x10;
        i = 2;
        do {
            unsigned char *r = (unsigned char *)func_L00_0026DEA0(pb, spd, o, 0x7FFFFFFF, 0.0f, 1.0f, 0.97f, g);
            spd = -spd;
            if (r != 0) {
                char *w = (char *)r + 0x20;
                r[9] = func_001FA898_r(4.0f) + 0x40;
                *(short *)(r + 0xA) = func_001F9850(4);
                r[8] = func_002140B0(0xFF);
                *(int *)(w + 4) = 2;
                w[0xA] = 0x7F;
                w[0xB] = r[0xA];
            }
        } while (--i >= 0);
    }
}
