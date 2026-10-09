/* NON_MATCHING func_L10_002D9988 -- src/overlays/l10_orxon/vendor_00296BD8.c
 * Best so far: SIZE ours 1592 / retail 1588, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped at the 10-run budget, not EXACT. Best p4.c and p7.c are 1592 bytes against retail's 1588 (+4). Those t
 *   Still differing: the prologue (retail saves $ra at +0x10); the 0x28 test on r16 (retail uses a branch-likely w
 */
extern char D_0013E633[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C_x __asm__("D_0015EE6C") MACRO_ADDR;
extern char D_L10_00178400[];
extern short D_L10_00161C6C;
extern void func_001F9BD8(void *, void *, void *);
extern float func_L00_001FF860(float, float);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern float func_001F9F90(float x);
extern float func_001F9FA8(float);
extern int func_001F9850(int);
extern int func_001F9938(void *);
extern void func_L00_00251358(void *, void *, void *, void *);
extern void func_L00_00251328(void *, int, int, int);
extern void func_L00_001FF500(void *, void *, float);
extern int func_L00_001F2BE8(float, void *, int, void *, void *);
extern void func_L00_0025BA50(void *, void *, void *, int, int, int, int, int, float, float, float);
extern void func_L00_00260108(void *, void *, int, float, float);
extern void func_0020D678(void *);

/* Bomb moby update: steers toward the target and runs the effect for the moby's state byte. */
void func_L10_002D9988(char *m) {
    char *data;
    char *pm10;
    char *r16;
    int state;
    int flag21;
    float v0[4];
    float v10[4];
    float fk, s50, s54, s58, s68, s6c, s70;
    int i5c, i60, i64;
    int rA, rB, x;
    struct {
        float v[4];
        char *owner;
        int x34;
        unsigned char s38;
        unsigned char s39;
        short s3a;
        float f3c;
        int i40;
    } sb;

    data = *(char **)(m + 0x78);
    if (*(float *)(m + 0x10) < 1.0f) goto L_EF0;
    if (511.0f < *(float *)(m + 0x10)) goto L_EF0;
    if (*(float *)(m + 0x14) < 1.0f) goto L_EF0;
    if (511.0f < *(float *)(m + 0x14)) goto L_EF0;
    if (*(float *)(m + 0x18) < 1.0f) goto L_EF0;
    if (511.0f < *(float *)(m + 0x18)) goto L_EF0;
    *(float *)(m + 0x18) = *(float *)(m + 0x18) - *(float *)&D_L10_00161C6C;
    pm10 = m + 0x10;
    qcopy(v0, pm10);
    state = *(unsigned char *)(m + 0x20);
    if (state == 1) goto L_C14;
    if (state < 2) {
        if (state == 0) goto L_A88;
        goto L_F00;
    }
    if (state == 2) goto L_D74;
    if (state == 3) goto L_E78;
    goto L_F00;

L_A88:
    func_001F9BD8(pm10, pm10, data);
    fk = D_0015EE70 * 9.8f;
    *(float *)(data + 0x8) = *(float *)(data + 0x8) - fk;
    r16 = func_L00_0025B478(m, 0x830000, 0);
    if (r16 == 0) goto L_BA8;
    if (*(int *)(r16 + 0x20) == 0) goto L_BA8;
    if (*(short *)(*(char **)(r16 + 0x20) + 0xA6) == *(short *)(m + 0xA6)) goto L_BA8;
    if (*(unsigned char *)(r16 + 0x28) != 0) goto L_A3;
    {
        s50 = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(D_0013E633 + 0xE1D + 0x80),
                               *(float *)(m + 0x14) - *(float *)(D_0013E633 + 0xE1D + 0x84));
        qcopy(v10, r16 + 0x10);
        fk = D_0015EE6C_x * 10.0f;
        s54 = fk;
        s58 = fk;
        func_L00_0025BBA0(v10, &s50, &s54, &s58);
        *(float *)data = func_001F9F90(s50) * s54;
        fk = func_001F9FA8(s50);
        *(int *)(data + 0x8) = 0;
        *(float *)(data + 0x4) = fk * s54;
        *(float *)(data + 0x8) = s58;
        *(short *)(data + 0x14) = func_001F9850(0xF);
        state = 2;
    }
    goto L_BA0;
L_A3:
    state = 3;
L_BA0:
    *(unsigned char *)(m + 0x20) = state;
L_BA8:
    *(unsigned char *)(m + 0xA4) = 0xFF;
    if (func_001F9938(data + 0x14) == 0) goto L_BEC;
    if (func_L10_002D9530(m, data, v0) == 3) {
        *(short *)(data + 0x14) = func_001F9850(0xF0);
        *(unsigned char *)(m + 0x20) = 1;
        goto L_F00;
    }
    goto L_BF0;
L_BEC:
    ;
L_BF0:
    if (*(float *)(m + 0x18) < 2.0f) *(unsigned char *)(m + 0x20) = 3;
    goto L_F00;

L_C14:
    func_L00_00251358(m, &i5c, &i60, &i64);
    rA = func_001F9850(0xF0);
    rB = func_001F9850(0xF0);
    x = rA - *(short *)(data + 0x14);
    func_L00_00251328(m, (x * 127) / rB, i60, i64);
    if (func_001F9938(data + 0x14) != 0) {
        *(unsigned char *)(m + 0x20) = 3;
        goto L_F00;
    }
    r16 = func_L00_0025B478(m, 0x830000, 0);
    if (r16 == 0) goto L_D6C;
    if (*(int *)(r16 + 0x20) == 0) goto L_D6C;
    if (*(short *)(*(char **)(r16 + 0x20) + 0xA6) == *(short *)(m + 0xA6)) goto L_D6C;
    state = 3;
    if (*(unsigned char *)(r16 + 0x28) == 0) {
        s68 = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(D_0013E633 + 0xE1D + 0x80),
                               *(float *)(m + 0x14) - *(float *)(D_0013E633 + 0xE1D + 0x84));
        qcopy(v10, r16 + 0x10);
        fk = D_0015EE6C_x * 10.0f;
        s6c = fk;
        s70 = fk;
        func_L00_0025BBA0(v10, &s68, &s6c, &s70);
        *(float *)data = func_001F9F90(s68) * s6c;
        fk = func_001F9FA8(s68);
        *(int *)(data + 0x8) = 0;
        *(float *)(data + 0x4) = fk * s6c;
        *(float *)(data + 0x8) = s70;
        *(short *)(data + 0x14) = func_001F9850(0xF);
        state = 2;
    }
L_D64:
    *(unsigned char *)(m + 0x20) = state;
L_D6C:
    *(unsigned char *)(m + 0xA4) = 0xFF;
    goto L_F00;

L_D74:
    func_L00_00251358(m, &i5c, &i60, &i64);
    func_L00_00251328(m, 0xFF, i60, i64);
    sb.owner = m;
    sb.x34 = 0x830000;
    sb.s38 = (unsigned char)state;
    sb.s39 = 1;
    sb.f3c = 1.0f;
    sb.i40 = 1;
    qcopy(sb.v, data);
    func_L00_001FF500(sb.v, sb.v, 1.0f);
    flag21 = 0;
    sb.v[2] = 1.0f;
    sb.v[3] = 5627.925f;
    sb.s3a = *(unsigned short *)(m + 0xA6);
    func_001F9BD8(pm10, pm10, data);
    fk = D_0015EE70 * 9.8f;
    *(float *)(data + 0x8) = *(float *)(data + 0x8) - fk;
    if (func_001F9938(data + 0x14) != 0 && func_L10_002D9530(m, data, v0) != 0) flag21 = 1;
    else if (*(float *)(m + 0x18) < 2.0f) flag21 = 1;
    if (flag21) *(unsigned char *)(m + 0x20) = 3;
    goto L_F00;

L_E78:
    state = func_L00_001F2BE8(1.5f, pm10, 0x10, m, 0);
    qcopy(v10, pm10);
    func_L00_0025BA50(m, v10, D_L10_00178400, state, 0, 0x810001, 2, 1, 1.0f, 1.0f, 1.0f);
    func_L00_00260108(m, pm10, 0, 0.5f, 13.0f);
L_EF0:
    func_0020D678(m);
    return;

L_F00:
    fk = *(float *)(m + 0x18);
    *(float *)(m + 0x18) = fk + *(float *)&D_L10_00161C6C;
    if (*(float *)(m + 0x10) < 1.0f) goto L_F8C;
    if (511.0f < *(float *)(m + 0x10)) goto L_F8C;
    if (*(float *)(m + 0x14) < 1.0f) goto L_F8C;
    if (511.0f < *(float *)(m + 0x14)) goto L_F8C;
    if (*(float *)(m + 0x18) < 1.0f) goto L_F8C;
    if (511.0f < *(float *)(m + 0x18)) goto L_F8C;
    return;
L_F8C:
    func_0020D678(m);
}
