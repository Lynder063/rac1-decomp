/* NON_MATCHING func_L00_002A9768 -- src/overlays/shared/vendor_002A5138.c
 * Best so far: SIZE ours 4648 / retail 4652, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   p18/run19 BYTES478/4652. Confirmed int callee return, integer count declared before scale, shared direction at
 *   p19/run20 BYTES532/4652. Earlier shared direction definition changes pointer scheduling; swing row pointer tes
 *   p20/run21: func_L00_002A9768: BYTES 478/4652   (src/overlays/shared/vendor_002A5138.c)   [run 21 of 30]; inlin
 *   p21/run22 BYTES478/4652. Native 32-bit direction-address scalar folds to same pointer instructions; p20 and p2
 *   p22/run23 BYTES458/4652. Direct angle-call branches move scheduling; redundant local pointer widen/narrow rema
 *   p23/run24: func_L00_002A9768: BYTES 458/4652   (src/overlays/shared/vendor_002A5138.c)   [run 24 of 30]; plain
 *   p24/run25: func_L00_002A9768: BYTES 458/4652   (src/overlays/shared/vendor_002A5138.c)   [run 25 of 30]; share
 *   STOP: p22, p23, p24 have identical compiler instructions and branch graph after bijective local-label normaliz
 */
#include "common.h"
typedef unsigned int WQuad48 __attribute__((mode(TI)));
typedef float WVec48[4] __attribute__((aligned(16)));
typedef struct Wrench48 Wrench48;
typedef struct { char pad0[0x46]; short kind; } WModel48;
typedef struct {
    char pad0[0x40]; WVec48 direction,target;
    float speed,acceleration; int pad68,timer; float hit_blend;
    short animation_count,collision,animation78,pad7A,previous_count,aim_hit;
} WData48;
struct Wrench48 {
    char pad0[0x10]; WVec48 position; unsigned char state,pad21[3]; WModel48 *model;
    char pad28[0x28]; unsigned char frame,frame_end,animation,current_animation;
    float animation_time,animation_scale; char pad5C[0x14]; unsigned char animation_flags;
    char pad71[7]; WData48 *data; char pad7C[0x2A]; unsigned short class_id;
    char padA8[0x10]; Wrench48 *parent;
};
typedef struct {
    char pad0[0x80]; WVec48 position; char pad90[8]; float yaw; char pad9C[0xA4]; WVec48 velocity; char pad150[0x48];
    int state_timer; char pad19C[0x854]; WVec48 sweep_start,sweep_end,previous_start,previous_end;
    char padA30[0x30]; int attack_index,attack_cooldown; float reaction_yaw; char padA6C[0x10];
    unsigned short hit_index; char padA7E[0x12]; float animation_scale; char padA94[8]; int blocked;
    char padAA0[8]; float animation_frame; unsigned char padAAC[4]; int selected_weapon,weapon_animation;
    char padAB8[0x5F2]; unsigned char thrown,pad10AB,wrench_state; char pad10AD[7]; int mode;
    char pad10B8[0xFC8]; Wrench48 *moby; int state,pad2088,move_mode;
    char pad2090[0x1E]; unsigned char alternate; char pad20AF[4]; unsigned char no_ground_adjust;
    char pad20B4[0x168]; int thrown_sound;
} WPlayer48;
typedef struct { char pad0[0x140]; WVec48 position; float pad150,pitch,yaw; } WCamera48;
typedef struct { int pad0,side; char pad8[0x14]; int first_frame,last_frame; char pad24[8]; } WAttack48;
typedef struct { char pad0[0x18]; Wrench48 *moby; int surface; WVec48 position; } WHit48;
typedef struct { char pad0[0x14]; short hit_index; char pad16[6]; short hit_count; } WDamage48;
typedef struct {
    char pad0[8]; float force,range; char pad10[8]; unsigned char flags,enabled; unsigned short class_id;
} WQuery48;
typedef union {
    WVec48 v[8]; WQuad48 q[8]; WQuery48 query;
    struct { WVec48 pad0; WQuery48 query; } shifted;
} WWorkspace48;
extern WCamera48 wrench_camera48 __asm__("D_L00_00166D80");
extern WHit48 wrench_hit48 __asm__("D_L00_00173F40");
extern WAttack48 D_L00_0017BD28[];
extern Wrench48 *D_L00_00178000[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE74 MACRO_ADDR;
extern unsigned char D_0013E650[];
extern void reticle48(int,int,float,float,int,int,int,float,int) __asm__("func_L00_001EE2E0");
extern void func_L00_002A8A20(void);
extern int func_L00_001EFFF0(void*,void*,int,int,int);
extern void func_L00_00250800(void*,int,void*);
extern float func_001F9F90(float);
extern int func_L00_001F3958(void);
extern int func_L00_0025F3C0(char*);
extern void func_L00_0025AC00(void*,int,int,void*,void*,float);
extern int func_L00_00211F28(float);
extern void func_L00_00233F68(float*,float*,float);
extern void func_L00_0025A8C0(void*,void*,int,float,void*);
extern void func_L00_001FF500(void*,void*,float);
extern int func_L00_0025AD60(void*,void*,void*,void*,void*,void*,int);
extern int sphere48(void*,float,int,void*,void*) __asm__("func_L00_001F2BE8");
extern void func_L00_00222B80(int,int);
extern void func_L00_00263680(void*,int);
extern void func_L00_002634F8(char*,float,float,float);
extern int func_001F9908(int*);
extern float func_00214358(void*,int,float);
extern float func_00214D28(float*,float,float);
extern void func_L00_00232EC0(int);
extern void func_L00_0028EBF0(int);
extern int func_L00_00217570(int,int);
extern void func_L00_002638B8(char*);
extern int func_L00_0025F410(int);
extern void func_L00_0025C710(void*,void*,void*,float);

static __inline__ WPlayer48 *wplayer48(void) { return (WPlayer48*)D_0013F450; }

static __inline__ float *wend48(void) { return (float*)(D_0013E633+0x181D); }

static __inline__ unsigned long wdelta48(int animation) { return (unsigned char)(animation-15); }
static __inline__ float *wvelocity48(void) { return (float*)(D_0013E633+0xF5D); }

static __inline__ unsigned char *waudio48(int slot) { return D_0013E650+slot*0x70; }

static __inline__ WPlayer48 *sweepp48(void) { return (WPlayer48*)((char*)wend48()-0xA00); }

/* Updates normal wrench swings and its thrown/returning collision sweep. */
void func_L00_002A9768(Wrench48 *m) {
    WData48 *d=m->data;
    WWorkspace48 work;
    WPlayer48 *initial_player=wplayer48();
    initial_player->wrench_state=0;
    if (initial_player->mode==3) return;
    switch (m->state) {
    case 0: {
        int player_state;
        int anim;
        Wrench48 *player_moby;
        WAttack48 *attack;
        int active,reaction;
        float difference,yaw;
        m->parent=initial_player->moby;
        player_state=initial_player->state;
        if (player_state==1) {
            if (*(int*)(D_0013A5E0+0x2600)&0xA)
                reticle48((int)m,0xFF917267,1.0f,0.0f,0,0x25,-1,90.0f,4);
            d->aim_hit=0;
            func_00215C00(work.v[0],10.0f,wrench_camera48.yaw,-wrench_camera48.pitch);
            func_001F9BD8(work.v[0],work.v[0],wrench_camera48.position);
            if (func_L00_001EFFF0(wrench_camera48.position,work.v[0],4,(int)initial_player->moby,0)) {
                d->aim_hit=player_state; qcopy(d->target,D_L00_00173F60);
            }
        }
        func_001F49B0(func_L00_002A8A20,m);
        anim=m->current_animation;
        if ((unsigned char)anim!=0) {
            if ((unsigned char)anim==14) {
                if (m->animation_flags&2) func_00213DE0(m,1,0,func_001F9850(5));
                return;
            } else if (wplayer48()->alternate) {
                if (wdelta48(anim)>=2U) func_00213DE0(m,15,0,func_001F9850(4));
                else if ((m->animation_flags&2) && (unsigned char)anim==15)
                    func_00213DE0(m,16,0,func_001F9850(5));
                return;
            } else if (wdelta48(anim)<2U) {
                func_00213DE0(m,14,0,func_001F9850(2)); return;
            }
        }
        if ((m->animation_flags&2) && wplayer48()->state!=0x3B && m->current_animation!=1)
            func_00213DE0(m,1,0,func_001F9850(5));
        func_L00_002A8F10((char*)m);
        {
        int current_state=wplayer48()->state;
        if (current_state!=19 && current_state!=33 && current_state!=43 && current_state!=112 && current_state!=20) {
            int current=m->current_animation;
            if ((unsigned int)current>=3 && m->current_animation<6)
                func_00213DE0(m,1,0,func_001F9850(4));
        }
        }
        player_moby=wplayer48()->moby;
        if (player_moby->current_animation!=player_moby->animation || (int)player_moby->frame_end-player_moby->frame>=3)
            d->animation_count++;
        m->animation_scale=wplayer48()->animation_scale;
        attack=&D_L00_0017BD28[wplayer48()->attack_index];
        if (wplayer48()->move_mode!=6 && wplayer48()->state!=43) break;
        active=1; reaction=0;
        if (wplayer48()->blocked || wplayer48()->animation_frame<(float)attack->first_frame || (float)attack->last_frame<wplayer48()->animation_frame) active=0;
        {
            int reset=0;
            if (d->previous_count!=d->animation_count) {
                Wrench48 *pm=wplayer48()->moby;
                int a=pm->animation;
                if (a==pm->current_animation) {
                    if (a==23) reset=0.0f<=wplayer48()->animation_frame;
                    else if (a==24) reset=0.0f<=wplayer48()->animation_frame;
                    else if (a==25) reset=12.0f<=wplayer48()->animation_frame;
                    else if (a==43) reset=23.0f<=wplayer48()->animation_frame;
                }
            }
            if (reset) { d->hit_blend=1.0f; d->previous_count=d->animation_count; }
        }
        difference=0.0f; yaw=wplayer48()->yaw;
        qcopy(wplayer48()->previous_end,wplayer48()->sweep_end);
        qcopy(wplayer48()->previous_start,wplayer48()->sweep_start);
        func_L00_00250800(m,1,wplayer48()->sweep_end);
        func_L00_00250800(wplayer48()->moby,0,wplayer48()->sweep_start);
        if (wplayer48()->state==19 || wplayer48()->state==112 || wplayer48()->state==43) {
            float side;
            yaw=func_L00_001FF860(wplayer48()->sweep_end[0]-wplayer48()->position[0],wplayer48()->sweep_end[1]-wplayer48()->position[1]);
            side=D_L00_0017BD28[wplayer48()->attack_index].side==1 ? -1.5707964f : 1.5707964f;
            yaw=func_001FA748(yaw,side);
        }
        func_001F9BF0(work.v[0],wend48(),(wend48()-4));
        func_L00_001FF4B0(work.v[0],work.v[0],func_001F9CB8(work.v[0])+0.17f);
        if (sweepp48()->move_mode!=15 && sweepp48()->state!=112 && sweepp48()->state!=20) {
            difference=func_001FA850(sweepp48()->yaw,func_L00_001FF860(wend48()[0]-sweepp48()->position[0],wend48()[1]-sweepp48()->position[1]));
            if (difference>1.5707964f) active=0;
            func_L00_002A96B8(work.v[0]);
        }
        func_001F9BD8(wend48(),(wend48()-4),work.v[0]);
        if (sweepp48()->state!=43 && sweepp48()->state!=112 && difference<1.2217305f && func_001F9850(10)<sweepp48()->state_timer) {
            float angle;
            qcopy(work.v[0],sweepp48()->position); work.v[0][2]+=0.5f;
            angle=func_L00_001FF860(wend48()[0]-sweepp48()->position[0],wend48()[1]-sweepp48()->position[1]);
            qcopy(work.v[1],sweepp48()->position); work.v[1][2]+=0.5f;
            work.v[2][0]=func_001F9F90(angle)*1.4f; work.v[2][1]=func_001F9FA8(angle)*1.4f; work.v[2][2]=0.0f;
            func_L00_002A96B8(work.v[2]); func_001F9BD8(work.v[1],work.v[1],work.v[2]);
            if (!sweepp48()->attack_cooldown && func_L00_001EFFF0(work.v[0],work.v[1],2,0,0) && func_L00_001F3958()) {
                if (!wrench_hit48.moby || func_L00_0025F3C0((char*)wrench_hit48.moby)) {
                    sweepp48()->attack_cooldown=1; func_0022ED80(2,0,(int)m); func_L00_002A92C8((char*)m);
                    if (wrench_hit48.moby) {
                        work.v[3][0]=func_001F9F90(yaw); work.v[3][1]=func_001F9FA8(yaw); work.v[3][2]=0.0f;
                        func_L00_0025AC00(wrench_hit48.moby,(int)m,0x10000,wrench_hit48.position,work.v[3],1.0f);
                    }
                }
            }
        }
        if (sweepp48()->state==20 && func_L00_00211F28(27.0f)) {
            func_0022ED80(2,0,(int)m);
            qcopy(work.v[0],wend48()); qcopy(work.v[1],work.v[0]);
            func_L00_00233F68(work.v[0],work.v[0],0.7f); func_L00_00233F68(work.v[1],work.v[1],-0.9f);
            if (func_L00_001EFFF0(work.v[0],work.v[1],2,0,0)) func_L00_002A92C8((char*)m);
        }
        if (active) {
            float scale=1.0f,radius;
            int count=1;
            if (sweepp48()->state==20) { scale=1.55f; count=2; }
            work.v[3][0]=func_001F9F90(yaw); work.v[3][1]=func_001F9FA8(yaw); work.v[3][2]=0.0f;
            func_L00_0025A8C0(work.v[0],m,0x10000,(float)count,work.v[3]); func_L00_001FF500(work.v[0],work.v[0],scale);
            work.query.force=1.0f; work.query.range=5627.925f; work.query.enabled=1; work.query.class_id=m->class_id; work.query.flags=0;
            if (func_L00_0025AD60((wend48()-4),wend48(),sweepp48()->previous_start,sweepp48()->previous_end,sweepp48()->moby,&work,5) && wrench_hit48.moby) {
                if (func_L00_002A9080()) reaction=1;
                else if (!sweepp48()->attack_cooldown) {
                    if (!wrench_hit48.moby || !wrench_hit48.moby->model || wrench_hit48.moby->model->kind!=20) {
                        sweepp48()->attack_cooldown=1; func_0022ED80(func_L00_002A9030(),0,(int)m); func_L00_002A92C8((char*)m);
                    }
                }
            }
            func_001F9BF0(work.v[5],wend48(),(wend48()-4));
            func_L00_001FF4B0(work.v[5],work.v[5],func_001F9CB8(work.v[5])-0.085f);
            func_001F9BD8(work.v[4],work.v[5],(wend48()-4));
            radius=0.35f;
            if (sweepp48()->move_mode==15) radius=0.7f;
            if (sweepp48()->state==20) radius=0.47f;
            if (sphere48(work.v[4],radius,0,sweepp48()->moby,work.v[0]) && (!D_L00_00178000[0] || !D_L00_00178000[0]->model || D_L00_00178000[0]->model->kind!=18)) {
                if (func_L00_002A9080()) reaction=1;
                else if (!sweepp48()->attack_cooldown) { sweepp48()->attack_cooldown=1; func_0022ED80(func_L00_002A9030(),0,(int)m); func_L00_002A92C8((char*)m); }
            }
        }
        if (reaction) {
            func_L00_00222B80(33,1);
            if (D_L00_00173F58) {
                Wrench48 *target=(Wrench48*)D_L00_00173F58;
                wplayer48()->reaction_yaw=func_L00_001FF860(wplayer48()->position[0]-target->position[0],wplayer48()->position[1]-target->position[1]);
            } else wplayer48()->reaction_yaw=func_001FA748(wplayer48()->yaw,3.1415927f);
        }
        break;
    }
    case 10: case 11: {
        int collided;
        float *position;
        float *direction;
        float radius;
        func_L00_00263680(D_0013E633+0x25CD,0);
        m->parent=wplayer48()->moby; wplayer48()->wrench_state=2;
        if (m->state==10 && wplayer48()->thrown_sound==-1) wplayer48()->thrown_sound=func_0022ED80(14,4,(int)wplayer48()->moby);
        func_L00_002634F8((char*)m,0.0f,0.0f,D_0015EE6C*24.434608f);
        if (wplayer48()->attack_cooldown && func_001F9908(&d->timer)) wplayer48()->attack_cooldown=0;
        position=m->position;
        if (!wplayer48()->no_ground_adjust) {
            float ground=func_00214358(position,0,0.5f);
            if (m->position[2]-ground<0.8f) {
                ground+=0.55f;
                if (m->position[2]<ground) func_00214D28(&m->position[2],ground,D_0015EE6C*4.0f);
                else func_00214D28(&m->position[2],ground,D_0015EE6C);
            }
        }
        qcopy(work.v[0],position);
        if (m->state==10) {
            float *throw_direction;
            qcopy(work.v[1],wvelocity48());
            throw_direction=d->direction;
            func_001F9C30(work.v[1],work.v[1],0.7f);
            func_001F9BD8(position,position,work.v[1]);
            direction=throw_direction;
            func_L00_001FF4B0(work.v[1],throw_direction,d->speed); func_001F9BD8(position,position,work.v[1]);
            d->acceleration+=D_0015EE74*170.0f;
            func_00214D28(&d->speed,0.0f,d->acceleration);
            if (d->speed==0.0f) m->state=11;
        } else {
            int arrived=0;
            float length,steps;
            func_L00_002A9560((char*)m);
            func_001F9BF0(work.v[1],D_0013E633+0x1E8D,position);
            d->acceleration+=D_0015EE70*0.9f; d->speed+=d->acceleration;
            length=func_001F9CB8(work.v[1]); steps=d->speed; steps=length/steps;
            if (steps<(float)func_001F9850(5) && m->current_animation!=1) func_00213DE0(m,1,0,func_001F9850(5));
            if (length<=d->speed) { d->speed=length; arrived=1; }
            func_L00_001FF4B0(work.v[1],work.v[1],d->speed); func_001F9BD8(position,position,work.v[1]);
            steps=d->speed; steps=length/steps;
            if (steps<(float)func_001F9850(4) && wplayer48()->selected_weapon!=-1) {
                int sound;
                func_L00_00232EC0(2); wplayer48()->weapon_animation=26;
                sound=wplayer48()->thrown_sound;
                if (sound!=-1) { unsigned char *audio=waudio48(sound); if (*(Wrench48**)(audio+0x88)==wplayer48()->moby && audio[0x74]) func_L00_0028EBF0(sound); }
                wplayer48()->thrown_sound=-1;
            }
            direction=d->direction;
            if (arrived) {
                int sound;
                func_L00_00217570(5,0);
                sound=wplayer48()->thrown_sound;
                if (sound!=-1) { unsigned char *audio=waudio48(sound); if (*(Wrench48**)(audio+0x88)==wplayer48()->moby && audio[0x74]) func_L00_0028EBF0(sound); }
                wplayer48()->thrown_sound=-1; func_L00_002638B8(D_0013E633+0x25CD); wplayer48()->thrown=0; m->state=0;
            }
        }
        collided=0;
        if (func_L00_001EFFF0(work.v[0],position,2,0,0) && func_L00_001F3958() && (!wrench_hit48.moby || !func_L00_0025F410((int)wrench_hit48.moby))) collided=wrench_hit48.surface!=0;
        if (collided || d->collision) {
            d->collision=0;
            if (!wplayer48()->attack_cooldown) { d->timer=func_001F9850(30); wplayer48()->attack_cooldown=1; func_0022ED80(2,0,(int)m); }
            if (m->state==10) { func_L00_002A92C8((char*)m); d->speed*=0.5f; m->state=11; }
        }
        radius=1.2f; if (m->state==11) radius=-0.37f;
        func_L00_001FF4B0(work.v[4],direction,radius);
        func_L00_0025A8C0(work.v[1],m,0x10000,1.0f,work.v[4]);
        work.shifted.query.force=1.0f; work.shifted.query.range=5627.925f;
        work.shifted.query.enabled=1; work.shifted.query.class_id=wplayer48()->hit_index+1; work.shifted.query.flags=0;
        func_L00_00250800(m,1,work.v[5]);
        if (sphere48(work.v[5],0.4f,0,wplayer48()->moby,work.v[1]) || (func_L00_00250800(m,0,work.v[5]),sphere48(work.v[5],0.4f,0,wplayer48()->moby,work.v[1]))) {
            if (!wplayer48()->attack_cooldown && wrench_hit48.moby && (!wrench_hit48.moby->model || wrench_hit48.moby->model->kind!=20)) {
                WDamage48 *hit=(WDamage48*)func_L00_0025D390(wrench_hit48.moby);
                if (!hit || hit->hit_count<2 || hit->hit_index!=work.shifted.query.class_id) {
                    work.q[7]=*(WQuad48*)wrench_hit48.moby->position;
                    func_L00_0025C710(work.v[6],work.v[5],work.v[7],0.5f); func_L00_002A90C0(work.v[6],5);
                    d->timer=func_001F9850(30); wplayer48()->attack_cooldown=1; func_0022ED80(func_L00_002A9030(),0,(int)m);
                }
            }
        }
        break;
    }
    default: break;
    }
}
