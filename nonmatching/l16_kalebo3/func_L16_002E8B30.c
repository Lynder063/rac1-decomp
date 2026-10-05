/* NON_MATCHING func_L16_002E8B30 -- src/overlays/l16_kalebo3/vendor_002E7C70.c
 * Best so far: BYTES 16/884 (98.2% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Final wrap and A6 old-position helper; saved pointer s0 reuses speed/trial vector lifetimes.
 *   p0 COMPILE: old-position helper is later defined with unsigned char*; match that exact forward declaration.
 *   p1 SIZE888/884 confirms staged one-instruction excess. First speed argument and later trial vector should shar
 *   p2 SIZE888: pointer reuse shifts data/other allocation and trace setup, discard. Test smoothing helper with it
 *   p3 SIZE888 unchanged from p1: canonical smoothing signature is identical. Move speed alias immediately before 
 *   p4 SIZE888 unchanged: earlier speed alias and ordinary negative-gap if give the same extra delay-slot threshol
 *   p5 SIZE888 unchanged: initialize the speed pointer before the first smoothing call and reuse it later; still t
 *   HANDOFF: best.c is p1, plain C expanded from staged attempt. Retail is884 bytes, candidate888. Only aligned di
 */
#include "common.h"
extern int func_L00_0028EB98(void *,int);
extern int func_0022ED80(int,int,void *);
extern void func_0020D678(void *);
extern void func_L16_002E9018(char *);
extern void func_L16_002E8EA8(unsigned char *,void *);
extern float func_002140F8(float,float);
extern void func_00215CA8(float,int *,int,void *,float *,int);
extern void func_00214D28(float,float,float *);
extern int func_L00_00200290(char *,float);
extern char *D_L16_001B0C30[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern short D_L16_0015EE70;
extern short D_L16_00161F38,D_L16_00161F28,D_L16_00161F2C,D_L16_00161F3C,D_L16_00161F40;
extern short D_L16_00161F4C,D_L16_00161F50,D_L16_00161F30,D_L16_00161F34;
typedef struct {
    int path_index; float parameter,speed,period; char *owner;
    float height_step,target_speed; short countdown,token;
} L16WalkerData;
/* Follow a shared path, maintain spacing, and test randomized movement ahead. */
void func_L16_002E8B30(char *m) {
    float old[4],rotation[4],trial[4];
    int failed=0;
    L16WalkerData *d=*(L16WalkerData **)(m+0x78);
    int *path=(int *)D_L16_001B0C30[d->path_index];
    if((((*(unsigned short *)((char *)m+0xA6))^1)&1)!=0) {
        if(func_L00_0028EB98(m,d->token)==0) d->token=func_0022ED80(0,4,m);
        else failed=1;
    } else qcopy(old,m+0x10);
    switch((*(unsigned char *)((char *)m+0x20))) {
    case 0:
        if((*(unsigned char *)((char *)m+0x21))==255) {func_0020D678(m);return;}
        func_L16_002E9018(m);
        break;
    case 1: {
        L16WalkerData *other=*(L16WalkerData **)(d->owner+0x78);
        float gap,step,next,height,acceleration;
        func_00215CA8(d->parameter,path,0,m+0x10,(float *)(m+0x40),0);
        acceleration=(*(float *)&D_L16_00161F38)*D_0015EE70;
        (*(float *)((char *)m+0x18))+=d->height_step;
        d->parameter+=d->speed;
        func_00214D28(d->target_speed,acceleration,&d->speed);
        gap=other->parameter-d->parameter;
        gap=gap<0.0f ? gap+d->period : gap;
        if(gap<(*(float *)&D_L16_00161F28) && other->target_speed<d->target_speed) {
            float saved=d->target_speed;
            d->target_speed=other->target_speed;
            other->target_speed=saved;
        }
        if(gap<1.5f) {
            step=(*(float *)&D_L16_0015EE70)*50.0f;
            func_00214D28(d->target_speed,step,&d->speed);
            func_00214D28(other->target_speed,step,&other->speed);
        }
        if((*(unsigned char *)((char *)m+0x31))==0 && failed==0) {
        if(gap>(*(float *)&D_L16_00161F2C)+1.0f) {
            height=func_002140F8((*(float *)&D_L16_00161F3C),(*(float *)&D_L16_00161F40));
            if((*(unsigned char *)((char *)d->owner+0x31))!=0 && d->countdown!=0) {
                next=other->parameter-func_002140F8((*(float *)&D_L16_00161F28),(*(float *)&D_L16_00161F2C));
                d->countdown--;
            } else next=d->parameter+(*(float *)&D_L16_00161F4C)*D_0015EE6C;
            if(next<0.0f) next+=d->period;
            func_00215CA8(next,path,0,trial,rotation,1);
            trial[2]+=height;trial[3]=2.0f;
            if(func_L00_00200290((char *)trial,(float)*(int *)&D_L16_00161F50)==-1) {
                float random=func_002140F8((*(float *)&D_L16_00161F30),(*(float *)&D_L16_00161F34));
                d->parameter=next;d->height_step=height;d->target_speed=random*D_0015EE6C;
            }
        }
        } else d->countdown=30;
        if(d->parameter>d->period) d->parameter-=d->period;
        break;
    }
    }
    if((*(unsigned short *)((char *)m+0xA6))&1) func_L16_002E8EA8(m,old);
}
