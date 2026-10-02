/* NON_MATCHING func_L18_002D7310 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: SIZE ours 488 / retail 484, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   ## Round 1 (worker, 10 runs of 14)
 *   Function: if moby state (u8 @0x20) not in {0,4,5}: if global 0x2084 == 0x72 -> state=5; else claim slot via fu
 *   Arg mapping (18-arg prototype from l04 sibling): call1 = (moby,D_L18_0015F660,0,1.5,1.0,0x14,6,0x20,3.0,1.5,9.
 *   Remaining difference: retail has ONE shared jal (gcc crossjump of the two calls, delay slot nop, then lhu/li/s
 *   Best: p8 BYTES 299/484 (size-equal but wrong guard tree); the structurally closest is p2 (correct guard/layout
 */
extern char *func_L00_0025B478(void *, int, int);
extern int func_001F9908(int *);
extern float func_001F9D48(void *, void *);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, int, float, float, int, int, int, int);
extern char D_0013E633[];
extern char D_L18_0015F660[];

void impl_2D7310(char *moby) __asm__("func_L18_002D7310");
void impl_2D7310(char *moby) {
    char *data = *(char **)(moby + 0x78);
    unsigned short fl;
    char *g;
    char *r;
    unsigned char st;
    if (((unsigned char *)moby)[0x20] == 5 || ((unsigned char *)moby)[0x20] == 0 || ((unsigned char *)moby)[0x20] == 4) {
        return;
    }
    g = D_0013E633 + 0xE1D;
    if (*(int *)(g + 0x2084) == 0x72) {
        fl = *(unsigned short *)(moby + 0x34);
        ((unsigned char *)moby)[0x20] = 5;
    } else {
        r = func_L00_0025B478(moby, 0x330000, 0);
        moby[0xA4] = 0xFF;
        if (*(char **)(g + 0x23C) == moby || *(char **)(g + 0x240) == moby || *(int *)(data + 0x19C) != 0) {
            func_L00_0025F4A8(moby, D_L18_0015F660, 0, 1.5f, 1.0f, 0x14, 6, 0x20, 3.0f, 1.5f, 9.0f, 1, 1.5f, 0.0f, 1, 0, -1, 0);
        } else {
            if (func_001F9908((int *)(data + 0x194)) == 0 && r == 0) {
                if (((unsigned char *)moby)[0x20] != 1) return;
                if (!(func_001F9D48(moby + 0x10, g + 0x80) < 2.0f)) return;
            }
            func_L00_0025F4A8(moby, D_L18_0015F660, 0, 0.0f, 0.0f, 5, 2, 8, 1.0f, 0.5f, 9.0f, 1, 0.5f, 0.0f, 0, 0, -1, 0);
        }
        fl = *(unsigned short *)(moby + 0x34);
        st = 5;
        ((unsigned char *)moby)[0x20] = st;
    }
    *(int *)(moby + 0x94) = 0;
    *(unsigned short *)(moby + 0x34) = (fl | 0x41) & 0xEFFF;
}
