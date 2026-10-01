/* NON_MATCHING func_L18_00214138 -- src/overlays/l18_veldin2/help_00214138.c
 * Best so far: SIZE ours 1076 / retail 1080, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Handled, stopped at budget (10 runs), best p7.c: SIZE 1076 vs 1080, everything matches structurally.
 *   Player-state updater: clears 16 bytes at D_0013F450+0x12E0, then per old state s sets flag bytes, may call fun
 *   Pointer trick that got the retail addiu/lui pattern: first part uses one `char *g`, each later block its own b
 *   Remaining diff: retail has `nop` in the delay slot of every no-arg call (func_L00_001F3958, func_L00_0020BFA8 
 */
extern char D_0013E633[];
extern short D_0015EE84;
extern void func_001F99D8(void *, int);
extern int func_L00_001F10E0(float, void *, int, void *);
extern int func_L00_001F3958();
extern float func_001F9B88(float);
extern void func_L00_0020BFA8();
extern void func_L18_002284E0(int, int);
extern void func_L00_00211908();

#define G g
#define QB(o) (*(unsigned char *)(q + (o)))
#define QW(o) (*(int *)(q + (o)))
#define QF(o) (*(float *)(q + (o)))
#define QH(o) (*(short *)(q + (o)))
#define HB(o) (*(unsigned char *)(h + (o)))
#define HW(o) (*(int *)(h + (o)))
#define HF(o) (*(float *)(h + (o)))
#define HH(o) (*(short *)(h + (o)))
#define RB(o) (*(unsigned char *)(r + (o)))
#define RW(o) (*(int *)(r + (o)))
#define RF(o) (*(float *)(r + (o)))
#define GB(o) (*(unsigned char *)(G + (o)))
#define GW(o) (*(int *)(G + (o)))
#define GF(o) (*(float *)(G + (o)))
#define GH(o) (*(short *)(G + (o)))

/* Per-frame handling of the player's pending gadget/action state: updates flags and requests a state change. */
void func_L18_00214138(void) {
    char *g = D_0013E633 + 0xE1D;
    char *h;
    int s;
    int c;
    float d;
    int t;
    c = GB(0x12ED);
    s = GH(0x12E0);
    func_001F99D8(G + 0x12E0, 0x10);
    GB(0x12ED) = c;
    GH(0x12E0) = -1;
    GB(0x20A9) = 0;
    GH(0x308) = 0;
    if (s == -1) return;
    if (s == 2) {
        if (GH(0x30C) == 0 || GF(0x2DC) < 0.3f) {
            GB(0x12E7) = 1;
            if (GB(0x20A4) == 0) {
                char *m = *(char **)(G + 0x10E0);
                if (m != 0 && *(short *)(m + 0xA6) == 0xAD) GH(0x308) = 1;
            }
        }
    }
    if (s == 0xE) {
        char *q = D_0013E633 + 0xE1D;
        QB(0x12E4) = 1;
        QF(0x22A4) = 0.2f;
        QF(0x2F0) = QF(0x2D8) + 0.2f;
    }
    if (s == 0) {
        char *q = D_0013E633 + 0xE1D;
        d = QF(0x2F0) - QF(0x2D8);
        QF(0x22A4) = d;
        if (d < 0.85f && 0.25f < d) QB(0x20A9) = 1;
        {
            char *q2 = D_0013E633 + 0xE1D;
            q2[0x12E4] = 1;
        }
    }
    if (s == 3) {
        char *q = D_0013E633 + 0xE1D;
        QB(0x12E6) = 1;
    }
    if (*(int *)&D_0015EE84 == 0xD) {
        char *q = D_0013E633 + 0xE1D;
        if (QW(0x2084) != 0x7B) {
            if (func_L00_001F10E0(QF(0x234) + 0.03f, q + 0xD0, 2, 0) != 0) {
                if (func_L00_001F3958() == 0xB) {
                    func_L18_002284E0(0x7B, 1);
                    return;
                }
            }
        }
    }
    if (s == 0xB) { char *q = D_0013E633 + 0xE1D; q[0x12EB] = 1; }
    if (s == 2) { char *q = D_0013E633 + 0xE1D; q[0x12E7] = 1; }
    if (s == 4) { char *q = D_0013E633 + 0xE1D; q[0x12E3] = 1; }
    if (s == 8) { char *q = D_0013E633 + 0xE1D; q[0x12EA] = 1; }
    if (s == 9) { char *q = D_0013E633 + 0xE1D; q[0x12EE] = 1; }
    if (s == 0xC) { char *q = D_0013E633 + 0xE1D; q[0x12EA] = 1; }
    {
        char *q = D_0013E633 + 0xE1D;
    if (QB(0x12E3) != 0 && QW(0x300) != 0) {
        t = QW(0x208C);
        if (t != 0x10 && t != 0x14 && t != 7) {
            func_L18_002284E0(0x31, 1);
            return;
        }
    }
    }
    h = D_0013E633 + 0xE1D;
    if (HB(0x12E6) != 0 && HW(0x2084) != 0x68 && HW(0x2084) != 0x7B) {
        if (func_001F9B88(HF(0x2F4) - (HF(0x88) + 0.25f)) < 1.0f) {
            if (HF(0x2F4) - HF(0x88) > 0.0f) {
                if (HW(0x2084) != 0x69 || HH(0x41E) != 0) {
                    if (HF(0x108) < 0.0f) {
                        func_L00_0020BFA8();
                        if (HW(0x22A8) != 0) func_L18_002284E0(0x68, 1);
                        else func_L18_002284E0(0x7B, 1);
                        return;
                    }
                }
            }
        }
    }
    {
        char *r = D_0013E633 + 0xE1D;
    if (RB(0x12EB) != 0 && RW(0x2084) != 0x7B) {
        if (func_001F9B88(RF(0x2F4) - (RF(0x88) + 0.25f)) < 1.0f) {
            if (RF(0x2F4) - RF(0x88) > 0.0f) {
                if (RF(0x108) < 0.0f) {
                    if ((unsigned)(RB(0x20A4) - 1) < 2) {
                        func_L00_00211908();
                    } else {
                        func_L00_0020BFA8();
                        func_L18_002284E0(0x7B, 1);
                    }
                }
            }
        }
    }
    }
}
