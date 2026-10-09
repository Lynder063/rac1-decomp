/* NON_MATCHING func_L06_002FA618 -- src/overlays/l06_blarg/vendor_002B5990.c
 * Best so far: SIZE ours 1204 / retail 1200, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Per-frame Blarg moby update: runs func_L00_0025B4D0/func_L00_00260FB0 for a state machine on moby+0x20 with a 
 *   Remaining difference: the 0x1A0 store block (retail keeps the F60 value in $f0 for all three stores with a bne
 *   Would unblock: a form that keeps the F60 load in $f0 across the three 0x1A0 stores.
 */
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898(float);
extern int func_001F9908(void *);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
void func_L06_002FAAC8(char *arg);
extern float func_L00_001FF860(float, float);
extern void func_L00_0025D5B0_2eb140(void *, void *, int, int, int, float) __asm__("func_L00_0025D5B0");
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_L00_0025E590(void *, void *);
extern int func_L00_0025A8E8(int, float, void *, int, float, float, int, int, int);
extern float func_001FA748(float, float);
extern float func_001F9FA8(float);
extern int func_001FA8A8(int, int, float);
extern int func_L00_00260FB0(float, char *, void *, int, int, void *, int);
extern float func_001F9D48(void *, void *);
extern float AbsoluteFloat(float input) __asm__("func_001F9B88");
extern float D_0015EE6C MACRO_ADDR;
extern int *D_L06_001B0FB0[];
extern char D_0013E633[];
extern short D_L06_0015F6B0_s __asm__("D_L06_0015F6B0");
extern short D_L06_00161F74;
extern short D_L06_00161F78;
extern short D_L06_00161F7C;
extern short D_L06_00161F60;

// Per-frame update for a Blarg moby: its data block (at 0x78) runs a state machine on the state byte at 0x20.
void func_L06_002FA618(unsigned char *moby)
{
    unsigned char *data = *(unsigned char **)(moby + 0x78);
    unsigned char *s19;
    unsigned char *a5;
    unsigned char *q;
    int i0;
    float t;
    int s16;
    float k;
    float v;
    float d;
    float h;
    int st;
    int G;
    float e;

    if (*(int *)(data + 0x38) != 0) {
        float a = func_002140F8(180.0f, 240.0f);
        float b = func_001F9878(a);
        *(int *)(data + 0x1AC) = func_001FA898(b);
        *(int *)(data + 0x38) = 0;
    }
    func_001F9908(data + 0x1AC);
    t = 0.0f;
    s19 = (unsigned char *)func_L00_0025B478(moby, 0x330000, 0);
    a5 = s19;
    if (s19 != 0) {
        unsigned char *p = *(unsigned char **)(s19 + 0x20);
        if (p != 0) {
            int pv = *(short *)(p + 0xA6);
            a5 = (pv ^ 0x418) != 0 ? s19 : 0;
        }
    }
    s16 = func_L00_0025B4D0(moby, a5, data + 0x20, 0, &i0, &t, 0, 4);

    if (i0 != 1 && moby[0x20] != 0x11 && moby[0x20] != 3) {
        *(float *)(data + 0x20) = *(float *)(data + 0x20) - t;
        if (moby[0x21] != 0xFF) func_L06_002FAAC8((char *)moby);
        if (*(float *)(data + 0x20) <= 0.0f) {
            s16 = 1;
        } else if (*(int *)(data + 0x1CC) != 0) {
            s16 = 0xB;
            data[0x67] = 0xFA;
        }

        switch (s16) {
        case 0:
            break;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
            moby[0x20] = 14;
            e = D_0015EE6C;
            *(float *)(data + 0xC0) = 5.0f;
            *(float *)(data + 0xC4) = 8.5f;
            *(float *)(data + 0x8C) = e;
            *(float *)(data + 0x88) = e + e;
            q = data + 0x70;
            v = func_L00_001FF860(*(float *)(s19 + 0x10), *(float *)(s19 + 0x14));
            func_L00_0025D5B0_2eb140(moby, q, 9, 1, 0, v);
            data[0x67] = 0xFA;
            break;
        case 1:
        case 2:
            moby[0x20] = 0x11;
            e = D_0015EE6C;
            *(float *)(data + 0x8C) = e * 5.0f;
            *(unsigned short *)(moby + 0x34) &= 0xEFFF;
            *(float *)(data + 0xC0) = 7.5f;
            *(float *)(data + 0xC4) = 14.5f;
            *(float *)(data + 0x88) = e * 8.0f;
            q = data + 0x70;
            v = func_L00_001FF860(*(float *)(s19 + 0x10), *(float *)(s19 + 0x14));
            func_L00_0025D5B0_2eb140(moby, q, 10, 1, 0, v);
            data[0x67] = 0xFA;
            func_L00_002584A8(moby, 0, -1);
            break;
        case 11:
            break;
        }

        q = data + 0x60;
        func_L00_0025E4B0(moby, (short *)q);
    }

    moby[0xA4] = 0xFF;
    func_L00_0025E590((char *)moby, data + 0x60);
    st = moby[0x20];
    k = *(float *)&D_L06_00161F74;
    G = *(int *)&D_L06_0015F6B0_s;
    if (st < 8) goto L94C;
    if (st < 10) goto L8E0;
    if (st >= 14) goto L94C;
    if (st < 12) goto L94C;
L8E0:
    if (G % 4 == (((int)moby >> 8) & 3)) {
        func_L00_0025A8E8((int)moby, 0.7f, moby + 0x10, 0x10000, 0.9f, 1.0f, 0, 1, 0);
        k = *(float *)&D_L06_00161F74;
    }
L94C:
    k = k * 0.0174532925f * D_0015EE6C;
    v = func_001FA748(*(float *)(data + 0x1C8), k);
    *(float *)(data + 0x1C8) = v;
    v = func_001F9FA8(v);
    *(int *)(moby + 0x90) = func_001FA8A8(*(int *)&D_L06_00161F78, *(int *)&D_L06_00161F7C, (v + 1.0f) * 0.5f);

    v = *(float *)&D_L06_00161F60;
    if (*(int *)(data + 0x1AC) != 0) {
        v = 6.0f + v;
        *(float *)(data + 0x1A0) = v;
    } else {
        if (moby[0x20] != 1) {
            *(float *)(data + 0x1A0) = v;
        } else {
            unsigned char *base = D_0013E633 + 0xE1D;
            if ((int)moby == *(int *)(base + 0x240) || (int)moby == *(int *)(base + 0x23C)) {
                v = 6.0f;
                *(float *)(data + 0x1A0) = v;
            } else {
                *(int *)(data + 0x1A0) = 0;
            }
        }
    }

    {
        int *p8 = D_L06_001B0FB0[*(int *)(data + 0x1B0)];
        int r;
        q = data + 0x120;
        r = func_L00_00260FB0(*(float *)(data + 0x1A0), (char *)moby, q, 0, 0, (char *)p8 + 0x10, *p8);
        if (r != 2) {
            d = func_001F9D48(data + 0x170, q);
            if (*(float *)(data + 0x1A0) < d) {
                *(int *)(data + 0x164) = 2;
            } else {
                h = AbsoluteFloat(*(float *)(moby + 0x18) - *(float *)(data + 0x128));
                if (3.0f < h) *(int *)(data + 0x164) = 2;
            }
        }
        if (*(int *)(data + 0x160) == 0) {
            *(int *)(data + 0x160) = *(int *)(D_0013E633 + 0x2E9D);
        }
    }
}
