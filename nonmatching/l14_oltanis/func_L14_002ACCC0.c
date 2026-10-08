/* NON_MATCHING func_L14_002ACCC0 -- src/overlays/l14_oltanis/vendor_002ACCC0.c
 * Best so far: BYTES 14/2100 (99.3% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Platform update (moby class 903, level 14): rides a keyframe path, flips direction on hits, eases moby+0x10..0
 *   p2 is size-exact (2100) at 14 bytes: only the $21/$22 pair is swapped (retail $21 = moby+0x10 pointer, $22 = o
 */
extern char D_0013E633[];
extern int *D_L14_001B0F30[];
typedef struct { char pad0[0x454]; unsigned char collected[1]; } CapLevelState;
extern CapLevelState D_L14_001BBCC0;
extern unsigned char D_0014171B[] NOT_SDA;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern int D_L14_001BAF60[];
extern float D_0015EE6C MACRO_ADDR;
extern int func_00215570(void *arg0, int arg1);
extern int func_001F9938(void *);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_L01_00278FA8(void *);
extern float func_001F9D10(void *, void *);
extern float func_001F9878(float);
extern float func_001F9D48(void *, void *);
extern float func_001F9B88(float);
extern int func_001F9850(int);
extern void func_L00_0028EBF0(int);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
extern float func_001FA888(int);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern float func_L00_0025C918(float *p, float *v, float t, float u1, float u2, float eps);
extern void func_L14_002AD4F8(char *moby);

/* platform update: rides a keyframe path, switches direction on hits, eases its position toward the path point */
void func_L14_002ACCC0(unsigned char *moby) {
    char *data = *(char **)(moby + 0x78);
    char *hero;
    char *path;
    float orig[4], delta[4], tmp[4], v[4];
    int on = 0;
    if (*(int *)(data + 0xB4) == -1) {
        return;
    }
    path = (char *)D_L14_001B0F30[*(int *)(data + 0xB4)];
    if (*(int *)(data + 0xCC) != -1) {
        if (func_00215570(D_0013E633 + 0xE9D, *(int *)(data + 0xCC)) == 0) {
            moby[0x30] = 0xFF;
            *(int *)(moby + 0x94) = 0;
            *(unsigned short *)(moby + 0x34) |= 0x41;
            return;
        }
        if (*(int *)(data + 0xCC) != -1 && func_00215570(D_0013E633 + 0xE9D, *(int *)(data + 0xCC))) {
            *(unsigned short *)(moby + 0x34) &= 0xFFBE;
            *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
            *(int *)(data + 0xCC) = -1;
        }
    }
    if (*(int *)(data + 0xC0) != -1) {
        unsigned short id;
        if (func_00215570(D_0013E633 + 0xE9D, *(int *)(data + 0xC0))
            || D_L14_001BBCC0.collected[(short)(id = *(unsigned short *)(moby + 0xB2))] != 0
            || (*(int *)(D_0014171B + 0xAB75 + (((short)id >> 5) * 4 + (D_0015EE84_m << 8))) >> (id & 0x1F)) & 1) {
            if (*(int *)(data + 0xC0) != -1) {
                *(int *)(D_0014171B + 0xAB75 + (((short)*(unsigned short *)(moby + 0xB2) >> 5) * 4 + (D_0015EE84_m << 8))) |= 1 << (*(unsigned short *)(moby + 0xB2) & 0x1F);
                D_L14_001BAF60[(short)*(unsigned short *)(moby + 0xB2) >> 5] |= 1 << (*(unsigned short *)(moby + 0xB2) & 0x1F);
                *(int *)(data + 0xC0) = -1;
            }
            on = 1;
        }
    } else {
        on = 1;
    }
    qcopy(orig, moby + 0x10);
    func_001F9938(data + 0xBA);
    if (moby[0x20] == 0) {
        float f;
        char *pts;
        data[0x28] = 4;
        *(short *)(data + 0x3E) = 5;
        *(int *)(data + 0x20) = 0;
        *(short *)(data + 0x24) = 0;
        f = 0.0f;
        if ((moby[0xBC] = data[0xA0]) == 0) {
            f = 1.0f;
        }
        *(float *)(data + 0xA4) = f;
        pts = path + 0x10;
        qcopy((moby + 0x10), func_001FA898_r(f) ? pts + (*(int *)path - 1) * 16 : pts);
        *(short *)(data + 0xBA) = 0;
        *(int *)(data + 0xA8) = 0;
        *(int *)(data + 0xBC) = 0;
        moby[0x20] = 1;
        moby[0x30] = 0xFF;
        *(short *)(moby + 0x32) = 0xFF;
        *(int *)(data + 0xC4) = -1;
    }
    switch (moby[0xBC]) {
    case 0:
        if (on) {
            float fa;
            if ((*(short *)(data + 0xB8) != 0 && func_L01_00278FA8(moby))
                || (fa = func_001F9D10(D_0013E633 + 0xE9D, path + *(int *)path * 16),
                    func_001F9D10(D_0013E633 + 0xE9D, path + 0x10) < fa)) {
                moby[0xBC] = 2;
                *(float *)(data + 0xAC) = -1.0f / func_001F9878(*(float *)(data + 0xB0) * 60.0f);
                *(short *)(data + 0xB8) = 0;
            }
        }
        break;
    case 1:
        if (on) {
            float nr;
            if ((*(short *)(data + 0xB8) != 0 && func_L01_00278FA8(moby))
                || (nr = func_001F9D10(D_0013E633 + 0xE9D, path + 0x10),
                    func_001F9D10(D_0013E633 + 0xE9D, path + *(int *)path * 16) < nr)) {
                moby[0xBC] = 2;
                *(float *)(data + 0xAC) = 1.0f / func_001F9878(*(float *)(data + 0xB0) * 60.0f);
                *(short *)(data + 0xB8) = 0;
            }
        }
        break;
    case 2:
        if (*(int *)(data + 0xC8) == 0 && func_L01_00278FA8(moby)) {
            char *g = D_0013E633 + 0xE1D;
            *(short *)(g + 0x1F2) = 4;
            *(short *)(g + 0x1F4) = 4;
        }
        if (*(short *)(data + 0xBA) != 0
            || (*(float *)(data + 0xBC) < 0.0f
                && func_001F9D48((moby + 0x10), hero = (D_0013E633 + 0xE9D)) < 2.0f
                && func_001F9B88(*(float *)((hero -= 0x80) + 0x88) - *(float *)(moby + 0x18)) < 4.0f
                && *(float *)(moby + 0x18) - *(float *)(hero + 0x88) > 1.0f)) {
            int r;
            if (*(short *)(data + 0xBA) == 0) {
                *(short *)(data + 0xBA) = func_001F9850(30);
            }
            r = *(int *)(data + 0xC4);
            *(int *)(data + 0xA8) = 0;
            if (r != -1) {
                unsigned char *s = (unsigned char *)(D_0013E633 + 0x1D) + r * 0x70;
                if (*(unsigned char **)(s + 0x88) == moby && s[0x74] != 0) {
                    func_L00_0028EBF0(r);
                }
            }
            *(int *)(data + 0xC4) = -1;
        } else {
            int i;
            float f20, t;
            char *q;
            if (!func_L00_0028EB98(moby, *(int *)(data + 0xC4))) {
                *(int *)(data + 0xC4) = func_0022ED80(0, 4, (int)moby);
            }
            *(float *)(data + 0xA8) += *(float *)(data + 0xAC) * D_0015EE6C;
            if (func_001F9B88(*(float *)(data + 0xA8)) > func_001F9B88(*(float *)(data + 0xAC))) {
                *(float *)(data + 0xA8) = *(float *)(data + 0xAC);
            }
            *(float *)(data + 0xA4) = *(float *)(data + 0xA4) + *(float *)(data + 0xA8);
            if (0.5f < func_001F9B88(*(float *)(data + 0xA4) - 0.5f)) {
                int r;
                if (0.0f < *(float *)(data + 0xAC)) {
                    moby[0xBC] = 0;
                    *(float *)(data + 0xA4) = 1.0f;
                } else {
                    moby[0xBC] = 1;
                    *(float *)(data + 0xA4) = 0.0f;
                }
                *(int *)(data + 0xA8) = 0;
                *(short *)(data + 0xBA) = func_001F9850(15);
                r = *(int *)(data + 0xC4);
                if (r != -1) {
                    unsigned char *s = (unsigned char *)(D_0013E633 + 0x1D) + r * 0x70;
                    if (*(unsigned char **)(s + 0x88) == moby && s[0x74] != 0) {
                        func_L00_0028EBF0(r);
                    }
                }
                *(int *)(data + 0xC4) = -1;
            }
            f20 = func_001FA888(*(int *)path - 1);
            i = func_001FA898_r(f20 * *(float *)(data + 0xA4));
            f20 = func_001FA888(*(int *)path - 1);
            t = func_001FA888(i);
            f20 *= *(float *)(data + 0xA4);
            f20 -= t;
            if (i == *(int *)path - 1) {
                qcopy(v, path + 0x10 + i * 16);
            } else {
                q = path + 0x10 + i * 16;
                func_001F9BF0(tmp, path + 0x20 + i * 16, q);
                func_001F9C30(tmp, tmp, f20);
                func_001F9BD8(v, tmp, q);
            }
            func_L00_0025C918((float *)(moby + 0x10), (float *)(data + 0xD0), v[0], 0.005f, 0.2f, 0.0f);
            func_L00_0025C918((float *)(moby + 0x14), (float *)(data + 0xD4), v[1], 0.005f, 0.2f, 0.0f);
            func_L00_0025C918((float *)(moby + 0x18), (float *)(data + 0xD8), v[2], 0.005f, 0.2f, 0.0f);
            *(float *)(data + 0xBC) = *(float *)(moby + 0x18) - orig[2];
        }
        break;
    }
    if (moby[0xBC] != 2) {
        func_L14_002AD4F8(moby);
    }
    func_001F9BF0(delta, (moby + 0x10), orig);
    func_L00_002617B0(data + 0x60, delta, moby + 0x40, moby + 0x40);
    if (!func_L01_00278FA8(moby)) {
        if (2.0f < func_001F9D48((moby + 0x10), (D_0013E633 + 0xE9D))) {
            if (*(short *)(data + 0xBA) == 0) {
                *(short *)(data + 0xB8) = 1;
            }
        }
    }
}
