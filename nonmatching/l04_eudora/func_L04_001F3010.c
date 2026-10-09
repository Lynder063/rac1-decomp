/* NON_MATCHING func_L04_001F3010 -- src/overlays/l04_eudora/fastfunc_001F2F68.c
 * Best so far: SIZE ours 2448 / retail 2456, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Steers a moby toward its nearest path point (D_L04_001B0930 entry picked by c+0x5C), updates its contact vecto
 *   Still differs: frame is 0x140 vs retail 0x130 (one 16-byte slot too many; scoping the vector arrays to their b
 *   Declared D_0013E633 and D_L04_00174040 as plain char arrays (the packet's G_35F0 type is not defined here). 13
 */
extern void func_001F9BC0(void *);
extern float func_001F9D10(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern float func_001F9CE8(void *);
extern float func_L00_001FF860(float, float);
extern void func_L00_001FF500(void *, void *, float);
extern int func_L00_001F10E0(float, void *, int, void *);
extern int func_001F9938(void *);
extern float func_002140F8(float, float);
extern int func_001FA898(float);
extern int func_L04_001F2F68(char *a, char *b, int n);
extern int func_L04_0024D790(float *out, float *p, float *poly, int n);
extern struct Path5BD0 *D_L04_001B0930[];
extern char D_L04_00174040[];
extern char D_L04_00174070[];
extern char D_0013E633[];

/* Steers a moby toward its nearest path point and updates its contact state. */
void func_L04_001F3010(char **list, int n, char *m, char *c, float *f) {
    float o[4];
    float w[4];
    float t[4];
    float a[4];
    float e[4];
    float x[4];
    char *p = m + 0x10;
    char *p20 = 0;
    char *obj;
    char *mob;
    char *pa;
    char *pb;
    char *v5;
    char *v54;
    char *q;
    char **lp;
    int flag;
    int idx;
    int r = 0;
    int r2;
    int i;
    int lim;
    int k;
    int cnt;
    int cls;
    int nn;
    int ret;
    int kk;
    int nxt;
    int lo;
    int hi;
    int ilo;
    int ihi;
    int k16;
    int k19;
    char *sp3;
    float d;
    float best;
    float best2;
    float d1;
    float d2;
    float d3;
    float d4;
    float g;
    float g2;
    float s;
    float c48;
    float h;
    float r1;
    float r3;
    float r4;
    float r5;

    func_001F9BC0(c);
    d = func_001F9D10(p, t);
    flag = 0;
    mob = 0;
    idx = *(short *)(c + 0x5C);
    if (idx != -1) {
        p20 = (char *)D_L04_001B0930[idx];
        r = func_L04_001F2F68(m, p20 + 0x10, *(int *)p20);
        r2 = func_L04_0024D790(o, p, p20 + 0x10, *(int *)p20);
        flag = r2;
        if (r2 == 0) {
            func_001F9BF0(w, o, p);
            p = w;
            best = func_001F9CB8(w);
            if (best != 0.0f) best = -f[2] / (best * best);
            else best = -1000.0f;
        } else {
            func_001F9BF0(w, o, p);
            p = w;
            best = func_001F9CB8(w) + 3.0f;
            if (d < best) best = best * (f[2] * best);
            else best = 10000.0f;
        }
        func_L00_001FF4B0(p, p, best);
        func_001F9BD8(c, c, p);
    }

    if (f[0] != 0.0f) {
        func_L00_001FF4B0(w, c + 0x20, f[0]);
        func_001F9BD8(c, c, w);
    }
    if (*(char **)(c + 0x50) == m) {
            qcopy(w, c + 0x10);
            pa = c + 0x44;
            pb = c + 0x30;
            func_L00_001FF4B0(w, w, f[1]);
            func_001F9BD8(c, c, w);
            goto post;
    
    } else {
        idx = *(short *)(c + 0x5C);
        if (idx != -1) {

            d1 = func_001F9D10(p20 + (r << 4) + 0x10, t);
            kk = r + 1;
            nn = *(int *)p20;
            nxt = (kk < nn) ? kk : 0;
            d2 = func_001F9D10(p20 + (nxt << 4) + 0x10, t);
            k19 = r;
            best2 = d1;
            if (d1 < d2) {
                k19 = nxt;
                best2 = d2;
            }
            k16 = r - 1;
            if (k16 < 0) k16 = *(int *)p20 - 1;
            d3 = func_001F9D10(p20 + (k16 << 4) + 0x10, t);
            if (best2 < d3) k19 = k16;
            nn = *(int *)p20;
            lo = k19 - 1;
            ilo = (lo > -1) ? lo : nn - 1;
            hi = k19 + 1;
            ihi = (hi < nn) ? hi : 0;
            func_001F9BD8(w, p20 + (ihi << 4) + 0x10, p20 + (ilo << 4) + 0x10);
            func_001F9BD8(w, w, p20 + (k19 << 4) + 0x10);
            func_001F9C30(w, w, 0.33333334f);
            if (flag == 0) {
                func_001F9BF0(w, w, (m + 0x10));
                best2 = func_001F9CB8(w);
                func_L00_001FF4B0(w, w, best2 * ((best2 * best2) * f[2]));
                func_001F9BD8(c, c, w);
            }
        }
    }

    v5 = *(char **)(c + 0x50);
    if (v5 != 0) {
        func_001F9BF0(w, v5 + 0x10, (m + 0x10));
        if (func_001F9CB8(w) < d) {
            s = func_001F9CB8(w);
            func_L00_001FF4B0(w, w, s * ((s * s) * f[1]));
            func_001F9BD8(c, c, w);
        }
    }

    v54 = *(char **)(c + 0x54);
    if (v54 != 0) {
        w[0] = ((float *)v54)[0] - ((float *)(m + 0x10))[0];
        w[1] = ((float *)v54)[1] - ((float *)(m + 0x10))[1];
        w[2] = ((float *)v54)[2] - ((float *)(m + 0x10))[2];
        if (func_001F9CB8(w) < d) {
            s = func_001F9CB8(w);
            func_L00_001FF4B0(w, w, s * ((s * s) * f[1]));
            func_001F9BD8(c, c, w);
        }
    }

    pa = c + 0x44;
    pb = c + 0x30;
    lim = n + 1;
    if (lim > 0) {
        lp = list;
        for (i = 0; i < lim; i++, lp++) {
            if (i < n) obj = *lp;
            else obj = *(char **)(D_0013E633 + 0x2E9D);
            if (*(signed char *)(obj + 0x20) < 0) continue;
            if (obj == m) continue;
            q = obj + 0x10;
            d4 = func_001F9D10((m + 0x10), q);
            if (*(float *)(c + 0x4C) < d4) continue;
            cls = *(short *)(obj + 0xA6);
            sp3 = c + 0x60;
            k = 0;
            do {
                if (*(short *)sp3 == cls) break;
                k++;
                sp3 += 2;
            } while (k < (short)*(unsigned short *)(c + 0x5E));
            if (k < (short)*(unsigned short *)(c + 0x5E)) {
                if (d4 < f[4]) {
                    mob = obj;
                    break;
                }
                g = d4 / *(float *)(c + 0x90 + k * 4);
                if (g == 0.0f) g = 1000.0f;
                else g = *(float *)(c + 0x70 + k * 4) / (g * g);
                func_001F9BF0(w, (m + 0x10), q);
                func_L00_001FF4B0(w, w, g);
                func_001F9BD8(c, c, w);
            }
        }
    }

post:
    h = *(float *)(c + 0x48);
    if (h == 0.0f) {
        func_001F9BD8(a, (m + 0x10), c + 0x10);
        func_001F9BD8(e, (m + 0x10), c + 0x10);
        a[2] = a[2] + 1.5f;
        e[2] = 0.01f;
        ret = func_L00_001EFFF0(a, e, 2, m, 0);
        if (ret) {
            if (*(int *)(D_L04_00174040 + 0x1C) > 0 && ((float *)m)[6] < *(float *)(D_L04_00174040 + 0x28)) {
                qcopy(x, D_L04_00174040 + 0x40);
                s = func_001F9CE8(D_L04_00174040 + 0x40);
                g2 = func_L00_001FF860(*(float *)(D_L04_00174040 + 0x48), s);
                func_L00_001FF500(x, x, 1.0f);
                func_001F9C30(x, x, f[3]);
                func_001F9BD8(c, c, x);
                if (0.4f < g2) {
                    func_001F9C30(x, x, f[3] * (g2 * 10000.0f));
                    func_001F9BD8(c, c, x);
                }
                if (0.2f < ((float *)m)[6] - *(float *)(D_L04_00174040 + 0x28)) {
                    func_L00_001FF500(x, c + 0x10, -(f[3] * 1000.0f));
                    func_001F9BD8(c, c, x);
                }
            }
        }
    } else {
        if (func_L00_001F10E0(f[4], (m + 0x10), 4, m)) {
            func_001F9BF0(w, D_L04_00174070, (m + 0x10));
            w[2] = w[2] + f[3];
            func_L00_001FF4B0(w, w, f[3]);
            func_001F9BD8(c, c, w);
        }
    }

    c48 = *(float *)(c + 0x48);
    if (c48 == 0.0f) {
        func_L00_001FF500(c, c, f[6]);
        *(float *)(c + 0x8) = 0.0f;
    } else {
        func_L00_001FF4B0(c, c, f[4]);
        *(float *)(c + 0x8) = *(float *)(c + 0x8) / c48;
    }

    if (func_001F9938(pa)) {
        best = 0.0f;
        r1 = func_002140F8(45.0f, 90.0f);
        d = 0.5f;
        r2 = func_001FA898(r1);
        *(short *)(c + 0x44) = (short)r2;
        r3 = func_002140F8(best, *(float *)(c + 0x40));
        *(float *)(c + 0x30) = r3 - *(float *)(c + 0x40) * d;
        r4 = func_002140F8(best, *(float *)(c + 0x40));
        *(float *)(c + 0x34) = r4 - *(float *)(c + 0x40) * d;
        if (c48 == 0.0f) {
            *(float *)(c + 0x38) = best;
        } else {
            r5 = func_002140F8(best, *(float *)(c + 0x40));
            *(float *)(c + 0x38) = r5 - *(float *)(c + 0x40) * d;
        }
    }
    func_001F9BD8(c, c, pb);

    if (mob != 0) {
        func_001F9BF0(w, (m + 0x10), mob + 0x10);
        if (c48 == 0.0f) func_L00_001FF500(c, w, f[6]);
        else func_L00_001FF4B0(c, w, f[6]);
    }
}
