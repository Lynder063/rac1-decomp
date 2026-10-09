/* NON_MATCHING func_L13_002BC2D8 -- src/overlays/l13_gemlik/vendor_002B2020.c
 * Best so far: SIZE ours 4564 / retail 4560, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   p21/run22: blend before table declaration, reversed energy/wait order, persistent byte explicitly re-read as v
 *   p20 verdict SIZE 4552/4560. Palette source MACRO_ADDR fixed the entire 1 KB memcpy region. p21 BYTES 2291/4560
 *   RESUME: new documented evidence docs/DECOMP_PROGRESS.md conditional-select lever and src/game/pause.c:1694 pau
 *   p22/run23 COMPILE: shared file now declares confirmed int-return 222B80 before our candidate, versus old void 
 *   p23/run24: func_L13_002BC2D8: SIZE ours 4564 / retail 4560   (src/overlays/l13_gemlik/vendor_002B2020.c)   [ru
 *   p24/run25: func_L13_002BC2D8: SIZE ours 4564 / retail 4560   (src/overlays/l13_gemlik/vendor_002B2020.c)   [ru
 *   p25/run26: func_L13_002BC2D8: SIZE ours 4564 / retail 4560   (src/overlays/l13_gemlik/vendor_002B2020.c)   [ru
 *   STOP resumed pass: p23/p24/p25 have identical compiler instructions and branch graph after local-label normali
 */
#include "common.h"
typedef float JVec47[4] __attribute__((aligned(16)));
typedef struct Jet47 Jet47;
typedef struct JetData47 JetData47;
typedef struct { char pad0[0x24]; float scale; } JetModel47;
struct Jet47 {
    char pad0[0x10]; JVec47 position;
    unsigned char state,pad21[3]; JetModel47 *model; float pad28,scale;
    unsigned char alpha,pad31; unsigned short render_flags,flags; char pad36[0xA];
    JVec47 rotation; char pad50[0x28]; JetData47 *data;
    char pad7C[0x18]; int animation; char pad98[0xC];
    unsigned char status,padA5; unsigned short class_id; char padA8[8]; unsigned char persistent;
};
struct JetData47 {
    JVec47 velocity,pad10,previous_rotation,angles,spawn_position,spawn_rotation;
    unsigned char animation_frame,gun_side; short death_timer; float speed;
    short missile_index,gun_index; int counter6C,counter70,pad74,pad78; float blend;
    int gun_timer,missile_timer; char pad88[0x18];
    float angle_a,angle_b,angle_c,limit_a,limit_b; char padB4[0xC]; int counterC0,padC4;
    float angle_d,angle_e,angle_f; char padD4[8]; int timer;
    int hud_x,hud_y,energy,padEC; float hud_health; int hud_previous,wait_timer;
    int destination_path,escape_path,texture_id,engine_sound,weapon_sound;
    char pad110[0xC]; int group_a,hit_class,target_class,lock_index,exit_path,entry_path,trigger,start_timer,group_b;
};
typedef struct {
    char pad0[0x15F0]; Jet47 *craft; unsigned short class_id; unsigned char ammo,ammo2,ammo3,ammo4,ammo5,ammo6;
    float health,max_health,health_scale; int health_meter; short weapon; unsigned char pad160E,pad160F;
    char pad1610[0xA70]; Jet47 *moby; int state; char pad2088[0x1C]; unsigned char busy,in_craft;
} JetPlayer47;
typedef struct { char pad0[0x1C]; int active; char pad20[0x30]; int pending; } JetTransition47;
typedef struct { char pad0[0x160]; float flash; int pad164,ticks; } JetCamera47;
typedef struct { char pad0[0xA]; unsigned short palette; char padC[4]; } JetTexture47;
typedef struct { char pad0[0x30]; JVec47 position; char pad40[0x30]; JVec47 rotation; } JetPath47;
typedef struct { char pad0[0x10]; JVec47 velocity; Jet47 *source; int pad24,pad28; float damage; int flags; } JetHit47;
extern float D_0015EE60 MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern unsigned char D_0014171B[];
extern JetCamera47 jet_camera47 __asm__("D_L13_00167000");
extern float D_L13_0016CE70;
extern JetTexture47 D_L13_0016D500[];
extern unsigned int D_L13_0015F520 MACRO_ADDR;
extern short D_L13_001CC068[];
extern float D_L13_0015F4FC MACRO_ADDR;
extern JetPath47 *D_L13_0016016C MACRO_ADDR;
extern int D_L13_0015F6E8 MACRO_ADDR;
extern char D_L13_001F4760[],D_L13_001F4798[];
extern short D_L13_00161454;
extern short D_L13_001614D0;
extern void func_L00_001FF548(void*,void*,float);
extern void func_L00_001FF610(void*,void*,void*);
extern void jet_explosion47(void*,void*,void*,float,float,int,int,int,float,float,float,float,int,float,int,int,int,int) __asm__("func_L00_0025F4A8");
extern void func_L13_00266060(int,int,int,int);
extern void func_L13_00266180(short*,int,int,int);
extern void func_L13_00266128(int,int);
extern float func_L00_00251468(void*,void*);
extern int func_00215F80(int,int);
extern int func_L00_00222B80(int,int);
extern void func_L00_0025B040(unsigned char*,float);
extern void func_L00_00217718(void*,void*,int,int);
extern void func_L00_002EBF50(void*,void*,int,int,int);
extern void func_L13_002BB3E8(void*,void*);
extern void func_L00_00204130(void);
extern void func_L00_002664B0(int,int);
extern int func_00216028(int,int);
extern void func_L00_002EC0C8(int);
extern void func_001FFDA0(int,int);
extern void func_0020EEE8(void*);
extern void func_L00_0028EBF0(int);
extern void func_L00_00211908(void);
extern void func_L00_002512D8(int);
extern void func_L00_00286128(void*,void*);

static __inline__ short jetPressedEntry47(short previous,int pressed) {
    if (*(int*)(D_0013A5E0+0x2604)&0x10) return pressed;
    return previous;
}

/* Handles fighter entry, flight, damage, exit, palette setup and audio cleanup. */
void func_L13_002BC2D8(Jet47 *m) {
    JetData47 *d;
    JVec47 impulse;
    int state,initial_state;
    if (((JetPlayer47*)(D_0013E633+0xE1D))->state==0x72) return;
    d=m->data; d->hit_class=0;
    func_001F9908((int*)&d->timer);
    initial_state=m->state;
    if ((unsigned int)(initial_state-6)>=2 && (unsigned char)initial_state!=1 && (unsigned char)initial_state!=2) {
        JetHit47 *hit=(JetHit47*)func_L00_0025B478(m,0x30001,0);
        if (hit && m->state==4) {
            if (((JetPlayer47*)(D_0013E633+0xE1D))->health>hit->damage) {
                ((JetPlayer47*)(D_0013E633+0xE1D))->health-=hit->damage;
                if (hit->source && (unsigned int)(hit->source->class_id-0x52)<2) d->hit_class=(short)hit->source->class_id;
                if (hit->flags&1) {
                    float weight,yaw_delta,pitch_delta;
                    jet_camera47.flash=1.0f; jet_camera47.ticks=func_001F9850(4);
                    weight=hit->damage*0.05f;
                    func_00215C00(impulse,d->speed,d->angles[2],-d->angles[1]);
                    func_L00_001FF548(hit->velocity,hit->velocity,D_0015EE6C*3.0f);
                    func_001F9BD8(m->position,m->position,hit->velocity);
                    func_L00_001FF610(impulse,impulse,hit->velocity);
                    yaw_delta=func_001FA790(func_L00_001FF860(impulse[0],impulse[1]),d->angles[2]);
                    d->angles[2]=func_001FA748(d->angles[2],yaw_delta*(D_0015EE60*0.1f)*weight);
                    pitch_delta=func_001FA790(func_L00_001FF860(func_001F9CE8(impulse),impulse[2]),d->angles[1]);
                    d->angles[1]=func_001FA748(d->angles[1],pitch_delta*(D_0015EE60*0.1f)*weight);
                }
            } else {
                func_00215C00(impulse,d->speed,d->angles[2],-d->angles[1]);
                if (hit->source && (unsigned int)(hit->source->class_id-0x52)<2) d->hit_class=(short)hit->source->class_id+10000;
                jet_camera47.flash=0.2f; jet_camera47.ticks=func_001F9850(5);
                ((JetPlayer47*)(D_0013E633+0xE1D))->health=0.0f; m->flags|=0x41;
                func_L00_0025F4A8(m,impulse,0,0.0f,0.0f,10,3,16,4.0f,2.0f,9.0f,6,1.0f,15.0f,1,1,-1,0);
                m->animation=0; d->death_timer=func_001F9850(240); m->state=6;
            }
        }
    }
    m->status=0xFF;
    if (((JetPlayer47*)(D_0013E633+0xE1D))->craft==m) ((JetPlayer47*)(D_0013E633+0xE1D))->health_meter=(int)(((JetPlayer47*)(D_0013E633+0xE1D))->health*0.00390625f*200.0f);
    switch(m->state) {
    case 0: {
        float limit;
        int *palette;
        JetTexture47 *texture_table;
        unsigned int palette_data;
        int texture_index,initialized;
        m->state=1; d->animation_frame=0; m->scale=m->model->scale;
        *(float*)((char*)d+0x20)=d->angles[0]; *(float*)((char*)d+0x24)=d->angles[1];
        limit=func_L00_001FF860(1.0f,D_L13_0016CE70); limit+=limit;
        d->counterC0=0; d->hit_class=0; *(float*)((char*)d+0xAC)=limit; *(float*)((char*)d+0xB0)=limit;
        qcopy(d->angles,m->rotation); qcopy(d->spawn_rotation,m->rotation); qcopy(d->spawn_position,m->position);
        texture_index=d->texture_id;
        texture_table=D_L13_0016D500;
        d->blend=0.0f;
        texture_index+=40;
        palette_data=D_L13_0015F520;
        initialized=*(int*)&D_L13_00161454;
        palette=(int*)(palette_data+(texture_table[texture_index].palette<<4));
        *(int**)&D_L13_00161450=palette;
        if (!initialized) __builtin_memcpy(D_L13_001CC0F0,palette,1024);
        *(int*)&D_L13_00161454=1; d->energy=1; d->wait_timer=1;
        if (m->persistent!=0xFF && (D_0014171B+0xAA35)[(D_0015EE84<<4)+m->persistent]==0xFF) m->state=9;
        if (d->group_a>0) func_L13_00266060(d->group_a,0,0,0);
        if (d->group_b>0) func_L13_00266060(d->group_b,0,0,0);
        func_L13_00266180(D_L13_001CC068,1,1,-1); func_L13_00266180(&D_L13_001614D0,1,-1,-1); func_L13_00266128(0x102,0);
        d->lock_index=-1; d->start_timer=func_001F9850(575);
        break;
    }
    case 1: {
        short enter=0;
        if (m->persistent!=0xFF && (D_0014171B+0xAA35)[(D_0015EE84<<4)+m->persistent]==0xFF) m->state=9;
        else if (d->trigger!=-1 && func_00215570(D_0013E633+0xE9D,d->trigger)) { d->blend=0.99f; D_L13_0015F4FC=0.99f; enter=1; }
        else if (func_L00_00251468(m,((JetPlayer47*)(D_0013E633+0xE1D))->moby)<2.0f && ((JetPlayer47*)(D_0013E633+0xE1D))->state!=50 && ((JetPlayer47*)(D_0013E633+0xE1D))->state!=29 && !((JetPlayer47*)(D_0013E633+0xE1D))->busy) {
            enter=jetPressedEntry47(enter,func_00215F80(7,0x53E9)!=0);
        }
        if (enter) {
            float limit;
            func_L00_00222B80(50,1); m->scale=m->model->scale;
            *(float*)((char*)d+0x20)=d->angles[0]; *(float*)((char*)d+0x24)=d->angles[1];
            limit=func_L00_001FF860(1.0f,D_L13_0016CE70); limit+=limit;
            d->counterC0=0; d->hit_class=0; *(float*)((char*)d+0xAC)=limit; *(float*)((char*)d+0xB0)=limit;
            qcopy(d->angles,m->rotation); d->energy=1; d->wait_timer=1; m->state=2; d->lock_index=-1;
        } else if (d->blend!=0.0f) { func_00214D28(&d->blend,0.0f,D_0015EE6C*4.0f); D_L13_0015F4FC=d->blend; }
        func_L00_0025B040((unsigned char*)m,1.5f);
        break;
    }
    case 2:
        func_00214D28(&d->blend,1.0f,D_0015EE6C*4.0f); D_L13_0015F4FC=d->blend;
        if (d->blend==1.0f) {
            if (d->entry_path!=-1) {
                JetPath47 *path=&D_L13_0016016C[d->entry_path];
                func_L00_00217718(path->position,path->rotation,50,1);
                {
                    int offset=d->entry_path<<7;
                    char *base=(char*)D_L13_0016016C;
                    qcopy(m->position,base+offset+0x30); qcopy(m->rotation,base+offset+0x70);
                }
            }
            func_L00_002EBF50(m->position,m->rotation,0,0,0);
            d->missile_index=0; d->counter6C=0; d->counter70=0; d->missile_timer=0; d->speed=D_0015EE60*0.1f; d->gun_timer=0;
            m->alpha=m->render_flags=0xFF; *(int*)((char*)((JetPlayer47*)(D_0013E633+0xE1D))->moby+0x98)=-1;
            qcopy(d->previous_rotation,m->rotation);
            d->angle_a=0; d->angle_b=0; d->angle_c=0; d->angle_d=0; d->angle_e=0; d->angle_f=0;
            ((JetPlayer47*)(D_0013E633+0xE1D))->craft=m; ((JetPlayer47*)(D_0013E633+0xE1D))->health=255.0f; ((JetPlayer47*)(D_0013E633+0xE1D))->ammo=10; ((JetPlayer47*)(D_0013E633+0xE1D))->ammo3=20; ((JetPlayer47*)(D_0013E633+0xE1D))->pad160E=1; ((JetPlayer47*)(D_0013E633+0xE1D))->ammo2=20; ((JetPlayer47*)(D_0013E633+0xE1D))->class_id=m->class_id;
            d->hud_previous=255; d->hud_health=0; ((JetPlayer47*)(D_0013E633+0xE1D))->ammo6=3; ((JetPlayer47*)(D_0013E633+0xE1D))->ammo4=3; ((JetPlayer47*)(D_0013E633+0xE1D))->ammo5=3; ((JetPlayer47*)(D_0013E633+0xE1D))->pad160F=0;
            ((JetPlayer47*)(D_0013E633+0xE1D))->max_health=256.0f; ((JetPlayer47*)(D_0013E633+0xE1D))->health_scale=100.0f;
            func_00215C00(d,D_0015EE60*0.1f,d->angles[2],-d->angles[1]);
            if (d->group_a>0) func_L13_00266060(d->group_a,1,1,1);
            if (d->group_b>0) func_L13_00266060(d->group_b,1,1,1);
            func_L13_00266180(D_L13_001CC068,0,0,-1); func_L13_00266180(&D_L13_001614D0,0,-1,-1); func_L13_00266128(0x102,0);
            m->position[2]+=3.0f; m->scale=m->model->scale*0.25f; ((JetPlayer47*)(D_0013E633+0xE1D))->in_craft=1;
            if (d->engine_sound==-1) d->engine_sound=func_0022ED80(0,4,(int)m);
            D_L13_0015F6E8=2; func_L13_002BB3E8(m,d); func_L00_00204130(); func_L00_002664B0(2,4); m->state=4;
        }
        break;
    case 4: {
        unsigned char *audio;
        if (d->blend!=0.0f) { func_00214D28(&d->blend,0.0f,D_0015EE6C*4.0f); D_L13_0015F4FC=d->blend; }
        func_00216028(6,0); D_L13_0015F6E8=2;
        audio=D_0013E633+0x1D+d->engine_sound*0x70;
        if (*(Jet47**)(audio+0x88)!=m || !audio[0x74]) { d->engine_sound=-1; d->engine_sound=func_0022ED80(0,4,(int)m); }
        func_L13_002BB3E8(m,d);
        if (((JetPlayer47*)(D_0013E633+0xE1D))->pad160F&1) m->state=5;
        if (d->energy<=0) { d->wait_timer=func_001F9850(1200); m->state=8; }
        break;
    }
    case 5:
        ((JetPlayer47*)(D_0013E633+0xE1D))->in_craft=0; *(int*)((char*)((JetPlayer47*)(D_0013E633+0xE1D))->moby+0x98)=0;
        func_L00_00222B80(0,1); func_L00_002EC0C8(0); func_001FFDA0(((JetPlayer47*)(D_0013E633+0xE1D))->weapon,0);
        qcopy(m->position,d->spawn_position); qcopy(m->rotation,d->spawn_rotation);
        m->scale=m->model->scale; func_0020EEE8(m);
        if (d->group_a>0) func_L13_00266060(d->group_a,0,0,0);
        if (d->group_b>0) func_L13_00266060(d->group_b,0,0,0);
        func_L13_00266180(D_L13_001CC068,1,1,-1); func_L13_00266180(&D_L13_001614D0,1,-1,-1); func_L13_00266128(0x102,0);
        if (d->exit_path!=-1) { JetPath47 *path=&D_L13_0016016C[d->exit_path]; func_L00_00217718(path->position,path->rotation,0,1); }
        else func_L00_00217718(d->spawn_position,D_L13_0016016C[d->destination_path].rotation,0,1);
        {
            int id=d->engine_sound;
            unsigned char *audio;
            if (id!=-1) { audio=D_0013E633+0x1D+id*0x70; if (*(Jet47**)(audio+0x88)==m && audio[0x74]) func_L00_0028EBF0(id); }
            d->engine_sound=-1;
            id=d->weapon_sound;
            if (id!=-1) { audio=D_0013E633+0x1D+id*0x70; if (*(Jet47**)(audio+0x88)==m && audio[0x74]) func_L00_0028EBF0(id); }
            d->weapon_sound=-1;
        }
        func_L00_002664B0(0,5); d->blend=0.99f; D_L13_0015F4FC=0.99f; m->state=1;
        break;
    case 6:
        D_L13_0015F6E8=2;
        {
            int id=d->engine_sound;
            unsigned char *audio;
            if (id!=-1) { audio=D_0013E633+0x1D+id*0x70; if (*(Jet47**)(audio+0x88)==m && audio[0x74]) func_L00_0028EBF0(id); }
            d->engine_sound=-1;
            id=d->weapon_sound;
            if (id!=-1) { audio=D_0013E633+0x1D+id*0x70; if (*(Jet47**)(audio+0x88)==m && audio[0x74]) func_L00_0028EBF0(id); }
            d->weapon_sound=-1;
        }
        m->state=7; break;
    case 7: {
        JetTransition47 *transition;
        D_L13_0015F6E8=2;
        if (func_001F9938(&d->death_timer)) {
            transition=(JetTransition47*)(D_0014171B+0x100B5);
            if (!transition->pending) {
            int active=transition->active;
            if (active==-1) {
                func_L00_00211908(); func_L00_002EC0C8(0);
                qcopy(m->position,d->spawn_position); qcopy(m->rotation,d->spawn_rotation); func_0020EEE8(m);
                {
            int id=d->engine_sound;
            unsigned char *audio;
            if (id!=active) { audio=D_0013E633+0x1D+id*0x70; if (*(Jet47**)(audio+0x88)==m && audio[0x74]) func_L00_0028EBF0(id); }
            d->engine_sound=-1;
            id=d->weapon_sound;
            if (id!=-1) { audio=D_0013E633+0x1D+id*0x70; if (*(Jet47**)(audio+0x88)==m && audio[0x74]) func_L00_0028EBF0(id); }
            d->weapon_sound=-1;
        }
                m->state=0;
            }
        }
        }
        break;
    }
    case 8:
        ((JetPlayer47*)(D_0013E633+0xE1D))->in_craft=0; *(int*)((char*)((JetPlayer47*)(D_0013E633+0xE1D))->moby+0x98)=0; func_L00_00222B80(0,1); func_L00_002EC0C8(0);
        if (d->escape_path==-1) { func_001E9730(D_L13_001F4760); qcopy(m->position,d->spawn_position); qcopy(m->rotation,d->spawn_rotation); }
        else { int offset=d->escape_path<<7; char *base=(char*)D_L13_0016016C; qcopy(m->position,base+offset+0x30); qcopy(m->rotation,base+offset+0x70); m->position[2]+=0.57318f; }
        m->scale=m->model->scale; func_0020EEE8(m);
        if (d->destination_path==-1) func_001E9730(D_L13_001F4798);
        else {
            JetPath47 *path;
            if (d->group_a>0) func_L13_00266060(d->group_a,0,0,0);
            if (d->group_b>0) func_L13_00266060(d->group_b,0,0,0);
            func_L13_00266180(D_L13_001CC068,1,1,-1); func_L13_00266180(&D_L13_001614D0,1,-1,-1); func_L13_00266128(0x102,0);
            path=&D_L13_0016016C[d->destination_path]; func_L00_00217718(path->position,path->rotation,0,1);
        }
        if (m->persistent!=0xFF) func_L00_002512D8(m->persistent);
        {
            int id=d->engine_sound;
            unsigned char *audio;
            if (id!=-1) { audio=D_0013E633+0x1D+id*0x70; if (*(Jet47**)(audio+0x88)==m && audio[0x74]) func_L00_0028EBF0(id); }
            d->engine_sound=-1;
            id=d->weapon_sound;
            if (id!=-1) { audio=D_0013E633+0x1D+id*0x70; if (*(Jet47**)(audio+0x88)==m && audio[0x74]) func_L00_0028EBF0(id); }
            d->weapon_sound=-1;
        }
        func_L00_00286128(D_0013E633+0xE9D,D_0013E633+0xEAD); m->state=9;
        break;
    case 9: func_0020D678(m); return;
    case 10: break;
    default: break;
    }
    if (m->position[0]<15.0f) m->position[0]=15.0f;
    if (m->position[0]>1008.0f) m->position[0]=1008.0f;
    if (m->position[1]<15.0f) m->position[1]=15.0f;
    if (m->position[1]>1008.0f) m->position[1]=1008.0f;
    if (m->position[2]<15.0f) m->position[2]=15.0f;
    if (m->position[2]>1008.0f) m->position[2]=1008.0f;
    state=m->state;
    if ((unsigned char)state==4) { qcopy_nc(D_0013E633+0xE9D,m->position); qcopy_nc(D_0013E633+0xEAD,d->angles); }
    if ((unsigned int)(state-3)<2 || (unsigned char)state==8) func_L13_002B9800(m,(char*)d);
}
