/* NON_MATCHING func_L14_00308368 -- src/overlays/l14_oltanis/vendor_002FF358.c
 * Best so far: SIZE ours 1584 / retail 1580, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Blarg heavy interceptor (class 1417) update: moby[0xA4]=0xFF after a probe call, then a 4-state machine (0 spa
 *   Callee names: the packet's func_L00_0025B478 is not what the bytes call; retail's first jal goes to 0x2638A0, 
 *   Size 1584 against retail 1580 on p4/p5. Best candidate p3.c (unsigned moby, same callee aliases as p2) or p5.c
 *   Unblock: the true symbol for 0x268488 and 0x215570 (names resolvable by try_func), then the diff for the prolo
 */
extern char *func_L00_0025B478(void *, int, int);
extern char *func_L00_002638A0(void *, int, int) __asm__("func_L00_002638A0");
extern void func_L00_00268488(void *, void *, int, float, float) __asm__("func_00268488");
extern void func_L00_0028EBF0(int);
extern int func_001E9730();
extern void func_0020D678(void *);
void func_L14_00308998(char *moby);
extern int func_001F9850(int);
extern void func_001F99B0(void *, int, int);
extern void func_0020D960(char *arg0, int arg1, unsigned char *arg2);
extern void func_L00_0025E4B0(void *m, short *p);
extern int func_00215570(void *arg0, int arg1);
extern void func_L00_00263BF8(void *, char *, char *, float, float, float);
extern int func_L14_00308AA8(void *);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001F9908_r(int *arg0) __asm__("func_001F9908");
extern int func_001F9938(void *);
extern void func_L00_00251328(void *, int, int, int);
extern float func_L00_001FF860(float, float);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
void func_L14_00314A40(int value);
extern char *D_L14_001B0F30[];
extern char D_L14_001FD488[];
extern char D_L14_001FD4C0[];
extern short D_L14_0016234C;
extern short D_L14_00162360;
extern short D_L14_00162364;
extern short D_L14_00162368;
extern char *D_L14_00160098 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern char D_0013E633[];

/* Blarg heavy interceptor update: state machine (0 spawn, 1 wait, 2 chase, 3 hover) with its spark and draw helpers. */
void func_L14_00308368(unsigned char *moby) {
    char *data = *(char **)(moby + 0x78);
    char *base;
    char *e;
    unsigned char *x2;
    int idx;
    unsigned int s;
    int k;
    int v;
    unsigned char r16;
    char vec[16];

    idx = (int)func_L00_002638A0(moby, 0x800000, 0);
    *(unsigned char *)(moby + 0xA4) = 0xFF;
    if (idx != 0) {
        if (moby[0x20] != 3) {
            float f20 = 5.0f;
            moby[0x20] = 3;
            func_L00_00268488(moby, moby + 0x10, -1, f20, 13.0f);
            *(short *)(moby + 0x34) |= 0x41;
            *(int *)(moby + 0x94) = 0;
            idx = *(int *)(data + 0xA0);
            if (idx >= 0) {
                char *p = D_L14_00160098 + (idx << 8);
                *(float *)(p + 0x10) = f20;
                *(float *)(p + 0x18) = f20;
                *(float *)(p + 0x14) = f20;
                *(short *)(p + 0x34) |= 0x41;
            }
            k = *(int *)(data + 0x7C);
            if (k != -1) {
                x2 = (unsigned char *)(D_0013E633 + 0x1D) + k * 0x70;
                if (*(unsigned char **)(x2 + 0x88) == moby && x2[0x74] != 0) {
                    func_L00_0028EBF0(k);
                }
            }
            *(int *)(data + 0x7C) = -1;
        }
    }

    s = moby[0x20];
    if (s == 1) {
        if (func_00215570(D_0013E633 + 0xE9D, *(int *)(data + 0xC4)) != 0) {
            *(short *)(moby + 0x34) &= 0xFFBE;
            *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
            idx = *(int *)(data + 0xA0);
            if (idx >= 0) {
                char *p = D_L14_00160098 + (idx << 8);
                *(short *)(p + 0x34) &= 0xFFBE;
            }
            moby[0x20] = 2;
            goto tail;
        }
        return;
    } else if (s < 2) {
        if (s != 0) {
            return;
        }
        idx = *(int *)(data + 0x78);
        if (idx == -1) {
            func_001E9730(D_L14_001FD488, *(short *)(moby + 0xB2));
            func_0020D678(moby);
            return;
        }
        if (*(int *)D_L14_001B0F30[idx] == 0) {
            func_001E9730(D_L14_001FD4C0, *(short *)(moby + 0xB2));
            func_0020D678(moby);
            return;
        }
        func_L14_00308998((char *)moby);
        moby[0x20] = 2;
        moby[0x30] = 0xFF;
        *(short *)(moby + 0x32) = 0xFF;
        *(int *)(data + 0x7C) = -1;
        *(short *)(data + 0x8C) = func_001F9850(*(int *)&D_L14_0016234C);
        *(int *)(data + 0xB0) = 0;
        *(int *)(data + 0xB4) = 0;
        *(int *)(data + 0xBC) = 0;
        *(int *)(data + 0xC0) = 0;
        *(int *)(data + 0xCC) = 0;
        idx = *(int *)(data + 0xA0);
        if (idx >= 0) {
            char *p = D_L14_00160098 + (idx << 8);
            *(short *)(p + 0x32) = *(short *)(moby + 0x32);
            p[0x30] = moby[0x30];
        }
        func_001F99B0(data + 0xD0, 0, 0x40);
        func_0020D960((char *)moby, 0, (unsigned char *)(data + 0xD0));
        func_L00_0025E4B0(moby, (short *)(data + 0x60));
        if (*(int *)(data + 0xC4) >= 0) {
            *(int *)(moby + 0x94) = 0;
            *(short *)(moby + 0x34) |= 0x41;
            idx = *(int *)(data + 0xA0);
            if (idx >= 0) {
                char *p = D_L14_00160098 + (idx << 8);
                *(short *)(p + 0x34) |= 0x41;
            }
            moby[0x20] = 1;
        }
        return;
    } else if (s == 2) {
        float f0v = 0.0001f;
            *(unsigned char *)(data + 0xD2) = 1;
        *(float *)(data + 0xF0) = f0v;
        *(float *)(data + 0xF8) = f0v;
        *(float *)(data + 0xF4) = f0v;
        func_L00_00263BF8(moby, data + 0xBC, data + 0xC0, *(float *)&D_L14_00162360, *(float *)&D_L14_00162364, *(float *)&D_L14_00162368);
        
        if (func_L14_00308AA8(moby) != 0) {
            idx = *(int *)(data + 0xA0);
            if (idx >= 0) {
                char *p = D_L14_00160098 + (idx << 8);
                e = p;
                func_001F9C30(vec, moby + 0xC0, *(float *)(data + 0xA4));
                func_001F9BD8(e + 0x10, moby + 0x10, vec);
                func_001F9C30(vec, moby + 0xD0, *(float *)(data + 0xA8));
                func_001F9BD8(e + 0x10, e + 0x10, vec);
                func_001F9C30(vec, moby + 0xE0, *(float *)(data + 0xAC));
                func_001F9BD8(e + 0x10, e + 0x10, vec);
                x2 = (unsigned char *)(D_0013E633 + 0xE1D);
                v = *(int *)(x2 + 0x208C);
                if ((v == 13 && *(char **)(x2 + 0x964) == e) || (v == 14 && *(char **)(x2 + 0x994) == e)) {
                    func_L14_00314A40((int)moby);
                    *(int *)(data + 0xCC) = func_001F9850(0x1E);
                    goto tail;
                }
                func_001F9908_r((int *)(data + 0xCC));
                if (*(int *)(data + 0xCC) != 0) {
                    *(float *)(*(char **)(e + 0x78) + 0x20) = 2.0f;
                    goto tail;
                }
                {
                    char *P = *(char **)(e + 0x78);
                    *(int *)(P + 0x20) = 0;
                    if (*(short *)(e + 0xA6) == 0x323) {
                        *(float *)(P + 0x20) = 40.0f;
                        *(float *)(P + 0x2C) = D_0015EE6C * 24.0f;
                        *(float *)(P + 0x24) = 0.01f;
                        *(float *)(P + 0x28) = 0.2f;
                        goto tail;
                    }
                }
            }
        }
    } else if (s == 3) {
        if (func_001F9938(data + 0x8C) != 0) {
            char *q;
            char *r;
            char *ep;
            q = D_L14_001B0F30[*(int *)(data + 0x78)];
            func_L00_00251328(moby, *(unsigned char *)(data + 0x64), *(unsigned char *)(data + 0x65), *(unsigned char *)(data + 0x66));
            r = moby + 0x10;
            *(short *)(moby + 0x34) &= 0xFFBE;
            *(short *)(data + 0x8C) = func_001F9850(*(int *)&D_L14_0016234C);
            *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
            moby[0x20] = 2;
            *(int *)(data + 0x70) = 0;
            *(int *)(data + 0x74) = 0;
            *(float *)(moby + 0x48) = func_L00_001FF860(*(float *)(q + 0x20) - *(float *)(q + 0x10), *(float *)(q + 0x24) - *(float *)(q + 0x14));
            *(float *)(data + 0x90) = 0.0f;
            *(float *)(data + 0x88) = 0.0f;
            *(float *)(data + 0x84) = 0.0f;
            *(float *)(data + 0x80) = 0.0f;
            *(float *)(data + 0x98) = 0.0f;
            *(float *)(data + 0x94) = 0.0f;
            idx = *(int *)(data + 0xA0);
            if (idx >= 0) {
                ep = D_L14_00160098 + (idx << 8);
                *(short *)(ep + 0x34) &= 0xFFBE;
                r = ep + 0x10;
                func_001F9C30(vec, moby + 0xC0, *(float *)(data + 0xA4));
                func_001F9BD8(r, moby + 0x10, vec);
                func_001F9C30(vec, moby + 0xD0, *(float *)(data + 0xA8));
                func_001F9BD8(r, r, vec);
                func_001F9C30(vec, moby + 0xE0, *(float *)(data + 0xAC));
                func_001F9BD8(r, r, vec);
            }
            if (*(int *)(data + 0xC4) >= 0) {
                *(short *)(moby + 0x34) |= 0x41;
                moby[0x20] = 1;
                *(int *)(moby + 0x94) = 0;
            }
        } else {
            goto tail;
        }
    } else {
        goto tail;
    }

tail:
    s = moby[0x20];
    if (s == 0 || s == 3 || s == 1) {
        return;
    }
    if (func_L00_0028EB98(moby, *(int *)(data + 0x7C)) != 0) {
        return;
    }
    *(int *)(data + 0x7C) = func_0022ED80(0, 4, (int)moby);
}
