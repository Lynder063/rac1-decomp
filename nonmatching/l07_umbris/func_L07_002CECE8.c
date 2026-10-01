/* NON_MATCHING func_L07_002CECE8 -- src/overlays/l07_umbris/vendor_002CE470.c
 * Best so far: SIZE ours 1564 / retail 1576, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L07_002CECE8 (UpdateMoby 1474, path-following moby): state machine on moby[0xBC] (0 wait, 1 start, 2 move
 *   Remaining differences: (1) retail copies m+0x10 through $a0 into pos ($s5) (daddu s5,a0) where ours uses one r
 *   Would unblock: the right source form for the pos/pts copies (a local assigned from a separate expression), fou
 */
extern int func_001F9938(void *);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_L01_00278FA8(void *);
extern void func_L00_00222B80(int, int);
extern float func_001F9878(float);
extern float func_001F9D48(void *, void *);
extern float func_001F9B88(float);
extern int func_001F9850(int);
extern void func_L00_0028EBF0(int);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
extern void func_L00_00227E08(void);
extern float func_001FA888(int);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern unsigned char D_L07_0015FD08[];
extern float D_0015EE6C MACRO_ADDR;
extern char D_0013E633[];

// Update for a path-following moby: advances along a path, reacts to the player.
void func_L07_002CECE8(unsigned char *m) {
    float old[4];
    float v[4];
    float w[4];
    char *d = *(char **)(m + 0x78);
    int *path;
    float *pos;
    int t;
    float f;
    char *pts, *q;
    unsigned char b0;
    if (D_L07_0015FD08[m[0xB0]] != 0xFF) {
        *(int *)(m + 0x94) = 0;
        *(unsigned short *)(m + 0x34) |= 0x41;
        return;
    }
    if (*(int *)(d + 0xB4) == -1) return;
    path = D_L07_001B0830[*(int *)(d + 0xB4)];
    qcopy(old, pos = (float *)(m + 0x10));
    func_001F9938(d + 0xBA);
    if (m[0x20] == 0) {
        d[0x28] = 4;
        *(short *)(d + 0x3E) = 5;
        *(int *)(d + 0x20) = 0;
        *(short *)(d + 0x24) = 0;
        b0 = d[0xA0];
        m[0xBC] = b0;
        f = 0.0f;
        if (b0 == 0) f = 1.0f;
        *(float *)(d + 0xA4) = f;
        pts = (char *)path + 0x10;
        q = pts;
        if (func_001FA898_r(f)) q = pts + (path[0] - 1) * 16;
        qcopy(pos, q);
        *(short *)(d + 0xBA) = 0;
        *(int *)(d + 0xA8) = 0;
        *(int *)(d + 0xBC) = 0;
        m[0x20] = 1;
        *(short *)(m + 0x32) = 0xFF;
        m[0x30] = 0xFF;
        *(int *)(d + 0xC4) = -1;
        *(unsigned short *)(m + 0x34) &= 0xFFBE;
        *(int *)(m + 0x94) = *(int *)(*(char **)(m + 0x24) + 0x10);
    }
    switch (m[0xBC]) {
    case 0: {
        char *x = *(char **)(m + 0x24);
        float g = *(float *)(m + 0x2C) - *(float *)(x + 0x24) / 60.0f;
        *(float *)(m + 0x2C) = g;
        if (g < 0.0f) {
            *(float *)(m + 0x2C) = *(float *)(x + 0x24);
            qcopy(pos, (char *)path + 0x10);
            m[0xBC] = 1;
            *(float *)(d + 0xA4) = 0.0f;
        }
        break;
    }
    case 1:
        if (*(short *)(d + 0xB8) != 0 && func_L01_00278FA8(m)) {
            if (*(int *)(d + 0xC8) == 0) {
                if (func_L01_00278FA8(m)) func_L00_00222B80(0x72, 1);
            }
            m[0xBC] = 2;
            *(float *)(d + 0xAC) = 1.0f / func_001F9878(*(float *)(d + 0xB0) * 60.0f);
            *(short *)(d + 0xB8) = 0;
        }
        break;
    case 2:
        if (*(short *)(d + 0xBA) == 0) {
            if (*(float *)(d + 0xBC) < 0.0f) {
                char *p2 = D_0013E633 + 0xE9D;
                if (func_001F9D48(pos, p2) < 2.0f) {
                    p2 -= 0x80;
                    if (func_001F9B88(*(float *)(p2 + 0x88) - *(float *)(m + 0x18)) < 4.0f) {
                        if (*(float *)(m + 0x18) - *(float *)(p2 + 0x88) > 1.0f) {
                            if (*(short *)(d + 0xBA) == 0) *(short *)(d + 0xBA) = func_001F9850(0x1E);
                            goto release;
                        }
                    }
                }
            }
            goto move;
        }
    release:
        t = *(int *)(d + 0xC4);
        *(int *)(d + 0xA8) = 0;
        if (t != -1) {
            unsigned char *e = (unsigned char *)D_0013E633 + 0x1D + t * 0x70;
            if (*(char **)(e + 0x88) == (char *)m && e[0x74]) {
                func_L00_0028EBF0(t);
            }
        }
        *(int *)(d + 0xC4) = -1;
        break;
    move:
        t = *(int *)(d + 0xC4);
        if (func_L00_0028EB98(m, t) == 0) {
            *(int *)(d + 0xC4) = func_0022ED80(0, 4, (int)m);
        }
        {
            float a, b;
            *(float *)(d + 0xA8) = *(float *)(d + 0xA8) + *(float *)(d + 0xAC) * D_0015EE6C;
            a = func_001F9B88(*(float *)(d + 0xA8));
            b = func_001F9B88(*(float *)(d + 0xAC));
            if (b < a) *(float *)(d + 0xA8) = *(float *)(d + 0xAC);
        }
        *(float *)(d + 0xA4) = *(float *)(d + 0xA4) + *(float *)(d + 0xA8);
        if (func_001F9B88(*(float *)(d + 0xA4) - 0.5f) > 0.5f) {
            int idx;
            float s;
            if (*(int *)(d + 0xC8) == 0) {
                if (func_L01_00278FA8(m)) func_L00_00227E08();
            }
            if (*(float *)(d + 0xAC) > 0.0f) {
                m[0xBC] = 3;
                *(float *)(d + 0xA4) = 1.0f;
            } else {
                m[0xBC] = 1;
                *(float *)(d + 0xA4) = 0.0f;
            }
            *(int *)(d + 0xA8) = 0;
            *(short *)(d + 0xBA) = func_001F9850(0xF);
            t = *(int *)(d + 0xC4);
            if (t != -1) {
                unsigned char *e = (unsigned char *)D_0013E633 + 0x1D + t * 0x70;
                if (*(char **)(e + 0x88) == (char *)m && e[0x74]) {
                    func_L00_0028EBF0(t);
                }
            }
            *(int *)(d + 0xC4) = -1;
            idx = func_001FA898_r(func_001FA888(path[0] - 1) * *(float *)(d + 0xA4));
            s = func_001FA888(path[0] - 1) * *(float *)(d + 0xA4) - func_001FA888(idx);
            if (idx == path[0] - 1) {
                qcopy(pos, (char *)path + 0x10 + idx * 16);
            } else {
                char *a = (char *)path + 0x10 + idx * 16;
                func_001F9BF0(w, a + 0x10, a);
                func_001F9C30(w, w, s);
                func_001F9BD8(pos, w, a);
            }
            *(float *)(d + 0xBC) = *(float *)(m + 0x18) - old[2];
        }
        goto tail;
    case 3:
        if (!func_L01_00278FA8(m)) m[0xBC] = 0;
        break;
    }
tail:
    func_001F9BF0(v, pos, old);
    func_L00_002617B0(d + 0x60, v, m + 0x40, m + 0x40);
    if (!func_L01_00278FA8(m)) {
        if (func_001F9D48(pos, D_0013E633 + 0xE9D) > 2.0f) {
            if (*(short *)(d + 0xBA) == 0) *(short *)(d + 0xB8) = 1;
        }
    }
}
