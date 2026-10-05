/* NON_MATCHING func_L16_002CB098 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: BYTES 11/984 (98.9% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   p1 BYTES114/984: derived secondary stream removes fp spill, but recomputes its address per vertex and changes 
 *   p2 SIZE996 unchanged: unsigned draw address still shares packet2 base in fp. Use indexed secondary vertices so
 *   p3 BYTES81/984: indexed secondary qcopy removes all extra spill/save code. Only four-vertex setup/register all
 *   p4 BYTES32/984: indexed streams recover every UV/color/source register. Remaining point stream anchored at pac
 *   p5 BYTES16/984: direct UV loads fix all FP instructions and primary cursor fixes all registers/offsets. Only t
 *   p6 BYTES34: deriving primary from index places setup/increment after all streams. Keep p5 primary cursor but p
 *   p7 BYTES24: for header fixes counter setup but schedules primary cursor advance after every derived stream. Te
 *   p8 BYTES34 unchanged from p6: byte-address indexing canonicalizes to the same stream order. STOP at loop sched
 */
#include "common.h"
extern char *D_L16_001601AC_m __asm__("D_L16_001601AC") MACRO_ADDR;
extern int D_L16_0015F6B0 MACRO_ADDR;
extern float func_001F9CB8(void *);
extern float func_001FA888(int);
extern float func_001F9FA8(float);
extern int func_001F4868(int);
extern void func_L00_001FD1D8(void *,void *,int);
extern float D_L16_001D32C0[][2],D_L16_001D32E0[][2],D_L16_001D3300[][4];
extern short D_L16_00161A68,D_L16_00161A6C,D_L16_00161A50,D_L16_00161A70;
extern short D_L16_00161A58,D_L16_00161A5C,D_L16_00161A60,D_L16_00161A64,D_L16_00161A54;
extern int func_001FA898_caa18(float) __asm__("func_001FA898");
extern int func_001FA8A8_caa18(int,int,float) __asm__("func_001FA8A8");
extern int func_001F9850(int);
typedef struct {
    float point[4][4]; int color[4]; struct {float u,v;} uv[4];
    long zero,texture,flags,mode;
} L16RibbonPacket;
/* Draw paired textured strips along an indexed pose, fading the end caps. */
void func_L16_002CB098(char *m) {
    L16RibbonPacket packets[2];
    char *d=*(char **)(m+0x78);
    float scale=func_001F9CB8(D_L16_001601AC_m+((*(int *)(d+0x60))<<7))*2.001f;
    int count=func_001FA898_caa18(scale);
    float step=2.0f/scale;
    int period,tint,color,limit,j;
    float phase;
    long modebits,flags;
    (*(float *)((char *)d+0x70))=(*(float *)((char *)d+0x70))+(*(float *)((char *)d+0x6C));
    if((*(float *)((char *)d+0x70))>1.0f) (*(float *)((char *)d+0x70))-=1.0f;
    else if((*(float *)((char *)d+0x70))<0.0f) (*(float *)((char *)d+0x70))+=1.0f;
    modebits=0x8000000000L;
    period=func_001F9850(120);
    flags=0xFF9000000260L;
    limit=count+2;
    phase=func_001FA888(D_L16_0015F6B0%period);
    phase=phase/func_001FA888(period);
    phase=func_001F9FA8(phase*6.28318f-3.14159f)*0.5f+0.5f;
    tint=func_001FA8A8_caa18((*(int *)&D_L16_00161A68),(*(int *)&D_L16_00161A6C),phase);
    color=(*(int *)&D_L16_00161A70);
    packets[0].texture=func_001F4868((*(int *)&D_L16_00161A50));
    packets[0].mode=(long)(*(int *)&D_L16_00161A58)|((long)(*(int *)&D_L16_00161A5C)<<2)|((long)(*(int *)&D_L16_00161A60)<<4)|((long)(*(int *)&D_L16_00161A64)<<6)|modebits;
    packets[0].flags=flags; packets[0].zero=0;
    packets[1].texture=func_001F4868((*(int *)&D_L16_00161A54));
    packets[1].mode=(long)(*(int *)&D_L16_00161A58)|((long)(*(int *)&D_L16_00161A5C)<<2)|((long)(*(int *)&D_L16_00161A60)<<4)|((long)(*(int *)&D_L16_00161A64)<<6)|modebits;
    packets[1].flags=flags; packets[1].zero=0;
    { int vertex;
      for(vertex=0;vertex<4;vertex++) {
          packets[0].uv[vertex].u=D_L16_001D32C0[vertex][0];
          packets[0].uv[vertex].v=D_L16_001D32C0[vertex][1];
          packets[1].uv[vertex].u=D_L16_001D32E0[vertex][0]-(*(float *)(d+0x70));
          packets[1].uv[vertex].v=D_L16_001D32E0[vertex][1];
          packets[0].color[vertex]=tint; packets[1].color[vertex]=color;
          qcopy(packets[1].point[vertex],D_L16_001D3300[vertex]);
          qcopy(packets[0].point[vertex],D_L16_001D3300[vertex]);
          if(vertex<2) { packets[1].point[vertex][0]-=step; packets[0].point[vertex][0]-=step; }
      }
    }
    { int strip;
    for(strip=0;strip<limit;strip++) {
        if(strip==0) {packets[0].color[1]=0;packets[0].color[0]=0;packets[1].color[1]=0;packets[1].color[0]=0;}
        else if(strip==count+1) {packets[0].color[3]=0;packets[0].color[2]=0;packets[1].color[3]=0;packets[1].color[2]=0;}
        else if(strip==1) {packets[0].color[1]=tint;packets[0].color[0]=tint;packets[1].color[1]=color;packets[1].color[0]=color;}
        func_L00_001FD1D8(&packets[0],D_L16_001601AC_m+((*(int *)(d+0x60))<<7),0);
        func_L00_001FD1D8(&packets[1],D_L16_001601AC_m+((*(int *)(d+0x60))<<7),0);
        {float *point=packets[0].point[0];
        for(j=3;j>=0;j--) {float a=*point+step,b=(*(float *)((char *)point+0x90))+step;*point=a;(*(float *)((char *)point+0x90))=b;point+=4;}
        }
    }
}
}
