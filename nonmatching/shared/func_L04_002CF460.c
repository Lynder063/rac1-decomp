/* NON_MATCHING func_L04_002CF460 -- src/overlays/shared/vendor_002B0068.c
 * Best so far: BYTES 12/148 (91.9% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
typedef int u128 __attribute__((mode(TI)));

extern char *func_0020D348_m(int) __asm__("func_0020D348");
extern void func_L00_00251E30(void *);

/* Spawns moby class 0x1F3, copies the 16-byte position from b and a few
   fields from a into it, hands the new moby to func_L00_00251E30. */
char *func_L04_002CF460(char *a, char *b)
{
    u128 v = *(u128 *)b;
    u128 *p = &v;
    char *moby = (char *)func_0020D348_m(0x1F3);

    if (moby != 0) {
        ((unsigned char *)moby)[0x30] = 0xFF;
        moby[0x31] = 1;
        *(unsigned short *)(moby + 0x32) = *(unsigned short *)(a + 0x32);
        *(int *)(moby + 0x40) = 0;
        *(int *)(moby + 0x44) = 0;
        *(float *)(moby + 0x48) = *(float *)(a + 0x48);
        *(double *)(moby + 0x38) = *(double *)(a + 0x38);
        qcopy(moby + 0x10, p);
        func_L00_00251E30(moby);
    }

    return moby;
}
