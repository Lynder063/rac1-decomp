/* NON_MATCHING func_L00_002BA608 -- src/overlays/shared/vendor_002B33E8.c
 * Best so far: BYTES 11/444 (97.5% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L00_002BA608: when a flag word (D_L00_00161660) is set, clears it, builds a 20-point trail (vector subtra
 *   What matches: frame size, reversed 19-step loop with five strength-reduced pointers (pointer vars initialised 
 *   Remaining difference: register allocation of the five loop pointers (retail d=s5,e=s4,c=s3,b=s2,a=s1, counter 
 *   mini36: implicit indexed loop i=1..19 and independent shortcounterj in p8 fixes loop pointer allocation and sh
 */
extern int func_001F9850(int);
extern void func_001F9BF0(void *dst, void *a, void *b);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BC0(void *);

extern short D_L00_00161660;
extern short D_L00_001616F4;
extern short D_L00_0016174C;
extern short D_L00_001616C8;
extern short D_L00_00161664;
extern short D_L00_0016167C;
extern short D_L00_00161684;
extern short D_L00_00161698;
extern int D_L00_00161748 MACRO_ADDR;
extern char D_L00_001DB8C0[];
extern char D_L00_001DB8B0[];
extern int D_L00_001DBB40[];
extern char D_L00_001DBB90[];
extern int D_L00_001DBCD0[];
extern short D_L00_0016172E[];
extern short D_L00_0016173C[2] MACRO_ADDR;
extern short D_L00_0016173E[2] MACRO_ADDR;
extern short D_L00_00161746[2] MACRO_ADDR;
extern short D_L00_00161738[2] MACRO_ADDR;
extern short D_L00_00161740[2] MACRO_ADDR;
extern short D_L00_0016173A[2] MACRO_ADDR;
extern short D_L00_00161742[2] MACRO_ADDR;
extern short D_L00_00161744[2] MACRO_ADDR;

/* resets the tracked trail points of a moby once when its flag is set */
void func_L00_002BA608(char *m) {
    char *p;
    float v[8];
    int i;
    p = *(char **)(m + 0x78);
    if (*(int *)&D_L00_00161660 != 0) {
        *(int *)&D_L00_00161660 = 0;
        *(int *)&D_L00_0016174C = 0;
        D_L00_00161748 = func_001F9850(*(int *)&D_L00_001616F4);
        *(int *)&D_L00_001616C8 = 0x7F2020;
        func_001F9BF0(v, p + 0x10, p);
        func_L00_001FF4B0(v + 4, v, *(float *)&D_L00_00161664 / 20.0f);
        qcopy(D_L00_001DB8C0, p);
        for (i = 1; i < 20; i++) {
            func_001F9BD8(D_L00_001DB8C0 + i * 16, D_L00_001DB8B0 + i * 16, v + 4);
            D_L00_001DBB40[i] = 0;
            func_001F9BC0(D_L00_001DBB90 + i * 16);
            D_L00_001DBCD0[i] = 0;
        }
        {
            int j;
            for (j = 3; j >= 0; j--)
                D_L00_0016172E[j - 3] = -1;
        }
        D_L00_00161738[0] = 8;
        D_L00_00161740[0] = 4;
        D_L00_0016173A[0] = 4;
        D_L00_0016173C[0] = 8;
        D_L00_00161742[0] = 2;
        D_L00_00161744[0] = 4;
        D_L00_0016173E[0] = 4;
        D_L00_00161746[0] = 2;
        *(int *)&D_L00_0016167C = 0;
        *(int *)&D_L00_00161684 = 0;
        *(int *)&D_L00_00161698 = 0;
    }
}
