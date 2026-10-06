/* NON_MATCHING func_L16_002E9018 -- src/overlays/l16_kalebo3/vendor_002E7C70.c
 * Best so far: SIZE ours 604 / retail 608, checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   16. SIZE604/608: nextRank-only entry still hoists signed-short narrowing and rank conversion before the random
 *   Frame F0; object list SP0, s0-s7/fp/f20/f21. Count s5, rank s2, previous s7, stable last fp, modulus s4.
 *   Null list/path returns; do-while gathers signed-short terminated IDs and count.
 *   Outer count loop: last slot direct, others random unused object with wrapped forward search; branch-local next
 *   Flags and scale then spacing, predecessor and period stores; randomized height/speed and state1.
 *   Short rank truncates only at loop end; integer next index moves to counter before setup calls.
 *   p0 SIZE620/608 confirms staged source. Trial p1 makes branch-local rank float/next rank/next index explicit, p
 *   p1 SIZE592/608: explicit rank lifetimes lose fp stable-last alias and change rank/counter allocation; preserve
 */
#include "common.h"
extern int func_002140B0(int);
extern float func_001FA888(int);
extern float func_002140F8(float,float);
extern short *D_L16_001ABFC0[];
extern char *D_L16_001B0C30[];
extern char *D_L16_00160098 MACRO_ADDR;
extern short D_L16_00161F50,D_L16_00161F54,D_L16_00161F3C,D_L16_00161F40,D_L16_00161F30,D_L16_00161F34;
extern float D_0015EE6C MACRO_ADDR;
typedef struct {int path_index;float parameter,speed,period;char *owner;float height_step,target_speed;short countdown,token;} L16SpacingData;
typedef struct {
    char pad00[0x20]; unsigned char state,group;char pad22[10];float scale;
    unsigned char collision;char pad31[1];unsigned short flags;char pad34[0x44];
    L16SpacingData *data;char pad7C[0x18];int bounds;char pad98[0x68];
} L16SpacingMoby;
typedef struct {int count;char pad04[12];float point[1][4];} L16SpacingPath;
/* Randomly order path followers and initialize their spacing and speed. */
void func_L16_002E9018(L16SpacingMoby *m) {
    L16SpacingMoby *objects[16],*previous;
    L16SpacingData *d=m->data;
    short *list=D_L16_001ABFC0[m->group];
    short count=0,rank;
    int i,last;
    float period;
    if(list==0 || d->path_index==-1) return;
    period=(float)((L16SpacingPath *)D_L16_001B0C30[d->path_index])->count-1.0f;
    do {objects[count]=(L16SpacingMoby *)(D_L16_00160098+((*(unsigned short*)list&0x7FFF)<<8));count++;} while(*list++>=0);
    previous=objects[count-1];rank=count;last=count-1;
    i=0;
    if(count>0) {int modulus=last;
    do {
        L16SpacingMoby *current;
        L16SpacingData *data;
        int nextI,nextRank=rank-1;float fraction;
        if(i==last) {nextI=i+1;fraction=(float)rank;current=objects[i];}
        else {
            int selected=func_002140B0(last);
            fraction=(float)rank;nextI=i+1;
            if(objects[selected]!=0) {current=objects[selected];objects[selected]=0;}
            else {
                do {selected=(selected+1)%modulus;} while(objects[selected]==0);
                current=objects[selected];objects[selected]=0;
            }
        }
        {unsigned short flags=*(unsigned short*)&D_L16_00161F50;
        current->collision=255;
        current->scale=*(float*)&D_L16_00161F54 * current->scale;
        current->bounds=0;
        current->flags=flags;
        data=current->data;
        {float spacing=period/func_001FA888(count);
        float heightLo=*(float*)&D_L16_00161F3C,heightHi=*(float*)&D_L16_00161F40;
        data->owner=(char *)previous;data->period=period;previous=current;
        data->parameter=fraction*spacing;
        {float height=func_002140F8(heightLo,heightHi);
        float speedLo=*(float*)&D_L16_00161F30,speedHi=*(float*)&D_L16_00161F34;
        data->height_step=height;
        data->speed=func_002140F8(speedLo,speedHi)*D_0015EE6C;}}
        data->target_speed=data->speed;
        previous->state=1;
        i=nextI;rank=nextRank;
        }
    } while(i<count);
    }
}
