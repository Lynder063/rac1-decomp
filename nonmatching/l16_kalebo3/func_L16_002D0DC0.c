/* NON_MATCHING func_L16_002D0DC0 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: SIZE ours 524 / retail 520, checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   2. BYTES185: persistent first sample alias adds S3/frame70; declaration order does not swap saved floats. Next
 *   3. SIZE536: initial split sample still duplicates the call and retains S3. remove persistent sample aliases, a
 *   4. SIZE524: direct split sample removes S3 but duplicates its entry call. express the sampling and distance te
 *   5. SIZE508: while condition alone generates the same setup as the manual loop. Cache only the first sample ind
 *   6. SIZE508: cached index and explicit deltas collapse to the same setup. Replace the array scratch with a trut
 *   7. SIZE508: structured scratch vector preserves the same call/setup and float allocation tie as loop-condition
 *   Revisit: retail caches the initial signed-short node before the forward branch and shares its first sample cal
 *   8. SIZE508/520 unchanged: explicit sample label with HI node cache still folds the pre-branch A2/node setup, a
 */
#include "common.h"
extern int func_L01_0028C2D8(float,void*,char*);
extern int func_L00_0025E7F8(char*,int,int,int);
extern int func_002140B0(int);
extern int func_001FA898_caa18(float) __asm__("func_001FA898");
extern float func_L00_001FF860(float,float);
extern float func_001F9D48(void*,void*);
extern float func_001FA850(float,float);
extern char *D_L16_001B0C30[];
/* Advance through a patrol path, choosing marked branches and rejoining its base. */
void func_L16_002D0DC0(Level16VendorVectorMoby *moby) {
    float target[4],heading,distance;
    char *m=(char*)moby;
    char *d=*(char**)(m+0x78);
    func_L16_002D0D98(moby,*(short*)(d+0x2F4),target);
    goto bearing;
advance:
    {
        char *path=*(char**)(d+0x2C0);
        char *base;
        *(short*)(d+0x2F4)=(*(short*)(d+0x2F4)+1)%*(int*)path;
        base=D_L16_001B0C30[*(int*)(d+0x290)];
        if(path!=base) {
            if(*(short*)(d+0x2F4)==*(int*)path-1) {
                *(char**)(d+0x2C0)=base;
                *(short*)(d+0x2F4)=func_L01_0028C2D8(0.0f,d+0x260,base);
                *(short*)(d+0x2F4)=func_L00_0025E7F8(*(char**)(d+0x2C0),*(short*)(d+0x2F4),5,1);
            }
        } else if(*(float*)(*(short*)(d+0x2F4)*16+path+0x1C)>10.0f && func_002140B0(100)>=31) {
            int branch=func_001FA898_caa18(*(float*)(*(short*)(d+0x2F4)*16+*(char**)(d+0x2C0)+0x1C))-11;
            *(char**)(d+0x2C0)=D_L16_001B0C30[*(int*)(branch*4+d+0x294)];
            *(short*)(d+0x2F4)=0;
        }
    }
    func_L16_002D0D98(moby,*(short*)(d+0x2F4),target);
bearing:
    heading=func_L00_001FF860(target[0]-*(float*)(m+0x10),target[1]-*(float*)(m+0x14));
    func_L16_002D0D98(moby,*(short*)(d+0x2F4),target);
    distance=func_001F9D48(target,d+0x260);
    heading=func_001FA850(heading,*(float*)(m+0x48));
    if(heading<1.5707964f || distance>4.0f) {
        if(distance>2.0f) return;
    }
    goto advance;
}
