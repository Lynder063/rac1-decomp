/* NON_MATCHING func_L18_002D70E8 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: SIZE ours 548 / retail 552, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Activates the 0x238-class moby (state 5) from a moby-id list: init fields, copy pos, compute aim vector and da
 *   Best p4.c: logic right, 548 vs 552 bytes. Left: prologue save order (s0/s2 stores), found=0 placed after vs be
 */
extern void func_00213DE0(void *, int, int, int);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CE8(void *);
extern void func_L00_001FF500(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_L00_0025BC48(void *, void *, int, float, float);
extern float func_L00_001FF860(float, float);
extern void func_0022ED80(int, int, int);
extern int *D_L18_001AC540[];
extern int D_L18_00160058_m __asm__("D_L18_00160058") MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern short D_L18_00161A24;

// Spawns/activates the matching moby from list idx and sets up its data.
unsigned char *func_L18_002D70E8(float f, int a0, int idx, float *pos, float *q, int a4) {
    unsigned short *p = (unsigned short *)D_L18_001AC540[idx];
    unsigned char *found;
    float vec[4];
    char *d;
    float *r;
    unsigned short v;
    unsigned char *base;
    unsigned short flags;
    if (p == 0) {
        return 0;
    }
    found = 0;
    base = (unsigned char *)D_L18_00160058_m;
    do {
        unsigned char *mob;
        v = *p;
        mob = base + ((v & 0x7FFF) << 8);
        if (*(short *)(mob + 0xA6) == 0x238) {
            if (mob[0x20] == 5) {
                found = mob;
            }
        }
        p++;
    } while ((short)v >= 0);
        flags = *(unsigned short *)(found + 0x34) & 0xFFBE;
    found[0x30] = 0xFF;
    flags |= 0x1000;
    *(short *)(found + 0x32) = 0xFF;
    found[0x20] = 1;
    *(unsigned short *)(found + 0x34) = flags;
    found[0x31] = 1;
    found[0xBC] = 0;
    *(int *)(found + 0x94) = *(int *)(*(int *)(found + 0x24) + 0x10);
    if (found[0x53] != 0) {
        func_00213DE0(found, 0, 0, 1);
    }
    qcopy(found + 0x10, pos);
    *(float *)(found + 0x44) = -*(float *)&D_L18_00161A24;
    *(int *)(found + 0x40) = 0;
    q[2] = q[2] + 0.75f;
    func_001F9BF0(vec, q, pos);
    func_L00_001FF500(vec, vec, func_001F9CE8(vec) - *(float *)&D_L18_00161A24);
    func_001F9BD8(vec, vec, pos);
    d = *(char **)(found + 0x78);
    qcopy(d + 0x170, vec);
    func_001F9BF0(d + 0x180, vec, pos);
    *(int *)(d + 0x188) = 0;
    func_L00_001FF4B0(d + 0x180, d + 0x180, f);
    *(short *)(d + 0xC8) = 0;
    *(float *)(d + 0x188) = func_L00_0025BC48(pos, vec, 0, f, -(D_0015EE70 * 10.0f));
    *(float *)(found + 0x48) = func_L00_001FF860(*(float *)(d + 0x180), *(float *)(d + 0x184));
    *(int *)(d + 0x194) = a4;
    *(int *)(d + 0x198) = a0;
    *(int *)(d + 0x19C) = 0;
    func_0022ED80(0, 0, (int)found);
    return found;
}
