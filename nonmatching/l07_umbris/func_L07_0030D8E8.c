/* NON_MATCHING func_L07_0030D8E8 -- src/overlays/l07_umbris/vendor_002CE470.c
 * Best so far: SIZE ours 2040 / retail 2068, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Water moby update (2068 B): a switch on moby[0x20] (states 0-7; 8+ go to a common tail that fills the wave rec
 *   Still different: retail keeps -6.0/6.0 in $f22/$f21 across the grid calls and ours rebuilds them (li.s per cal
 *   Unblock: a way to keep a float constant in a saved register across calls without a non-constant source (remate
 */
extern char D_L07_001DD100[];
extern char D_L07_0017FFC0[];
extern char D_L07_001CAB80[];
extern char D_L07_002049C0[];
extern short D_L07_00204940[];
extern int D_L07_00161358 MACRO_ADDR;
extern float D_L07_0016128C MACRO_ADDR;
extern float D_L07_00161290 MACRO_ADDR;
extern float D_L07_00161294 MACRO_ADDR;
extern char *D_L07_00161350 MACRO_ADDR;
extern char *D_L07_00161354 MACRO_ADDR;
extern int D_L07_00161288 MACRO_ADDR;
extern short D_L07_00161BC8;
extern short D_L07_00161BC0;
extern unsigned short D_L07_00161BC4;
extern float D_0015EE6C MACRO_ADDR;
extern char D_0013D5CA[];
extern char D_0013D5EB[];
extern char D_0013E633[];
extern void func_L01_002B8C00(char *, int);
extern void func_L01_002B90A8(float);
extern float func_L00_001FF860(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L01_002B8E20(float *, int *);
extern float func_002140F8(float, float);
extern void func_L01_002B9440(void *, int, float, float, float, float);
extern void func_L07_0030E128(int);
extern int func_001F9850(int);
extern void func_L01_0026F090(int, int);
extern int func_L07_00282EB0(void *, int, int);
extern float func_00214D28(float *, float, float);
extern void func_L01_0026F040(int, int);
extern int func_002140B0(int);
extern void func_L00_002A5158(void *, int, int, float, float, float, float);
extern int func_00215570(void *, int);
extern int func_001F9908(int *);
extern void func_0020D678(void *);
extern int func_L01_00276680(char *, float);
extern void func_L01_002B9198(char *, int);
extern void func_001F49B0(void *, void *);
extern void func_L07_0030E100(void);

/* Water moby update: a state machine on moby[0x20] that drives the wave records. */
void func_L07_0030D8E8(unsigned char *moby) {
    char *data = *(char **)(moby + 0x78);
    char *rec;
    char *base;
    char *p20;
    char *p22;
    int i;
    int k;
    int n;
    int j;
    float f20;
    float f21;
    float f22;
    float fx;
    float fm6;
    float fa;
    float fb;
    float fp6;
    char *cab;
    float r;

    if (data == 0) return;
    if (*(int *)&D_L07_00161BC8) {
        D_0013D5CA[2] = 0;
        D_0013D5EB[9] = 0;
    }
    switch (moby[0x20]) {
    case 0:
        *(unsigned short *)(moby + 0x34) |= 0x81;
        if (*(int *)(data + 0x14) == 0) {
            f20 = 1.0f;
            f21 = 0.57735f;
            base = D_L07_001DD100;
            func_L01_002B8C00(base, 0x24);
            p22 = base;
            func_L01_002B90A8(f20);
            cab = D_L07_001CAB80;
            fa = *(float *)(D_L07_0017FFC0 + 0x10);
            fb = *(float *)(D_L07_0017FFC0 + 0x14);
            *(float *)(cab + 0) = 16.0f;
            *(float *)(cab + 0xC) = -8.0f;
            *(float *)(cab + 0x18) = 0.9f;
            *(float *)(cab + 0x20) = 0.1f;
            *(float *)(cab + 0x8) = -8.0f;
            *(float *)(cab + 0x14) = f20;
            *(float *)(cab + 0x10) = f20;
            *(float *)(cab + 0x4) = 16.0f;
            f20 = func_L00_001FF860(fa, fb);
            *(float *)(cab + 0x30) = func_001F9F90(f20) * f21;
            r = func_001F9FA8(f20) * f21;
            *(unsigned char *)(cab + 0x3D) = 0x40;
            *(float *)(cab + 0x34) = r;
            *(float *)(cab + 0x38) = -0.57735f;
            *(int *)(cab + 0x28) = 0x28;
            *(int *)(cab + 0x2C) = 0x29;
            D_L07_00161358 = 0x24;
            D_L07_0016128C = 32768.0f;
            D_L07_00161290 = 255.0f;
            D_L07_00161294 = 48.0f;
            *(unsigned char *)(cab + 0x3C) = 0x40;
            D_L07_00161350 = D_L07_001DD100;
            p20 = D_L07_002049C0;
            D_L07_00161354 = D_L07_002049C0;
            D_L07_00161288 = 0;
            i = 0x23;
            do {
                func_L01_002B8E20((float *)p22, (int *)p20);
                p20 += 0x10;
                n = *(int *)(data + 0x14);
                p22 += 0x1190;
                *(short *)(base + n * 0x1190 + 0x1E) = D_L07_00204940[n];
            } while (--i >= 0);
            k = 0;
            {
                int off = 0;
                do {
                    int kk = k + 1;
                    int nn = 1;
                    rec = base + off;
                    do {
                        fm6 = -6.0f;
                        fp6 = 6.0f;
                        func_002140F8(fm6, fp6);
                        f20 = *(float *)rec;
                        r = func_002140F8(fm6, fp6);
                        f20 = f20 + r;
                        r = *(float *)(rec + 4) + r;
                        func_L01_002B9440(base, 0x24, f20, r, 2.0f, 0.2f);
                    } while (--nn >= 0);
                    k = kk;
                    off = k * 0x1190;
                } while (k < 0x24);
            }
            for (j = 0; j < 0x24; j++) {
                func_L07_0030E128(j);
            }
        }
        if (*(int *)(data + 0xC) == 0) goto dc24;
        moby[0x20] = 3;
        *(int *)(data + 0x18) = func_001F9850(0x3C);
        if (*(float *)(moby + 0x18) < *(float *)(data + 0x4)) {
            *(short *)(base + *(int *)(data + 0x14) * 0x1190 + 0x1E) = 0;
        }
        goto df30;
dc24:
    if (*(int *)(data + 0x8)) moby[0x20] = 1;
    else moby[0x20] = 2;
    goto df30;

    case 2:
        if (!(moby[0xBC] & 0x4)) goto dc68;
        func_L01_0026F090(moby[0x21], 1);
        goto dd80;
dc68:
    if (func_L07_00282EB0(moby, 1, 0)) {
        if (moby[0xBC] == 1) goto dcc4;
        fx = *(float *)(data + 0x4);
        r = func_00214D28((float *)(moby + 0x18), fx, D_0015EE6C * 4.0f);
        func_L01_0026F040(moby[0x21], 1);
        goto dd80;
    }
    if (moby[0xBC] != 1) goto dd80;
dcc4:
    fx = *(float *)(data + 0x4);
    goto dd78;

    case 1:
        if (!(moby[0xBC] & 0x8)) goto dd04;
        func_L01_0026F090(moby[0x21], 2);
        goto dd80;
dd04:
    if (func_L07_00282EB0(moby, 1, 0)) {
        if (moby[0xBC] == 2) goto dd60;
        fx = *(float *)data;
        r = func_00214D28((float *)(moby + 0x18), fx, D_0015EE6C * 4.0f);
        func_L01_0026F040(moby[0x21], 2);
        goto dd80;
    }
    if (moby[0xBC] != 2) goto dd80;
dd60:
    fx = *(float *)data;
dd78:
    r = func_00214D28((float *)(moby + 0x18), fx, D_0015EE6C * 4.0f);

dd80:
    if (func_002140B0(200)) {
        i = *(int *)(data + 0x14);
        goto df34;
    }
    f20 = -4.0f;
    f21 = 4.0f;
    func_002140F8(f20, f21);
    base = D_L07_001DD100;
    n = *(int *)(data + 0x14);
    rec = base + n * 0x1190;
    f20 = *(float *)rec;
    r = func_002140F8(-4.0f, 4.0f);
    f20 = f20 + r;
    n = *(int *)(data + 0x14);
    func_L00_002A5158(base + n * 0x1190, 1, 1, f20, *(float *)(base + n * 0x1190 + 4) + r, 1.0f, -0.05f);
    i = *(int *)(data + 0x14);
    goto df34;

    case 3:
        if (*(int *)(data + 0x10) < 0) goto df30;
        if (!func_00215570(D_0013E633 + 0xE9D, *(int *)(data + 0x10))) goto df30;
        *(int *)(data + 0x1C) = 0;
        func_L01_0026F090(moby[0x21], 4);
        goto df30;
    case 4:
        if (!func_001F9908((int *)(data + 0x18))) {
            i = *(int *)(data + 0x14);
            goto df34;
        }
        *(int *)(data + 0x18) = func_001F9850(0x708);
        moby[0x20] = 5;
        goto df30;
    case 5:
        *(float *)(moby + 0x18) = *(float *)(moby + 0x18) + D_0015EE6C * 0.32f;
        if (func_001F9908((int *)(data + 0x18))) moby[0x20] = 6;
        goto df30;
    case 6:
        {
            float t = *(float *)(moby + 0x18) + D_0015EE6C * 0.42f;
            *(float *)(moby + 0x18) = t;
            if (54.0f <= t) moby[0x20] = 7;
        }
        goto df30;
    case 7:
        if (*(float *)data < *(float *)(moby + 0x18)) {
            *(short *)(D_L07_001DD100 + *(int *)(data + 0x14) * 0x1190 + 0x1E) = 0;
            func_0020D678(moby);
            return;
        }
        goto df30;
    default:
        goto df30;
    }

df30:
    i = *(int *)(data + 0x14);
df34:
    if (i < 0) return;
    rec = D_L07_001DD100 + i * 0x1190;
    *(unsigned char *)(rec + 0x1C) = *(unsigned char *)(D_L07_001CAB80 + 0x3C);
    *(unsigned char *)(D_L07_001DD100 + *(int *)(data + 0x14) * 0x1190 + 0x1D) = *(unsigned char *)(D_L07_001CAB80 + 0x3D);
    *(float *)(D_L07_001DD100 + *(int *)(data + 0x14) * 0x1190 + 0x8) = *(float *)(moby + 0x18);
    f20 = 0.0f;
    if (*(int *)(moby + 0x94) != 0) {
        if (func_L01_00276680((char *)moby, 48.0f) != -1) {
            if ((unsigned)(moby[0x20] - 3) >= 5) f20 = 1.0f;
            else if (*(float *)(data + 0x4) < *(float *)(moby + 0x18) && *(float *)(moby + 0x18) < *(float *)data) f20 = 1.0f;
        }
    }
    if (f20 == 0.0f) {
        *(short *)(D_L07_001DD100 + *(int *)(data + 0x14) * 0x1190 + 0x1E) = 0;
    } else {
        *(short *)(D_L07_001DD100 + *(int *)(data + 0x14) * 0x1190 + 0x1E) = D_L07_00204940[*(int *)(data + 0x14)];
    }
    if (*(int *)(data + 0x14) == 0) {
        func_L01_002B9198(D_L07_001DD100, 0x24);
        func_001F49B0((void *)func_L07_0030E100, moby);
    }
    i = *(int *)(data + 0x14);
    if (i == *(int *)&D_L07_00161BC0) {
        *(unsigned short *)(D_L07_001DD100 + i * 0x1190 + 0x1E) = D_L07_00161BC4;
        D_L07_00204940[i] = D_L07_00161BC4;
    }
}
