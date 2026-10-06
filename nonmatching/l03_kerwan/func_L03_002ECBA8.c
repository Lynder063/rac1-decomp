/* NON_MATCHING func_L03_002ECBA8 -- src/overlays/l03_kerwan/vendor_002CB280.c
 * Best so far: SIZE ours 408 / retail 404, checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Builds an offset position and an orthogonal view matrix from two global vectors and object parameters.
 *   p1, p2 and p4 produce identical 404-byte code, with saved result/control/position/forward registers cyclically
 *   MACRO_ADDR on D_0013F4D0 fixes the two independent lui setups; unblock with a saved-pointer allocation idiom. 
 */
extern float D_0013F6E0[];
extern float D_0013F4D0[] MACRO_ADDR;
extern void func_L00_001FF4B0(void *,void *,float);
extern void func_001F9BD8(void *,void *,void *);
extern void func_001F9BF0(void *,void *,void *);
extern void func_001F9CA0(void *,void *,void *);
typedef int MatrixQuad __attribute__((mode(TI)));
/* builds an offset position and orthogonal view axes */
void func_L03_002ECBA8(char *m) {
 float a[4] __attribute__((aligned(16))); float b[4] __attribute__((aligned(16))); float c[4] __attribute__((aligned(16))); float d[4] __attribute__((aligned(16))); float e[4] __attribute__((aligned(16)));
 char *result=m+0x40; char *data=*(char **)(m+0x70); char *axis=data+0xF0; char *forward=data+0x100; char *control=data+0xB0; char *position=m+0x30;
 func_L00_001FF4B0(b,D_0013F6E0,-*(float *)(data+0xE0)); func_L00_001FF4B0(a,axis,-*(float *)(data+0xD0));
 func_001F9BD8(c,D_0013F4D0,b); func_001F9BD8(position,c,a);
 func_L00_001FF4B0(d,D_0013F6E0,-*(float *)(control+0x14)); func_001F9BD8(d,D_0013F4D0,d); func_001F9BF0(e,d,position);
 func_L00_001FF4B0(forward,e,1.0f); func_L00_001FF4B0(m,forward,1.0f); func_L00_001FF4B0(result,m,1.0f); *(MatrixQuad *)m=*(MatrixQuad *)result;
 func_001F9CA0(m+0x10,m,D_0013F6E0); func_L00_001FF4B0(m+0x10,m+0x10,-1.0f); func_001F9CA0(m+0x20,m+0x10,m);
}
