/* NON_MATCHING func_L07_003141A8 -- src/overlays/l07_umbris/vendor_00313D28.c
 * Best so far: BYTES 7/168 (95.8% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L07_003141A8: computes an angle t*3.0434/0.8 + pi/32 from data[0x1C8] (capped at pi, pi when t>=0.8) and 
 *   Only difference is float register allocation: retail keeps t in $f2 (pi/32 in $f1, pi in $f2); ours t in $f1 (
 *   Would need some wording that changes the pseudo numbering of t / the constants; none of goto/if/else/local-vs-
 */
extern void func_L07_00313D28(char *, int, float, float, float, float, float);

/* Starts the effect with an angle ramped from the moby's timer, capped at pi. */
void func_L07_003141A8(char *moby)
{
    char *data = *(char **)(moby + 0x78);
    float ang;
    float t;
    float lim = 0.8f;
    t = *(float *)(data + 0x1C8);
    if (t < lim) {
        ang = t * 3.0434179f / lim + 0.09817477f;
        if (!(3.14159274f < ang)) goto go;
    }
    ang = 3.14159274f;
go:
    func_L07_00313D28(moby, 0, 1.0f, 5.8f, ang, 1.0f, *(float *)(data + 0x1C8));
}
