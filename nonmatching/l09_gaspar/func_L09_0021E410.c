/* NON_MATCHING func_L09_0021E410 -- src/overlays/l09_gaspar/drawquad_0021E3E8.c
 * Best so far: SIZE ours 856 / retail 860, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   GS packet builder with a draw path (a4 == a5) and a strip-table path: 64-bit constants via sd, two lhu/sll tab
 *   Left: the register and schedule order of the table-path loads and call arguments (retail loads the four halfwo
 *   Unblock: a way to make the li of 6 come before the call's store in the draw path, and the argument order of th
 */
extern long func_001F4868(int);
extern void func_L02_00250C78(int, int, int, int, int, int);
extern void func_00234C98(int, long);
extern int *D_L09_00161240 MACRO_ADDR;
extern char D_L09_0016D380[];
extern char D_L09_00162040[];
extern char *D_L09_0015F520 MACRO_ADDR;
extern int D_0015EF74 MACRO_ADDR;

/* Builds the GS packet pair for a draw (a4 == a5) or the strip table path, into the GIF buffer. */
void func_L09_0021E410(int a4, int a5) {
    char *base;
    char *p16;
    char *p5;
    char *p6;
    char *q;
    int *p17;
    long r;
    int v5, v6, v7, v8;
    unsigned short *s4;
    unsigned short *s5;
    char *b2;
    char *b5, *b6, *b7, *b8;

    if (a4 == a5) {
        D_L09_00161240[0] = 0x10000002;
        D_L09_00161240[1] = 0;
        D_L09_00161240[2] = 0;
        D_L09_00161240[3] = 0x50000002;
        p17 = D_L09_00161240;
        q = (char *)p17 + 0x10;
        D_L09_00161240 = (int *)q;
        *(u64 *)((char *)p17 + 0x10) = (0x8000UL << 45) | 0x8001UL;
        *(u64 *)(q + 0x8) = 0x0EEEEEEEUL;
        r = func_001F4868(a5);
        *(u64 *)(q + 0x10) = r;
        *(u64 *)(q + 0x18) = 6;
        D_L09_00161240 = (int *)((char *)p17 + 0x30);
    } else {
        base = D_L09_0016D380;
        s4 = (unsigned short *)(base + a4 * 16);
        s5 = (unsigned short *)(base + a5 * 16);
        v5 = s4[4];
        v6 = s4[5];
        v7 = s5[4];
        v8 = s5[5];
        *(u64 *)D_L09_00162040 = (0x8000UL << 44) | 0x400UL;
        b2 = D_L09_0015F520;
        b7 = b2 + (v7 << 4);
        b8 = b2 + (v8 << 4);
        b6 = b2 + (v6 << 4);
        b5 = b2 + (v5 << 4);
        p16 = D_L09_00162040;
        *(u64 *)(p16 + 0x8) = 0;
        func_L02_00250C78((int)(p16 + 0x10), (int)b5, (int)b6, (int)b7, (int)b8, 0x1000);

        D_L09_00161240[0] = 0x10000006;
        D_L09_00161240[1] = 0;
        D_L09_00161240[2] = 0;
        D_L09_00161240[3] = 0x50000006;
        p6 = (char *)D_L09_00161240;
        p5 = p6 + 0x10;
        D_L09_00161240 = (int *)p5;
        *(u64 *)(p6 + 0x10) = (0xA000UL << 47) | 0x8001UL;
        *(u64 *)(p5 + 0x8) = 0x0EEEEEEEUL;
        *(u64 *)(p5 + 0x18) = 6;
        *(u64 *)(p5 + 0x10) = (long)(D_0015EF74 >> 8) | 0x18100000UL | (0xB000UL << 19);
        *(u64 *)(p5 + 0x58) = 0x53;
        *(u64 *)(p5 + 0x28) = 0x50;
        *(u64 *)(p5 + 0x38) = 0x51;
        *(u64 *)(p5 + 0x40) = (0x8000UL << 23) | 0x40UL;
        *(u64 *)(p5 + 0x20) = ((long)(D_0015EF74 >> 8) << 32) | (0x8000UL << 33);
        *(u64 *)(p5 + 0x48) = 0x52;
        *(u64 *)(p5 + 0x30) = 0;
        *(u64 *)(p5 + 0x50) = 0;
        D_L09_00161240 = (int *)(p6 + 0x70);
        *(int *)(p6 + 0x70) = 0x30000401;
        D_L09_00161240[1] = (int)D_L09_00162040;
        D_L09_00161240[2] = 0;
        D_L09_00161240[3] = 0x50000401;
        p17 = D_L09_00161240;
        D_L09_00161240 = (int *)((char *)p17 + 0x10);
        p17[4] = 0x10000002;
        D_L09_00161240[1] = 0;
        D_L09_00161240[2] = 0;
        D_L09_00161240[3] = 0x50000002;
        p17 = D_L09_00161240;
        D_L09_00161240 = (int *)((char *)p17 + 0x10);
        *(u64 *)((char *)p17 + 0x10) = (0x8000UL << 45) | 0x8001UL;
        *(u64 *)((char *)D_L09_00161240 + 0x8) = 0x3FUL;
        *(u64 *)((char *)D_L09_00161240 + 0x10) = 0;
        func_00234C98(7, (long)(D_0015EF74 >> 8) | 0x18100000UL | (0xB000UL << 19));
        D_0015EF74 += 0x4000;
    }
}
