/* NON_MATCHING func_L00_002B1688 -- src/overlays/shared/vendor_002AB910.c
 * Best so far: SIZE ours 5968 / retail 5964, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   p24 SIZE5960: paired bounce workspace matches2A0/2B0; inline damage radius recovers all hit-query/particle cou
 *   p25 SIZE5960, named skew components load order/reg allocation worse; discard. p26 from p24 gives ring limit an
 *   p26 SIZE5968: separate scopes perturb temp-slot and reduced-scalar spills, despite first lifetime nowS1; disca
 *   p27 SIZE5956, single conditional camera store loses4B; stored-component negatives no improvement. p28 from p24
 *   p28 SIZE5960, same scopes with distinct ring lifetimes recovers colorS3/S2/lifeS1; closest coherent default ca
 *   Final round summary: budget30 spent; best coherent p28 default flags5960/5964, full plain-C behavior, correct4
 *   Best p28 exact through8DC, then collision b9 store sits before jal rather than in delay. First reflection, sca
 *   Don't retry failed helpers: inline random vector (with or without min/max) reloads literals each call; direct 
 */
/* Gold Devastator missile: lead its target, advance, and bounce or explode. */
typedef struct {
    VU previous_target;
    M910 *owner;
    int life;
    M910 *target;
    float target_height;
    float speed;
    float yaw_velocity;
    float pitch_velocity;
    float yaw;
    float pitch;
    float desired_speed;
    int track_velocity;
    short turn_time;
    short turn_period;
    int bounce_count;
    int bounce_timer;
    float limit;
} Missile1688;
typedef struct { int colors[6]; } Colors1688;
/* Homing vectors and the collision request occupy the same phase workspace. */
typedef union {
    Qry910 collision;
    struct { VU direction; VU relative; VU target; } vectors;
} MissilePhase1688;
typedef struct { char pad0[0x100]; VU previous; char pad110[0x30]; VU current; } HeroMotion1688;
typedef struct { char pad0[0x18]; M910 *moby; int kind; VU position; char pad30[0x10]; VU normal, velocity_end, velocity_start; } Impact1688;
extern Impact1688 impact1688 __asm__("D_L00_00173F40");
extern HeroMotion1688 hero_motion1688 __asm__("D_0013F450");
extern B910 D_L00_001E9CD0;
extern B910 D_L00_001E9D20;
extern Colors1688 D_L00_001E9D70;
extern Colors1688 D_L00_001E9D88;
extern float D_L00_0015F6B4 MACRO_ADDR;
extern float D_L00_0015F6B8 MACRO_ADDR;
extern VU D_L00_00160740 MACRO_ADDR;
extern VU D_L00_00160720 MACRO_ADDR;
extern unsigned char *D_L00_001B245C;
extern short D_L00_001B0AF0[];
extern float dot1688(void *) __asm__("func_L00_001FF3E0");
extern void cross1688(void *,void *,void *) __asm__("func_L00_001FF270");
extern float horizontal1688(void *) __asm__("func_001F9CE8");
extern float chase1688(void *,float,float,float,float,float) __asm__("func_L00_00259148");
extern unsigned char *smoke1688(void *,void *,int,int,int,int,float,float,float,float,float) __asm__("func_L00_00272158");
extern void rotate1688(void *,void *,void *) __asm__("func_001F9EC0");
extern float random_angle1688(void) __asm__("func_00214158");
extern void axis_rotate1688(void *,void *,void *,float) __asm__("func_002156E0");
extern void spark1688(void *,void *,int,int,int,int,float) __asm__("func_L00_0026DA50");
extern void combine_velocity1688(void *,void *,void *) __asm__("func_L00_001FF240");
extern int collision1688(void *,void *,int,void *,void *) __asm__("func_L00_001EFFF0");
extern void reflect1688(void *,void *,void *) __asm__("func_L00_001FF610");
extern void matrix_scale1688(void *,void *,float) __asm__("func_L00_001FFCF8");
extern void matrix_add1688(void *,void *,void *) __asm__("func_L00_001FFDD0");
extern void identity1688(void *) __asm__("func_001FA190");
extern void transform1688(void *,void *,void *) __asm__("func_001F9EE8");
extern void rings1688(void *,void *,int,int,int,int,int,int,float,float) __asm__("func_L00_0026B890");
extern void debris1688(void *,void *,int,int,int,float) __asm__("func_L00_0026B368");

void func_L00_002B1688(M910 *m) {
    B910 effect=D_L00_001E9CD0;
    B910 gold_effect=D_L00_001E9D20;
    VU camera_delta;
    VU previous;
    VU blast_velocity;
    VU normal;
    VU smoke_position;
    VU motion;
    VU surface_motion;
    VU hero_velocity;
    MissilePhase1688 phase;
    VU predicted;
    float basis[4][4];
    float basis_squared[4][4];
    float rotation[4][4];
    float diagonal[4][4];
    float rotation_part[4][4];
    M910 *skip=0;
    int reduced=0;
    Missile1688 *d;
    M910 *target;
    float size, yaw, pitch;
    normal.q=0;
    normal.f[2]=D_0015EE6C*8.0f;
    blast_velocity=normal;
    normal.q=0;
    normal.f[2]=1.0f;
    d=(Missile1688 *)m->v;
    target=d->target;
    if(D_L00_0015F6B4>0.9f || D_L00_0015F6B8>0.9f) reduced=1;
    d->speed=d->speed+(d->desired_speed-d->speed)/10.0f*D_0015EE64;
    func_001F9938(&d->turn_time);
    {
        float turn=func_001FA888(d->turn_time);
        turn=turn/func_001FA888(d->turn_period);
        func_001F9BD8(phase.collision.dir,&hero_motion1688.current,&hero_motion1688.previous);
        hero_velocity=phase.vectors.direction;
        func_001F9C30(&hero_velocity,&hero_velocity,turn);
    }
    size=func_001FA888(D_0013E620.bB)+1.0f;
    if(target && d->life<func_001F9850(300)-func_001F9850(5) && (signed char)target->state>=0) {
        float time=0.0f;
        qcopy(&phase.vectors.target,&target->pos);
        phase.vectors.target.f[2]+=d->target_height;
        func_001F9BF0(phase.collision.dir,&phase.vectors.target,(&m->pos));
        if(d->track_velocity) {
            float b,a,root,t1,t2,denominator,negative_b;
            func_001F9BF0(&phase.vectors.relative,&phase.vectors.target,&d->previous_target);
            cross1688(&predicted,&phase.vectors.relative,&hero_velocity);
            qcopy(&d->previous_target,&phase.vectors.target);
            a=dot1688(&phase.vectors.relative);
            b=(phase.vectors.relative.f[0]*phase.collision.dir[0]+phase.vectors.relative.f[1]*phase.collision.dir[1]+phase.vectors.relative.f[2]*phase.collision.dir[2])*-2.0f;
            a=d->speed*d->speed-a;
            root=func_001F9B50(b*b-a*4.0f*-dot1688(phase.collision.dir));
            negative_b=-b;
            denominator=a+a;
            t1=(negative_b+root)/denominator;
            t2=(negative_b-root)/denominator;
            if(t1>0.0f && t2>0.0f) {
                if(t2<t1) time=t1;
                else time=t2;
            } else {
                if(t1>0.0f) time=t1;
                else {
                    time=-1.0f;
                    if(t2>0.0f) time=t2;
                }
            }
        }
        if(time>0.0f && time<(float)func_001F9850(300)) {
                func_001F9C30(&predicted,&phase.vectors.relative,time);
                func_001F9BD8(&predicted,&predicted,phase.collision.dir);
                yaw=func_L00_001FF860(predicted.f[0],predicted.f[1]);
                pitch=-func_L00_001FF860(horizontal1688(&predicted),predicted.f[2]);
                goto steer;
        }
        yaw=func_L00_001FF860(phase.collision.dir[0],phase.collision.dir[1]);
        pitch=-func_L00_001FF860(horizontal1688(phase.collision.dir),phase.collision.dir[2]);
    } else {
        if(d->life<func_001F9850(300)-func_001F9850(5)) {
            yaw=d->yaw;
            pitch=d->pitch;
        } else {
            yaw=m->rz;
            pitch=m->ry;
        }
    }
steer:
    if(target) {
        m->rz=chase1688(&d->yaw_velocity,m->rz,yaw,D_0015EE70*6.2831855f,D_0015EE70*3.1415927f,D_0015EE6C*6.2831855f);
        m->ry=chase1688(&d->pitch_velocity,m->ry,pitch,D_0015EE70*6.2831855f,D_0015EE70*3.1415927f,D_0015EE6C*6.2831855f);
    } else {
        m->rz=chase1688(&d->yaw_velocity,m->rz,yaw,D_0015EE70*6.2831855f,D_0015EE70*3.1415927f,D_0015EE6C*4.71238899f);
        m->ry=chase1688(&d->pitch_velocity,m->ry,pitch,D_0015EE70*6.2831855f,D_0015EE70*3.1415927f,D_0015EE6C*4.71238899f);
    }
    func_00215C00(&motion,d->speed,m->rz,-m->ry);
    func_L00_001FF4B0(&impact1688.normal,&motion,1.0f);
    func_001F9C30(&impact1688.normal,&impact1688.normal,-1.0f);
    if(!reduced || !(D_L00_0015F6B0&1)) {
        unsigned char *p;
        phase.vectors.relative.q=0;
        phase.vectors.relative.f[0]=func_002140F8(-1.0f,1.0f);
        phase.vectors.relative.f[1]=func_002140F8(-1.0f,1.0f);
        phase.vectors.relative.f[2]=func_002140F8(-1.0f,1.0f);
        phase.vectors.direction=phase.vectors.relative;
        func_L00_001FF4B0(phase.collision.dir,phase.collision.dir,func_002140F8(0.1f,0.2f)*D_0015EE6C);
        func_L00_001FF4B0(&smoke_position,&motion,-func_002140F8(D_0015EE6C*0.1f,D_0015EE6C));
        func_001F9BD8(phase.collision.dir,phase.collision.dir,&smoke_position);
        func_L00_001FF4B0(&smoke_position,&motion,func_002140F8(0.0f,1.0f)*d->speed);
        func_001F9BD8(&smoke_position,&smoke_position,(&m->pos));
        p=smoke1688(&smoke_position,phase.collision.dir,func_001F9850(40),50,0x505050,3,40000.0f,1000.0f,1.0f,-0.0002f,0.0f);
        if(p) { unsigned char texture=*D_L00_001B245C; p[3]=0x44; p[2]=texture; }
        smoke1688((&m->pos),phase.collision.dir,func_001F9850(7),127,0xB0B0B0,3,40000.0f,1000.0f,1.0f,-0.0004f,0.0f);
        phase.vectors.relative.q=0;
        phase.vectors.relative.f[2]=0.02f;
        rotate1688(&phase.vectors.relative,&phase.vectors.relative,m->mtx);
        axis_rotate1688(&phase.vectors.relative,&phase.vectors.relative,m->mtx,random_angle1688());
        {
            int color=func_L00_0025D140(0x4F007FFF,D_0013E620.bB);
            spark1688(&smoke_position,&phase.vectors.relative,color,0x1FFFFFFF,func_001F9850(15),1,25000.0f);
        }
    }
    qcopy(&previous,(&m->pos));
    combine_velocity1688(phase.collision.dir,&motion,&hero_velocity);
    func_001F9BD8((&m->pos),(&m->pos),&motion);
    if(m->pos.f[0]<0.0f || m->pos.f[1]<0.0f || m->pos.f[2]<0.0f) goto destroy;
    phase.collision.moby=m;
    phase.collision.flags=0x830000;
    phase.collision.fC=3.0f;
    phase.collision.i10=1;
    qcopy(phase.collision.dir,&motion);
    func_L00_001FF500(phase.collision.dir,phase.collision.dir,1.0f);
    phase.collision.dir[3]=5627.925f;
    phase.collision.b8=3;
    phase.collision.b9=1;
    phase.collision.cls=m->cls;
    phase.collision.dir[2]=1.0f;
    if(collision1688(&previous,(&m->pos),0,D_0013F450.cam,&phase.collision)) {
        Impact1688 *hit=&impact1688;
        VU *hit_normal;
        if(hit->moby) {
            if(hit->moby!=(M910 *)D_0013F450.cam && hit->moby!=d->owner) {
                m->bBC=2;
                qcopy((&m->pos),&hit->position);
                func_001F9BF0(&surface_motion,&hit->velocity_end,&hit->velocity_start);
                hit_normal=&hit->normal;
                skip=m;
                func_L00_001FF4B0(&surface_motion,&surface_motion,1.0f);
                reflect1688(&blast_velocity,&motion,hit_normal);
                func_L00_001FF4B0(&blast_velocity,&blast_velocity,D_0015EE6C+D_0015EE6C);
                func_L00_001FF4B0(&normal,hit_normal,1.0f);
            }
        } else if(hit->kind>0) {
            m->bBC=1;
            qcopy((&m->pos),&hit->position);
            func_001F9BF0(&surface_motion,&hit->velocity_end,&hit->velocity_start);
            hit_normal=&hit->normal;
            func_L00_001FF4B0(&surface_motion,&surface_motion,1.0f);
            reflect1688(&blast_velocity,&motion,hit_normal);
            func_L00_001FF4B0(&blast_velocity,&blast_velocity,D_0015EE6C+D_0015EE6C);
            func_L00_001FF4B0(&normal,hit_normal,1.0f);
        }
    } else if(func_001F9908(&d->life) || d->limit<func_001F9D48((&m->pos),&D_0013F450.x80)) {
        qcopy(&normal,&D_L00_00160740);
        qcopy(&surface_motion,&D_L00_00160720);
        rotate1688(&surface_motion,&surface_motion,m->mtx);
        rotate1688(&normal,&normal,m->mtx);
        if(!D_0013E620.bB) goto destroy;
        m->bBC=1;
        func_001F9BD8(&blast_velocity,&blast_velocity,&motion);
    }
    if(m->bBC) {
        float distance, near_adjust;
        int particles;
        int particle_reduction;
        int i,j;
        int hit=func_L00_001F2BE8((&m->pos),16,m,0,(size+size));
        particles=10;
        predicted.q=m->pos.q;
        func_L00_0025BA50(m,&predicted,D_L00_00178000,hit,(int)skip,0x830000,3,1,3.0f,1.0f,1.0f);
        particle_reduction=0;
        basis[0][1]=normal.f[2];
        basis[1][0]=-normal.f[2];
        basis[0][2]=-normal.f[1];
        basis[2][1]=-normal.f[0];
        basis[1][2]=normal.f[0];
        basis[2][0]=normal.f[1];
        basis[0][0]=0.0f;
        basis[3][0]=0.0f;
        basis[1][1]=0.0f;
        basis[3][1]=0.0f;
        basis[2][2]=0.0f;
        basis[3][2]=0.0f;
        basis[0][3]=0.0f;
        basis[1][3]=0.0f;
        basis[2][3]=0.0f;
        basis[3][3]=0.0f;
        func_001FA540(basis_squared,basis,basis);
        if(reduced) { particle_reduction=1; particles/=3; }
        { int remaining=particles;
        for(;remaining!=0;) {
            if(m->bBC==1) {
                float a=random_angle1688();
                matrix_scale1688(rotation_part,basis_squared,1.0f-func_001F9F90(a));
                matrix_scale1688(diagonal,basis,func_001F9FA8(a));
                matrix_add1688(diagonal,diagonal,rotation_part);
                identity1688(rotation_part);
                matrix_add1688(rotation,diagonal,rotation_part);
                transform1688(&predicted,&surface_motion,rotation);
                func_L00_001FF4B0(&predicted,&predicted,func_002140F8(8.5f,16.5f)*D_0015EE6C*size);
            } else {
                float speed=func_002140F8(8.5f,16.5f)*D_0015EE6C*size;
                float a=random_angle1688();
                func_00215C00(&predicted,speed,a,random_angle1688());
            }
            predicted.f[2]+=D_0015EE6C*5.0f;
            func_001F9BD8(&predicted,&predicted,&blast_velocity);
            {
                int color=func_L00_0025D140(0x4F007FFF,D_0013E620.bB);
                int fade=func_L00_0025D140(0x1F00007F,D_0013E620.bB);
                int life;
                float particle_scale;
                if(func_001F9CB8(&predicted)>1.0f) func_L00_001FF4B0(&predicted,&predicted,D_0015EE6C*8.0f);
                remaining--;
                particle_scale=size*40000.0f;
                life=func_L00_00258BC8(func_001F9850(60),func_001F9850(120))-particle_reduction*35;
                func_L00_0026CA10((&m->pos),&predicted,color,fade,particle_scale,life,1,-1,-1);
            }
        }
        }
        { VU random;
            random.q=0;
            random.f[0]=func_002140F8(-1.0f,1.0f);
            random.f[1]=func_002140F8(-1.0f,1.0f);
            random.f[2]=func_002140F8(-1.0f,1.0f);
            predicted=random;
        }
        func_001F9BF0(&camera_delta,D_L00_00166EC0,(&m->pos));
        distance=func_001F9CB8(&camera_delta);
        camera_delta.f[2]+=distance*0.5f;
        func_L00_001FF4B0(&predicted,&predicted,distance/5.0f*D_0015EE6C*size);
        func_L00_001FF4B0(&camera_delta,&camera_delta,(distance+distance)*D_0015EE6C);
        func_001F9BD8(&predicted,&predicted,&camera_delta);
        func_L00_001FF548(&predicted,&predicted,D_0015EE6C*10.0f);
        func_L00_002B0738((char *)(&m->pos),(char *)&predicted,func_L00_00258BC8(func_001F9850(60),func_001F9850(90)),0,0);
        if(distance<6.0f) j=func_001FA898(distance)/2;
        else j=3;
        near_adjust=0.0f;
        if(distance<7.0f) near_adjust=7.0f-distance;
        if(reduced) j/=2;
        if(j>0) for(i=j;i!=0;i--) {
            float speed=func_002140F8(8.0f,10.0f)*size*D_0015EE6C-near_adjust*D_0015EE6C;
            Colors1688 color=D_L00_001E9D70;
            Colors1688 fade=D_L00_001E9D88;
            int c=func_L00_0025D140(color.colors[func_002140B0(6)],D_0013E620.bB);
            int f=func_L00_0025D140(fade.colors[func_002140B0(6)],D_0013E620.bB);
            int life=func_L00_00258BC8(func_001F9850(15),func_001F9850(20))-particle_reduction*7;
            int end=func_L00_00258BC8(func_001F9850(25),func_001F9850(30))-particle_reduction*10;
            int white_life, white_end;
            rings1688((&m->pos),&blast_velocity,c,f,life,end,0,0,400000.0f,speed);
            white_life=func_L00_00258BC8(func_001F9850(5),func_001F9850(10))-particle_reduction*5;
            white_end=func_L00_00258BC8(func_001F9850(15),func_001F9850(20))-particle_reduction*7;
            rings1688((&m->pos),&blast_velocity,0x7FFFFFFF,0xFFFFFF,white_life,white_end,0,0,400000.0f,speed*0.5f);
        }
        for(i=particles;i!=0;i--) {
            Colors1688 color=D_L00_001E9D70;
            Colors1688 fade=D_L00_001E9D88;
            VU v;
            int c,f,life;
            float debris_scale;
            { VU random;
            random.q=0;
            random.f[0]=func_002140F8(-1.0f,1.0f);
            random.f[1]=func_002140F8(-1.0f,1.0f);
            random.f[2]=func_002140F8(-1.0f,1.0f);
                v=random;
            }
            func_L00_001FF4B0(&v,&v,func_002140F8(0.0f,3.0f)*D_0015EE6C*size);
            c=func_L00_0025D140(color.colors[func_002140B0(6)],D_0013E620.bB);
            f=func_L00_0025D140(fade.colors[func_002140B0(6)],D_0013E620.bB);
            debris_scale=size*200000.0f;
            life=func_L00_00258BC8(func_001F9850(20),func_001F9850(35))-particle_reduction*10;
            debris1688((&m->pos),&v,c,f,life,debris_scale);
        }
        if(D_L00_0015F6B4<0.95f && distance>9.0f) {
            int c=127,f=127;
            if(D_0013E620.bB) c=f=60;
            func_L00_002ADBB0(m,(&m->pos),&blast_velocity,size*4.0f,func_001F9850(15),c,127,f,32);
            func_L00_002ADBB0(m,(&m->pos),&blast_velocity,size*4.0f,func_001F9850(24),c,127,f,32);
        }
        { unsigned char color=127;
          int life;
          float flash_scale=size*4.0f;
          if(D_0013E620.bB) color=32;
          life=func_001F9850(20);
          func_L00_002ADBB0(m,(&m->pos),&blast_velocity,flash_scale,life,color,127,0,48);
        }
        if(!reduced) func_L00_002ADBB0(m,(&m->pos),&blast_velocity,(size+size),func_001F9850(19),255,255,255,32);
        motion.f[0]=0.0f;
        m->bBC=0;
        if(distance<20.0f) D_L00_00166D80.f160=0.4f-distance*0.0175f;
        else D_L00_00166D80.f160=0.05000001192f;
        D_L00_00166D80.i168=func_001F9850(25);
        func_0022ED80(0,0,(int)m);
        if(!reduced) {
            if(D_0013E620.bB) func_L00_002D4CE8((char *)&gold_effect,(char *)(&m->pos),0,0);
            else func_L00_002D4CE8((char *)&effect,(char *)(&m->pos),0,0);
        }
        d->bounce_count++;
        if(!D_0013E620.bB || d->bounce_count==3) {
destroy:
            func_L00_00260878(m,D_L00_001B0AF0);
            func_0020D678(m);
            goto done;
        }
        { VU bounce[2];
        d->target=0;
        m->bBC=0;
        func_L00_001FF4B0(&impact1688.normal,&impact1688.normal,1.0f);
        reflect1688(&bounce[0],&motion,&impact1688.normal);
        m->rz=func_L00_001FF860(bounce[0].f[0],bounce[0].f[1]);
        m->ry=-func_L00_001FF860(horizontal1688(&bounce[0]),bounce[0].f[2]);
        d->yaw_velocity=0.0f; d->pitch_velocity=0.0f;
        func_L00_001FF4B0(&bounce[1],&impact1688.normal,0.05f);
        func_001F9BD8((&m->pos),(&m->pos),&bounce[1]);
        if(impact1688.moby) d->owner=impact1688.moby;
        if(!d->bounce_timer) d->bounce_timer=func_001F9850(90);
        func_L00_002B1290((char *)m,(O *)d,(char *)impact1688.moby);
        func_0022ED80(1,0,(int)m);
            }
    }
    if(func_001F9908(&d->bounce_timer)) d->bounce_count=0;
done:
    return;
}
