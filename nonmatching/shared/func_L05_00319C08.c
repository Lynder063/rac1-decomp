/* NON_MATCHING func_L05_00319C08 -- src/overlays/shared/vendor_002CF2C0.c
 * Best so far: SIZE ours 884 / retail 880, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Homing update on moby class 344/547/548 (shared): state 0 sets state 2, state 1 steers with F748/FA218/FA480/F
 *   Left: the state-0 block layout (gcc keeps it inline in every form tried) and three pointer registers; no wall 
 *   hq13 n05 (8 runs, p4-p11, budget spent, none EXACT). Findings that moved it from 872 to the right SIZE (880): 
 *   Left: allocation order/numbering of the saved registers; also in the hs block retail recomputes data+0x30 into
 */
extern void func_L00_00250800(void *, int, void *);
extern float func_001FA748(float, float);
extern void func_001FA218(void *, void *);
extern void func_001FA480(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001FA888(int);
extern int func_L00_001F10E0(float, void *, int, void *);
extern float func_001F9C78(void *, void *);
extern void func_L00_001FF610(void *, void *, void *);
extern int func_001F9908(int *);
extern int func_001F9850(int);
extern void func_0020D678(void *);
extern char D_L05_00174340[];
extern float D_0015EE70 MACRO_ADDR;

// Update for the blarg_gun class family: homes the moby toward its target and deletes it when its timer runs out.
void func_L05_00319C08(char *moby)
{
    char *data = *(char **)(moby + 0x78);
    char buf[0x70];
    char *hs;
    char *pos;
    char *e;
    char *w;
    char *g;
    int n;
    float t;

    switch ((unsigned char)moby[0x20]) {
    case 0:
        if (*(unsigned short *)(moby + 0x32) & 1)
            *(unsigned short *)(moby + 0x34) |= 0x8000;
        moby[0x20] = 2;
        break;
    case 1:
        n = *(int *)(data + 4);
        if (n > 0) {
            pos = moby + 0x10;
            func_L00_00250800(moby, n, buf + 0x40);
            *(float *)(moby + 0x40) = func_001FA748(*(float *)(moby + 0x40), *(float *)(data + 0x20));
            *(float *)(moby + 0x44) = func_001FA748(*(float *)(moby + 0x44), *(float *)(data + 0x24));
            *(float *)(moby + 0x48) = func_001FA748(*(float *)(moby + 0x48), *(float *)(data + 0x28));
            func_001FA218(buf, moby + 0x40);
            func_001FA480(moby + 0xC0, buf);
            func_L00_00250800(moby, *(int *)(data + 4), buf + 0x50);
            e = buf + 0x50;
            w = buf + 0x60;
            func_001F9BF0(w, buf + 0x40, buf + 0x50);
        } else {
            func_001F9EC0(buf + 0x40, data + 0x10, moby + 0xC0);
            *(float *)(moby + 0x40) = func_001FA748(*(float *)(moby + 0x40), *(float *)(data + 0x20));
            *(float *)(moby + 0x44) = func_001FA748(*(float *)(moby + 0x44), *(float *)(data + 0x24));
            *(float *)(moby + 0x48) = func_001FA748(*(float *)(moby + 0x48), *(float *)(data + 0x28));
            func_001FA218(buf, moby + 0x40);
            if (*(unsigned short *)(moby + 0x34) & 0x8000)
                func_001F9C30(buf + 0x10, buf + 0x10, -1.0f);
            func_001FA480(moby + 0xC0, buf);
            func_001F9EC0(buf + 0x50, data + 0x10, moby + 0xC0);
            w = buf + 0x60;
            func_001F9BF0(w, buf + 0x40, buf + 0x50);
            func_001F9BD8(buf + 0x50, buf + 0x50, moby + 0x10);
            e = buf + 0x50;
            pos = moby + 0x10;
        }

        g = data + 0x30;
        if (func_L00_001F10E0(func_001FA888(*(int *)(data + 0xC)) * 0.0009765625f, e, 0, moby)) {
            hs = D_L05_00174340;
            if (*(int *)(hs + 0x18) == 0 || *(int *)(hs + 0x18) != *(int *)(data + 8)) {
                *(int *)data = 0;
                if (func_001F9C78(g, hs + 0x40) < 0.0f) {
                    func_L00_001FF610(g, g, hs + 0x40);
                    func_001F9C30(g, g, 0.5f);
                }
            }
            if (func_001F9908((int *)data)) {
                t = 128.0f / (float)func_001F9850(20);
                *(int *)data = 0;
                if (t <= (float)((unsigned char *)moby)[0x23]) {
                    ((unsigned char *)moby)[0x23] = ((unsigned char *)moby)[0x23] - (int)t;
                } else {
                    func_0020D678(moby);
                }
            }
            *(float *)(data + 0x38) = *(float *)(data + 0x38) - D_0015EE70 * 10.8f;
            func_001F9BD8(pos, pos, g);
            func_001F9BD8(pos, pos, w);
        }
        if (*(float *)(moby + 0x18) < 5.0f)
            func_0020D678(moby);
        break;
    }
}
