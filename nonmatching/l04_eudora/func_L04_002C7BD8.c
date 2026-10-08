/* NON_MATCHING func_L04_002C7BD8 -- src/overlays/l04_eudora/vendor_0029FCF0.c
 * Best so far: SIZE ours 832 / retail 856, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped at 832 bytes against retail's 856 (best p4.c; p5.c is 820). Found: the byte globals D_L04_0019845C / D
 */
extern char *D_L04_00160058 MACRO_ADDR;
extern char *D_L04_00197780[];
extern unsigned char D_L04_0019845C[];
extern unsigned char D_L04_001981F0[];

extern int func_001F9850(int);
extern void func_00213DE0(void *, void *, void *, void *);
extern void func_0020D678(void *);
extern void func_0020D6D0_p(void *) __asm__("func_0020D6D0");
extern void func_0020EEE8(void *);
extern int func_L00_0028EB98(void *, int);
extern void func_L00_0028EBF0(int);
extern int func_0022ED80(int, int, char *);

/* Update for the eudora and bridge mobies on level 4: a state machine on the moby's state byte. */
void func_L04_002C7BD8(char *moby) {
    int *d = *(int **)(moby + 0x78);
    unsigned char *mu = (unsigned char *)moby;
    float f1 = *(float *)(moby + 0x54);
    float *d2;
    float f0;
    int r;
    int idx;
    char *m;
    unsigned char *e;
    char *ent;
    unsigned char b;
    int st;

    if (d == 0) {
        func_0020D678(moby);
        return;
    }
    st = mu[0x20];
    if (st == 1) {
        idx = d[0];
        if (idx == -1) {
            return;
        }
        m = D_L04_00160058 + (idx << 8);
        if (*(short *)(m + 0xA6) != 0x118) {
            return;
        }
        d2 = *(float **)(m + 0x78);
        f0 = d2[0];
        *(float *)(moby + 0x54) = f0;
        if (f0 == f1) {
            r = func_L00_0028EB98(moby, d[1]);
            if (r == 0) {
                return;
            }
            idx = d[1];
            if (idx != -1) {
                e = D_0013E633 + 0x1D + idx * 0x70;
                if (*(char **)(e + 0x88) == moby && e[0x74] != 0) {
                    func_L00_0028EBF0(idx);
                }
            }
            d[1] = -1;
            return;
        }
        f1 = d2[0];
        if (f1 == 1.0f || f1 == 0.0f) {
            r = func_L00_0028EB98(moby, d[1]);
            if (r != 0) {
                idx = d[1];
                if (idx != -1) {
                    e = D_0013E633 + 0x1D + idx * 0x70;
                    if (*(char **)(e + 0x88) == moby && e[0x74] != 0) {
                        func_L00_0028EBF0(idx);
                    }
                }
                d[1] = -1;
            }
            func_0022ED80(1, 0, moby);
            if (*(short *)(moby + 0xA6) != 0x41C) {
                return;
            }
            if (d2[0] != 1.0f) {
                return;
            }
            *(short *)(moby + 0xA6) = 0x1B0;
            b = D_L04_001981F0[0];
            mu[0x22] = b;
            ent = D_L04_00197780[b];
            mu[0x71] = 0xFF;
            *(char **)(moby + 0x24) = ent;
            *(float *)(moby + 0x2C) = *(float *)(ent + 0x24);
            func_0020D6D0_p(moby);
            ent = *(char **)(moby + 0x24);
            mu[0x72] = ent[0xE];
            *(int *)(moby + 0x94) = *(int *)(ent + 0x10);
            func_0020EEE8(moby);
            mu[0x20] = 2;
            return;
        }
        r = func_L00_0028EB98(moby, d[1]);
        if (r == 0) {
            d[1] = func_0022ED80(0, 4, moby);
        }
        return;
    }
    if (st < 2) {
        if (st == 0) {
            func_00213DE0(moby, (void *)1, 0, (void *)func_001F9850(0x12C));
            mu[0x20] = 1;
            *(int *)(moby + 0x58) = 0;
            d[1] = -1;
            if (*(short *)(moby + 0xA6) != 0x1B0) {
                return;
            }
            *(short *)(moby + 0xA6) = 0x41C;
            b = D_L04_0019845C[0];
            mu[0x22] = b;
            ent = D_L04_00197780[b];
            mu[0x71] = 0xFF;
            *(char **)(moby + 0x24) = ent;
            *(float *)(moby + 0x2C) = *(float *)(ent + 0x24);
            func_0020D6D0_p(moby);
            ent = *(char **)(moby + 0x24);
            mu[0x72] = ent[0xE];
            *(int *)(moby + 0x94) = *(int *)(ent + 0x10);
            func_0020EEE8(moby);
            return;
        }
        return;
    }
    if (st == 2) {
        r = func_L00_0028EB98(moby, d[1]);
        if (r == 0) {
            return;
        }
        idx = d[1];
        if (idx != -1) {
            e = D_0013E633 + 0x1D + idx * 0x70;
            if (*(char **)(e + 0x88) == moby && e[0x74] != 0) {
                func_L00_0028EBF0(idx);
            }
        }
        d[1] = -1;
    }
}
