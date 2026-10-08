/* NON_MATCHING func_L12_00304310 -- src/overlays/l12_hoven/vendor_002EDAA0.c
 * Best so far: SIZE ours 952 / retail 948, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 12 vendor moby update (948 bytes): steers toward a target using the vendor helpers, copies 16-byte vecto
 *   Left differing: the init block's `lui` for D_L12_00161E84 is hoisted before the `addiu` value loads; the `row 
 */
extern float func_L00_001FF860(float, float);
extern float func_001F9D10(void *, void *);
extern float func_001FA748(float, float);
extern float func_001F9FA8(float);
extern float func_001F9B88(float);
extern void func_L00_0025C710(void *, void *, void *, float);
extern float func_001F9D48(void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern int func_L00_00200290(void *, float);
extern int func_00215570(void *, int);
extern void func_L12_00304038(void *);
extern void func_L00_0025A8C0(void *, void *, int, float, void *);
extern int func_L00_001EFFF0(void *, void *, int, void *, void *);
extern int D_L12_00161E84;
extern int D_L12_00161E88;
extern int D_L12_00160058_m __asm__("D_L12_00160058") MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern char *D_L12_001B0C30[];
extern char D_L12_001672C0[];
extern float D_L12_0015F660[] MACRO_ADDR;
extern char D_0013E633[];

/* Level 12 vendor moby update: steers toward its target, then calls the vendor helpers. */
void func_L12_00304310(char *moby) {
    float tmp0[4];
    float tmp1[4];
    float tmp2[4];
    char *data;
    char *pos;
    char *p20;
    char *e;
    char *row;
    char *base;
    float a;
    float half;
    float v;
    float r;
    float k;
    float c;
    int idx;

    data = *(char **)(moby + 0x78);
    idx = *(int *)(data + 0x2314);
    if (idx == -1) return;
    if (((unsigned char *)moby)[0x20] == 0) goto init;
    if (((unsigned char *)moby)[0x20] == 1) goto body;
    return;
init:
    D_L12_00161E84 = 0x2D;
    D_L12_00161E88 = 0x16;
    *(int *)(data + 0x231C) = -1;
    *(int *)(data + 0x2304) = 0xB;
    *(int *)(data + 0x2308) = 0x17;
    *(int *)(data + 0x230C) = 0x22;
    *(int *)(data + 0x2300) = 0;
    ((unsigned char *)moby)[0x20] = 1;
    return;
body:
    base = (char *)D_L12_00160058_m;
    pos = moby + 0x10;
    p20 = (char *)tmp1;
    e = base + (idx << 8);
    *(float *)(moby + 0x48) = func_L00_001FF860(*(float *)(e + 0x10) - *(float *)(moby + 0x10),
                                                 *(float *)(e + 0x14) - *(float *)(moby + 0x14));
    r = func_001F9D10(pos, (char *)D_L12_00160058_m + (*(int *)(data + 0x2314) << 8) + 0x10);
    k = *(float *)(data + 0x2328) * 0.017453292f * D_0015EE6C;
    *(float *)(data + 0x2324) = r;
    *(float *)(data + 0x2318) = func_001FA748(*(float *)(data + 0x2318), k);
    row = D_L12_001B0C30[*(int *)(data + 0x2310)];
    a = func_001F9FA8(*(float *)(data + 0x2318));
    v = *(float *)(data + 0x2318);
    if (1.5707964f < v && v < 3.1415927f) a = 2.0f - a;
    if (-3.1415927f < v && v < -1.5707964f) a = 2.0f - a;
    half = 0.5f;
    a = a * half + half;
    if (1.0f < a) a = a - 2.0f;
    c = func_001F9B88(a);


    qcopy(tmp0, row + 0x10);
    qcopy(p20, row + 0x20);
    func_L00_0025C710(pos, tmp0, p20, c);
    if (func_001F9D48(pos, (char *)D_0013E633 + 0xE9D) > 64.0f) return;
    if (((unsigned char *)moby)[0x31] == 0) {
        e = (char *)D_L12_00160058_m + (*(int *)(data + 0x2314) << 8);
        if (((unsigned char *)e)[0x31] == 0) {
            func_001F9BD8(tmp0, pos, e + 0x10);
            func_001F9C30(tmp0, tmp0, half);
            tmp0[3] = 16.0f;
            if (func_L00_00200290(tmp0, 32.0f) == -1) return;
        }
    }
    if (*(int *)(data + 0x2330) != -1) {
        if (func_00215570(D_L12_001672C0, *(int *)(data + 0x2330)) != 0) return;
    }
    if (*(int *)(data + 0x2320) == 0) return;
    func_L12_00304038(moby);
    idx = *(int *)(data + 0x2314);
    if (idx == -1) return;
    qcopy(tmp0, moby + 0x18);
    qcopy(p20, (char *)D_L12_00160058_m + (idx << 8) + 0x10);
    func_L00_0025A8C0(tmp2, moby, 0x10001, 1.0f, D_L12_0015F660);
    func_L00_001EFFF0(tmp0, p20, 0, 0, tmp2);
}
