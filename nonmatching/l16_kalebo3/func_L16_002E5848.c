/* NON_MATCHING func_L16_002E5848 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: BYTES 53/1312 (96.0% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L16_002E5848 (UpdateMoby_1410, state machine 0..6 on a path-following pickup). Best candidate p5.c: BYTES
 *   Differences: (1) in states 3 and 5 retail does `addiu $s1,$sp,..` before `lui $a1; lw $a1,lo($a1)` (table poin
 *   (2) state 3: retail `mov.s $f12,$f21` (the 0.0f argument of func_00215CA8) comes before the two `daddu` arg mo
 *   Also: func_0022ED80 returns a value here (stored to d+0xAA), but the file declares it void: candidate used an 
 *   Unblock: a source form that keeps the table pointer live in $a1 (maybe the table is indexed through a struct w
 */
extern void func_L00_002676A0(void *, int);
extern void func_L16_002E5D68(void *);
extern void func_001FA4A0(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9EE8(void *, void *, void *);
extern float func_001F9B88(float);
extern void func_L16_002E6140(char *);
extern char *func_L05_0031AAA8(void *, int);
extern float func_00214D88(float, float, float, float, float *, float *);
extern void func_00215CA8(int *, int, void *, float *, int, float);
extern void func_001F9C08(void *, void *, void *, float);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern int func_L16_002E60A8(char *);
extern void func_L16_002E5FC0(void *);
extern void func_L16_002E61F0(char *);
extern void func_L16_002E6398(char *);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80_i(int, int, void *) __asm__("func_0022ED80");
extern void func_L00_0028EBF0(int);
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
typedef struct { char p0[0x30]; char a[0x10]; char p1[0x30]; char b[0x10]; } Ent;
extern Ent *D_L16_001601AC;
extern unsigned char D_0013D5E9 NOT_SDA;
extern short D_L16_0015F674;
extern char D_0013F450[];
extern char D_0013E633[];
extern char D_0013A5E0[];

// Update moby 1410: state machine for a moving pickup, following a path and playing help text.
void func_L16_002E5848(char *moby) {
    char *d = *(char **)(moby + 0x78);
    float v00[4], v10[4], v20[4], v30[4], v40[4], v50[4], v60[4], v70[4];
    char *g;
    char *g2;
    float z;
    char *m;
    char *e;
    Ent *tab;
    float *qa;
    int i;
    int h;
    int s;
    qcopy(v00, moby + 0x10);
    qcopy(v10, moby + 0x40);
    func_L00_002676A0(moby, (*(unsigned short *)(moby + 0x34) ^ 1) & 1);
    switch (*(unsigned char *)(moby + 0x20)) {
    case 0:
        *(short *)(d + 0xAA) = -1;
        func_L16_002E5D68(moby);
        break;
    case 1:
        g = D_0013F450;
        if (*(char **)(g + 0x2FC) == moby && *(short *)(g + 0x30E) == 0) {
            func_001FA4A0(v30, moby + 0xC0);
            func_001F9BF0(v70, g + 0x80, moby + 0x10);
            v70[3] = 0;
            func_001F9EE8(v70, v70, v30);
            if (func_001F9B88(v70[1]) < 1.2f) {
                func_L16_002E5EC0(moby);
                func_L16_002E6140(moby);
                if ((*(int *)(D_0013A5E0 + 0x2604) & 0x10) && *(int *)&D_L16_0015F674 == 8) {
                    moby[0x20] = 3;
                    m = func_L05_0031AAA8(moby, *(short *)(d + 0xAE));
                    if (m != 0) {
                        m[0x20] = 2;
                        *(unsigned short *)(m + 0x34) |= 1;
                        m[0x31] = 0;
                        *(int *)(m + 0x94) = 0;
                    }
                }
            }
        }
        break;
    case 3:
        func_00214D88(1.0f, D_0015EE70, D_0015EE70, D_0015EE6C * 0.5f, (float *)(d + 0xB0), (float *)(d + 0xB4));
        qa = v30;
        s = *(int *)(d + 0x80 - (-(*(short *)(d + 0xAC) * 4)));
        tab = D_L16_001601AC;
        qcopy(qa, tab[s].a);
        qcopy(v50, tab[s].b);
        z = 0.0f;
        func_00215CA8(*(int **)(d + 0xA4), 0, v40, v60, 0, z);
        func_001F9C08(d + 0x60, v30, v40, *(float *)(d + 0xB0));
        *(float *)(d + 0x74) = func_001FA748(func_001FA790(v60[1], v50[1]) * *(float *)(d + 0xB0), v50[1]);
        *(float *)(d + 0x78) = func_001FA748(func_001FA790(v60[2], v50[2]) * *(float *)(d + 0xB0), v50[2]);
        if (1.0f <= *(float *)(d + 0xB0)) {
            *(float *)(d + 0xB0) = z;
            *(float *)(d + 0xB4) = z;
            moby[0x20] = 4;
        }
        break;
    case 4:
        if (func_L16_002E60A8(moby)) {
            *(int *)(d + 0xB0) = 0;
            *(int *)(d + 0xB4) = 0;
            moby[0x20] = 5;
        }
        break;
    case 5:
        func_00214D88(1.0f, D_0015EE70, D_0015EE70, D_0015EE6C * 0.5f, (float *)(d + 0xB0), (float *)(d + 0xB4));
        qa = v40;
        s = *(int *)(d + 0x80 - (-(*(short *)(d + 0xAE) * 4)));
        tab = D_L16_001601AC;
        qcopy(qa, tab[s].a);
        qcopy(v60, tab[s].b);
        func_00215CA8(*(int **)(d + 0xA4), 0, v30, v50, 0, (float)**(int **)(d + 0xA4));
        func_001F9C08(d + 0x60, v30, v40, *(float *)(d + 0xB0));
        *(float *)(d + 0x74) = func_001FA748(func_001FA790(v60[1], v50[1]) * *(float *)(d + 0xB0), v50[1]);
        *(float *)(d + 0x78) = func_001FA748(func_001FA790(v60[2], v50[2]) * *(float *)(d + 0xB0), v50[2]);
        if (1.0f <= *(float *)(d + 0xB0)) {
            *(int *)(d + 0xB0) = 0;
            *(int *)(d + 0xB4) = 0;
            moby[0x20] = 1;
            func_L16_002E5FC0(moby);
        }
        break;
    case 6:
        if (D_0013D5E9) {
            moby[0x20] = 1;
            *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
            *(unsigned short *)(moby + 0x34) &= 0xFFFE;
            moby[0x31] = 1;
        }
        break;
    }
    func_L16_002E61F0(moby);
    if (*(unsigned char *)(moby + 0x20) >= 3 && *(unsigned char *)(moby + 0x20) <= 5) {
        g2 = D_0013F450;
        *(short *)(g2 + 0x1F2) = 2;
        *(short *)(g2 + 0x1F4) = 2;
        func_L16_002E6398(moby);
        if (func_L00_0028EB98(moby, *(short *)(d + 0xAA)) == 0) {
            *(short *)(d + 0xAA) = func_0022ED80_i(0, 4, moby);
        }
    } else if (func_L00_0028EB98(moby, *(short *)(d + 0xAA)) != 0) {
        h = *(short *)(d + 0xAA);
        if (h != -1) {
            e = D_0013E633 + 0x1D + h * 0x70;
            if (*(char **)(e + 0x88) == moby && *(unsigned char *)(e + 0x74) != 0) {
                func_L00_0028EBF0(h);
            }
        }
        *(short *)(d + 0xAA) = -1;
    }
    func_001F9BF0(v20, moby + 0x10, v00);
    func_L00_002617B0(d + 0x20, v20, v10, moby + 0x40);
}
