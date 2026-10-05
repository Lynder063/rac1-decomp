/* NON_MATCHING func_L00_0028FCA0 -- src/overlays/shared/space_0028FB78.c
 * Best so far: BYTES 2/784 (99.7% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L00_0028FCA0 (EnterShipMode): clears the ship records (D_L00_0016C960/0017C440/0017C480), sets the ship g
 *   Best candidate p9.c: same size (784), BYTES 29/784, budget spent. Only temp-register choices differ: (1) const
 *   What got it this far: the hero record as D_0013E130_a with a fresh `char *gN = D_0013E130_a` per region (hi pa
 *   Round 2 (p09): best is p12.c, BYTES 27/784 (p9 plus `extern int func_L00_00222B80(int, int);` -- declaring tha
 *   Left: (1) the constant 6 for D_L00_0015F6A8 is in $a1 in ours, $a3 in retail, and retail schedules the li $a0,
 *   All three are allocator/scheduler ties with identical instruction shapes; needs a per-function scheduling diff
 *   q29/v01: ported Lombyte's FUN_L00_0028e9c8 (struct-global style, p14/p15): BYTES 2/784 at p15.c (best ever; wa
 */
typedef struct { char pad[0x20]; unsigned char st; char pad21[0x13]; unsigned short flags; char pad36[0x70]; short type; char pada8[0x58]; } O_28e9c8;
typedef struct { char pad[0x34]; unsigned short flags; } F_28e9c8;
typedef struct { F_28e9c8 *x0; int x4; int x8; char padc[0x14]; int x20; short x24; short x26; char pad28[4]; short x2c; } E_28e9c8;
typedef struct { char pad[0x58]; int x58; int x5c; } C_28e9c8;
extern E_28e9c8 D_0013E130_s __asm__("D_0013E130") NOT_SDA;
extern C_28e9c8 D_L00_0016C960_s __asm__("D_L00_0016C960");
extern int D_L00_0015F6BC_m __asm__("D_L00_0015F6BC") MACRO_ADDR;
extern char D_L00_0017C440[];
extern char D_L00_0017C480[];
extern struct { int x0, x4, x8; } D_L00_00173F00_s __asm__("D_L00_00173F00");
extern int D_L00_0016128C MACRO_ADDR;
extern int D_L00_0015F6A8 MACRO_ADDR;
extern float D_L00_0015F4FC MACRO_ADDR;
extern int D_L00_0015F500 MACRO_ADDR;
extern unsigned char D_001414F5[] NOT_SDA;
extern O_28e9c8 *D_L00_0016009C MACRO_ADDR;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern unsigned char D_0013D5CA[] NOT_SDA;
typedef struct { char pad[0x1C]; int x1c; char pad20[0x3A]; short x5a; } S_171b;
extern unsigned char D_0014171B[] NOT_SDA;
extern void func_001F99B0(void *, int, int);
extern void func_002348B8(void);
extern int func_L00_00222B80(int, int);
extern void func_L00_00233868(void);
extern int func_001F9850(int);
extern void func_L00_00245FE0(int, int);
extern void func_00205220(int);
extern void func_0022DD68(void);
extern void func_00122598(int);
extern void func_00216960(void);
// Puts the hero into ship mode: clears the ship records, flags the matching mobys and picks the ship's start sound and camera set. Adapted from Lombyte (MIT) for PAL: src/overlays/shared/gameplay_space_0028e8a0.c, FUN_L00_0028e9c8.
void func_L00_0028FCA0(int a) {
    O_28e9c8 *o;
    S_171b *z;
    int t, n, m, m2, u;
    D_0013E130_s.x24 = -1;
    D_L00_0015F6BC_m = 1;
    D_0013E130_s.x20 = a;
    D_0013E130_s.x8 = 0;
    func_001F99B0(&D_L00_0016C960_s, 0, 0x1C0);
    func_001F99B0(D_L00_0017C440, 0, 0x40);
    func_001F99B0(D_L00_0017C480, 0, 0x40);
    func_002348B8();
    u = D_L00_0016128C - 0x60000;
    D_L00_0016C960_s.x58 = D_L00_00173F00_s.x4 + u;
    D_L00_0016C960_s.x5c = D_L00_00173F00_s.x8 + u;
    D_L00_0015F4FC = 1.0f;
    D_L00_0015F6A8 = 6;
    D_L00_0016128C = u;
    D_L00_0015F500 = 0;
    func_L00_00222B80(100, 2);
    D_001414F5[0] = 1;
    func_L00_00233868();
    D_0013E130_s.x0->flags |= 1;
    for (o = D_L00_0016009C; o->st != 0xFF; o++) {
        if (!(o->st & 0x80) && (o->type == 0x4A || o->type == 0xCB)) o->flags |= 0x80;
    }
    if (a == 0) {
        n = D_0013E130_s.x26;
        m = n + 1;
        t = n + 6;
        if (D_0015EE84_m == 10 && n == 1 && D_0013D5CA[4] == 0) {
            m = 0;
            t = 11;
        } else if (D_0015EE84_m == 14 && D_0013E130_s.x26 == 2) {
            m = 8;
            t = 14;
        }
        func_L00_00245FE0(m, func_001F9850(6));
    } else {
        int k, r;
        n = D_0013E130_s.x26;
        k = D_0013E130_s.x2c;
        t = n + 3;
        if (k) t = n;
        m2 = n + 5;
        if (D_0015EE84_m == 10 && n == 1 && D_0013D5CA[4] == 0) {
            t = 10;
            if (k) t = 9;
            m2 = 4;
        } else if (D_0015EE84_m == 14 && D_0013E130_s.x26 == 2) {
            t = 13;
            if (D_0013E130_s.x2c) t = 12;
            m2 = 9;
        }
        r = 0;
        if (!D_0013E130_s.x2c) r = func_001F9850(6);
        func_L00_00245FE0(m2, r);
    }
    z = (S_171b *)(D_0014171B + 0x100B5);
    z->x1c = t + 40000;
    func_00205220(0);
    while (3 != z->x5a) {
        func_0022DD68();
        func_00122598(0);
    }
    func_00216960();
}
