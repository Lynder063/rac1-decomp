/* NON_MATCHING func_L16_002E8EA8 -- src/overlays/l16_kalebo3/vendor_002E7C70.c
 * Best so far: BYTES 10/368 (97.3% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Emits a particle near an active moby when the target is close.
 *   Best p4.c is 19/368 bytes off: the global parity load and moby address shift use different registers/order, an
 *   Equivalent C forms kept those ties; needs compiler scheduling/allocator insight.
 */
extern int D_L16_0015F6B0 MACRO_ADDR;
typedef int u128 __attribute__((mode(TI)));
extern char D_L16_00167240[];
extern short D_L16_00161F58;
extern short D_L16_00161F5C;
extern short D_L16_00161F60;
extern short D_L16_00161F64;
extern short D_L16_00161F68;
extern float D_0015EE6C MACRO_ADDR;
extern float func_001F9D10(void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_00214158(void);
extern void func_00215C00(void *, float, float, float);
extern int func_001F9850(int);
extern void func_L00_0026DD70(void *, void *, int, int, int, float);

/* Emits a particle near an active moby when the target is close. */
void func_L16_002E8EA8(unsigned char *m, void *v) {
    float input[4];
    float offset[4];
    float out[4];
    float velocity[4];
    float a, b, size, r, final_size;
    *(u128 *)input = *(u128 *)v;
    if ((unsigned char)m[0x31] == 0) return;
    if ((((int)m >> 8) & 1) != (*(char *)&D_L16_0015F6B0 & 1)) return;
    if (!(func_001F9D10(m + 0x10, D_L16_00167240) < 75.0f)) return;
    r = func_001F9D10(m + 0x10, input);
    func_001F9C30(out, m + 0xC0, *(float *)&D_L16_00161F60 * r);
    size = *(float *)&D_L16_00161F64;
    size *= D_0015EE6C;
    func_L00_001FF4B0(offset, m + 0xC0, -0.5f);
    func_001F9BD8(offset, offset, m + 0x10);
    a = func_00214158();
    b = func_00214158();
    func_00215C00(velocity, size, a, b);
    func_001F9BD8(velocity, velocity, out);
    final_size = *(float *)&D_L16_00161F68;
    final_size *= 210000.0f;
    func_L00_0026DD70(offset, velocity, *(int *)&D_L16_00161F58,
                        *(int *)&D_L16_00161F5C, func_001F9850(0x23), final_size);
}
