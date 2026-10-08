/* NON_MATCHING func_L10_002CAD18 -- src/overlays/l10_orxon/vendor_00296BD8.c
 * Best so far: SIZE ours 796 / retail 788, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Segment chain update in the Orxon file: clamps a copied point against the moby's extent, walks the nearby-obje
 *   Differences left: (1) the first 9EC0 call region: retail sets a2=t, stores f20 at B+8, then computes pos in th
 *   Would unblock: a way to get pos computed in the 9EC0 delay slot (the scheduler hoists it), and the loop guard 
 */
typedef int Q_2cad18 __attribute__((mode(TI)));
extern char D_L10_00178400[];
extern void func_001FA1F8(void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_001F2BE8(float, void *, int, void *, void *);
extern void *func_00115248(void *, const void *, u32);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001FA4A0(void *, void *);
extern void func_001F9EE8(void *, void *, void *);
extern void func_L00_0025AD38(unsigned char *m, int x, int y, void *p, float f);

/* Draws the moby's shape as a row of segments along its path: each frame it gathers the nearby
 * objects it can reach and steps a fixed-length chain of points through them. */
void func_L10_002CAD18(char *moby, char *ctl) {
    char t[0xB0];
    int *ids;
    char *pa;
    char *pb;
    char *pc;
    char *pd;
    char *pos;
    char *m2;
    float f20;
    int count;
    int i;
    int k;
    int count2;
    int *e;

    if (*(int *)(ctl + 8) & 0x100) {
        return;
    }
    func_001FA1F8(t, moby + 0x40);
    if (*(float *)ctl > *(float *)(ctl + 4)) {
        f20 = *(float *)ctl * 0.5f;
    } else {
        f20 = *(float *)(ctl + 4) * 0.5f;
    }
    qzero(t + 0x30);
    *(float *)(t + 0x38) = f20;
    func_001F9EC0(t + 0x30, t + 0x30, t);
    pos = moby + 0x10;
    func_001F9BD8(t + 0x30, t + 0x30, pos);
    count = func_L00_001F2BE8(f20, t + 0x30, 0x10, moby, 0);
    if (count == 0) {
        return;
    }
    i = 0;
    {
        int vla[count];
        func_00115248(vla, D_L10_00178400, count * 4);
        ids = vla;
        if (count > 0) {
        pa = t + 0x40;
        pb = t + 0x60;
        pc = t + 0x50;
        pd = t + 0xA0;
        for (; i < count; i++) {
            m2 = (char *)ids[i];
            if (m2 == 0) {
                continue;
            }
            if (((unsigned char *)m2)[0x20] == 0xFE) {
                continue;
            }
            if (((unsigned char *)m2)[0x20] == 0xFD) {
                continue;
            }
            func_001F9BF0(pa, m2 + 0x10, pos);
            func_001FA4A0(pb, t);
            func_001F9EE8(pc, pa, pb);
            *(Q_2cad18 *)pd = *(Q_2cad18 *)pc;
            {
                float hx = *(float *)ctl * 0.5f;
                float lim = hx + *(float *)(ctl + 0x48);
                if (*(float *)(t + 0xA0) < -lim) {
                    *(float *)(t + 0xA0) = -*(float *)ctl * 0.5f;
                } else if (lim < *(float *)(t + 0xA0)) {
                    *(float *)(t + 0xA0) = hx;
                }
            }
            {
                float hy = *(float *)(ctl + 4) * 0.5f;
                float lim = hy + *(float *)(ctl + 0x4C);
                if (*(float *)(t + 0xA8) < -lim) {
                    *(float *)(t + 0xA8) = -*(float *)(ctl + 4) * 0.5f;
                } else if (lim < *(float *)(t + 0xA8)) {
                    *(float *)(t + 0xA8) = hy;
                }
            }
            *(int *)(t + 0xA4) = 0;
            func_001F9EC0(t + 0xA0, t + 0xA0, t);
            func_001F9BD8(t + 0xA0, t + 0xA0, pos);
            count2 = func_L00_001F2BE8(*(float *)(ctl + 0x48), t + 0xA0, 0x10, moby, 0);
            e = (int *)D_L10_00178400;
            if (count2 > 0) {
                for (k = count2; k != 0; k--) {
                    if (*e == (int)m2) {
                        func_L00_0025AD38(m2, (int)moby, 0x10001, t + 0xA0, *(float *)(ctl + 0x50));
                    }
                    e++;
                }
            }
        }
        }
    }
}
