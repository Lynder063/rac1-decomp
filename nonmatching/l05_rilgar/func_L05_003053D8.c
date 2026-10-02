/* NON_MATCHING func_L05_003053D8 -- src/overlays/l05_rilgar/vendor_002D28D0.c
 * Best so far: SIZE ours 220 / retail 216, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Finds the nearest entry (flag 0x1000 set, state < 0x7F, within 120.0) of a per-index table of 15-bit ids into 
 *   Structure matches (p1: 220 vs 216 bytes); the one difference is the second read of D_L05_00160098, which retai
 *   Both views of the symbol (Ent* MACRO_ADDR and a short alias) end up as lui/lw because the assembler takes the 
 */
typedef struct { char p0[0x10]; char pos[0x10]; unsigned char state; char p1[0x13]; unsigned short flags; char p2[0xCA]; } Ent;
extern short *D_L05_001AC040[];
extern short D_L05_00160098;
extern Ent *D_L05_00160098_m __asm__("D_L05_00160098") MACRO_ADDR;
extern float func_001F9D10(void *, void *);

/* Finds the nearest flagged entry of a table, within 120 units of the moby. */
char *func_L05_003053D8(char *self, int idx) {
    short *list = D_L05_001AC040[idx];
    float best = 120.0f;
    char *res = 0;
    if (list == 0) {
        return 0;
    }
    {
        do {
            int i = *(unsigned short *)list & 0x7FFF;
            if (D_L05_00160098_m[i].flags & 0x1000) {
                if (D_L05_00160098_m[i].state < 0x7F) {
                    float d = func_001F9D10(D_L05_00160098_m[i].pos, self + 0x10);
                    if (d < best) {
                        best = d;
                        res = *(char **)&D_L05_00160098 + (i << 8);
                    }
                }
            }
        } while (*list++ >= 0);
    }
    return res;
}
