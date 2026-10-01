/* NON_MATCHING func_L18_002F39F8 -- src/overlays/l18_veldin2/vendor_002F2AE0.c
 * Best so far: SIZE ours 124 / retail 132, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   ## Round 1 (12-run budget, 11 used)
 *   Walks a 0x8000-masked short list (D_L18_001AC540[a->idx]); for each entry m (D_L18_00160058 + idx<<8) stores a
 *   Instruction set matches; remaining difference is register allocation: retail copies the param to $a1 and keeps
 *   Struct E with float at +8 stops the +8 fold into the %lo (-0x4840 as retail). Hoisting D_L18_00160058 into a l
 */
extern short *D_L18_001AC540[];
typedef struct { int pad[7]; int idx; } Lx;
typedef struct { char pad[0x18]; float f; char pad1[0x78 - 0x1C]; Lx *l; char pad2[0xA6 - 0x7C]; short kind; char pad3[0x100 - 0xA8]; } Mx;
extern unsigned char *D_L18_00160058 MACRO_ADDR;
typedef struct { int pad[2]; float f; char pad2[0x1190 - 12]; } E;
extern E D_L18_001DB7C0[] MACRO_ADDR;
typedef struct { char pad[0x18]; float f; char pad2[0x5]; unsigned char idx; } S;

void func_L18_002F39F8(void *a)
{
    unsigned char *s = a;
    short *p = D_L18_001AC540[s[0x21]];
    E *e = D_L18_001DB7C0;
    do {
        Mx *m = (Mx *)D_L18_00160058 + (*(unsigned short *)p & 0x7FFF);
        m->f = *(float *)(s + 0x18);
        if (m->kind == 0x57A) {
            e[m->l->idx].f = *(float *)(s + 0x18);
        }
    } while (*p++ >= 0);
}
