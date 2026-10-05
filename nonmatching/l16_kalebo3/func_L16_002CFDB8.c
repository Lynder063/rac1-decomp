/* NON_MATCHING func_L16_002CFDB8 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: SIZE ours 688 / retail 696, checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   State1 returns; status2 respawns/deletes and returns; otherwise refresh generation and resolve damage.
 *   Damage skips status1/states10/11; fatal becomes10, survivor caches old state, faces player, enters9, animates 
 *   Damage/visibility update then child joint transform: matrix copy, three basis scales, child refresh; repeat fi
 *   p0 COMPILE: D0238 is defined later with char* parameter; correct candidate forward declaration to match.
 *   p1 SIZE688/696 baseline: moby/data/constant register allocation shifts and current damage pointer coalesces wi
 *   p2 SIZE688 unchanged: aliasing damage from current still coalesces both pointers. Name the reused active state
 *   p3 SIZE688 unchanged: named state constant folds identically. Try a shared temporary pointer for saved respawn
 *   p4 SIZE688 unchanged: three consecutive wordings leave exactly the same differences. STOP; plain p1 preserved 
 */
#include "common.h"
extern int func_001F9850(int);
extern void func_L00_002584A8(void*,int,int);
extern void func_0020D678(void*);
extern void func_L16_002D0238(char*);
extern char *func_L00_0025B478(void*,int,int);
extern int func_L00_0025B4D0(void*,void*,void*,int,int*,float*,int,int);
extern float func_L00_001FF860(float,float);
extern void func_00213DE0(void*,int,int,int);
extern void func_L00_0025E4B0(void*,short*);
extern void func_L00_0025E590(void*,void*);
extern void func_L00_00250800(void*,int,void*);
extern void func_0020DAF8(void*,int,void*);
extern void func_001FA480(void*,void*);
extern void func_L00_001FF4B0(void*,void*,float);
extern void func_L00_00251E30(void*);
extern int D_L16_0015F6B0 MACRO_ADDR;
extern short D_L16_00161A88;
extern char D_0013E633[];
typedef struct {int status;float amount;} L16RespawnHit;
typedef struct {char pad[0x80];float position[4];} L16RespawnPlayer;
typedef struct {char pad00[7]; unsigned char ticks; char pad08[0x58];} L16RespawnDamage;
typedef struct {
    char pad00[0x20]; float health; char pad24[10]; unsigned char substate;
    char pad2F[0x31]; L16RespawnDamage damage; char padC0[8]; int lives;
    char padCC[0x14]; float position[4]; int timer; char padF4[0x10];
    char *child; char pad108[4]; float heading; int previous_state, previous_animation, frame;
} L16RespawnData;
typedef struct {
    char pad00[0x10]; float position[4]; unsigned char state;
    char pad21[0x13]; unsigned short flags; char pad36[0x1D]; unsigned char animation;
    char pad54[0x24]; L16RespawnData *data; char pad7C[0x28]; unsigned char opacity;
    char padA5[0x1B]; float matrix[3][4];
} L16RespawnMoby;
/* Handle respawning, hit reactions and an attached joint object. */
void func_L16_002CFDB8(L16RespawnMoby *m) {
    float matrix[16],zero;
    L16RespawnHit hit;
    L16RespawnData *d;
    void *damage;
    char *record;
    if(m->state==1) return;
    d=m->data;
    if(d->substate==2) {
        d->substate=1;d->health=2.0f;d->timer=func_001F9850(60);
        func_L00_002584A8(m,0,-1);
        m->flags&=0xEFFF;
        d->lives--;
        if(d->lives!=-1) {
            m->state=11;qcopy(m->position,d->position);d->timer=func_001F9850(60);
        } else {
            if(d->child) func_0020D678(d->child);
            func_0020D678(m);
        }
        return;
    }
    if(d->frame!=D_L16_0015F6B0) func_L16_002D0238((char *)m);
    hit.amount=zero=0.0f;
    record=func_L00_0025B478(m,0x330000,0);
    damage=&d->damage;
    func_L00_0025B4D0(m,record,&d->health,0,&hit.status,&hit.amount,0,4);
    if(hit.status!=1 && m->state!=10 && m->state!=11) {
        d->health-=hit.amount;
        if(d->health<=zero) m->state=10;
        else {
            if(m->state!=9) {d->previous_state=m->state;d->previous_animation=m->animation;}
            {float x=m->position[0],y=m->position[1];
            L16RespawnPlayer *player=(L16RespawnPlayer*)(D_0013E633+0xE1D);
            d->heading=func_L00_001FF860(player->position[0]-x,player->position[1]-y);}
            m->state=9;
            if(m->animation!=8) func_00213DE0(m,8,2,1);
            {short *current=(short*)(&d->damage);
            d->damage.ticks=120;func_L00_0025E4B0(m,current);damage=current;}
        }
    }
    m->opacity=255;func_L00_0025E590(m,damage);
    if(d->child) {
        func_L00_00250800(m,(*(int *)&D_L16_00161A88),((L16RespawnMoby *)d->child)->position);
        func_0020DAF8(m,(*(int *)&D_L16_00161A88),matrix);
        func_001FA480(((L16RespawnMoby *)d->child)->matrix[0],matrix);
        func_L00_001FF4B0(((L16RespawnMoby *)d->child)->matrix[0],((L16RespawnMoby *)d->child)->matrix[0],1.0f);
        func_L00_001FF4B0(((L16RespawnMoby *)d->child)->matrix[1],((L16RespawnMoby *)d->child)->matrix[1],1.0f);
        func_L00_001FF4B0(((L16RespawnMoby *)d->child)->matrix[2],((L16RespawnMoby *)d->child)->matrix[2],1.0f);
        func_L00_00251E30(d->child);
    }
    func_L00_0025E590(m,damage);
}
