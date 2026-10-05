/* NON_MATCHING func_L16_002CF180 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: BYTES 11/3124 (99.7% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   p9 BYTES18: FP-before-integer helper variants fix ballistic and fragment call ordering exactly. Remaining copy
 *   p10 BYTES32: interleaving qcopy with component calculations disrupts FP allocation, discard. Particle helper p
 *   p11 BYTES11: integer-result particle alias exactly matches resident/owner check. Remaining two-word copy/sub s
 *   p12 BYTES35: shared positions in cases0/5 regain s0, but path/workspace swap back. Test distinct ballistic-ori
 *   p13 SIZE3112: distinct ballistic origin still coalesces with shared waypoint pointer and loses retail copies. 
 *   p14 BYTES13: independent case5 pointer is exact; sharing death position with yaw shifts the same saved-registe
 *   p15 BYTES11 unchanged: native quad/float union preserves same five differing instructions. Test direct coordin
 *   p16 BYTES17: direct coordinate differences disturb FP allocation. STOP at saved-register/scheduling wall; best
 */
#include "common.h"
typedef struct { char pad0[0xD0]; int target[2]; } L16AttackTargets;
extern char *D_L16_001B0C30[];
extern char *D_L16_001601AC_m __asm__("D_L16_001601AC") MACRO_ADDR;
extern char *D_L16_001742D8;
extern char D_0013E633[];
typedef struct { char pad0[0x1C0]; int busy; char pad1C4[0x1EBC]; char *moby; } L16AttackPlayer;
typedef struct { char pad0[0xE1D]; L16AttackPlayer player; } L16AttackRoot;
extern L16AttackRoot D_0013E633_path __asm__("D_0013E633");
extern float D_L16_0015F660[4] MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern short D_L16_00161A88, D_L16_00161A8C, D_L16_00161A90, D_L16_00161A94;
extern void func_L16_002CFDB8(void *);
extern int func_002140B0(int);
extern float func_00214158(void);
extern int func_L16_002D7178(int, void *);
extern char *func_0020D348_m(int) __asm__("func_0020D348");
extern void func_L02_00265E58(void *);
extern int func_001F9850(int);
extern int func_001F9908(int *);
extern float func_L00_001FF860(float, float);
extern void func_00213DE0(void *, int, int, int);
extern float func_00214358(void *, int, float);
extern void func_L00_00250800(void *, int, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_L00_0025BC48(void *, void *, void *, float, float);
extern unsigned char *func_L16_002C75D0(int, void *, float *, int, float);
extern float func_0020D830(void *);
extern void func_L00_002607A8(void *, float);
extern void func_L00_0025A8E8(int, float, void *, int, float, float, int, int, int);
extern int func_0022ED80_i(int, int, void *) __asm__("func_0022ED80");
extern float func_001F9CB8(void *);
extern void func_L00_00260FB0(void *, void *, int, int, void *, int, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L02_00265E88(void *, void *, void *, float);
extern void func_L00_0025A8C0(void *, void *, int, float, void *);
extern void func_L02_002661E8(void *, void *, void *);
extern void *func_L00_00265050(void *, int, void *, void *, int, int, void *, void *, float, void *);
extern void func_L00_00260108(void *, void *, int, float, float);
extern void func_L00_002584A8(void *, int, int);
extern void func_0020D678(void *);

extern void func_L00_00264B40_attack(void *,int,void *,float) __asm__("func_L00_00264B40");
extern int func_L16_002D00E8(char *,void *,float);
extern void func_L16_002D7248(char *);
extern float func_L00_0025CE58(float *,float *,float,float,float,float);
extern int func_00215B18(char *,float);

extern unsigned char *func_L16_002C75D0_attack(int,void *,float *,float,int) __asm__("func_L16_002C75D0");
extern void *func_L00_00265050_attack(void *,int,void *,void *,int,int,float,void *,void *,void *) __asm__("func_L00_00265050");

extern int func_L00_0025A8E8_attack(int,float,void *,int,float,float,int,int,int) __asm__("func_L00_0025A8E8");

typedef union { unsigned long long quad; float f[4]; } L16AttackVector;

/* Runs the path, throwing and particle attacks for the three enemy variants. */
void func_L16_002CF180(unsigned char *m) {
    L16AttackVector vectors[3];
    unsigned char fx[0x30];
    char *d = (*(char * *)((char *)(m) + ( 0x78)));
    float speed, gravity, x, y, angle;
    int next;
    char *position;
    func_L16_002CFDB8(m);
    { char *path = D_L16_001B0C30[(*(int *)((char *)(d) + ( 0xC4)))];
    func_L00_00264B40_attack(m, 2, d + 0x140, 2.5f);
    switch (m[0x20]) {
    case 0:
        (*(unsigned char *)((char *)(d) + (0x2E)))=1;
        if((*(int *)((char *)(d) + (0xC8)))>0) (*(short *)((char *)(m) + (0xB4)))/=(*(int *)((char *)(d) + (0xC8)));
        m[0x20]=1; m[0x31]=0; (*(unsigned short *)((char *)(m) + (0x34)))|=1;
        if(func_002140B0(2)) (*(unsigned short *)((char *)(m) + (0x34)))|=0x8000;
        (*(unsigned char *)((char *)(d) + (0x28)))=1; (*(short *)((char *)(d) + (0x24)))=2; (*(float *)((char *)(d) + (0x20)))=2.0f;
        (*(float *)((char *)(d) + (0x11C)))=func_00214158();
        (*(int *)((char *)(d) + (0xF8)))=func_L16_002D7178((*(int *)((char *)(d) + (0xCC))),m+0x10);
        qcopy(d+0xE0,m+0x10);
        switch((*(int *)((char *)(d) + (0xC0)))) {
        case 0: (*(char * *)((char *)(d) + (0x104)))=func_0020D348_m(0x35F); break;
        case 1: (*(char * *)((char *)(d) + (0x104)))=func_0020D348_m(0x374); break;
        case 2: (*(char * *)((char *)(d) + (0x104)))=func_0020D348_m(0x36C); func_L02_00265E58(d+0x120); break;
        }
        if((*(char * *)((char *)(d) + (0x104)))) {
            (*(unsigned short *)((char *)((*(char * *)((char *)(d) + (0x104)))) + (0x34)))|=0x100;
            (*(short *)((char *)((*(char * *)((char *)(d) + (0x104)))) + (0x32)))=0x40;
            (*(unsigned char *)((char *)((*(char * *)((char *)(d) + (0x104)))) + (0x30)))=0;
            (*(unsigned char *)((char *)((*(char * *)((char *)(d) + (0x104)))) + (0x31)))=1;
        }
        break;
    case 1: break;
    case 2:
        func_L16_002D7248((*(int *)((char *)(d) + (0xF8))));
        vectors[0].quad=(*(unsigned long long *)((char *)(path) + (0x10)));
        if(func_L16_002D00E8(m,vectors[0].f,(*(float *)((char *)(m) + (0x48))))) {
            (*(int *)((char *)(d) + (0xF0)))=func_001F9850(30);
            (*(int *)((char *)(d) + (0xDC)))=1; (*(int *)((char *)(d) + (0x108)))=1;
            if((*(int *)((char *)(d) + (0xC0)))==0) m[0x20]=3;
            else if((*(int *)((char *)(d) + (0xC0)))==1) m[0x20]=5;
            else m[0x20]=7;
        }
        break;
    case 3:
        if(func_001F9908((int *)(d+0xF0))) {
            vectors[0].quad=(*(unsigned long long *)((char *)(path+(*(int *)((char *)(d) + (0xDC)))*16) + (16)));
            if(func_L16_002D00E8(m,vectors[0].f,func_L00_001FF860(((float *)((unsigned int)path + ((unsigned int)((*(int *)((char *)(d) + (0xDC)))) << 4)))[4]-(*(float *)((char *)(m) + (16))),((float *)((unsigned int)path + ((unsigned int)((*(int *)((char *)(d) + (0xDC)))) << 4)))[5]-(*(float *)((char *)(m) + (20)))))) {
                (*(int *)((char *)(d) + (0xF0)))=func_001F9850(30); m[0x20]=4;
                if(m[0x53]!=21) func_00213DE0(m,21,0,func_001F9850(30));
                if(func_002140B0(2)) goto sound;
                (*(int *)((char *)(d) + (0xB4)))=2;
            }
        }
        break;
    case 4:
        if((*(int *)((char *)(d) + (0xB4)))==2) {
            int offset=((L16AttackTargets *)d)->target[(*(int *)((char *)(d) + (0xDC)))]<<7;
            char *entry=(char *)(offset+(int)D_L16_001601AC_m);
            qcopy(vectors[0].f,entry+0x30);
        }
        else qcopy(vectors[0].f,d+0x70);
        if(func_00215B18(m,15.0f) && (*(char * *)((char *)(d) + (0x104)))) {
            speed=(*(float *)((char *)(&D_L16_00161A8C) + (0)))*D_0015EE6C;
            gravity=D_0015EE70*10.0f;
            vectors[0].f[2]=func_00214358(vectors[0].f,0,0.5f);
            func_L00_00250800((*(char * *)((char *)(d) + (0x104))),0,vectors[1].f);
            func_001F9BF0(vectors[2].f,vectors[0].f,vectors[1].f); vectors[2].f[2]=0.0f;
            func_L00_001FF4B0(vectors[2].f,vectors[2].f,speed);
            vectors[2].f[2]=func_L00_0025BC48(vectors[1].f,vectors[0].f,0,speed,-gravity);
            func_L16_002C75D0_attack((int)m,vectors[1].f,vectors[2].f,gravity,func_001F9850(300));
        } else if(m[0x70]&2) {
            (*(int *)((char *)(d) + (0xDC)))=((*(int *)((char *)(d) + (0xDC)))+1)&1; m[0x20]=3;
            if(m[0x53]!=23) func_00213DE0(m,23,0,func_001F9850(30));
        }
        if(func_0020D830(m)<15.0f) {
            x=(*(float *)((char *)(m) + (16))); y=(*(float *)((char *)(m) + (20)));
            x=vectors[0].f[0]-x; y=vectors[0].f[1]-y;
            vectors[1].quad=(*(unsigned long long *)((char *)(m) + (16)));
        } else {
            int node=((*(int *)((char *)(d) + (0xDC)))+1)&1;
            vectors[1].quad=(*(unsigned long long *)((char *)(m) + (16)));
            x=((float *)((unsigned int)path + ((unsigned int)(node) << 4)))[4]; y=((float *)((unsigned int)path + ((unsigned int)(node) << 4)))[5];
            x-=(*(float *)((char *)(m) + (16))); y-=(*(float *)((char *)(m) + (20)));
        }
        func_L16_002D00E8(m,vectors[1].f,func_L00_001FF860(x,y));
        break;
    case 5:
        if(m[0x53]==10) {
            if(m[0x70]&2) func_00213DE0(m,11,0,1);
        } else {
            position=(char *)m+16;
            func_001F9BF0(vectors[0].f,path+((*(int *)((char *)(d) + (0xDC)))*16+16),position);
            func_L00_002607A8(vectors[0].f,(*(float *)((char *)(&D_L16_00161A90) + (0)))*D_0015EE6C);
            func_001F9BD8(position,position,vectors[0].f);
            func_L00_00250800(m,(*(int *)((char *)(&D_L16_00161A88) + (0))),vectors[1].f);
            func_L00_0025A8E8_attack((int)m,0.333f,vectors[1].f,1,1.0f,1.0f,0,1,0);
            { L16AttackPlayer *g=(L16AttackPlayer *)((char *)&D_0013E633_path+0xE1D);
            char *owner=D_L16_001742D8;
            if(owner==g->moby && g->busy==0) func_0022ED80_i(6,0,m); }
            if(func_001F9CB8(vectors[0].f)<0.0001f) {
                if(m[0x53]!=9) func_00213DE0(m,9,0,func_001F9850(20));
                m[0x20]=6;
                (*(int *)((char *)(d) + (0xF0)))=func_001F9850(60);
                if((*(int *)((char *)(d) + (0xDC)))==0) (*(int *)((char *)(d) + (0x108)))=1;
                else if((*(int *)((char *)(d) + (0xDC)))==(*(int *)((char *)(path) + (0)))-1) (*(int *)((char *)(d) + (0x108)))=-1;
            }
        }
        break;
    case 6: {
        float *yaw=(float *)(m+0x48);
        next=(*(int *)((char *)(d) + (0xDC)))+(*(int *)((char *)(d) + (0x108)));
        angle=func_L00_001FF860(((float *)((unsigned int)path + ((unsigned int)(next) << 4)))[4]-(*(float *)((char *)(m) + (16))),((float *)((unsigned int)path + ((unsigned int)(next) << 4)))[5]-(*(float *)((char *)(m) + (20))));
        func_L00_0025CE58(yaw,d+0xFC,angle,D_0015EE70*12.566371f,D_0015EE70*12.566371f,D_0015EE6C*25.132742f);
        if(func_001F9908((int *)(d+0xF0))) {
            (*(int *)((char *)(d) + (0xDC)))=next;
            if(m[0x53]!=10) func_00213DE0(m,10,0,func_001F9850(10));
            m[0x20]=5;
        }
        break;
    }
    case 7:
        if(func_001F9908((int *)(d+0xF0))) {
            vectors[0].quad=(*(unsigned long long *)((char *)(path+(*(int *)((char *)(d) + (0xDC)))*16) + (16)));
            if(func_L16_002D00E8(m,vectors[0].f,(*(float *)((char *)(m) + (0x48))))) {
                (*(int *)((char *)(d) + (0xF0)))=func_001F9850(30); m[0x20]=8;
                if(m[0x53]!=1) func_00213DE0(m,1,0,func_001F9850(30));
                if(func_002140B0(2)) {
                sound: {
                    char *p=D_L16_001B0C30[(*(int *)((char *)(d) + (0xD8)))];
                    func_L00_00260FB0(m,d+0x70,0,0,p+16,(*(int *)((char *)(p) + (0))),12.0f);
                }
                } else (*(int *)((char *)(d) + (0xB4)))=2;
            }
        }
        break;
    case 8:
        if((*(int *)((char *)(d) + (0xB4)))!=2) {
            vectors[0].quad=(*(unsigned long long *)((char *)(m) + (16)));
            func_L16_002D00E8(m,vectors[0].f,func_L00_001FF860((*(float *)((char *)(d) + (0x70)))-(*(float *)((char *)(m) + (16))),(*(float *)((char *)(d) + (0x74)))-(*(float *)((char *)(m) + (20)))));
        }
        if((*(char * *)((char *)(d) + (0x104)))) {
            char *slots;
            func_L00_00250800((*(char * *)((char *)(d) + (0x104))),0,vectors[0].f);
            slots=d+0x120;
            vectors[1].f[0]=func_001F9F90(func_L00_001FF860(vectors[0].f[0]-(*(float *)((char *)(m) + (16))),vectors[0].f[1]-(*(float *)((char *)(m) + (20)))));
            vectors[1].f[1]=func_001F9FA8(func_L00_001FF860(vectors[0].f[0]-(*(float *)((char *)(m) + (16))),vectors[0].f[1]-(*(float *)((char *)(m) + (20)))));
            vectors[1].f[2]=0.0f;
            func_L02_00265E88(slots,vectors[0].f,vectors[1].f,(*(float *)((char *)(&D_L16_00161A94) + (0))));
            vectors[1].f[3]=5627.925f; vectors[1].f[2]=1.0f;
            func_L00_0025A8C0(fx,m,0x10001,1.0f,vectors[1].f);
            { unsigned short cls=(*(unsigned short *)((char *)(m) + (0xA6)));
            fx[0x18]=5; fx[0x19]=1; (*(unsigned short *)((char *)(fx) + (0x1A)))=cls; }
            func_L02_002661E8(slots,m,fx);
        }
        if(m[0x70]&2) {
            (*(int *)((char *)(d) + (0xDC)))=((*(int *)((char *)(d) + (0xDC)))+1)&1; m[0x20]=7;
            if(m[0x53]!=3) func_00213DE0(m,3,0,func_001F9850(30));
        }
        break;
    case 9:
        vectors[0].quad=(*(unsigned long long *)((char *)(path+(*(int *)((char *)(d) + (0xDC)))*16) + (16)));
        func_L16_002D00E8(m,vectors[0].f,(*(float *)((char *)(d) + (0x10C))));
        if(m[0x70]&2) {
            m[0x20]=(*(unsigned char *)((char *)(d) + (0x110)));
            if(m[0x53]!=(*(int *)((char *)(d) + (0x114)))) func_00213DE0(m,(*(int *)((char *)(d) + (0x114))),0,func_001F9850(20));
        }
        break;
    case 10: {
        char *rot;
        int timer;
        float burst;
        position=(char *)m+16;
        rot=(char *)m+0x40;
        (*(float *)((char *)(d) + (0x20)))=2.0f; timer=func_001F9850(60);
        burst=D_0015EE70*12.0f; (*(int *)((char *)(d) + (0xF0)))=timer;
        func_L00_00265050_attack(m,0x655,position,rot,0,0,burst,D_L16_0015F660,D_L16_0015F660,D_L16_0015F660);
        func_L00_00265050_attack(m,0x656,position,rot,0,0,burst,D_L16_0015F660,D_L16_0015F660,D_L16_0015F660);
        func_L00_00265050_attack(m,0x657,position,rot,0,0,burst,D_L16_0015F660,D_L16_0015F660,D_L16_0015F660);
        qcopy(vectors[0].f,position); vectors[0].f[2]+=1.2f;
        func_L00_00260108(m,vectors[0].f,-1,0.5f,10.0f);
        func_L00_002584A8(m,0,-1); func_0022ED80_i(7,0,m);
        (*(int *)((char *)(d) + (0xC8)))--;
        if((*(int *)((char *)(d) + (0xC8)))!=-1) {
            m[0x20]=11; qcopy(position,d+0xE0); (*(int *)((char *)(d) + (0xF0)))=func_001F9850(60);
        } else {
            if((*(char * *)((char *)(d) + (0x104)))) func_0020D678((*(char * *)((char *)(d) + (0x104))));
            func_0020D678(m);
        }
        break;
    }
    case 11:
        if(func_001F9908((int *)(d+0xF0))) {
            (*(int *)((char *)(d) + (0xFC)))=0; m[0x20]=2;
            if(m[0x53]!=9) func_00213DE0(m,9,0,func_001F9850(10));
            (*(float *)((char *)(d) + (0x20)))=2.0f; (*(unsigned short *)((char *)(m) + (0x34)))|=0x1000;
        }
        (*(float *)((char *)(m) + (0x18)))=(*(float *)((char *)(d) + (0xE8)))+D_0015EE6C*3.0f*(float)(*(int *)((char *)(d) + (0xF0)));
        break;
    }
    }
}
