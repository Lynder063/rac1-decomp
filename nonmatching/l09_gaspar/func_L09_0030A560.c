/* NON_MATCHING func_L09_0030A560 -- src/overlays/l09_gaspar/vendor_002C2B08.c
 * Best so far: SIZE ours 1652 / retail 1656, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L09_0030A560 notes (wave hq8, ID s22)
 *   Level 09 moby update, 1656 bytes. Switch on moby[0x20] (0 init, 1 wait on pointer table, 2 active).
 *   Active state: hero offset block (func_0022ED80 guards), main block when data+0x88 != 0, else blend block; shar
 *   Run 1 (p0.c): 1668 bytes (+12). Layout differs: state-0 block and its -1 path are placed first in retail; -1 t
 *   Runs 2-9: switch with retail block order (0,1,2); -1 test as `!= -1` then else; retail-style u128 copies for v
 *   Left: retail shares the state-2 store (`addiu $2,2; b end; sb`) with the case-1 path and saves $s5 (d60 live a
 */
extern void func_001F9C30(void *, void *, float);
extern float func_002140F8(float, float);
extern int func_001E9730();
extern int func_0022ED80_r(int, int, char *) __asm__("func_0022ED80");
extern int func_001F9850(int);
extern void func_001F9908(int *arg0);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9C78(void *a, void *b);
extern float func_L00_0025CCF0(void *, float, void *, int, float, float, float);
extern void func_L07_00289960(void *a0, void *a1, void *a2, void *a3, void *a4);
extern void func_L00_00263B78(float, float, char *, float *, float *);
extern void func_L00_00263BF8(void *, char *, char *, float, float, float);
extern float func_001FA748(float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern int D_L09_00160058_m __asm__("D_L09_00160058") MACRO_ADDR;
extern char D_L09_00209518[];
extern unsigned char D_0013E633[];
extern float D_L09_00161E44 SDATA(D_L09_00161E44);
extern float D_L09_00161E48 SDATA(D_L09_00161E48);
extern float D_L09_00161E4C SDATA(D_L09_00161E4C);
extern float D_L09_00161E54 SDATA(D_L09_00161E54);
extern float D_L09_00161E58 SDATA(D_L09_00161E58);
extern float D_L09_00161E5C SDATA(D_L09_00161E5C);
extern float D_L09_00161E60 SDATA(D_L09_00161E60);
extern float D_L09_00161E64 SDATA(D_L09_00161E64);
extern float D_L09_00161E68 SDATA(D_L09_00161E68);

/* Level 09 moby update (classes 1293, 1320): steps the moby through its state machine (0 start, 1 wait, 2 active) and moves it with the hero offsets. */
void func_L09_0030A560(char *moby) {
    char *data = *(char **)(moby + 0x78);
    float v0[4];
    float v1[4];
    float v2[4];
    float v3[4];
    float v4[4];
    float v5[4];
    float f0, f1, f2, f20, f21, f22, f24, f25;
    int s;
    char *p;
    char *e1;
    char *hero;
    char *d60;
    float dot1, dot2, e44;
    unsigned char c;

    func_001F9C30(v0, moby + 0x10, -1.0f);
    qcopy(v1, moby + 0x40);
    f25 = *(float *)(moby + 0x18);
    f24 = *(float *)(data + 0x84) - 0.300000012f;
    s = ((unsigned char *)moby)[0x20];
    switch (s) {
    case 0:
        *(int *)(data + 0x80) = 1;
        qcopy(data + 0x60, moby + 0x40);
        qzero(data + 0x70);
        f1 = *(float *)(moby + 0x18);
        *(float *)(data + 0x84) = f1;
        if (*(int *)(data + 0x8C) != -1) {
            *(float *)(moby + 0x18) = f1 - 5.0f;
            *(float *)(moby + 0x40) = func_002140F8(-1.57079637f, 1.57079637f);
            *(float *)(moby + 0x44) = func_002140F8(-1.57079637f, 1.57079637f);
            moby[0x20] = 1;
        } else {
            func_001E9730(D_L09_00209518, *(short *)(moby + 0xB2), *(short *)(moby + 0xA6));
            moby[0x20] = 2;
        }
        break;
    case 1:
        p = (char *)(D_L09_00160058_m + (*(int *)(data + 0x8C) << 8));
        if (p == 0) {
            goto set2;
        }
        c = ((unsigned char *)p)[0x20];
        if (c == 0xFE) {
            goto set2;
        }
        if (c != 0xFD) {
            break;
        }
    set2:
        moby[0x20] = 2;
        break;
    case 2:
        e1 = D_0013E633 + 0xE1D;
        if (*(short *)(e1 + 0x30E) == 0 && *(char **)(e1 + 0x2FC) == moby) {
            if (*(int *)(data + 0x88) == 0) {
                func_0022ED80_r(0, 0, moby);
            }
            if (*(int *)(data + 0x88) < func_001F9850(30)) {
                *(int *)(data + 0x88) = func_001F9850(30);
            }
        }
        if (*(int *)(data + 0x88) != 0) {
            hero = D_0013E633 + 0xE9D;
            d60 = data + 0x60;
            func_001F9908((int *)(data + 0x88));
            func_001F9BF0(v2, hero, moby + 0x10);
            dot1 = func_001F9C78(v2, moby + 0xC0);
            dot2 = func_001F9C78(v2, moby + 0xD0);
            f21 = 0.0174532924f;
            e44 = D_L09_00161E44;
            f22 = dot1;
            *(u128 *)v3 = *(u128 *)d60;
            *(u128 *)v4 = *(u128 *)(moby + 0x10);
            func_L00_0025CCF0(d60, -e44 * dot2, data + 0x70, 0,
                              D_L09_00161E54 * f21 * D_0015EE70,
                              D_L09_00161E58 * D_0015EE64,
                              D_L09_00161E5C * f21 * D_0015EE6C);
            func_L00_0025CCF0(data + 0x64, e44 * dot1, data + 0x74, 0,
                              D_L09_00161E54 * f21 * D_0015EE70,
                              D_L09_00161E58 * D_0015EE64,
                              D_L09_00161E5C * f21 * D_0015EE6C);
            f2 = *(float *)(moby + 0x18) - D_L09_00161E48 * D_0015EE6C;
            *(float *)(moby + 0x18) = f2;
            if (f24 < f25 && f2 <= f24) {
                func_0022ED80_r(1, 0, moby);
            }
            func_L07_00289960(hero, v5, moby + 0x10, v3, d60);
            func_001F9BF0(hero + 0x70, v5, hero);
            *(float *)(hero + 0x78) = *(float *)(hero + 0x78) + (*(float *)(moby + 0x18) - v4[2]);
        } else {
            f2 = *(float *)(moby + 0x18);
            f1 = D_L09_00161E4C * D_0015EE6C;
            f0 = f1 * (*(float *)(data + 0x84) - f2);
            f2 = f2 + f0;
            *(float *)(moby + 0x18) = f2;
            if (f2 < *(float *)(data + 0x84) - 2.0f) {
                f2 = f2 + f1;
                *(float *)(moby + 0x18) = f2;
                func_L00_0025CCF0(data + 0x60, 0.0f, data + 0x70, 0,
                                  D_L09_00161E60 * 0.0174532924f * D_0015EE70 * 3.0f,
                                  D_L09_00161E64 * D_0015EE64,
                                  D_0015EE6C * 1.57079637f);
                func_L00_0025CCF0(data + 0x64, 0.0f, data + 0x74, 0,
                                  D_L09_00161E60 * 0.0174532924f * D_0015EE70 * 3.0f,
                                  D_L09_00161E64 * D_0015EE64,
                                  D_0015EE6C * 1.57079637f);
            } else {
                f21 = 0.0174532924f;
                func_L00_0025CCF0(data + 0x60, 0.0f, data + 0x70, 0,
                                  D_L09_00161E60 * f21 * D_0015EE70,
                                  D_L09_00161E64 * D_0015EE64,
                                  D_L09_00161E68 * f21 * D_0015EE6C);
                func_L00_0025CCF0(data + 0x64, 0.0f, data + 0x74, 0,
                                  D_L09_00161E60 * f21 * D_0015EE70,
                                  D_L09_00161E64 * D_0015EE64,
                                  D_L09_00161E68 * f21 * D_0015EE6C);
            }
            f0 = *(float *)(moby + 0x18);
            f1 = *(float *)(data + 0x84);
            if (f1 < f0) {
                *(float *)(moby + 0x18) = f1;
            }
            if (f25 < f24) {
                if (f24 <= *(float *)(moby + 0x18)) {
                    func_0022ED80_r(2, 0, moby);
                }
            }
        }
        func_L00_00263B78(0.140000001f, D_0015EE6C * 0.52359879f, moby, (float *)(data + 0x98), (float *)(data + 0x9C));
        func_L00_00263BF8(moby, data + 0x90, data + 0x94, 0.0872664601f,
                          D_0015EE6C * 0.436332315f, D_0015EE6C * 0.541052043f);
        *(float *)(moby + 0x40) = func_001FA748(*(float *)(data + 0x60), *(float *)(moby + 0x40));
        *(float *)(moby + 0x44) = func_001FA748(*(float *)(data + 0x64), *(float *)(moby + 0x44));
        func_001F9BD8(v0, v0, moby + 0x10);
        func_L00_002617B0(data + 0x20, v0, v1, moby + 0x40);
        break;
    }
}
