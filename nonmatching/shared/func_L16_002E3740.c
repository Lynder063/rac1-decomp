/* NON_MATCHING func_L16_002E3740 -- src/overlays/shared/vendor_002A1B58.c
 * Best so far: BYTES 40/2184 (98.2% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   p16 BYTES51/2184: update the pool pointer in place; fixes child-index/pool registers, shift and address additi
 *   p17 BYTES73: explicit presence value fixes state2 invariant order. Scoped path base still moves the full addre
 *   p18 BYTES43/2184: explicit presence constant fixes state2 preheader. Float attachment offset type preserves re
 *   p19 BYTES40/2184: combined reveal guard preserves branch shape; counter/child initialization in for fixes chil
 *   p20 BYTES40 unchanged: explicit byte-offset lookup folds to same path base/index scheduling.
 *   p21 BYTES43: vector-object offset does not move its high load; alternate address changes result-register choic
 *   p22 BYTES40 unchanged: direct rotation address retains cached pointer and identical final fragment schedule.
 *   p23 SIZE2196/2184: short countdown adds width normalization and another saved register. Preserve p19 BYTES40; 
 */
#include "common.h"
typedef struct { unsigned char pad00[0x30]; unsigned char opacity,pad31; unsigned short color; } L16CarrierRender;
typedef unsigned long long L16CarrierQuad;
typedef union {L16CarrierQuad q;float f[4];} L16CarrierVector;
extern void func_L16_002E3FC8(char*);
extern void func_L16_002E4408(void*);
extern int func_L16_002E42F0(char*,char*);
extern void func_L16_002E44B8(char*);
extern char *D_L16_001B0C30[];
extern char *D_L16_00160098 MACRO_ADDR;
extern float D_L16_001D9950[4];
extern char D_0013E633[];
extern int D_L16_0015F6A8 MACRO_ADDR;
extern float D_L16_0015F660_carrier[] __asm__("D_L16_0015F660") MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR,D_0015EE70 MACRO_ADDR;
extern short D_L16_00161E3C,D_L16_00161E40,D_L16_00161E48,D_L16_00161E4C;
extern float func_001F9D10_carrier(void*,void*) __asm__("func_001F9D10");
extern int func_L00_0025A778(void*,void*,int);
extern void func_L16_002D5188(char*,void*,void*,char*);
extern float func_00214D88_carrier(float*,float*,float,float,float,float) __asm__("func_00214D88");
extern float func_001FA850(float,float);
extern float func_L00_001FF860(float,float);
extern int func_001F9908(int *);
extern void func_L00_00250800(void*,int,void*);
extern void func_001F9BF0(void*,void*,void*);
extern void func_L00_001FF4B0(void*,void*,float);
extern int func_0022ED80_carrier(int,int,void*) __asm__("func_0022ED80");
extern int func_001F9850(int);
extern char *func_L16_002A1F78_carrier(char*,char*,void*,void*,int) __asm__("func_L16_002A1F78");
extern void func_L00_0025F4A8(void*,void*,void*,float,float,int,int,int,float,float,float,int,float,float,int,int,int,int);
extern void *func_L00_00265050_carrier(void*,int,void*,void*,int,int,float,void*,void*,void*) __asm__("func_L00_00265050");
extern void func_L00_002584A8(void*,int,int);
extern void func_0020D678(void*);
extern void func_001F9BC0(void*);
extern float func_001FA748(float,float);
extern void func_001F9EC0(void*,void*,void*);
extern void func_001F9BD8(void*,void*,void*);
extern void func_L16_002D51A8(char*,int);
extern float func_001F9FA8(float);
/* Update the flying carrier, its attached children, patrol paths and attack/death states. */
void func_L16_002E3740(char *m) {
    L16CarrierVector vector,rotation;
    char *d=*(char**)(m+0x78);
    func_L16_002E3FC8(m);
    switch(*(unsigned char*)(m+0x20)) {
    case 0: {
        char *path,*start;
        L16CarrierRender *render=(L16CarrierRender *)m;
        float speed;
        render->opacity=render->color=255;
        *(float*)(d+0x20)=12.0f;
        *(short*)(d+0x24)=12;
        d[0x28]=3;
        if(*(int*)(d+0xD8)!=-1)func_L16_002E4408(D_L16_001B0C30[*(int*)(d+0xD8)]);
        if(*(int*)(d+0xDC)!=-1)func_L16_002E4408(D_L16_001B0C30[*(int*)(d+0xDC)]);
        speed=*(float*)&D_L16_00161E40*D_0015EE6C;
        *(int*)(d+0x16C)=0;
        *(int*)(d+0x168)=0;
        *(float*)(d+0x170)=speed;
        *(float*)(d+0x194)=*(float*)(m+0x18);
        if(*(int*)(d+0xD8)==-1)goto idle;
        path=D_L16_001B0C30[*(int*)(d+0xD8)];
        start=path+0x10;
        *(float*)(d+0x174)=func_001F9D10_carrier(start,path+0x20);
        qcopy(m+0x10,start);
        m[0x20]=1;m[0x31]=0;
        *(int*)(m+0x94)=0;
        *(unsigned short*)(m+0x34)=(*(unsigned short*)(m+0x34)|1)&0xEFFF;
        break;
    }
    case 1: {
        int i,*child,range;
        if(D_L16_0015F6A8==0 && (*(int*)(d+0xD4)==-1 || func_L00_0025A778(D_0013E633+0xE9D,D_L16_001B0C30[*(int*)(d+0xD4)]+0x10,*(int*)D_L16_001B0C30[*(int*)(d+0xD4)]))) {
        m[0x20]=2;
        *(unsigned short*)(m+0x34)&=0xFFFE;
        m[0x31]=1;
        range=*(int*)(*(char**)(m+0x24)+0x10);
        vector.q=0;
        *(unsigned short*)(m+0x34)|=0x1000;
        *(int*)(m+0x94)=range;
        vector.f[2]=3.14159f;
        for(i=3,child=(int*)(d+0xC0);i>=0;i--,child++) {
            char *pool=D_L16_00160098;
            if(*child>=0)func_L16_002D5188(pool+(*child<<8),m,D_L16_001D9950,(char*)vector.f);
        }
        }
        break;
    }
    case 2: {
        int active=0,present=1,i,*child=(int*)(d+0xC0);
        char *path;
        for(i=3;i>=0;i--) {if(*child++>=0)active=present;}
        path=D_L16_001B0C30[*(int*)(d+0xD8)];
        if(active && (float)(*(int*)path-*(int*)(d+0x168))* *(float*)(d+0x174)<16.0f) {
            float rate=D_0015EE70*12.566371f;
            func_00214D88_carrier((float*)(d+0x17C),(float*)(d+0x180),1.5707964f,rate,rate,D_0015EE6C*6.2831855f);
        }
        if(func_L16_002E42F0(m,path)) {
            if(active)m[0x20]=3;
            else if(*(int*)(d+0xDC)==-1)goto idle;
            else m[0x20]=4;
        }
        break;
    }
    case 3: {
        int i,*child;
        if(!func_001F9908((int *)(d+0x184)))break;
        child=(int*)(d+0xC0);
        for(i=0;i<4;i++,child++) {
            int index=((int *)(d+0xC0))[i];
            char *pool=D_L16_00160098;
            if(index>=0) {
                pool+=index<<8;
                func_001F9BC0(rotation.f);
                rotation.f[2]=func_001FA748(*(float*)(m+0x48),3.14159f);
                func_001F9EC0(vector.f,D_L16_001D9950,m+0xC0);
                func_001F9BD8(vector.f,vector.f,m+0x10);
                func_L16_002D51A8(pool,func_001F9850(90));
                *child=-1;
                *(int*)(d+0x184)=func_001F9850(30);
                break;
            }
            if(i==3) {
                if(*(int*)(d+0xDC)!=-1)m[0x20]=4;
                else m[0x20]=6;
            }
        }
        break;
    }
    case 4: {
        float yaw=*(float*)(D_L16_001B0C30[*(int*)(d+0xDC)]+0x1C);
        float rate=D_0015EE70*6.2831855f;
        func_00214D88_carrier((float*)(m+0x48),(float*)(d+0x178),yaw,rate,rate,D_0015EE6C*6.2831855f);
        if(func_001FA850(*(float*)(m+0x48),yaw)<0.01f) {
            m[0x20]=5;
            *(int*)(d+0x168)=0;*(int*)(d+0x16C)=0;
        }
        break;
    }
    case 5: {
        float rate;
        func_00214D88_carrier((float*)(d+0x17C),(float*)(d+0x180),0.0f,D_0015EE70*12.566371f,D_0015EE70*12.566371f,D_0015EE6C*6.2831855f);
        if(func_L16_002E42F0(m,D_L16_001B0C30[*(int*)(d+0xDC)])) {
            if(*(int*)(d+0xD0)==-1)goto remove;
idle:
            m[0x20]=6;
        }
        break;
    }
    case 6: {
        float *yaw_pointer=(float *)(m+0x48);
        float rate;
        func_00214D88_carrier((float*)(d+0x17C),(float*)(d+0x180),0.0f,D_0015EE70*12.566371f,D_0015EE70*12.566371f,D_0015EE6C*6.2831855f);
        {
        float yaw=func_L00_001FF860(*(float*)(d+0x70)-*(float*)(m+0x10),*(float*)(d+0x74)-*(float*)(m+0x14));
        float rate=D_0015EE70*3.1415927f;
        func_00214D88_carrier(yaw_pointer,(float*)(d+0x178),yaw,rate,rate,D_0015EE6C*6.2831855f);
        }
        rate=D_0015EE70*1.5707964f;
        func_00214D88_carrier((float*)(m+0x40),(float*)(d+0x188),0.0f,rate,rate,D_0015EE6C*6.2831855f);
        if(func_001F9908((int *)(d+0x164)) && *(int*)(d+0xB4)!=2)m[0x20]=7;
        break;
    }
    case 7: {
        char *target=d+0x70;
        func_L00_00250800(m,1,vector.f);
        func_001F9BF0(rotation.f,target,vector.f);
        func_L00_001FF4B0(rotation.f,rotation.f,*(float*)&D_L16_00161E3C*D_0015EE6C);
        func_0022ED80_carrier(1,0,m);
        func_L16_002A1F78_carrier(m,(char*)rotation.f,vector.f,target,func_001F9850(45));
        m[0x20]=6;
        *(int*)(d+0x164)=func_001F9850(180);
        break;
    }
    case 8: {
        float dt=D_0015EE6C;
        float drop=dt+dt;
        float roll_step=dt*0.2617994f;
        *(float*)(d+0x194)-=drop;
        *(float*)(m+0x40)+=roll_step;
        if(func_001F9908((int *)(d+0x160)) || *(unsigned char*)(D_0013E633+0x2EC1)==2) {
            void *position=m+0x10;
            float zero=0.0f;
            func_L00_0025F4A8(m,D_L16_0015F660_carrier,position,zero,zero,20,12,8,4.0f,2.5f,9.0f,-1,2.0f,zero,0,0,-1,0);
            func_L00_00265050_carrier(m,0x634,position,m+0x40,0,0,zero,D_L16_0015F660_carrier,D_L16_0015F660_carrier,D_L16_0015F660_carrier);
            func_L00_00265050_carrier(m,0x635,position,m+0x40,0,0,zero,D_L16_0015F660_carrier,D_L16_0015F660_carrier,D_L16_0015F660_carrier);
            func_L00_00265050_carrier(m,0x636,position,m+0x40,0,0,zero,D_L16_0015F660_carrier,D_L16_0015F660_carrier,D_L16_0015F660_carrier);
            func_L00_002584A8(m,0,-1);
remove:
            func_0020D678(m);
            return;
        }
        break;
    }
    }
    *(float*)(d+0x18C)=func_001FA748(*(float*)(d+0x18C),*(float*)&D_L16_00161E48*0.017453292f*D_0015EE6C);
    *(float*)(m+0x18)=*(float*)(d+0x194)+*(float*)&D_L16_00161E4C*func_001F9FA8(*(float*)(d+0x18C));
    func_L16_002E44B8(m);
}
