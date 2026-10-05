/* NON_MATCHING func_L16_002D1868 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: BYTES 31/3388 (99.1% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   20. p19 BYTES 65/3388: direct scalar array accesses restore SP offsets, but saved spawn/delta registers swap. 
 *   User requested continued matching. Keep the existing arm and budget; test an explicit temporary pose-pointer s
 *   21. p20 COMPILE: mechanical context rewrite also changed player->yaw; correct that field reference.
 *   22. p21 SIZE 3404/3388: explicit pointer context preserves the first twelve frame fields but rear/front also g
 *   23. p22 BYTES 148/3388: context removes size growth but changes pointer and call scheduling across matching re
 *   24. p23 BYTES 45/3388 unchanged: aligned lateral vector struct has the same allocator output as the array. Nex
 *   25. p24 BYTES 45/3388 unchanged: signed-short path locals preserve the same start/end GPR permutation.
 *   26. p25 BYTES 48/3388: char moby parameter adds three -1 versus 255 constants without moving pointer or path d
 */
#include "common.h"
extern void func_L00_00264BB0(void *, float);
extern float func_L00_001FF860(float,float);
extern float func_00214158(void);
extern int func_001F9850(int);
extern float func_001FA850(float,float);
extern char *func_L00_0025B478(void *,int,int);
extern void func_L00_0025F4A8(void *,void *,void *,float,float,int,int,int,float,float,float,int,float,float,int,int,int,int);
extern void func_L00_00264EA8(void *,int,int,int,int,int,int);
extern void func_L16_002D0DC0(void *);
extern int func_L00_0025E7F8(char *,int,int,int);
extern float func_001F9D48(void *,void *);
extern float func_00214D28(float *,float,float);
extern float func_L00_0025CCF0(void *,void *,int,float,float,float,float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9BD8(void *,void *,void *);
extern void func_001F9BF0(void *,void *,void *);
extern void func_001F9C30(void *,void *,float);
extern int func_L00_001F2BE8(void *,int,void *,void *,float);
extern int func_L00_0025F410(void *);
extern void func_L00_0025AC00(char *,float,int,int,void *,void *);
extern float func_00214358(void *,int,float);
extern float func_001F9B88(float);
extern int func_001F9938(void *);
/* Its own name for func_L00_00263950: the file now declares it
   (float, float, void *, void *, int). */
extern void func_L00_00263950_1868(int,unsigned char *,int,float,float) __asm__("func_L00_00263950");
extern float func_001FA748(float,float);
extern void func_L00_00250800(void *,int,void *);
extern void func_L00_001FF4B0(void *,void *,float);
extern int func_L00_00258BC8(int,int);
extern void func_L00_0026A7F8(void *,void *,int,int,int,int,int,int);
extern char *D_L16_001B0C30[];
extern unsigned char D_0013D5E7 NOT_SDA;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
typedef struct { char pad0[0x140]; float position[4]; char pad150[8]; float yaw; } L16RacePlayer;
extern L16RacePlayer D_L16_00167100_race __asm__("D_L16_00167100");
extern float D_L16_0015F660[4] MACRO_ADDR;
extern void *D_L16_00178380[];
extern int D_L16_0015F6B0 MACRO_ADDR;
extern short D_0015EF3C;
extern short D_L16_00161AC8,D_L16_00161ACC;
extern char D_0013E633[];

/* Update the race competitor's path movement, jumping and vehicle effects. */
void func_L16_002D1868(unsigned char *m) {
    float pos[4], delta[4], ahead[4], impact[4], spray[4], lateral[4], dust[4];
    char *d=(*(char * *)((char *)(m)+(0x78)));
    char *yaxis,*xaxis,*back,*previous,*speed_ptr,*yaw_speed,*vertical,*middle,*wait;
    float *lateral_ptr;
    char *mpos,*yaw;
    char *rear=d+0x1E0;
    char *rear_pose,*front,*spawn,*g;
    int i,n,next,ticks,state;
    float distance,duration,target,z,gap,speed,angle,scale,rate,limit,offset,slow;
    func_L00_00264BB0(rear,2.5f);
    state=m[0x20];
    switch(state) {
    case 0: {
        float time;
        char *path;
        m[0x30]=24; (*(unsigned short *)((char *)(m)+(0x34)))|=0x41;
        path=D_L16_001B0C30[(*(int *)((char *)(d)+(0x2B0)))]; (*(char * *)((char *)(d)+(0x2C0)))=path;
        func_L16_002D0D98((Level16VendorVectorMoby *)m,0,pos);
        qcopy(m+16,pos); qcopy(d+0x260,m+16);
        (*(int *)((char *)(m)+(0x40)))=0; (*(int *)((char *)(m)+(0x44)))=0;
        (*(float *)((char *)(m)+(0x48)))=func_L00_001FF860((*(float *)((char *)(path)+(0x20)))-(*(float *)((char *)(path)+(0x10))),(*(float *)((char *)(path)+(0x24)))-(*(float *)((char *)(path)+(0x14))));
        (*(unsigned char *)((char *)(d)+(0x2B)))=1;
        time=D_0015EE6C;
        offset=(float)(*(int *)((char *)(d)+(0x2CC)))*(time*1.55f);
        (*(float *)((char *)(d)+(0x2B4)))=time*17.0f+offset;
        (*(float *)((char *)(d)+(0x2B8)))=time*24.0f+offset;
        if(D_0013D5E7==0) {
            slow=(float)((*(int *)((char *)(&D_0015EF3C)+(0)))-5);
            if(slow<0.0f) slow=0.0f;
            slow=1.0f-slow*0.008f;
            if(slow<0.8f) slow=0.8f;
            (*(float *)((char *)(d)+(0x2B4)))*=slow; (*(float *)((char *)(d)+(0x2B8)))*=slow;
        }
        (*(float *)((char *)(d)+(0x2E8)))=func_00214158(); (*(unsigned char *)((char *)(d)+(0x29)))=0; m[0x20]=1;
        break;
    }
    case 1:
        if((*(int *)((char *)(D_0013E633)+(0x2EA9)))==22) {
            m[0x30]=255; (*(int *)((char *)(m)+(0x94)))=(*(int *)((char *)((*(char * *)((char *)(m)+(0x24))))+(16))); (*(unsigned short *)((char *)(m)+(0x34)))&=~0x41;
            (*(short *)((char *)(d)+(0x2F4)))=0; (*(short *)((char *)(d)+(0x2F6)))=func_001F9850(180);
            (*(int *)((char *)(d)+(0x2C8)))=0; (*(int *)((char *)(d)+(0x2C4)))=0; (*(int *)((char *)(d)+(0x2E4)))=0; (*(int *)((char *)(d)+(0x2DC)))=0; (*(int *)((char *)(d)+(0x2BC)))=0;
            if((*(int *)((char *)(d)+(0x2CC)))%2==state) (*(unsigned short *)((char *)(m)+(0x34)))|=0x8000;
            m[0xA4]=255; m[0x20]=2;
        }
        break;
    case 3:
        if((*(int *)((char *)(D_0013E633)+(0x2EA9)))!=22) m[0x20]=0;
        else {
            int count=(*(unsigned short *)((char *)(d)+(0x2F2)))+1;
            short timer=count;
            (*(short *)((char *)(d)+(0x2F2)))=count;
            if(func_001F9850(240)<timer) {
                L16RacePlayer *player=&D_L16_00167100_race;
                if(func_001FA850(func_L00_001FF860((*(float *)((char *)(m)+(16)))-player->position[0],(*(float *)((char *)(m)+(20)))-player->position[1]),player->yaw)>1.5707964f) {
                (*(int *)((char *)(m)+(0x94)))=(*(int *)((char *)((*(char * *)((char *)(m)+(0x24))))+(16))); (*(unsigned short *)((char *)(m)+(0x34)))&=~0x41; m[0xA4]=255; m[0x20]=2;
            }
            }
        }
        break;
    case 2:
        g=D_0013E633+0xE1D;
        if((*(int *)((char *)(g)+(0x208C)))!=22) { m[0x20]=0; break; }
        if(func_L00_0025B478(m,0x30000,0)) {
            qcopy(pos,m+16); pos[2]+=0.5f;
            func_L00_0025F4A8(m,D_L16_0015F660,pos,0.0f,0.0f,5,15,25,2.5f,1.5f,4.0f,-1,1.0f,7.0f,0,9,-1,0);
            func_L00_00264EA8(m,0x655,1,0x656,2,2,0);
            func_L00_00264EA8(m,0x6FA,1,0x6FB,1,1,0);
            (*(short *)((char *)(d)+(0x2F2)))=0; (*(int *)((char *)(g)+(0x8A8)))+=250; m[0x20]=3; (*(int *)((char *)(m)+(0x94)))=0; (*(unsigned short *)((char *)(m)+(0x34)))|=0x41;
            break;
        }
        m[0xA4]=255;
        spawn=d+0x260;
        func_L16_002D0DC0(m);
        mpos=(char *)m+16;
        func_L16_002D0FC8((char *)m);
        yaw=(char *)m+0x48; yaw_speed=d+0x2C4;
        func_L16_002D1310((char *)m);
        wait=d+0x2F6; speed_ptr=d+0x2BC; front=d+0x60;
        middle=d+0x160; back=d+0xE0;
        previous=d+0x280; xaxis=(char *)m+0xE0; yaxis=(char *)m+0xD0;
        if((*(int *)((char *)(d)+(0x2E4)))!=0) {
            (*(int *)((char *)(d)+(0x2E4)))++;
            if((*(int *)((char *)(d)+(0x2E4)))<func_001F9850(17)) {
                vertical=d+0x2C8;
                i=(*(short *)((char *)(d)+(0x2F4))); distance=0.0f;
                while(i<(*(short *)((char *)(d)+(0x2F0)))) {
                    char *path;
                    next=func_L00_0025E7F8((*(char * *)((char *)(d)+(0x2C0))),i,1,1);
                    path=(*(char * *)((char *)(d)+(0x2C0)));
                    distance+=func_001F9D48(path+(i*16+16),path+(next*16+16));
                    i=next;
                }
                {
                    short first = *(short *)(d + 0x2F4);
                    short last = *(short *)(d + 0x2F0);
                    char *path = *(char **)(d + 0x2C0);
                    float rise = *(float *)(path - (-(last * 16)) + 0x18) - *(float *)(path - (-(first * 16)) + 0x18);
                    duration = distance / *(float *)(d + 0x2BC);
                    target = rise / duration + D_0015EE70 * 21.0f * duration * 0.5f;
                }
                if((*(float *)((char *)(d)+(0x2C8)))<0.0f) (*(float *)((char *)(d)+(0x2C8)))=0.0f;
                func_00214D28((float *)vertical,target,D_0015EE70*110.0f);
            }
        }
        func_L16_002D1420((L16LeapMoby *)m);
        func_L16_002D0D98((Level16VendorVectorMoby *)m,(*(short *)((char *)(d)+(0x2F4))),pos);
        angle=func_L00_001FF860(pos[0]-(*(float *)((char *)(m)+(16))),pos[1]-(*(float *)((char *)(m)+(20))));
        func_L00_0025CCF0(yaw,yaw_speed,0,angle,D_0015EE64*0.035f,D_0015EE64*0.3f,D_0015EE6C*6.981317f);
        if((*(float *)((char *)(d)+(0x268)))<pos[2]-5.0f) (*(float *)((char *)(d)+(0x268)))=pos[2];
        delta[0]=func_001F9F90((*(float *)((char *)(m)+(0x48))))*(*(float *)((char *)(d)+(0x2BC)));
        delta[1]=func_001F9FA8((*(float *)((char *)(m)+(0x48))))*(*(float *)((char *)(d)+(0x2BC))); delta[2]=0.0f;
        func_001F9BD8(spawn,spawn,delta);
        func_001F9C30(ahead,delta,3.0f); func_001F9BD8(ahead,ahead,spawn); ahead[2]+=0.7f;
        n=func_L00_001F2BE8(ahead,0,m,0,0.7f);
        if(n) {
            func_001F9C30(impact,delta,7.0f);
            if(n>0) {
                void **hit=D_L16_00178380;
                int remaining=n;
                do {
                    if(func_L00_0025F410(*hit)) func_L00_0025AC00((char *)*hit,1.0f,(int)m,0x30000,spawn,impact);
                    hit++;
                } while(--remaining);
            }
        }
        z=func_00214358(spawn,0,0.5f); gap=(*(float *)((char *)(d)+(0x268)))-z;
        if(gap>0.0f || (*(float *)((char *)(d)+(0x2C8)))>0.0f) (*(float *)((char *)(d)+(0x2C8)))-=D_0015EE70*21.0f;
        else if(func_001F9B88(gap)<0.5f) { (*(float *)((char *)(d)+(0x2C8)))=0.0f; (*(float *)((char *)(d)+(0x268)))=z; (*(int *)((char *)(d)+(0x2E4)))=0; }
        (*(float *)((char *)(d)+(0x268)))+=(*(float *)((char *)(d)+(0x2C8)));
        if(func_001F9938(wait)) {
            speed=(*(float *)((char *)(d)+(0x2B4)));
            if(z<(*(float *)((char *)(d)+(0x268)))) speed=D_0015EE6C*19.0f;
            g=D_0013E633+0xE1D;
            if((*(int *)((char *)(g)+(0x894)))<func_001F9850(700)) speed+=D_0015EE6C*3.0f;
            if((*(short *)((char *)(g-(-((*(int *)((char *)(d)+(0x2CC)))*2)))+(0x7C0)))<(*(int *)((char *)(g)+(0x8C0)))) speed-=D_0015EE6C;
            else speed+=D_0015EE6C;
            if(speed<(*(float *)((char *)(d)+(0x2BC)))) func_00214D28((float *)speed_ptr,speed,D_0015EE70*7.0f);
            else func_00214D28((float *)speed_ptr,speed,D_0015EE70*15.0f);
        } else func_00214D28((float *)speed_ptr,(*(float *)((char *)(d)+(0x2B8))),D_0015EE70*20.0f);
        if(gap<0.2f && (*(float *)((char *)(d)+(0x2C8)))<0.0f) { (*(float *)((char *)(d)+(0x268)))=z; (*(int *)((char *)(d)+(0x2E4)))=0; }
        rate=(*(float *)((char *)(d)+(0x2C4))); limit=D_0015EE6C*2.6179938f;
        if(limit<rate) rate=limit;
        else if(rate< -limit) rate=-limit;
        if((*(unsigned short *)((char *)(m)+(0x34)))&0x8000) rate=-rate;
        rear_pose=d+0x1E0;
        { float coefficient=D_0015EE64;
        (*(float *)((char *)(d)+(0x248)))=rate*30.0f; (*(float *)((char *)(d)+(0xC8)))=rate*20.0f; (*(float *)((char *)(d)+(0x1C8)))=rate*50.0f; (*(float *)((char *)(d)+(0x144)))=rate*40.0f;
        func_L00_00263950_1868((int)m,(unsigned char *)rear_pose,3,coefficient*0.02f,coefficient*0.3f); }
        func_L00_00263950_1868((int)m,(unsigned char *)front,0,D_0015EE64*0.02f,D_0015EE64*0.3f);
        func_L00_00263950_1868((int)m,(unsigned char *)middle,1,D_0015EE64*0.02f,D_0015EE64*0.3f);
        func_L00_00263950_1868((int)m,(unsigned char *)back,2,D_0015EE64*0.015f,D_0015EE64*0.3f);
        qcopy(mpos,spawn);
        { float bob_time=D_0015EE6C;
        (*(float *)((char *)(m)+(0x18)))+=0.25f;
        (*(float *)((char *)(d)+(0x2E8)))=func_001FA748((*(float *)((char *)(d)+(0x2E8))),bob_time*6.108652f); }
        (*(float *)((char *)(m)+(0x18)))+=func_001F9FA8((*(float *)((char *)(d)+(0x2E8))))*0.08f;
        func_001F9BF0(ahead,mpos,previous); qcopy(previous,mpos);
        func_L00_00250800(m,(D_L16_0015F6B0&1)|4,impact);
        angle=func_00214158(); scale=D_0015EE6C*0.25f;
        func_L00_001FF4B0(spray,xaxis,scale*func_001F9F90(angle));
        func_L00_001FF4B0(lateral,yaxis,scale*func_001F9FA8(angle));
        func_001F9BD8(spray,spray,ahead); func_001F9BD8(spray,spray,lateral);
        qcopy(spray,ahead); spray[3]=120000.0f;
        if((*(short *)((char *)(d)+(0x2F6)))==0) {
            int ticks;
            ticks=func_001F9850(10); ticks=func_L00_00258BC8(ticks,func_001F9850(13));
            func_L00_0026A7F8(impact,spray,(*(int *)((char *)(&D_L16_00161AC8)+(0))),(*(int *)((char *)(&D_L16_00161ACC)+(0))),ticks,15,15,1);
        } else {
            int ticks;
            func_001F9C30(dust,ahead,0.92f);
            ticks=func_001F9850(15); ticks=func_L00_00258BC8(ticks,func_001F9850(18));
            func_L00_0026A7F8(impact,dust,0x5032F0D2,(*(int *)((char *)(&D_L16_00161ACC)+(0))),ticks,30,20,1);
            { int ticks=func_001F9850(8); ticks=func_L00_00258BC8(ticks,func_001F9850(17));
            func_L00_0026DA50(impact,spray,(*(int *)((char *)(&D_L16_00161AC8)+(0))),(*(int *)((char *)(&D_L16_00161ACC)+(0))),ticks,1,15000.0f); }
        }
        break;
    }
}
