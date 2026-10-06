/* NON_MATCHING func_L12_0030D248 -- src/overlays/l12_hoven/vendor_002EDAA0.c
 * Best so far: BYTES 5/392 (98.7% of the bytes match), checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Draws ten configured overlay entries with render-state setup and restoration.
 *   mini6/a02: budget exhausted; natural direct pointer initialization p8.c differs in five setup instructions at 
 *   p6 exact was rejected on review because redundant base-pointer copies existed solely to steer allocation; reta
 */
extern void func_001F7868(void);
extern void func_00234C98(int,long);
extern int func_00215570(void *,int);
extern int func_001F4868(int);
extern void func_L08_00259040(void *,int,int,void *);
extern void func_L00_001FDE48(int,int,int,void *,int);
extern void func_L11_0031FCC8(int);
extern char D_L12_001672C0[];
extern char D_L12_00208DC0[];
extern int D_L12_00205CC8[],D_L12_001FBFD0[],D_L12_00205CA0[],D_L12_00205D18[];
extern char D_L12_00162188[] MACRO_ADDR;
extern int D_L12_00162154 MACRO_ADDR;
/* draws the configured ten overlay entries with render state setup */
void func_L12_0030D248(char *m) {
 int *d=*(int **)(m+0x78);
 func_001F7868();
 func_00234C98(0x42,(0xfe00L<<23)|0x64);
 func_00234C98(8,0);
 func_00234C98(0x14,(0xff90L<<32)|0x260);
 func_00234C98(0x47,0x5360a);
 if(func_00215570(D_L12_001672C0,d[0])) {
 int i=9;
 
 func_00234C98(6,func_001F4868(0x2c));
 {
 char *ctx=D_L12_00208DC0;
 int *e=D_L12_00205D18;
 int *c=D_L12_00205CA0;
 int *a=D_L12_00205CC8;
 int *b=D_L12_001FBFD0;
 do {
 int bv,cv,ev;
 func_L08_00259040(ctx,*a++,*b,D_L12_00162188);
 bv=*b; cv=*c; ev=*e; c++; e++; b++;
 func_L00_001FDE48(bv,cv,ev,ctx,1);
 } while(--i>=0);
 }
 }
 func_00234C98(6,func_001F4868(0x2f));
 func_L11_0031FCC8(0);
 func_00234C98(0x42,((long)D_L12_00162154<<32)|0x68);
 func_00234C98(6,func_001F4868(0x30));
 func_L11_0031FCC8(1);
}
