/* NON_MATCHING func_L09_00309118 -- src/overlays/shared/vendor_002C6B30.c
 * Best so far: SIZE ours 1208 / retail 1204, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Claimed by mistake in this queue run (two extra claim calls). Not attempted, 0 of 10 runs spent. The lead shou
 *   What it does: shared moby class 1258 update (levels 09, 10). Samples a height via func_001F9D10, clamps data->
 *   Remaining differences: (1) the loop constants -1.0f/1.0f: retail keeps them in $f21/$f20 (saved in the prologu
 *   Constant check: 0x447F4000 is 1021.0f (not 1020.0f); the candidate uses 1021.0f.
 */
extern float func_001F9D10(void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_0022ED80(int, int, int);
extern float func_001F9D48(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF500(void *, void *, float);
extern int func_001F9938(void *);
extern void func_0020D678(void *);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern void func_L00_001FF610(void *, void *, void *);
extern float func_001F9CB8(void *a);
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_001F9850(int);
extern int func_L00_00258BC8(int, int);
extern char *func_L00_0026EBC0(char *pos, char *vel, int c, int d, float f);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, int, float, float, int, int, int, int);
extern int func_L00_001F2BE8(float, void *, int, void *, void *);
extern float func_002140F8(float, float);
extern float D_L09_00166FC0[];
extern char D_L09_00174060[];
extern char D_L09_00174080[];
extern float D_0015EE6C MACRO_ADDR;
extern char D_0013E633[];
typedef int u128 __attribute__((mode(TI)));

struct Q09 {
    float v[4];
    char *m;
    int c;
    unsigned char d;
    unsigned char e;
    unsigned short f;
    float g;
    int h;
};

/* Moby class 1258 update (levels 09 and 10): tracks its height and emits sparks while it is in range. */
void func_L09_00309118(char *moby) {
    float v20[4];
    struct Q09 q;
    float v60[4];
    float v70[4];
    char *data;
    char *pos;
    float f20, f21, f0, f12;
    int k, r, r16, t, u;
    short sv;

    data = *(char **)(moby + 0x78);
    pos = moby + 0x10;
    f20 = func_001F9D10(pos, D_0013E633 + 0xE9D);
    qcopy(v20, pos);
    func_001F9BD8(pos, pos, data);

    if (*(int *)(data + 0x28) == 0 && *(int *)(data + 0x24) != 0) {
        if (*(float *)(data + 0x20) < f20 && f20 < 3.0f) {
            func_0022ED80(0, 0, (int)moby);
            *(int *)(data + 0x28) = 1;
        }
    }
    if (f20 < *(float *)(data + 0x20)) {
        *(int *)(data + 0x24) = 1;
    }
    *(float *)(data + 0x20) = f20;

    if (*(float *)(moby + 0x10) < 2.0f || 1020.0f < *(float *)(moby + 0x10)
        || *(float *)(moby + 0x14) < 2.0f || 1020.0f < *(float *)(moby + 0x14)
        || *(float *)(moby + 0x18) < 2.0f || 1020.0f < *(float *)(moby + 0x18)) {
        func_0020D678(moby);
        return;
    }
    f0 = func_001F9D48(pos, D_L09_00166FC0);
    if (255.0f < f0) {
        func_0020D678(moby);
        return;
    }

    if (*(unsigned char *)(moby + 0xBC) == 0) {
        q.c = 0x70001;
        q.g = 3.0f;
        q.m = moby;
        q.h = 1;
        qcopy(q.v, data);
        f20 = 1.0f;
        func_001F9BF0(q.v, pos, D_0013E633 + 0xE9D);
        func_L00_001FF500(q.v, q.v, f20);
        q.v[2] = f20;
        q.v[3] = 5625.9248046875f;
        q.d = 1;
        q.e = 3;
        q.f = *(unsigned short *)(moby + 0xA6);
    }

    r = func_001F9938(data + 0x1C);
    if (r != 0 && *(unsigned char *)(moby + 0xBC) == 0) {
        *(unsigned char *)(moby + 0xBC) = 1;
        sv = *(short *)(data + 0x1E);
        t = sv;
        *(short *)(data + 0x1C) = ((-1 < t) ? t : t + 3) >> 2;
    } else if (!(*(short *)(data + 0x1C) > 0 || *(unsigned char *)(moby + 0xBC) == 0)) {
        func_0020D678(moby);
        return;
    }

    r = func_L00_001EFFF0(v20, pos, 0, *(int *)(data + 0x18), (int)&q);
    if (r == 0) {
        return;
    }
    qcopy(pos, D_L09_00174060);

    if (*(unsigned char *)(moby + 0xBC) == 0) {
        f21 = -1.0f;
        f20 = 1.0f;
        k = 4;
        do {
            *(u128 *)v70 = 0;
            v70[0] = func_002140F8(f21, f20);
            k--;
            v70[1] = func_002140F8(f21, f20);
            v70[2] = func_002140F8(f21, f20);
            qcopy(v60, v70);
            func_L00_001FF610(v70, data, D_L09_00174080);
            f0 = func_001F9CB8(v70);
            func_L00_001FF4B0(v60, v60, f0 * 0.5f);
            func_001F9BD8(v60, v70, v60);
            f0 = func_002140F8(D_0015EE6C * 3.0f, D_0015EE6C * 6.0f);
            func_L00_001FF4B0(v60, v60, f0);
            r16 = func_001F9850(0xA);
            t = func_001F9850(0xF);
            u = func_L00_00258BC8(r16, t);
            func_L00_0026EBC0(pos, v60, 0x7F2F4F6F, u, 60000.0f);
        } while (k >= 0);
    }

    func_L00_0025F4A8(moby, data, 0, 0.0f, 0.0f, 4, 3, 6, 1.1f, 0.6f, 1.0f, -1, 0.9f, 0.0f, 0, 1, -1, 0);
    func_L00_001F2BE8(1.1f, pos, 0x10, moby, &q);
    func_0020D678(moby);
}
