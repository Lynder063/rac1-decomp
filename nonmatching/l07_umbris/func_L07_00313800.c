/* NON_MATCHING func_L07_00313800 -- src/overlays/l07_umbris/vendor_002CE470.c
 * Best so far: SIZE ours 1316 / retail 1312, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped at budget (10 runs). Best candidate p5.c, 1292 bytes against retail 1312 (20 short). The function buil
 *   Remaining differences: retail spills the four output pointers (sp+0xB0..0xE0) and p+0x150 to 0x148..0x154 and 
 *   Unblock: a register-pressure match for the spill set (which pointers retail keeps in $16-$23 and which it spil
 */
extern float func_001FA888(int);
extern float func_L00_0025F368(float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L00_00250800(void *, int, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern void func_001F9CA0(void *, void *, void *);
extern int func_001160D8(void);
extern int func_001F9850(int);
extern unsigned char *func_L00_00273868(float *pos, unsigned char a1, unsigned char a2, unsigned char a3,
    unsigned char a4, unsigned char a5, int a6, float f0, float f1);
extern int func_001F4868(int);
extern void func_L00_001FD1D8(void *, void *, int);
extern int D_L07_0015F6B0 MACRO_ADDR;
extern char D_L07_00173F60[];
extern char D_L07_001670D0[];

/* Umbris: sets up the effect vectors from the moby's data at +0x78 and emits the GS packet (retail func_L07_00313800). */
void func_L07_00313800(char *arg) {
    char st[0x140];
    char *p, *q, *m, *c2, *h, *ii, *jj, *s1, *s2, *s3, *s4;
    float f20, t;
    int flag = 1;
    int k;
    int r;
    unsigned char v1, v2, v3;

    f20 = func_001FA888(D_L07_0015F6B0);
    p = *(char **)(arg + 0x78);
    qcopy(st + 0x50, p + 0x140);
    t = func_L00_0025F368(f20 / 11.0f);
    t = func_001F9F90(t);
    f20 = f20 / 10.0f;
    t = func_L00_0025F368(f20 + t * 1.5707963f);
    t = func_001F9FA8(t);
    *(float *)(st + 0x50) = *(float *)(st + 0x50) + t;
    func_L00_00250800(arg, 2, st + 0x30);
    func_001F9BF0(st + 0x10, st + 0x50, st + 0x30);
    func_L00_001FF4B0(st + 0x10, st + 0x10, 30.0f);
    func_001F9BD8(st, st + 0x50, st + 0x10);
    if (func_L00_001EFFF0(st + 0x30, st, 2, (int)arg, 0)) {
        qcopy(st, D_L07_00173F60);
    } else {
        flag = 0;
    }
    func_001F9BF0(st + 0x40, st + 0x30, st);
    func_001F9CA0(st + 0x20, D_L07_001670D0, st + 0x40);
    func_L00_001FF4B0(st + 0x20, st + 0x20, 0.25f);
    func_001F9BD8(st + 0x10, st + 0x20, st);

    if (flag) {
        f20 = 1.0f;
        q = p + 0x150;
        v1 = (unsigned char)func_001F9850((func_001160D8() & 1) + 0x2D);
        v2 = (unsigned char)func_001F9850((func_001160D8() & 7) + 0x37);
        v3 = (unsigned char)func_001F9850((func_001160D8() & 3) + 0xD);
        func_L00_00273868((float *)st, 0, v1, v2, 1, v3, (int)arg, f20, f20);
        s1 = st + 0xB0;
        s2 = st + 0xC0;
        s3 = st + 0xD0;
        s4 = st + 0xE0;
        if (*(float *)(p + 0x15C) != 0.0f) {
            c2 = st + 0x70;
            func_001F9BF0(c2, st, q);
            func_L00_001FF4B0(c2, c2, 0.2f);
            m = st + 0x60;
            qcopy(m, q);
            h = st + 0x80;
            ii = st + 0x90;
            jj = st + 0xA0;
            k = 0;
            do {
                func_001F9BD8(m, m, c2);
                func_001F9BF0(h, m, st + 0x30);
                func_L00_001FF4B0(h, h, 5.0f);
                func_001F9BF0(ii, m, h);
                func_001F9BD8(jj, m, h);
                if (func_L00_001EFFF0(ii, jj, 2, (int)arg, 0)) {
                    qcopy(m, D_L07_00173F60);
                }
                if (k == 2) {
                    k++;
                    v1 = (unsigned char)func_001F9850((func_001160D8() & 1) + 0x2D);
                    v2 = (unsigned char)func_001F9850((func_001160D8() & 7) + 0x37);
                    v3 = (unsigned char)func_001F9850((func_001160D8() & 3) + 0xD);
                    func_L00_00273868((float *)m, 0, v1, v2, 1, v3, (int)arg, f20, f20);
                } else {
                    v1 = (unsigned char)func_001F9850(0x2D);
                    v2 = (unsigned char)func_001F9850(0x37);
                    v3 = (unsigned char)func_001F9850(0xD);
                    func_L00_00273868((float *)m, 1, v1, v2, 1, v3, (int)arg, f20, f20);
                    k++;
                }
            } while (k < 4);
        }
        qcopy(q, st);
        *(float *)(p + 0x15C) = 1.0f;
    } else {
        *(int *)(p + 0x15C) = 0;
        s1 = st + 0xB0;
        s2 = st + 0xC0;
        s3 = st + 0xD0;
        s4 = st + 0xE0;
    }

    r = func_001F4868(0x3B);
    *(int *)(st + 0xF0) = (int)0x80808080u;
    *(int *)(st + 0xF4) = (int)0x80808080u;
    *(int *)(st + 0xF8) = (int)0x80808080u;
    *(int *)(st + 0xFC) = (int)0x80808080u;
    *(long long *)(st + 0x130) = 0xFF9000000260LL;
    *(long long *)(st + 0x120) = 4;
    *(long long *)(st + 0x138) = 0x8000000048LL;
    *(float *)(st + 0x100) = 0.0f;
    *(float *)(st + 0x104) = 0.0f;
    *(float *)(st + 0x108) = 1.0f;
    *(float *)(st + 0x10C) = 0.0f;
    *(float *)(st + 0x110) = 0.0f;
    *(float *)(st + 0x114) = 1.0f;
    *(float *)(st + 0x118) = 1.0f;
    *(float *)(st + 0x11C) = 1.0f;
    *(long long *)(st + 0x128) = r;
    qcopy(s1, st + 0x30);
    func_001F9BD8(s2, s1, st + 0x20);
    qcopy(s3, st);
    qcopy(s4, st + 0x10);
    func_L00_001FD1D8(s1, 0, 1);
}
