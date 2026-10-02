/* NON_MATCHING func_L18_002F8F38 -- src/overlays/l18_veldin2/vendor_002F2AE0.c
 * Best so far: SIZE ours 352 / retail 356, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L18_002F8F38: update for a moby (state 0/1 wait for A==2&&E==3 or B<5&&G!=0&&moby[0x40]==0, then state 2;
 *   Control flow and stores are right in p1.c (only size 360 vs 356). Wall: retail reads D_L18_0015F6A8 and D_L18_
 *   A __asm__ short alias of the same name gives conflicting `.extern sym,2` / `.extern sym,4`, and the assembler 
 *   Would need a way to name a second small symbol at those addresses (or a lead-side fix in how level symbols are
 */
extern int D_L18_0015F6A8 MACRO_ADDR;
extern short D_L18_0015F6A8_s __asm__("D_L18_0015F6A8");
extern int D_L18_0016D310;
extern int D_L18_00162430;
extern short D_L18_0015F6B0_s __asm__("D_L18_0015F6B0");
extern short D_L18_00162430_s __asm__("D_L18_00162430");
extern float func_001FA748(float, float);

// update: waits for the trigger condition, then runs until the condition clears
void func_L18_002F8F38(unsigned char *moby) {
    switch (moby[0x20]) {
    case 0:
        moby[0x20] = 1;
    case 1:
        if (!(D_L18_0015F6A8 == 2 && D_L18_0016D310 == 3)) {
            if (*(int *)&D_L18_0015F6B0_s >= 5) return;
            if (*(int *)&D_L18_00162430_s == 0) return;
            if (*(float *)(moby + 0x40) != 0.0f) return;
        }
        *(unsigned short *)(moby + 0x34) |= 1;
        moby[0x20] = 2;
        moby[0x31] = 0;
        break;
    case 2: {
        int a = *(int *)&D_L18_0015F6A8_s;
        if (D_L18_00162430 != 0 && *(float *)(moby + 0x40) == 0.0f) {
            float d = 101.6f - *(float *)(moby + 0x18);
            *(float *)(moby + 0x40) = func_001FA748(*(float *)(moby + 0x40), 3.1415927f);
            *(float *)(moby + 0x18) += d + d;
            a = D_L18_0015F6A8;
        }
        if (a != 2) {
            moby[0x31] = 1;
            *(unsigned short *)(moby + 0x34) &= 0xFFFE;
            moby[0x20] = 1;
        }
        break;
    }
    }
}
