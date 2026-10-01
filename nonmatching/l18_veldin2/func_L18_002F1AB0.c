/* NON_MATCHING func_L18_002F1AB0 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: SIZE ours 384 / retail 388, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   ## Round 1
 *   Level-18 effect updater: if flag D_L18_001622C8 is zero, walks the short list D_L18_001AC540[moby->0x21] (to a
 *   - The earlier `extern void func_L18_002F1AB0(void);` further down the file conflicts with a real prototype; I 
 *   - Mattered: compute the list pointer (lbu 0x21) before the float rates; `switch (st) { case 2: case 3: ...; ca
 *   - Remaining diff (p4/p5): retail has `lui a0,%hi(D_L18_00160058)` inside the loop (lui-based address), ours us
 */
extern int *D_L18_001AC540[];
extern short D_L18_00160058;
extern char *D_L18_00160058_m __asm__("D_L18_00160058") MACRO_ADDR;
extern float func_001F9FA8(float);
extern int func_001FA8A8(int, int, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_00264690(void *, int, float, float);
extern float func_001FA748(float, float);
extern float D_0015EE6C MACRO_ADDR;
extern short D_L18_001622C8;
extern short D_L18_001622E8;
extern short D_L18_001622EC;
extern short D_L18_001622F0;
extern short D_L18_001622F4;
extern short D_L18_001622F8;
extern short D_L18_001622FC;

void impl_2F1AB0(char *moby) __asm__("func_L18_002F1AB0");
void impl_2F1AB0(char *moby) {
    short *p;
    float a, b;
    if (*(int *)&D_L18_001622C8 != 0) {
        return;
    }
    p = (short *)D_L18_001AC540[((unsigned char *)moby)[0x21]];
    a = *(float *)&D_L18_001622E8 * 0.017453292f * D_0015EE6C;
    b = *(float *)&D_L18_001622EC * 0.017453292f * D_0015EE6C;
    do {
        char *o = D_L18_00160058_m + (*(unsigned short *)p & 0x7FFF) * 256;
        if (*(short *)(o + 0xA6) == 0x54B) {
            char *data = *(char **)(o + 0x78);
            int t = func_001FA8A8(*(int *)&D_L18_001622F0, *(int *)&D_L18_001622F4,
                                  func_001F9FA8(*(float *)(data + 0x168)) * 0.5f + 0.5f);
            float v[4];
            int st;
            func_L00_001FF4B0(v, o + 0xC0, *(float *)&D_L18_001622FC);
            func_001F9BD8(v, v, o + 0x10);
            st = ((unsigned char *)o)[0x20];
            switch (st) {
            case 2:
            case 3:
                func_L00_00264690(v, t, *(float *)&D_L18_001622F8, 0.0f);
                *(float *)(data + 0x168) = func_001FA748(*(float *)(data + 0x168), a);
                break;
            case 4:
                func_L00_00264690(v, t, *(float *)&D_L18_001622F8, 0.0f);
                *(float *)(data + 0x168) = func_001FA748(*(float *)(data + 0x168), b);
                break;
            }
        }
    } while (*(p++) >= 0);
}
