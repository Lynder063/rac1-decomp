/* NON_MATCHING func_L01_002BA898 -- src/overlays/l01_novalis/vendor_002BA898.c
 * Best so far: BYTES 108/836 (87.1% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Scrolls each static strip's two UV pairs (0x40/0x44 and 0x48/0x4C, wrapped to +/-1) and writes its GS packets 
 *   Left: the float register chain (retail loads 0x10 into $f4, 0x20/0x24 into $f1/$f2 and keeps 0x40 in $f3, 0x44
 */
extern char *D_L01_00161240 MACRO_ADDR;
extern char D_L01_001CAF00[];
extern int func_L00_00200290(void *, f32);
extern int func_001F4868(int);
extern void func_L01_002635C8(void *);
extern void func_L01_0021F9C8(int, int, int, int, int, int);

/* Scrolls each static strip's two UV pairs and writes its GS packets into the display buffer, skipping entries the check returns -1 for. */
void func_L01_002BA898(int count, void *p) {
    char *s;
    char *q;
    int n, a, r;
    float x, y, x2, y2, vx, vy, v10;

    if (count <= 0) {
        return;
    }
    s = (char *)p;
    n = count;
    do {
        v10 = *(float *)(s + 0x10);
        vx = *(float *)(s + 0x20) * v10;
        vy = *(float *)(s + 0x24) * v10;
        x = *(float *)(s + 0x40) + vx;
        y = *(float *)(s + 0x44) + vy;
        *(float *)(s + 0x40) = x;
        *(float *)(s + 0x44) = y;
        if (1.0f < x) {
            *(float *)(s + 0x40) = x - 1.0f;
        } else if (x < -1.0f) {
            *(float *)(s + 0x40) = x + 1.0f;
        }
        y = *(float *)(s + 0x44);
        if (1.0f < y) {
            *(float *)(s + 0x44) = y - 1.0f;
        } else if (y < -1.0f) {
            *(float *)(s + 0x44) = y + 1.0f;
        }
        x2 = *(float *)(s + 0x48) + *(float *)(s + 0x28) * *(float *)(s + 0x14);
        y2 = *(float *)(s + 0x4C) + *(float *)(s + 0x2C) * *(float *)(s + 0x14);
        *(float *)(s + 0x48) = x2;
        *(float *)(s + 0x4C) = y2;
        if (1.0f < x2) {
            *(float *)(s + 0x48) = x2 - 1.0f;
        } else if (x2 < -1.0f) {
            *(float *)(s + 0x48) = x2 + 1.0f;
        }
        y2 = *(float *)(s + 0x4C);
        if (1.0f < y2) {
            *(float *)(s + 0x4C) = y2 - 1.0f;
        } else if (y2 < -1.0f) {
            *(float *)(s + 0x4C) = y2 + 1.0f;
        }
        a = (*(int *)(s + 0x50) + *(int *)(s + 0x1C)) & 0xFFFFFF;
        *(int *)(s + 0x50) = a;
        r = func_L00_00200290(*(void **)(s + 0x8), 400.0f);
        if (r != -1) {
            *(int *)D_L01_00161240 = 0x30000007;
            *(char **)(D_L01_00161240 + 4) = D_L01_001CAF00;
            *(int *)(D_L01_00161240 + 8) = 0;
            *(int *)(D_L01_00161240 + 0xC) = 0x50000007;
            D_L01_00161240 += 0x10;
            *(int *)D_L01_00161240 = 0x10000005;
            *(int *)(D_L01_00161240 + 4) = 0;
            *(int *)(D_L01_00161240 + 8) = 0;
            *(int *)(D_L01_00161240 + 0xC) = 0x50000005;
            q = D_L01_00161240 + 0x10;
            D_L01_00161240 = q;
            *(long *)q = (1L << 62) | 0x8001;
            *(long *)(q + 8) = 0xEEEE;
            *(long *)(q + 0x10) = ((long)*(unsigned char *)(s + 0x3C) << 32) | 0x64;
            *(long *)(q + 0x18) = 0x42;
            *(long *)(q + 0x20) = ((long)*(unsigned char *)(s + 0x3D) << 32) | 0x64;
            *(long *)(q + 0x28) = 0x43;
            *(long *)(q + 0x30) = func_001F4868(*(int *)(s + 0x34));
            *(long *)(q + 0x38) = 6;
            *(long *)(q + 0x40) = func_001F4868(*(int *)(s + 0x38));
            *(long *)(q + 0x48) = 7;
            D_L01_00161240 = q + 0x50;
            func_L01_002635C8(s);
            func_L01_0021F9C8(*(int *)(s + 0xC), 0x70000000, 0x70003000, 0x70001000, 0x70002000, 1 - r);
        }
        s += 0x60;
    } while (--n != 0);
}
