/* NON_MATCHING func_L02_002D70C0 -- src/overlays/l02_aridia/vendor_002A59D8.c
 * Best so far: SIZE ours 1164 / retail 1168, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped (wall: allocator tie). Aridia moby update: state byte machine calling the 0025B4D0 hit test, the 0025B
 *   Left: the register permutation (d/moby/pointer) and the 4-byte gap; also the shared 0025BBA0 call comes out as
 */
extern int func_L02_002D6A90(void *);
extern void func_0020D678(void *);
extern int func_001F9938(void *);
extern float func_001F9D48(void *, void *);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern void func_L02_002D6B60(char *);
extern float func_00214358(void *, int, float);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0(float, void *, void *, int, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_L00_0025E590(void *, void *);
extern int func_L00_00260FB0(float, char *, void *, int, int, void *, int);
extern float func_001F9B88(float);
extern int D_L02_00160058_m __asm__("D_L02_00160058") MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char *D_L02_001B0DB0[];
extern char D_0013E633[];
extern short D_001139A4;
extern short D_001139A8;
extern short D_0011399C;
extern short D_00113998;

/* Aridia moby update: state byte machine that runs the hit/steer helpers and
 * the 0x18 state's follow-up steps, then picks the anim index from D_L02_001B0DB0. */
void func_L02_002D70C0(char *moby) {
    char *d = *(char **)(moby + 0x78);
    char *p;
    char *q;
    char *e1;
    float vec[4];
    float vec2[4];
    float fo;
    int li;
    float lf;
    float lo;
    char *r;
    char *ptr;
    float t, u, f0x, h;
    int rr;
    int r3;
    int r2;

    *(int *)(d + 0x280) = *(unsigned char *)(moby + 0x20);
    if (*(unsigned char *)(moby + 0x20) != 0) {
        if (*(unsigned char *)(d + 0x2E) == 2) {
            *(unsigned char *)(d + 0x2E) = 1;
            if (*(int *)(d + 0x288) >= 0) {
                char *o = (char *)(D_L02_00160058_m + (*(int *)(d + 0x288) << 8));
                char *od = *(char **)(o + 0x78);
                (*(int *)(od + 0x14C))--;
            }
            rr = func_L02_002D6A90(moby);
            *(int *)(d + 0x27C) = rr;
            if (rr == 0) {
                func_0020D678(moby);
                return;
            }
            *(unsigned char *)(moby + 0x20) = 0x1A;
            qcopy(moby + 0x10, d + 0x220);
            *(float *)(moby + 0x18) = *(float *)(moby + 0x18) - 10.0f;
            *(int *)(moby + 0x94) = 0;
        }

        if (*(int *)(d + 0x38) == 0 && (func_001F9938(d + 0x25C) != 0
                || !(func_001F9D48(moby + 0x10, (char *)D_0013E633 + 0xE9D) < 10.0f))) {
            *(int *)(d + 0x38) = 0;
        } else {
            t = func_002140F8(180.0f, 240.0f);
            u = func_001F9878(t);
            *(short *)(d + 0x25E) = func_001FA898_r(u);
            *(int *)(d + 0x38) = 0;
        }

        r2 = func_001F9938(d + 0x25E);
        f0x = *(float *)(d + 0x24C);
        if (r2 == 0) {
            f0x = f0x + 5.0f;
        }
        *(float *)(d + 0x250) = f0x;

        lf = 0.0f;
    p = d + 0x110;
        r = func_L00_0025B478(moby, 0x330000, 0);
        func_L00_0025B4D0(moby, r, d + 0x20, 0, &li, &lf, 0, 4);

        if (li != 1) {
            if (*(unsigned char *)(moby + 0x20) != 0x18) {
                func_L02_002D6B60(moby);
                *(int *)(d + 0x29C) = 0;
                lo = *(float *)(d + 0x20) - lf;
                *(float *)(d + 0x20) = lo;
                if (lo <= 0.0f) {
                    *(int *)(d + 0x140) = 0x200;
                    *(unsigned char *)(d + 0x15D) = 0;
                    *(float *)(d + 0x130) = *(float *)&D_001139A4 * D_0015EE70;
                    *(float *)(d + 0x134) = *(float *)&D_001139A8 * D_0015EE70;
                    *(float *)(d + 0x138) = *(float *)&D_0011399C * D_0015EE6C;
                    *(float *)(d + 0x13C) = *(float *)&D_00113998 * D_0015EE6C;
                    *(int *)(d + 0x144) = 9;
                    *(float *)(d + 0x16C) = D_0015EE6C + D_0015EE6C;
                    *(float *)(d + 0x148) = 0.5f;
                    *(float *)(d + 0x20) = lo - lf;

                    qcopy(vec, moby + 0x10);
                    vec[2] = vec[2] + 2.0f;
                    h = func_00214358(vec, 0, 0.5f);
                    if (*(float *)(moby + 0x18) < h) {
                        *(float *)(moby + 0x18) = h;
                    }
                    if (*(int *)(d + 0x288) >= 0) {
                        char *o = (char *)(D_L02_00160058_m + (*(int *)(d + 0x288) << 8));
                        char *od = *(char **)(o + 0x78);
                        (*(int *)(od + 0x14C))--;
                        *(unsigned char *)(d + 0x15D) = 0;
                    } else {
                        vec[2] = vec[2] + 0.01f;
                    }
                    *(int *)(d + 0x144) = *(int *)(d + 0x144) | 0x20;
                    *(unsigned short *)(moby + 0x34) &= 0xEFFF;
                    qcopy(vec2, r + 0x10);
                    func_L00_0025BBA0(vec2, &fo, d + 0x138, d + 0x13C);
                    func_L00_0025D5B0(fo, moby, d + 0x120, 6, 1, 0);
                    *(float *)(d + 0x148) = 0.85f;
                    *(float *)(d + 0x170) = 7.0f;
                    *(float *)(d + 0x174) = 14.0f;
                    *(unsigned char *)(moby + 0x20) = 0x18;
                    *(int *)(moby + 0x94) = 0;
                    *(unsigned char *)(d + 0x117) = 0x78;
                    func_L00_0025E4B0(moby, (short *)p);
                }
            }
        }

        *(unsigned char *)(moby + 0xA4) = 0xFF;
        func_L00_0025E590(moby, p);

        q = d + 0x1D0;
        ptr = D_L02_001B0DB0[*(int *)(d + 0x290)];
        r3 = func_L00_00260FB0(*(float *)(d + 0x250), moby, q, 0, 0, ptr + 0x10, *(int *)ptr);
        if (r3 != 2) {
            f0x = func_001F9D48(d + 0x220, q);
            if (*(float *)(d + 0x250) < f0x) {
                *(int *)(d + 0x214) = 2;
            } else if (3.0f < func_001F9B88(*(float *)(moby + 0x18) - *(float *)(d + 0x1D8))) {
                *(int *)(d + 0x214) = 2;
            }
        }
        if (*(int *)(d + 0x210) == 0) {
            e1 = (char *)D_0013E633 + 0xE1D;
            *(int *)(d + 0x210) = *(int *)(e1 + 0x2080);
            qcopy(q, e1 + 0x80);
        }
    }
}
