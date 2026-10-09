/* NON_MATCHING func_L00_0025F4A8 -- src/overlays/shared/mobyutil_00258BC8.c
 * Best so far: SIZE ours 3164 / retail 3168, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   $10 k10, $11 k11 (flag); stack: 0x1B0 s16 (count), 0x1B4 unused, 0x1B8 s18 (-1 = auto), 0x1BC unused,
 *   0x1C0 byte flag30. Floats f12..f18 = fA..fG. Frame 0x1B0; saved $16-$23,$30,$31 and $f20-$f29.
 *   Blocks: fA>0 spawn event; n>0 spark loop (3 rng-based calls per iter); call 0x25F750 section with
 *   vec dirs (s16 loop, i%3 select); k8 loop; k9 loop with S6y10 tables; fC/fD ADBB0 bursts; fH cam; fG.
 *   Attempts are logged by try_func.
 *   Runs 1-8 (best p5.c): compiles, SIZE 3164 vs 3168 (one saved float short). Retail keeps 3.0f (f25) and 40000.0
 *   Unblock: a way to keep the 3.0f/40000.0f constants in saved registers across the calls (the gcc rematerialisat
 *   Note: run 1 was p0.c as first written (compile failed on type clashes). p0.c was then edited in place (type na
 */
typedef struct { float x, y, z, w; int i10; int i14; unsigned char b18; unsigned char b19; unsigned short s1a; float f1c; int i20; } Ev25F4;
typedef struct { int v[6]; } S6_25F4;

extern float D_0015EE6C MACRO_ADDR;
extern float D_L00_0015F6B8_0023e738 __asm__("D_L00_0015F6B8") MACRO_ADDR;
extern float D_L00_0015F6B4 MACRO_ADDR;
extern float D_L00_00166EC0[];
extern char D_L00_00166D80[];
extern float D_L00_001B05D0[];
extern char D_L00_001B0620[];
extern S6_25F4 D_L00_001E93B0_25f4 __asm__("D_L00_001E93B0");
extern S6_25F4 D_L00_001E93C8_25f4 __asm__("D_L00_001E93C8");
extern int D_L00_0016007C MACRO_ADDR;
extern int func_001F9850(int);
extern float func_002140F8(float, float);
extern float func_00214158(void);
extern float func_001FA888(int);
extern int func_001FA898(float);
extern int func_002140B0(int);
extern void func_00215C00(void *, float, float, float);
extern unsigned func_L00_0025D140(unsigned, int);
extern int func_L00_00258BC8(int, int);
extern void func_L00_0025A890(char *, int, int, float);
extern int func_L00_001F2BE8_2FB898(float, void *, int, void *, void *);
extern unsigned char *func_L00_0026CA10_26bca8(void *, void *, int, int, int, float, int, int, int);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8_25e290(void *, void *, void *);
extern void func_L00_001FF548(void *, void *, float);
extern char *func_L00_002B0738(char *, char *, int, int, int);
extern void func_L00_0026B890(void *, void *, int, int, float, int, int, int, int, float);
extern void func_L00_0026B368(void *, void *, int, int, int, float);
extern int func_L00_002ADBB0(void *, void *, void *, float, int, int, int, int, int);
extern int func_L00_00200290(char *, float);
extern int func_0022ED80(int, int, int);
extern void func_L00_002D4CE8(void *, void *, int, int);

/* Beam explosion at moby m: a spark burst from a spawn event, optional glow sparks and a flash, with a cam tint. */
void func_L00_0025F4A8(char *m, void *unused, char *pos, int n, int k8, int k9, int k10, int k11,
                       int s16, int s17, int s18, int pad19, unsigned char flag30,
                       float fA, float fB, float fC, float fD, float fE, float fF, float fG) {
    Vc0 vb, v0, vtmp, dirv, vb2;
    Ev25F4 ev;
    S6_25F4 c0, c1;
    float f3, f20, f21, f22, f24, f1, r;
    int i, cnt, sel, p1, p2, q, x, t, tn, idx, three, cnt4, s2, s3, s5, u18;
    float k40000, k3;
    int one;

    *(u128 *)&v0 = 0;
    v0.z = D_0015EE6C * 8.0f * fF;
    f3 = D_L00_0015F6B8_0023e738 + D_L00_0015F6B4;
    *(u128 *)&vb = *(u128 *)&v0;
    if (s18 == -1) {
        if (1.7f < f3) s18 = 1; else s18 = 0;
    }
    if (pos == 0) {
        if (m == 0) return;
        pos = m + 0x10;
    }
    if (fA > 0.0f) {
        func_L00_0025A890((char *)&ev, (int)m, 0x810001, fB);
        ev.b18 = 2;
        ev.s1a = *(unsigned short *)(m + 0xA6);
        ev.b19 = 1;
        func_L00_001F2BE8_2FB898(fA, pos, 0x10, m, (char *)&ev);
    }
    if (n > 0) {
        cnt = n;
        tn = s18 * 10;
        k40000 = 40000.0f;
        k3 = 3.0f;
        do {
            f22 = fF * k40000;
            func_002140F8(0.2617994f, 1.3962634f);
            cnt--;
            f21 = func_00214158();
            f20 = func_002140F8(7.0f, 10.5f);
            func_00215C00(&ev, fF * (f20 * D_0015EE6C), f20, f21);
            ev.z = ev.z + D_0015EE6C * k3;
            p1 = func_L00_0025D140(0x4F007FFF, flag30);
            p2 = func_L00_0025D140(0x1F00007F, flag30);
            t = func_001F9850(0x3C);
            x = func_001F9850(0x78);
            x = func_L00_00258BC8(t, x);
            func_L00_0026CA10_26bca8(pos, &ev, p1, p2, x - tn, f22, 1, -1, -1);
        } while (cnt != 0);
    }
    func_001F9BF0(&v0, D_L00_00166EC0, pos);
    f22 = func_001F9CB8(&v0);
    if (s16 != 0) {
        f21 = -1.0f;
        f20 = 1.0f;
        *(u128 *)&dirv = 0;
        dirv.x = func_002140F8(f21, f20);
        dirv.y = func_002140F8(f21, f20);
        dirv.z = func_002140F8(f21, f20);
        *(u128 *)&ev = *(u128 *)&dirv;
        if (f22 < 14.0f) {
            v0.z = v0.z + f22 * 0.5f;
            func_L00_001FF4B0(&ev, &ev, f22 / 5.0f * D_0015EE6C);
            func_L00_001FF4B0(&v0, &v0, (f22 + f22) * D_0015EE6C);
            func_001F9BD8_25e290(&ev, &ev, &v0);
            func_L00_001FF548(&ev, &ev, D_0015EE6C * 10.0f);
            t = func_001F9850(0x3C);
            x = func_001F9850(0x5A);
            x = func_L00_00258BC8(t, x);
            func_L00_002B0738(pos, (char *)&ev, x, 0, 0);
        }
        i = D_L00_0016007C;
        s16 = s16 - 1;
        if (i < 11) {
            s16 = 0;
        } else {
            t = i - 10;
            if (t < s16) s16 = t;
        }
        three = 3;
        one = 1;
        {
            for (i = 0; i < s16; i++) {
                func_002140F8(0.2617994f, 1.3089969f);
                sel = one;
                f21 = func_00214158();
                f20 = func_002140F8(7.0f, 10.5f);
                func_00215C00(&dirv, fF * (f20 * D_0015EE6C), f20, f21);
                if (i % three) sel = 0;
                dirv.z = dirv.z + (D_0015EE6C + D_0015EE6C);
                t = func_001F9850(0x3C);
                x = func_001F9850(0x5A);
                x = func_L00_00258BC8(t, x);
                func_L00_002B0738(pos, (char *)&dirv, x, sel, 0);
            }
        }
    }
    r = func_001FA888(k8);
    cnt4 = k8;
    if (f22 < r + r) {
        cnt4 = func_001FA898(f22) / 2;
    }
    f24 = 0.0f;
    if (f22 < 7.0f) f24 = 7.0f - f22;
    if (cnt4 > 0) {
        s2 = s18 * 2;
        s3 = s18 * 3;
        s5 = s18 * 5;
        cnt = cnt4;
        do {
            r = func_002140F8(8.0f, 10.0f);
            c0 = D_L00_001E93B0_25f4;
            f20 = r * D_0015EE6C;
            c1 = D_L00_001E93C8_25f4;
            f1 = f24 * D_0015EE6C;
            f20 = f20 - f1;
            idx = func_002140B0(6);
            p1 = func_L00_0025D140(c0.v[idx], flag30);
            f20 = f20 * fF;
            cnt--;
            idx = func_002140B0(6);
            p2 = func_L00_0025D140(c1.v[idx], flag30);
            f21 = fF * 400000.0f;
            x = func_001F9850(0xF);
            t = func_001F9850(0x14);
            x = func_L00_00258BC8(x, t);
            sel = x - s3;
            t = func_001F9850(0x1E);
            i = func_001F9850(0x2D);
            i = func_L00_00258BC8(t, i);
            func_L00_0026B890(pos, &vb, p1, p2, f21, sel, i - s5, 0, 0, f20);
            x = func_001F9850(5);
            t = func_001F9850(0xA);
            x = func_L00_00258BC8(x, t);
            sel = x - s2;
            t = func_001F9850(0xF);
            i = func_001F9850(0x14);
            i = func_L00_00258BC8(t, i);
            func_L00_0026B890(pos, &vb, 0x7FFFFFFF, 0x00FFFFFF, f21, sel, i - s3, 0, 0, f20 * 0.5f);
        } while (cnt != 0);
    }
    if (k9 > 0) {
        cnt = k9;
        s5 = s18 * 5;
        do {
            c0 = D_L00_001E93B0_25f4;
            c1 = D_L00_001E93C8_25f4;
            *(u128 *)&vtmp = 0;
            r = func_002140F8(-1.0f, 1.0f);
            cnt--;
            vtmp.x = r;
            vtmp.y = func_002140F8(-1.0f, 1.0f);
            vtmp.z = func_002140F8(-1.0f, 1.0f);
            r = func_002140F8(0.0f, 3.0f);
            *(u128 *)&vb2 = *(u128 *)&vtmp;
            func_L00_001FF4B0(&vb2, &vb2, fF * (r * D_0015EE6C));
            idx = func_002140B0(6);
            p1 = func_L00_0025D140(c0.v[idx], flag30);
            idx = func_002140B0(6);
            q = func_L00_0025D140(c1.v[idx], flag30);
            x = func_001F9850(0x1E);
            i = func_001F9850(0x2D);
            x = func_L00_00258BC8(x, i);
            func_L00_0026B368(pos, &vb2, p1, q, x - s5, 200000.0f);
        } while (cnt != 0);
    }
    if (m != 0) {
        if (fC > 0.0f) {
            int s17b = 150, s16b = 150, s8b = 127;
            if (flag30) {
                s17b = 70;
                s16b = 70;
                s8b = 60;
            }
            u18 = (unsigned char)s8b;
            if (D_L00_0015F6B4 < 0.95f && fE < f22) {
                func_L00_002ADBB0(m, pos, &vb, fC, func_001F9850(0x10), s17b, 0x96, s16b, 0x20);
                func_L00_002ADBB0(m, pos, &vb, fC, func_001F9850(0x16), u18, 0x7F, 0x50, 0x20);
            }
            func_L00_002ADBB0(m, pos, &vb, fC, func_001F9850(0x1E), u18, 0x7F, 0, 0x30);
        }
        if (fD > 0.0f) {
            func_L00_002ADBB0(m, pos, &vb, fD, func_001F9850(0x1B), 0xFF, 0xFF, 0xFF, 0x20);
        }
    }
    if (k11) {
        *(u128 *)&ev = *(u128 *)pos;
        ev.w = 2.0f;
        i = func_L00_00200290((char *)&ev, 10.0f);
        if (i != -1) {
            if (f22 < 20.0f) {
                *(float *)(D_L00_00166D80 + 0x160) = 0.4f - f22 * 0.0175f;
            } else {
                *(float *)(D_L00_00166D80 + 0x160) = 0.050000012f;
            }
            *(int *)(D_L00_00166D80 + 0x168) = func_001F9850(0x19);
        }
    }
    if (m != 0 && k10 != -1) {
        func_0022ED80(k10, 0, (int)m);
    }
    if (fG != 0.0f) {
        if (s18 == 0) {
            *(u128 *)&ev = *(u128 *)pos;
            ev.w = fG;
            i = func_L00_00200290((char *)&ev, 100.0f);
            if (i != -1) {
                if (0.0f < fG) {
                    D_L00_001B05D0[8] = fG;
                    D_L00_001B05D0[9] = fG;
                    D_L00_001B05D0[10] = fG;
                } else {
                    D_L00_001B05D0[8] = 15.0f;
                    D_L00_001B05D0[9] = 15.0f;
                    D_L00_001B05D0[10] = 15.0f;
                }
                if (flag30) {
                    func_L00_002D4CE8(D_L00_001B0620, pos, 0, 0);
                } else {
                    func_L00_002D4CE8(D_L00_001B05D0, pos, 0, 0);
                }
            }
        }
    }
}
