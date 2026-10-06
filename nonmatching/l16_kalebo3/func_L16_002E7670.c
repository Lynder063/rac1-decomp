/* NON_MATCHING func_L16_002E7670 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: BYTES 23/544 (95.8% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   13. BYTES35 identical: early helper pointer aliases fold completely. Try effect kind initialization before the
 *   14. COMPILE failed: statement before local declaration is not accepted by this compiler. Move kind into an ini
 *   15. BYTES28: early kind initialization fixes coefficient F4/F3 and several stores. Move scale outside hit bran
 *   16. BYTES97: pre-test scale corrects scale/base registers but worsens product/store lifetimes. Restore p14 and
 *   17. BYTES23: reversed product birth gives descending FP registers but loads opposite coefficients. Try direct 
 *   18. BYTES90: direct products serialize the stores and increase differences. Restore typed cached-products p14 
 *   19. SIZE540: reversed multiplier operands move absolute dt macro into branch slot, losing one word. Last trial
 *   20. BYTES28: separated raw coefficient loads compile identically to p14. Budget exhausted; best p16 BYTES23, p
 */
#include "common.h"
extern char *D_L16_001B0C30[];
extern char D_0013E633[];
extern float D_0015EE6C;
extern char D_L16_0015EE70 MACRO_ADDR;
extern char D_L16_00161F14 MACRO_ADDR;
extern char D_L16_00161F18 MACRO_ADDR;
extern char D_L16_00161F1C MACRO_ADDR;
extern char D_L16_00161F20 MACRO_ADDR;
extern char *func_L00_0025B478(void *, int, int);
extern void func_L00_0025BBA0(void *, void *, void *, void *);
extern void func_L00_0025D5B0_patrol(void*,void*,float,int,int,int) __asm__("func_L00_0025D5B0");
extern void func_L00_0025E4B0(void *, void *);
extern void func_L00_0025E590(void *, void *);
extern int func_L00_00260FB0_patrol(void*,void*,float,int,int,void*,int) __asm__("func_L00_00260FB0");
extern float func_001F9D48(void *, void *);
extern float func_001F9B88(float);
extern void func_L16_002E5D68(void *);

typedef struct {
    unsigned char prefix[0x130];
    float speed, acceleration, jumpSpeed, turnSpeed;
    int flags, effectType;
    float strength;
    unsigned char gap[0x11];
    unsigned char pending;
    unsigned char gap2[0xE];
    float timer;
} L16PursuitPhysics;
typedef int L16PursuitQuad __attribute__((mode(TI)));
/* Resolve damage and initialize movement while following the selected pursuit path. */
void func_L16_002E7670(void *m_v) {
    unsigned char *m = m_v;
    char *d = *(char **)(m + 0x78);
    char *hit;
    char *path;
    float v[8];
    if (m[0x20] == 0) return;
    hit = func_L00_0025B478(m, 0x330000, 0);
    if (hit) {
        L16PursuitPhysics *physics = (L16PursuitPhysics *)d;
        int kind = 0x29;
        float scale = *(float *)&D_L16_0015EE70;
        float base = D_0015EE6C;
        float f1 = *(float *)&D_L16_00161F1C * base;
        float f2 = *(float *)&D_L16_00161F20 * base;
        float f3 = *(float *)&D_L16_00161F18 * scale;
        float f4 = *(float *)&D_L16_00161F14 * scale;
        physics->effectType = kind;
        physics->pending = 0;
        physics->timer = D_0015EE6C + D_0015EE6C;
        physics->speed = f4;
        physics->acceleration = f3;
        physics->jumpSpeed = f2;
        physics->turnSpeed = f1;
        physics->flags = 0x200;

        physics->strength = 0.5f;
        *(unsigned short *)(m + 0x34) &= ~0x1000;
        *(L16PursuitQuad*)v = *(L16PursuitQuad*)(hit+0x10);
        func_L00_0025BBA0(v, v + 4, d + 0x138, d + 0x13C);
        func_L00_0025D5B0_patrol(m, d + 0x120, v[4], 5, 1, 0);
        *(float *)(d + 0x170) = 8.0f;
        *(float *)(d + 0x174) = 16.0f;
        m[0x20] = 8;
        *(int *)(m + 0x94) = 0;
        *(unsigned char *)(d + 0x117) = 0x78;
        func_L00_0025E4B0(m, d + 0x110);
    }
    m[0xA4] = 0xFF;
    func_L00_0025E590(m, d + 0x110);
    path = D_L16_001B0C30[*(int *)(d + 0x1F0)];
    if (func_L00_00260FB0_patrol(m, d + 0x180,16.0f, 0, 0, (void *)(path + 0x10), *(int *)path) != 2) {
        if (func_001F9D48(d + 0x1D0, d + 0x180) > 16.0f ||
            func_001F9B88(*(float *)(m + 0x18) - *(float *)(d + 0x188)) > 3.0f) {
            *(int *)(d + 0x1C4) = 2;
        }
    }
    if (*(int *)(d + 0x1C0) == 0) {
        char *base = D_0013E633 + 0xE1D;
        *(int *)(d + 0x1C0) = *(int *)(base + 0x2080);
        qcopy(d + 0x180, base + 0x80);
    }
}
