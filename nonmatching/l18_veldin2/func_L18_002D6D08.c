/* NON_MATCHING func_L18_002D6D08 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: SIZE ours 996 / retail 992, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   ## Round 1 (12 runs)
 *   UpdateMoby_568 (Veldin 2): calls func_L18_002D7310, then a 5-way switch on moby[0x20] (jump table): 0 init fla
 *   What mattered: unsigned char *moby (lbu), one function-scope float v[4] shared by case 2 and case 3 (so the ve
 *   Remaining: one extra lui (4 bytes). Retail reads D_0015EE6C through $gp in case 3 (lwc1 -0x7E94($28)) and via 
 */
extern short D_L18_00161A6C __asm__("D_0015EE6C");
extern float D_L18_6C_m __asm__("D_0015EE6C") MACRO_ADDR;
extern void func_L18_002D7310(void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern int func_001F9850(int);
extern float func_001F9CE8(void *);
extern float func_001F9D48(void *, void *);
extern float func_001F9D10(void *, void *);
extern void func_00213DE0(void *, int, int, int);
extern float func_00214D28(float *p, float target, float maxstep);
extern int func_L00_00260D30(char *, char *, float);
extern void func_L00_001FF500(void *, void *, float);
extern void func_L00_00259868(int, int, float, float, float, int);
extern int func_L00_002DDEA0(void *, void *);
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE70_b __asm__("D_0015EE70") MACRO_ADDR;
extern short D_L18_00161A24;
extern short D_L18_00161A18;
extern int D_001414D0 NOT_SDA;

void func_L18_002D6D08(unsigned char *moby) {
    char *data = *(char **)(moby + 0x78);
    float v[4];
    func_L18_002D7310(moby);
    switch (moby[0x20]) {
    case 0:
        *(int *)(moby + 0x94) = 0;
        *(unsigned short *)(moby + 0x34) = (*(unsigned short *)(moby + 0x34) | 0x41) & 0xEFFF;
        *(void **)(data + 0xD0) = &D_L18_00161A18;
        *(float *)(data + 0x30) = 0.05f;
        moby[0x20] = 5;
        break;
    case 1:
        func_001F9BD8(moby + 0x10, moby + 0x10, data + 0x180);
        *(float *)(data + 0x188) -= D_0015EE70 * 10.0f;
        if (*(float *)(moby + 0x18) < *(float *)(data + 0x178)) {
            *(float *)(moby + 0x18) = *(float *)(data + 0x178);
            moby[0x20] = 2;
            *(float *)(data + 0x188) = -(*(float *)&D_L18_00161A24 * 2.0f * D_L18_6C_m);
        }
        break;
    case 2: {
        float d = func_00214D28((float *)(data + 0x188), 0.0f, *(float *)&D_L18_00161A24 * 2.0f * D_0015EE70);
        *(float *)(moby + 0x44) += d;
        v[0] = func_001F9F90(*(float *)(moby + 0x48)) * d;
        v[1] = func_001F9FA8(*(float *)(moby + 0x48)) * d;
        v[2] = 0.0f;
        func_001F9BD8(moby + 0x10, moby + 0x10, v);
        if (*(float *)(data + 0x188) == 0.0f) {
            if (moby[0x53] != 1) {
                func_00213DE0(moby, 1, 0, func_001F9850(12));
            }
            moby[0xA4] = 0xFF;
            moby[0x20] = 3;
        }
        break;
    }
    case 3:
        if (moby[0x53] == 1 && (moby[0x70] & 2)) {
            func_00213DE0(moby, 2, 0, func_001F9850(12));
        }
        if (moby[0x31]) {
            char buf[0x50];
            float b[4];
            int r = func_L00_00260D30((char *)moby, buf, 6.0f);
            char *hit;
            char *pos;
            char *vel;
            if (r == 2) return;
            hit = *(char **)(buf + 0x40);
            if (hit == 0) return;
            pos = moby + 0x10;
            if (func_001F9D48(pos, hit + 0x10) < 6.0f) {
                float lim2 = *(float *)&D_L18_00161A6C * 3.0f;
                float lim = D_0015EE70 * 6.0f;
                qcopy(b, pos);
                func_001F9BF0(v, *(char **)(buf + 0x40) + 0x10, pos);
                v[2] = -(D_0015EE70_b * 10.0f);
                if (lim < func_001F9CE8(v)) {
                    func_L00_001FF500(v, v, lim);
                }
                vel = data + 0x40;
                func_001F9BD8(vel, vel, v);
                if (lim2 < func_001F9CE8(vel)) {
                    func_L00_001FF500(vel, vel, lim2);
                }
                func_L00_00259868((int)moby, (int)vel, 0.0f, 0.5f, 0.0f, 0);
                func_001F9BF0(vel, pos, b);
                if (0.0f < *(float *)(data + 0x48)) {
                    *(float *)(data + 0x48) = 0.0f;
                } else if (*(float *)(data + 0x48) < -lim2) {
                    *(float *)(data + 0x48) = -lim2;
                }
                if (*(char **)(buf + 0x40) != (char *)D_001414D0) {
                    if (func_001F9D10(*(char **)(buf + 0x40) + 0x10, pos) < 2.0f) {
                        *(int *)(data + 0x19C) = 1;
                    }
                }
            }
        }
        break;
    case 4:
        if (func_L00_002DDEA0(moby, data + 0x110)) {
            moby[0x20] = 3;
            *(short *)(data + 0xC8) = 0;
        }
        break;
    }
}
