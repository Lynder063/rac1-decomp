/* NON_MATCHING func_L06_003016B8 -- src/overlays/l06_blarg/vendor_002FE5D0.c
 * Best so far: BYTES 26/400 (93.5% of the bytes match), checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Duplicates an object and optionally emits fifty randomized position/velocity effects.
 *   p0, p1 and p2 produce identical 400-byte code: source-position register s2/s3 lifetime lacks the retail copy, 
 *   Unblock with a pointer-copy lifetime idiom; typed and independently recomputed inner origins coalesce. Child s
 */
extern char *func_0020D348(int);
extern void func_L00_00251E30(void *);
extern float func_002140F8(float,float);
extern float func_00214158(void);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9BD8(void *,void *,void *);
extern void func_L00_001FF4B0(void *,void *,float);
extern void func_L06_003020B8(void *,void *,void *);
extern float D_0015EE6C MACRO_ADDR;
extern short D_L06_001620DC;
/* duplicates the object and optionally emits fifty random effects */
void func_L06_003016B8(char *moby,int emit) {
 float position[4] __attribute__((aligned(16))); float velocity[4] __attribute__((aligned(16)));
 char *source=moby+0x10; char *child; int i;
 *(int *)(*(char **)(moby+0x78)+4)=0; child=func_0020D348(0x43C);
 child[0x31]=1; *(short *)(child+0x32)=64; *(long *)(child+0x38)=*(long *)(moby+0x38); *(short *)(child+0x34)=*(unsigned short *)(moby+0x34);
 qcopy(child+0x10,source); qcopy(child+0x40,moby+0x40); *(float *)(child+0x2C)=*(float *)(moby+0x2C); func_L00_00251E30(child);
 *(unsigned short *)(moby+0x34)|=1;
 if(emit) { float *origin=(float *)(moby+0x10); for(i=49;i>=0;--i) { float speed=func_002140F8(1.0f,6.0f)*D_0015EE6C; float angle=func_00214158(); float value;
 velocity[0]=2.0f*func_001F9F90(angle); velocity[1]=2.0f*func_001F9FA8(angle); velocity[2]=0.0f;
 func_001F9BD8(position,origin,velocity); value=*(float *)&D_L06_001620DC; position[2]+=func_002140F8(value+0.5f,value+4.5f); func_L00_001FF4B0(velocity,velocity,speed); func_L06_003020B8(moby,position,velocity);
 } }
}
