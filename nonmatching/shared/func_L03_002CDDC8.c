/* NON_MATCHING func_L03_002CDDC8 -- src/overlays/shared/vendor_00292AC0.c
 * Best so far: SIZE ours 6204 / retail 6196, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L03_002CDDC8: SIZE ours 6116 / retail 6196   (src/overlays/shared/vendor_00292AC0.c)   [run 8 of 30] Inde
 *   func_L03_002CDDC8: SIZE ours 6116 / retail 6196   (src/overlays/shared/vendor_00292AC0.c)   [run 9 of 30] Full
 *   func_L03_002CDDC8: SIZE ours 6116 / retail 6196   (src/overlays/shared/vendor_00292AC0.c)   [run 10 of 30] Typ
 *   func_L03_002CDDC8: SIZE ours 6116 / retail 6196   (src/overlays/shared/vendor_00292AC0.c)   [run 11 of 30] Ind
 *   func_L03_002CDDC8: SIZE ours 6204 / retail 6196   (src/overlays/shared/vendor_00292AC0.c)   [run 12 of 30] Dup
 *   func_L03_002CDDC8: SIZE ours 6180 / retail 6196   (src/overlays/shared/vendor_00292AC0.c)   [run 13 of 30] Rea
 *   func_L03_002CDDC8: SIZE ours 6204 / retail 6196   (src/overlays/shared/vendor_00292AC0.c)   [run 14 of 30] Sha
 *   func_L03_002CDDC8: SIZE ours 6204 / retail 6196   (src/overlays/shared/vendor_00292AC0.c)   [run 15 of 30] Pat
 */
#include "common.h"
typedef float HVec49[4] __attribute__((aligned(16)));
typedef unsigned int HQuad49 __attribute__((mode(TI)));
typedef struct HMob49 HMob49;
typedef struct HData49 HData49;
typedef struct { float xyz[3],length; } HNode49;
typedef struct { int count; char pad4[12]; HNode49 points[1]; } HPath49;
typedef struct { int index; char pad4[12]; HPath49 *path; int path_id; char pad18[24]; } HRoute49;
struct HData49 {
    char pad0[0x20]; float health; short health_word; char pad26[2];
    unsigned char kind,flag29,pad2A[4],enabled,pad2F[9]; int request;
    char pad3C[0x1C]; unsigned char gun_kind,gun_enabled,gun_mode,pad5B[0xC5];
    HRoute49 route_a,route_b; float gun_yaw_matrix[16],gun_pitch_matrix[16];
    float yaw_velocity; short shot_timer,reaction_timer; int shoot_region,switch_region;
    float bob,speed,pitch_velocity,roll_velocity,gun_yaw,gun_yaw_velocity,gun_pitch,gun_pitch_velocity;
    int exit_path,other_exit_path,child_index,alternate;
    HMob49 *projectile; int other_switch_region,activation_region,activation_path,sound,timer;
};
struct HMob49 {
    char pad0[16]; HVec49 position; unsigned char state,pad21[15];
    unsigned char alpha,nearby; short brightness; unsigned short flags; char pad36[10];
    HVec49 rotation; char pad50[0x28]; HData49 *data; char pad7C[3]; unsigned char update_distance;
    char pad80[0x14]; int animation; char pad98[14]; short class_id; char padA8[8];
    unsigned char persistent,padB1; unsigned short pool_index; char padB4[8]; unsigned char previous_state;
    char padBD[3]; float transform[16];
};
typedef struct { HVec49 position,rotation,from,to; HMob49 *moby; int result,pad48,pad4C; } HTarget49;
typedef struct {
    HVec49 direction; HMob49 *source; int flags; unsigned char kind,enabled; unsigned short class_id;
    float radius; int allow; char pad24[12];
} HQuery49;
typedef struct {
    HTarget49 target; HVec49 movement,projected,offset; HQuery49 hit;
    HVec49 direction,shot_velocity,shot_origin; int segment_a; float fraction_a; int segment_b; float fraction_b;
} HWork49;
extern int D_L03_001BA8E0[];
extern HPath49 *D_L03_001B08B0[];
extern int D_0015EE84 MACRO_ADDR;
extern unsigned char D_0014171B[];
extern float D_0015EE64 MACRO_ADDR;
extern float D_L03_00161A14 SDATA(D_L03_00161A14);
extern float D_L03_00161A18 SDATA(D_L03_00161A18);
extern float D_L03_00161A1C SDATA(D_L03_00161A1C);
extern int helicopter_target49(void*,void*,float) __asm__("func_L00_00260D30");
extern void func_L00_00264BB0(void*,float);
extern void func_L00_00263950(char*,char*,int,float,float);
extern void func_L03_002CF600(char*);
extern void func_0020D960(char*,int,void*);
extern void func_00213DE0(void*,int,int,int);
extern int func_L00_0025EFC0(void*,void*,void*,int*,float*,int,float,float,float);
extern float func_L00_00259148(float*,float,float,float,float,float);
extern void func_001FA4A0(void*,void*);
extern void func_001F9EE8(void*,void*,void*);
extern void func_L00_001FFED8(void*,int,float);
extern float func_00214D28(float*,float,float);
extern float func_001F9CE8(void*);
extern float func_001F9B88(float);
extern float func_001F9878(float);
extern float func_L00_001FF860(float,float);
extern float func_001FA790(float,float);
extern void func_L00_001FF500(void*,void*,float);
extern void func_L00_0028EBF0(int);
extern void func_001F9978(void);
extern float func_00214158(void);
extern char *func_L03_002D65D0(char*,char*,int,int,float);
extern void func_L00_0025AAC0(void*,void*);
extern void func_0020D9D8(void*,void*);
extern void func_L00_002514B8(void*);

static __inline__ HMob49 *hchild49(int index) { return (HMob49*)(D_L03_00160058_p+(index<<8)); }

/* Follows helicopter routes, aims its guns, fires at the selected target and handles destruction. */
void func_L03_002CDDC8(HMob49 *m) {
    HData49 *d=m->data;
    HWork49 w;
    float target_range=40.0f;
    float motion_scale,motion_gain;
        int index;
    if (d->timer) target_range=80.0f;
    helicopter_target49(m,&w.target,target_range);
    index=(short)m->pool_index;
    if ((D_L03_001BA8E0[index>>5]>>(m->pool_index&31))&1) {
        if (d->child_index!=-1) func_0020D678(hchild49(d->child_index));
        func_0020D678(m); return;
    }
    if (d->route_a.path_id==-1 || (m->state!=0 && d->enabled!=1)) {
        if (d->child_index!=-1) func_0020D678(hchild49(d->child_index));
        func_0020D678(m); return;
    }
    if (d->request) { d->request=0; d->timer=func_001F9850(240); }
    func_001F9908(&d->timer);
    if (d->child_index!=-1) {
        HMob49 *child=hchild49(d->child_index);
        if (child->class_id==0x23E && (signed char)child->state>=0) {
            char *gun=(char*)child->data+0x150;
            func_L00_00264BB0(gun,2.5f);
            func_L00_00263950((char*)child,gun,2,D_0015EE64*0.03f,D_0015EE64*0.3f);
        }
    }
    func_L03_002CF600((char*)m);
    switch (m->state) {
    case 0: {
        HPath49 **paths;
        unsigned char *attributes=(unsigned char*)d;
        m->update_distance=0x20; d->health=3.0f; d->health_word=func_001FA898_r(3.0f);
        attributes[0x28]=2; attributes[0x58]=25; attributes[0x59]=1; attributes[0x5A]=6; attributes[0x2E]=1; attributes[0x29]=0;
        paths=D_L03_001B08B0;
        d->route_a.path=paths[d->route_a.path_id];
        if (d->route_b.path_id!=-1) d->route_b.path=paths[d->route_b.path_id];
        qcopy(m->position,d->route_a.path->points);
        d->speed=0; d->pitch_velocity=0; d->roll_velocity=0; d->alternate=0; d->route_a.index=1;
        func_0020D960((char*)m,0,d->gun_yaw_matrix); func_0020D960((char*)m,1,d->gun_pitch_matrix);
        d->sound=-1; d->projectile=0; d->gun_yaw=m->rotation[2]; d->gun_yaw_velocity=0;
        d->gun_pitch=m->rotation[1]; d->gun_pitch_velocity=0;
        if (m->brightness<128) m->brightness=128;
        if (d->child_index!=-1) {
            HMob49 *child=hchild49(d->child_index);
            func_00213DE0(child,8,0,0); child->alpha=0; child->animation=0; child->flags&=0xFFBE;
        }
        if ((D_0014171B+0xAA35)[(D_0015EE84<<4)+m->persistent]==255) goto inactive;
        if (d->activation_path==-1) goto inactive;
        if (d->activation_region!=-1) {
            HPath49 *path=paths[d->activation_path];
            int i=0;
            if (path->count-2>0) {
                float *length=(float*)((char*)path+0x1C);
                char *nodes=(char*)path;
                do {
                    length[i<<2]=func_001F9D10(nodes+(i<<4)+0x10,nodes+(i<<4)+0x20);
                    ++i;
                } while (i<path->count-2);
            }
            *(HQuad49*)m->position=*(HQuad49*)path->points; m->state=1; break;
        }
inactive:
        m->state=2;
        break;
    }
    case 1: {
        HPath49 *path=D_L03_001B08B0[d->activation_path];
        float progress,distance,step,limit,angle;
        int clamp;
        float *position,*movement;
        if (d->activation_region!=-1 && !func_00215570(D_0013E633+0xE9D,d->activation_region)) break;
        d->activation_region=-1; position=m->position;
        func_L00_0025EFC0(path,position,w.projected,&w.segment_a,&w.fraction_a,0,999.0f,5.0f,0.0f);
        progress=func_001FA888(w.segment_a)*path->points[0].length+w.fraction_a+2.0f;
        distance=func_001F9D10(position,(char*)path+(path->count<<4));
        step=D_0015EE70*10.0f;
        if (distance<=d->speed*d->speed/(step+step)) {
            float speed=d->speed-step; limit=D_L03_00161A1C*D_0015EE6C; d->speed=speed; if (speed<limit) d->speed=limit;
        } else { float speed=d->speed+step; limit=D_0015EE6C*20.0f; d->speed=speed; if (limit<speed) d->speed=limit; }
        w.segment_a=func_001FA898_r(progress/path->points[0].length);
        w.fraction_a=(progress-func_001FA888(w.segment_a)*path->points[0].length)/path->points[0].length;
        if (w.segment_a>=path->count-1) {
            if (d->route_a.path_id!=-1 && d->speed<=D_L03_00161A1C*D_0015EE6C) {
                d->alternate=0; qcopy(m->position,d->route_a.path->points); d->route_a.index=1;
                m->previous_state=2; m->state=4; d->reaction_timer=func_001F9850(15); break;
            }
            if (d->speed<=D_L03_00161A1C*D_0015EE6C) { func_001F9978(); return; }
            w.segment_a=path->count-2; w.fraction_a=1.0f;
        }
        func_001F9BF0(w.projected,(char*)path+(w.segment_a<<4)+0x20,(char*)path+(w.segment_a<<4)+0x10);
        func_001F9C30(w.projected,w.projected,w.fraction_a);
        func_001F9BD8(w.projected,w.projected,path->points+w.segment_a);
        {
            float dx,dy;
            if (w.segment_a+1<path->count-8) {
                float *node=(float*)((char*)path+((w.segment_a+1)<<4));
                dx=node[4]-m->position[0]; dy=node[5]-m->position[1];
            }
            else { dx=w.target.position[0]-m->position[0]; dy=w.target.position[1]-m->position[1]; }
            angle=func_L00_001FF860(dx,dy);
        }
        m->rotation[2]=func_L00_00259148(&d->yaw_velocity,m->rotation[2],angle,0.01f,0.3f,0.1f);
        movement=w.movement;
        func_001F9BF0(movement,w.projected,position);
        distance=func_001F9CB8(movement); if (d->speed<distance) distance=d->speed;
        func_L00_001FF4B0(movement,movement,distance);
        motion_scale=20.0f; motion_gain=1.0471976f;
    {
        float delta,roll,pitch;
        func_001F9BD8(position,position,movement);
        delta=func_001FA790(func_L00_001FF860(w.movement[0],w.movement[1]),m->rotation[2]);
        roll=d->speed*0.34906584f*func_001F9F90(delta)/(D_0015EE6C*motion_scale);
        pitch=d->speed*-0.34906584f*func_001F9FA8(delta);
        motion_scale*=D_0015EE6C; pitch/=motion_scale;
        m->rotation[1]=func_L00_00259148(&d->roll_velocity,m->rotation[1],roll,D_0015EE70*0.5235988f,D_0015EE70*motion_gain,D_0015EE6C*0.7853982f);
        m->rotation[0]=func_L00_00259148(&d->pitch_velocity,m->rotation[0],pitch,D_0015EE70*motion_gain,D_0015EE70*2.0943952f,D_0015EE6C*1.5707964f);
    }
        break;
    }
    case 2: {
        HRoute49 *route=d->alternate ? &d->route_b : &d->route_a;
        int point=route->index;
        float angle=func_L00_001FF860(w.target.position[0]-m->position[0],w.target.position[1]-m->position[1]);
        HMob49 *projectile;
        float distance,other_distance,roll,pitch,delta;
        float *direction;
        m->rotation[2]=func_L00_00259148(&d->yaw_velocity,m->rotation[2],angle,0.01f,0.3f,0.1f);
        projectile=d->projectile;
        if (!projectile || projectile->class_id!=0x350 || projectile->state==254 || projectile->state==253) {
            func_L00_00250800(m,0,w.movement);
            func_001F9BF0(w.direction,w.target.position,w.movement);
            direction=w.direction; *(HQuad49*)w.projected=*(HQuad49*)w.direction; func_001FA4A0(w.offset,m->transform); func_001F9EE8(w.projected,w.projected,w.offset);
            angle=func_L00_001FF860(w.projected[0],w.projected[1]);
            d->gun_yaw=func_L00_00259148(&d->gun_yaw_velocity,d->gun_yaw,angle,D_0015EE70*6.2831855f,D_0015EE70*12.566371f,D_0015EE6C*6.2831855f);
            angle=-func_L00_001FF860(func_001F9CE8(w.projected),w.projected[2]);
            d->gun_pitch=func_L00_00259148(&d->gun_pitch_velocity,d->gun_pitch,angle,D_0015EE70*3.1415927f,D_0015EE70*6.2831855f,D_0015EE6C*1.5707964f);
            func_L00_001FFED8(d->gun_yaw_matrix+4,2,d->gun_yaw); func_L00_001FFED8(d->gun_pitch_matrix+4,2,d->gun_pitch); d->projectile=0;
        } else {
            func_L00_00250800(m,0,w.movement);
            func_001F9BF0(w.direction,d->projectile->position,w.movement);
            direction=w.direction; *(HQuad49*)w.projected=*(HQuad49*)w.direction; func_001FA4A0(w.offset,m->transform); func_001F9EE8(w.projected,w.projected,w.offset);
            angle=func_L00_001FF860(w.projected[0],w.projected[1]);
            d->gun_yaw=func_L00_00259148(&d->gun_yaw_velocity,d->gun_yaw,angle,D_0015EE70*6.2831855f,D_0015EE70*12.566371f,D_0015EE6C*6.2831855f);
            angle=-func_L00_001FF860(func_001F9CE8(w.projected),w.projected[2]);
            d->gun_pitch=func_L00_00259148(&d->gun_pitch_velocity,d->gun_pitch,angle,D_0015EE70*3.1415927f,D_0015EE70*6.2831855f,D_0015EE6C*1.5707964f);
            func_L00_001FFED8(d->gun_yaw_matrix+4,2,d->gun_yaw); func_L00_001FFED8(d->gun_pitch_matrix+4,2,d->gun_pitch);
        }
        if (point>0 && point<route->path->count-1) {
            distance=func_001F9D48((char*)route->path+(point<<4)+0x10,w.target.position);
            if (distance<20.0f && func_001F9B88(w.target.position[2]-m->position[2])<10.0f && distance<func_001F9D10((char*)route->path+(point<<4)+0x20,w.target.position) && point<route->path->count-2) route->index++;
        }
        func_001F9BF0(direction,(char*)route->path+(point<<4)+0x10,m->position);
        distance=func_001F9CB8(direction);
        if (distance<d->speed*d->speed/((D_0015EE70*4.0f)*2.0f) || func_001F9D10((char*)route->path+(point<<4)+0x10,w.target.position)<func_001F9D10(m->position,w.target.position)) {
            d->speed-=D_0015EE70*4.0f; if (d->speed<0) d->speed=0;
        } else { d->speed+=D_0015EE70*4.0f; if (D_0015EE6C*10.0f<d->speed) d->speed=D_0015EE6C*10.0f; }
        distance=func_001F9D10((char*)route->path+(point<<4)+0x10,w.target.position); other_distance=func_001F9D10(m->position,w.target.position);
        if (distance<other_distance) func_L00_001FF4B0(direction,direction,-d->speed); else func_L00_001FF4B0(direction,direction,d->speed);
        func_001F9BD8(m->position,m->position,direction);
        delta=func_001FA790(func_L00_001FF860(direction[0],direction[1]),m->rotation[2]);
        roll=d->speed*0.34906584f*func_001F9F90(delta)/(D_0015EE6C*10.0f);
        pitch=d->speed*-0.34906584f*func_001F9FA8(delta)/(D_0015EE6C*10.0f);
        m->rotation[1]=func_L00_00259148(&d->roll_velocity,m->rotation[1],roll,D_0015EE70*0.5235988f,D_0015EE70*1.0471976f,D_0015EE6C*0.7853982f);
        m->rotation[0]=func_L00_00259148(&d->pitch_velocity,m->rotation[0],pitch,D_0015EE70*1.0471976f,D_0015EE70*2.0943952f,D_0015EE6C*1.5707964f);
        if (func_00215570(w.target.position,d->alternate ? d->other_switch_region : d->switch_region)) {
            if ((d->alternate && d->other_exit_path!=-1) || (!d->alternate && d->exit_path!=-1)) {
                int exit=d->alternate ? d->other_exit_path : d->exit_path;
                HPath49 *path=D_L03_001B08B0[exit]; int i=0;
                if (path->count-2>0) {
                    float *length=(float*)((char*)path+0x1C);
                    char *nodes=(char*)path;
                    do {
                        length[i<<2]=func_001F9D10(nodes+(i<<4)+0x10,nodes+(i<<4)+0x20);
                        ++i;
                    } while (i<path->count-2);
                }
            }
            m->previous_state=3; m->state=4; d->reaction_timer=func_001F9850(15);
        } else if (func_00215570(w.target.position,d->shoot_region) && (func_001F9938(&d->shot_timer) || (!d->projectile && d->timer))) {
            d->shot_timer=func_001F9850(360); qcopy(w.shot_origin,w.target.position);
            func_001F9BF0(w.shot_velocity,w.shot_origin,w.movement); func_L00_001FF500(w.shot_velocity,w.shot_velocity,D_0015EE6C*6.0f); w.shot_velocity[2]=0;
            d->projectile=(HMob49*)func_L03_002D65D0((char*)w.shot_velocity,(char*)w.movement,(int)m,func_001F9850(240),w.target.position[2]);
        }
        break;
    }
    case 3: {
        HPath49 *path;
        float progress,distance,step,limit,angle;
        int clamp;
        float *position,*movement;
        if (d->exit_path==-1) {
            func_00214D28(&m->position[2],200.0f,D_0015EE6C*8.0f);
            m->rotation[1]=func_L00_00259148(&d->roll_velocity,m->rotation[1],0.0f,D_0015EE70*0.5235988f,D_0015EE70*1.0471976f,D_0015EE6C*0.7853982f);
            m->rotation[0]=func_L00_00259148(&d->pitch_velocity,m->rotation[0],0.0f,D_0015EE70*0.5235988f,D_0015EE70*1.0471976f,D_0015EE6C*0.7853982f); break;
        }
        path=D_L03_001B08B0[d->alternate ? d->other_exit_path : d->exit_path];
        position=m->position;
        func_L00_0025EFC0(path,position,w.projected,&w.segment_b,&w.fraction_b,0,999.0f,5.0f,0.0f);
        progress=func_001FA888(w.segment_b)*path->points[0].length+w.fraction_b+2.0f;
        distance=func_001F9D10(position,(char*)path+(path->count<<4)); step=D_0015EE70*10.0f;
        if (distance<=d->speed*d->speed/(step+step)) {
            float speed=d->speed-step; limit=D_L03_00161A1C*D_0015EE6C; d->speed=speed; if (speed<limit) d->speed=limit;
        } else { float speed=d->speed+step; limit=D_0015EE6C*20.0f; d->speed=speed; if (limit<speed) d->speed=limit; }
        w.segment_b=func_001FA898_r(progress/path->points[0].length);
        w.fraction_b=(progress-func_001FA888(w.segment_b)*path->points[0].length)/path->points[0].length;
        if (w.segment_b>=path->count-1) {
            if (d->other_exit_path!=-1 && d->route_b.path_id!=-1 && d->speed<=D_L03_00161A1C*D_0015EE6C) {
                HRoute49 *route; d->alternate^=1; route=d->alternate ? &d->route_b : &d->route_a;
                qcopy(m->position,route->path->points); route->index=1; m->previous_state=2; m->state=4; d->reaction_timer=func_001F9850(15); break;
            }
            if (d->speed<=D_L03_00161A1C*D_0015EE6C) { func_001F9978(); return; }
            w.segment_b=path->count-2; w.fraction_b=1.0f;
        }
        func_001F9BF0(w.projected,(char*)path+(w.segment_b<<4)+0x20,(char*)path+(w.segment_b<<4)+0x10);
        func_001F9C30(w.projected,w.projected,w.fraction_b); func_001F9BD8(w.projected,w.projected,path->points+w.segment_b);
        angle=func_L00_001FF860(w.target.position[0]-m->position[0],w.target.position[1]-m->position[1]);
        m->rotation[2]=func_L00_00259148(&d->yaw_velocity,m->rotation[2],angle,0.01f,0.3f,0.1f);
        movement=w.movement;
        func_001F9BF0(movement,w.projected,position); distance=func_001F9CB8(movement);
        if (d->speed<distance) distance=d->speed;
        func_L00_001FF4B0(movement,movement,distance); motion_scale=20.0f; motion_gain=1.0471976f;
    {
        float delta,roll,pitch;
        func_001F9BD8(position,position,movement);
        delta=func_001FA790(func_L00_001FF860(w.movement[0],w.movement[1]),m->rotation[2]);
        roll=d->speed*0.34906584f*func_001F9F90(delta)/(D_0015EE6C*motion_scale);
        pitch=d->speed*-0.34906584f*func_001F9FA8(delta);
        motion_scale*=D_0015EE6C; pitch/=motion_scale;
        m->rotation[1]=func_L00_00259148(&d->roll_velocity,m->rotation[1],roll,D_0015EE70*0.5235988f,D_0015EE70*motion_gain,D_0015EE6C*0.7853982f);
        m->rotation[0]=func_L00_00259148(&d->pitch_velocity,m->rotation[0],pitch,D_0015EE70*motion_gain,D_0015EE70*2.0943952f,D_0015EE6C*1.5707964f);
    }
        break;
    }
    case 4:
        if (func_001F9938(&d->reaction_timer)) m->state=m->previous_state;
        else {
            d->speed-=D_0015EE70*4.0f; if (d->speed<0) d->speed=0;
            motion_scale=10.0f; motion_gain=1.0471976f;
            w.movement[0]=func_001F9F90(m->rotation[2])*-d->speed;
            w.movement[1]=func_001F9FA8(m->rotation[2])*-d->speed; w.movement[2]=0;
    {
        float delta,roll,pitch;
        func_001F9BD8(m->position,m->position,w.movement);
        delta=func_001FA790(func_L00_001FF860(w.movement[0],w.movement[1]),m->rotation[2]);
        roll=d->speed*0.34906584f*func_001F9F90(delta)/(D_0015EE6C*motion_scale);
        pitch=d->speed*-0.34906584f*func_001F9FA8(delta);
        motion_scale*=D_0015EE6C; pitch/=motion_scale;
        m->rotation[1]=func_L00_00259148(&d->roll_velocity,m->rotation[1],roll,D_0015EE70*0.5235988f,D_0015EE70*motion_gain,D_0015EE6C*0.7853982f);
        m->rotation[0]=func_L00_00259148(&d->pitch_velocity,m->rotation[0],pitch,D_0015EE70*motion_gain,D_0015EE70*2.0943952f,D_0015EE6C*1.5707964f);
    }
        
        }
        break;
    case 5: {
        float angle; int i;
        *(HQuad49*)w.movement=0; angle=func_00214158(); func_L00_00250800(m,4,w.projected);
        i=3;
        do {
            --i; w.offset[0]=func_001F9F90(angle)*1.5f; w.offset[1]=func_001F9FA8(angle)*1.5f;
            w.offset[2]=0; angle=func_001FA748(angle,1.5707964f); func_L00_001FF240(w.hit.direction,w.offset,w.projected);
        } while (i>=0);
        func_L00_00250800(m,5,w.offset);
        if (d->child_index!=-1) {
            HMob49 *child=hchild49(d->child_index);
            ((unsigned char*)child->data)[0x262]=2; child->alpha=255; child->flags&=0xFFF9;
            w.hit.radius=20.0f; w.hit.flags=0x830000; w.hit.allow=1; w.hit.source=m;
            func_001F9BF0(w.hit.direction,child->position,m->position); func_L00_001FF500(w.hit.direction,w.hit.direction,1.0f);
            w.hit.direction[2]=1.0f; w.hit.direction[3]=5627.925f; w.hit.kind=3; w.hit.enabled=3; w.hit.class_id=m->class_id;
            func_L00_0025AAC0(child,&w.hit);
        }
        func_L00_0025F4A8(m,w.movement,m->position,0.0f,0.0f,20,3,4,4.0f,2.0f,100000.0f,3.0f,2,15.0f,1,1,-1,0);
        func_L00_002584A8(m,0,-1);
        func_L00_00265050(m,0x637,m->position,m->rotation,0,0,0.0f,D_L03_0015F660,D_L03_0015F660,D_L03_0015F660);
        func_L00_00265050(m,0x638,m->position,m->rotation,0,0,0.0f,D_L03_0015F660,D_L03_0015F660,D_L03_0015F660);
        func_L00_00265050(m,0x639,m->position,m->rotation,0,0,0.0f,D_L03_0015F660,D_L03_0015F660,D_L03_0015F660);
        func_0020D9D8(m,d->gun_yaw_matrix); func_0020D9D8(m,d->gun_pitch_matrix);
        if (d->sound!=-1) {
            unsigned char *audio=(unsigned char*)(D_0013E633+0x1D+d->sound*0x70);
            if (*(HMob49**)(audio+0x88)==m && audio[0x74]) func_L00_0028EBF0(d->sound);
        }
        d->sound=-1; func_0020D678(m); return;
    }
    default: break;
    }
    goto finish;
finish:
    if (m->nearby && func_001F9D10(m->position,D_L03_00166F40)<40.0f) func_L00_0025B178(m);
    m->position[2]-=D_L03_00161A18*func_001F9F90(d->bob);
    d->bob=func_001FA748(d->bob,6.2831855f/func_001F9878(D_L03_00161A14*60.0f));
    m->position[2]+=D_L03_00161A18*func_001F9F90(d->bob);
    if (d->child_index!=-1) {
        HMob49 *child=hchild49(d->child_index);
        *(HQuad49*)child->position=*(HQuad49*)m->position; *(HQuad49*)child->rotation=*(HQuad49*)m->rotation;
        func_L00_002514B8(child); func_L00_00251E30(child); child->flags|=6;
    }
}
