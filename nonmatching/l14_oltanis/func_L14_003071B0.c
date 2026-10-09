/* NON_MATCHING func_L14_003071B0 -- src/overlays/l14_oltanis/vendor_002FF358.c
 * Best so far: SIZE ours 1060 / retail 1064, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Update function (moby class 1395, level 14), 1064 bytes: dispatch on moby[0x20] (state 0 fills the slot table 
 *   Differences left: the first branch in the dispatch is one instruction off (state 1 block one word longer), the
 */
extern char *func_L14_003075E0(char *owner);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001F9850(int);
extern float func_001FA888(int);
extern int func_L00_0028EF68(int i, int a1, int v, int k);
extern int func_001F9938(void *);
extern float func_L00_0025C7A8(float, float, float);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
extern float func_L00_0025C700(float, float, float);
extern void func_L00_0028EBF0(int);
extern char *D_L14_00160098 MACRO_ADDR;
extern short D_L14_001622C4;
extern short D_L14_001622C8;
extern short D_L14_001622CC;
extern short D_L14_001622D0;
extern short D_L14_001622D4;
extern short D_L14_001622DC;
extern char D_0013E633[];

/* Update function for moby class 1395 on level 14: sets up the slot table in data+4 and steps the state machine. */
void func_L14_003071B0(char *moby) {
    char *data = *(char **)(moby + 0x78);
    int state = ((unsigned char *)moby)[0x20];
    float vec[4];
    switch (state) {
    case 0: {
        int i;
        char **pa;
        int *pb;
        if (*(int *)data == 0) {
            *(int *)data = (int)func_L14_003075E0(moby);
            func_001F9C30(vec, moby + 0xC0, *(float *)&D_L14_001622C4);
            func_001F9BD8(*(char **)data + 0x10, moby + 0x10, vec);
        }
        pa = (char **)(data + 4);
        pb = (int *)(data + 0x28);
        for (i = 0; i < 6; i++, pa++, pb++) {
            if (*(int *)pa == 0) {
                *pa = D_L14_00160098 + (*pb << 8);
                func_001F9C30(vec, moby + 0xC0, *(float *)&D_L14_001622C4);
                func_001F9BD8(*pa + 0x10, moby + 0x10, vec);
                *(float *)(*pa + 0x18) = *(float *)(*pa + 0x18) + (*(float *)&D_L14_001622C8 * (float)i + *(float *)&D_L14_001622CC);
            }
        }
        *(int *)(data + 0x40) = -1;
        if (*(int *)data != 0) moby[0x20] = 1;
        return;
    }
    case 1: {
        char *e = D_L14_00160098 + (*(int *)(data + 0x1C) << 8);
        if (((unsigned char *)e)[0x20] == 2) {
            short s;
            moby[0x20] = 2;
            *(short *)(data + 0x22) = 5;
            s = func_001F9850(*(int *)&D_L14_001622D4);
            *(short *)(data + 0x20) = s;
            *(float *)(data + 0x24) = 1.0f / func_001FA888(s);
            func_L00_0028EF68(0, 0, ((int *)data)[*(short *)(data + 0x22) + 1], 0x575);
        }
        return;
    }
    case 2: {
        char *p16;
        int s22;
        float f0;
        p16 = *(char **)(data + 4 + *(short *)(data + 0x22) * 4);
        func_001F9938(data + 0x20);
        f0 = func_001FA888(*(short *)(data + 0x20));
        *(float *)(p16 + 0x44) = func_L00_0025C7A8(1.5707963f, 0.0f, f0 * *(float *)(data + 0x24));
        if (*(short *)(data + 0x20) != 0) return;
        *(short *)(data + 0x20) = func_001F9850(*(int *)&D_L14_001622D4);
        s22 = (short)(*(unsigned short *)(data + 0x22) - 1);
        *(short *)(data + 0x22) = s22;
        if (s22 < 0) {
            moby[0x20] = 3;
            *(short *)(data + 0x20) = func_001F9850(*(int *)&D_L14_001622DC);
            *(float *)(data + 0x24) = 1.0f / func_001FA888(*(short *)(data + 0x20));
            return;
        }
        func_L00_0028EF68(0, 0, *(int *)(data + 4 + s22 * 4), 0x575);
        return;
    }
    case 3: {
        int d19 = *(int *)data;
        int i;
        char *v21, *v22;
        char **p23;
        float f0;
        if (!func_L00_0028EB98(moby, *(int *)(data + 0x40))) {
            *(int *)(data + 0x40) = func_0022ED80(0, 4, (int)moby);
        }
        func_001F9938(data + 0x20);
        p23 = (char **)(data + 4);
        v22 = (char *)d19 + 0x10;
        v21 = (char *)d19 + 0xE0;
        f0 = func_001FA888(*(short *)(data + 0x20));
        *(float *)(d19 + 0x44) = func_L00_0025C700(*(float *)&D_L14_001622D0 * 0.017453292f, 0.0f, f0 * *(float *)(data + 0x24));
        {
            char **p16 = p23;
            for (i = 0; i < 6; i++, p16++) {
                func_001F9C30(vec, v21, *(float *)&D_L14_001622C8 * (float)i + *(float *)&D_L14_001622CC);
                func_001F9BD8(*p16 + 0x10, v22, vec);
            }
        }
        if (*(short *)(data + 0x20) != 0) return;
        if (*(int *)(data + 0x40) != -1) {
            char *e = D_0013E633 + 0x1D + *(int *)(data + 0x40) * 0x70;
            if (*(int *)(e + 0x88) == (int)moby && ((unsigned char *)e)[0x74]) func_L00_0028EBF0(*(int *)(data + 0x40));
        }
        *(int *)(data + 0x40) = -1;
        moby[0x20] = 4;
        for (i = 0; i < 5; i++) ((char **)(data + 4))[i][0x20] = 2;
        return;
    }
    default:
        return;
    }
    return;
}
