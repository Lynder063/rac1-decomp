/* NON_MATCHING func_L00_00260FB0 -- src/overlays/shared/mobyutil_00258BC8.c
 * Best so far: SIZE ours 1148 / retail 1164, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L00_00260FB0 (shared, 1164 bytes): picks the nearest eligible moby to a4 within `radius` from two lists (
 *   Stopped after 7 runs. p0 was 1188 bytes. Making the g = D_0013E633 + 0xE1D base an expression at each use (p1,
 */
extern unsigned char D_0013E633[];
extern int func_00215570(void *arg0, int arg1);
extern int func_L00_0025A778(float *p, float *v, int n);
extern float func_001F9D48_f(void *, void *) __asm__("func_001F9D48");
extern short D_L00_001B0BB0[];
extern int D_L00_00160098 MACRO_ADDR;
extern char * D_L00_001DD450[];

/* Picks the nearest eligible moby to a4 within radius, fills out[], returns the state flag. */
int func_L00_00260FB0(char *a4, float radius, char *out, int *list, int n, float *v, int nv) {
    char *best = *(char **)((char *)(D_0013E633 + 0xE1D) + 0x2080);
    int flag = 0;
    float thr = radius;
    int i, j, k, ok, next;
    char *m;
    char *p;
    float d;

    if (*(int *)((char *)(D_0013E633 + 0xE1D) + 0x208C) == 0x18 || *(int *)((char *)(D_0013E633 + 0xE1D) + 0x2084) == 0x72) {
        flag = 2;
        best = 0;
    } else if (n > 0) {
        for (i = 0; i < n - 1; i++) {
            if (func_00215570((char *)(D_0013E633 + 0xE1D) + 0x80, list[i])) {
                flag = 2;
                best = 0;
                break;
            }
        }
    } else if (v && nv > 0) {
        if (func_L00_0025A778((float *)((char *)(D_0013E633 + 0xE1D) + 0x80), v, nv) == 0) {
            flag = 2;
            best = 0;
        }
    }

    for (i = 1; i <= D_L00_001B0BB0[0]; i = next) {
        next = i + 1;
        m = (char *)(D_L00_00160098 + (D_L00_001B0BB0[i] << 8));
        if (m) {
            short cls = *(short *)(m + 0xA6);
            if (cls == 0xCB || cls == 0x76C) {
                unsigned char st = *(unsigned char *)(m + 0x20);
                if (st != 0xFE && st != 0xFD && st == 3) {
                    d = func_001F9D48_f(a4 + 0x10, m + 0x10);
                    ok = 0;
                    if (thr > d) {
                        ok = 1;
                        if (n > 0) {
                        for (j = 0; j < n - 1; j++) {
                            if (func_00215570(m + 0x10, list[j])) {
                                ok = 0;
                                break;
                            }
                        }
                    } else if (v && nv > 0) {
                        ok = func_L00_0025A778((float *)(m + 0x10), v, nv) != 0;
                    }
                    }
                    if (ok) {
                        best = m;
                        flag = 1;
                        thr = d;
                    }
                }
            }
        }
    }

    for (k = 0; k < 0x14; k = next) {
        next = k + 1;
        p = D_L00_001DD450[k];
        if (p) {
            short cls = *(short *)(p + 0xA6);
            if (cls == 0x10E) {
                unsigned char st = *(unsigned char *)(p + 0x20);
                if (st != 0xFE && st != 0xFD && *(unsigned char *)(p + 0xBC)) {
                    d = func_001F9D48_f(a4 + 0x10, p + 0x10);
                    ok = 0;
                    if (thr > d) {
                        ok = 1;
                        if (n > 0) {
                        for (j = 0; j < n - 1; j++) {
                            if (func_00215570(p + 0x10, list[j])) {
                                ok = 0;
                                break;
                            }
                        }
                    } else if (v && nv > 0) {
                        ok = func_L00_0025A778((float *)(p + 0x10), v, nv) != 0;
                    }
                    }
                    if (ok) {
                        best = p;
                        flag = 1;
                        thr = d;
                    }
                }
            }
        }
    }

    if (best) {
        *(char **)(out + 0x40) = best;
        qcopy(out, best + 0x10);
        qcopy(out + 0x10, best + 0x40);
        if (best != *(char **)((char *)(D_0013E633 + 0xE1D) + 0x2080)) {
            qcopy(out + 0x30, out);
            *(float *)(out + 0x38) = *(float *)(out + 0x38) + 0.6f;
            qcopy(out + 0x20, out + 0x30);
        } else {
            qcopy(out + 0x20, (char *)(D_0013E633 + 0xE1D) + 0xC0);
            qcopy(out + 0x30, (char *)(D_0013E633 + 0xE1D) + 0xD0);
        }
    } else {
        *(char **)(out + 0x40) = 0;
        qzero(out);
        qzero(out + 0x10);
        qzero(out + 0x30);
        qzero(out + 0x20);
    }
    *(int *)(out + 0x44) = flag;
    return flag;
}
