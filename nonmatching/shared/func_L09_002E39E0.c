/* NON_MATCHING func_L09_002E39E0 -- src/overlays/shared/vendor_002C6B30.c
 * Best so far: SIZE ours 6040 / retail 6056, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   p13 SIZE5996: one escape pointer before add and ternary turn remove FP30, keep loop zero hoisted4FPs. Returnin
 *   p14 SIZE5996: typed p7 baseline preserves3FPs and dataS3; pointer copies still differ. Sharing only approach/r
 *   p15 SIZE5980: snapshot before qcopy fixes positionS5/expiredS7 but removes copy and FP30; separate class branc
 *   p16 SIZE5996 with scratch -fno-thread-jumps: no shape improvement; option not retained. Hazard ABI corrected. 
 *   p17 SIZE5996: visibility ordering and hazard delay now exact; height cache speculates load before flag branch,
 *   p18 SIZE6000: global aim still caches loop pointer inS3 and extra zero constantF21, so4FPs; not an improvement
 *   p19 SIZE5968 with scratch -fno-gcse: smaller wrong140frame/4FP saves, not retained. p20 default flags reverses
 *   p20 SIZE5996 default flags, best complete typed C: equivalent comparison operand reversal canonicalized; first
 */
extern char D_0013E633[];
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_L09_00166FC0[];
extern char *D_L09_001B0930[];
extern char *D_L09_00160064 MACRO_ADDR;
extern float impulse239E0 SDATA(D_L09_00161948);
extern float lift239E0 SDATA(D_L09_0016194C);
extern unsigned char settings239E0[] SDATA(D_L09_00161958);
typedef struct { float position[4]; char pad10[0x2014]; unsigned char mode; } Hero239E0;
extern char *hit_query239E0(void *,int,int) __asm__("func_L00_0025B478");
extern int hit_check239E0(void *,void *,void *,int,void *,void *,int,int) __asm__("func_L00_0025B4D0");
extern int timer16_239E0(void *) __asm__("func_001F9938");
extern int timer32_239E0(void *) __asm__("func_001F9908");
extern int ticks239E0(int) __asm__("func_001F9850");
extern void event239E0(int,int) __asm__("func_L01_0026F040");
extern float angle239E0(float,float) __asm__("func_L00_001FF860");
extern void hit_motion239E0(float,void *,void *,int,int,int) __asm__("func_L00_0025D5B0");
extern void explode239E0(void *,int,int) __asm__("func_L00_002584A8");
extern void effects_start239E0(void *,void *) __asm__("func_L00_0025E4B0");
extern void sound239E0(float,void *,int,void *) __asm__("func_L00_00264B40");
extern float distance239E0(void *,void *) __asm__("func_001F9D10");
extern float fast_distance239E0(void *,void *) __asm__("func_001F9D48");
extern void wake239E0(void *) __asm__("func_L00_0025B178");
extern int target_query239E0(void *,void *,float) __asm__("func_L00_00260D30");
extern void steer_init239E0(void *) __asm__("func_L01_0026E8E0");
extern int random239E0(void) __asm__("func_001160D8");
extern int range239E0(int,int) __asm__("func_L00_00258BC8");
extern void animate239E0(void *,int,int,int) __asm__("func_00213DE0");
extern float ground239E0(void *,int,float) __asm__("func_00214358");
extern void subtract239E0(void *,void *,void *) __asm__("func_001F9BF0");
extern void add239E0(void *,void *,void *) __asm__("func_001F9BD8");
extern float length239E0(void *) __asm__("func_001F9CB8");
extern float abs239E0(float) __asm__("func_001F9B88");
extern int hero_status239E0(int) __asm__("func_002140B0");
extern float range_float239E0(float,float) __asm__("func_002140F8");
extern void turn239E0(void *,void *,float,float,float,float) __asm__("func_L00_002592B0");
extern void project239E0(void *,void *,void *,void *) __asm__("func_L01_0028C3A8");
extern float sine239E0(float) __asm__("func_001F9F90");
extern float cosine239E0(float) __asm__("func_001F9FA8");
extern int move239E0(void *,void *,void *,void *,float) __asm__("func_L00_00259B88");
extern float frame239E0(void *) __asm__("func_0020D830");
extern float angle_distance239E0(float,float) __asm__("func_001FA850");
extern void hurt239E0(void *,void *,int,void *,void *,float) __asm__("func_L00_0025AC00");
extern int hit_update239E0(void *,void *) __asm__("func_L00_0025D6F0");
extern int helper239E0(void *,void *) __asm__("func_L00_002DDEA0");
extern void zero239E0(void *) __asm__("func_001F9BC0");
extern float angle_delta239E0(float,float) __asm__("func_001FA790");
extern float angle_add239E0(float,float) __asm__("func_001FA748");
extern void vec_scale239E0(void *,void *,float) __asm__("func_L00_001FF4B0");
extern float fixed_float239E0(short) __asm__("func_001FA888");
extern int hazard239E0(void *) __asm__("func_L00_001F3958");
extern void effect239E0(void *,void *,int,float,float) __asm__("func_L00_00260108");
extern void delete239E0(void *) __asm__("func_0020D678");
extern void effects_update239E0(void *,void *) __asm__("func_L00_0025E590");
typedef struct {
    char pad0[0x20];
    float f20;
    short f24;
    short f26;
    char pad28[0x1];
    unsigned char f29;
    char pad2A[0xE];
    int f38;
    char pad3C[0x1C];
    unsigned char f58;
    char pad59[0x1];
    unsigned char f5A;
    char pad5B[0x6D];
    short fC8;
    char padCA[0x6];
    char * fD0;
    char padD4[0x43];
    unsigned char f117;
    char pad118[0x18];
    float f130;
    float f134;
    float f138;
    float f13C;
    char pad140[0x4];
    int f144;
    char pad148[0x15];
    unsigned char f15D;
    char pad15E[0x12];
    float f170;
    float f174;
    char pad178[0x8];
    int f180;
    char pad184[0x4];
    float f188;
    float f18C;
    float f190;
    char pad194[0x4];
    float f198;
    char pad19C[0x8];
    float f1A4;
    char pad1A8[0x4C];
    float f1F4;
    float f1F8;
    float f1FC;
    char pad200[0x4];
    float f204;
    int f208;
    char pad20C[0x4];
    int f210;
    short f214;
    short f216;
    char * f218;
    int f21C;
    char pad220[0x4];
    int f224;
    int f228;
} Enemy239E0;
void func_L09_002E39E0(char *m) {
    Enemy239E0 *d=(Enemy239E0 *)(*(char * *)((char *)(m)+0x78));
    int target_kind=2;
    float previous[4] __attribute__((aligned(16)));
    char query[0x50] __attribute__((aligned(16)));
    float velocity[4] __attribute__((aligned(16)));
    float projected[4] __attribute__((aligned(16)));
    float displacement[4] __attribute__((aligned(16)));
    int hit_index;
    float damage;
    float *position;
    float ground;
    int expired;
    if((*(unsigned char *)((char *)(m)+0x20))!=99 && (*(unsigned char *)((char *)(m)+0x20))!=7) {
        char *hit;
        Hero239E0 *hero;
        damage=0.0f;
        hit=hit_query239E0(m,0x330000,0);
        hit_check239E0(m,hit,(char *)d+0x20,0,&hit_index,&damage,0,4);
        timer16_239E0((char *)d+0x26);
        {
            short cooldown=d->f26;
            if(cooldown<ticks239E0(45) && hit) {
                if((unsigned)((*(unsigned short *)((*(char **)(hit+0x20))+0xA6))-176)<2) {
                    if(d->f26) (*(float *)((char *)(hit)+0x2C))=0.0f;
                    else (*(float *)((char *)(hit)+0x2C))=1.0f;
                }
                if((*(unsigned char *)((char *)(m)+0x21))!=255) event239E0((*(unsigned char *)((char *)(m)+0x21)),1);
                if((*(float *)((char *)(hit)+0x2C))!=0.0f) {
                    float health=d->f20-(*(float *)((char *)(hit)+0x2C));
                    float back=impulse239E0*D_0015EE6C;
                    float up=lift239E0*D_0015EE6C;
                    d->f144=9;
                    d->f130=0.008f; d->f134=0.0005f;
                    d->f20=health; d->f138=up; d->f13C=back;
                    d->f15D=0;
                    if(health<=0.0f) {
                        float up_die=D_0015EE6C*8.0f;
                        float back_die=D_0015EE6C*10.0f;
                        (*(unsigned short *)((char *)(m)+0x34))&=0xEFFF;
                        d->f138=up_die; d->f13C=back_die;
                        if((*(unsigned short *)((char *)(hit)+0x2A))==180) {
                            d->f13C=back_die*1.35f;
                            d->f138=up_die*1.35f;
                        }
                        hit_motion239E0(angle239E0((*(float *)((char *)(m)+0x10))-(*(float *)((char *)(query)+0)),(*(float *)((char *)(m)+0x14))-(*(float *)((char *)(query)+4))),m,(char *)d+0x120,5,1,0);
                        d->f170=11.0f; d->f174=18.0f;
                        if((*(unsigned char *)((char *)(D_0013E633)+0x2EC1))==2) explode239E0(m,0x200,-1);
                        else explode239E0(m,0,-1);
                        (*(int *)((char *)(m)+0x94))=0; (*(unsigned char *)((char *)(m)+0x20))=99; d->f117=120;
                        effects_start239E0(m,(char *)d+0x110);
                    } else {
                        if((*(unsigned short *)((char *)(hit)+0x2A))==180) {
                            d->f13C=back*1.35f; d->f138=up*1.35f;
                        }
                        hit_motion239E0(angle239E0((*(float *)((char *)(m)+0x10))-(*(float *)((char *)(query)+0)),(*(float *)((char *)(m)+0x14))-(*(float *)((char *)(query)+4))),m,(char *)d+0x120,6,1,0);
                        d->f170=5.0f; d->f174=10.0f;
                        (*(unsigned char *)((char *)(m)+0x20))=6; d->f117=250;
                        d->f26=ticks239E0(60);
                        effects_start239E0(m,(char *)d+0x110);
                    }
                }
            }
        }
        (*(unsigned char *)((char *)(m)+0xA4))=255;
        sound239E0(2.1f,m,0,(char *)d+0x230);
        position=(float *)(m+0x10);
        if((*(unsigned char *)((char *)(m)+0x31)) && distance239E0(position,D_L09_00166FC0)<38.0f) {
            wake239E0(m); (*(unsigned char *)((char *)(m)+0x7F))=30;
        }
        hero=(Hero239E0 *)(D_0013E633+0xE9D);
        if(fast_distance239E0(position,hero)>40.0f) return;
        if(d->f228) {
            if(hero->mode!=2) {
                (*(unsigned char *)((char *)(m)+0x30))=255; (*(int *)((char *)(m)+0x94))=0;
                (*(unsigned short *)((char *)(m)+0x34))=((*(unsigned short *)((char *)(m)+0x34))|0x41)&0xEFFF;
                return;
            }
            (*(unsigned short *)((char *)(m)+0x34))&=0xFFBE;
            (*(unsigned char *)((char *)(m)+0x30))=64;
            (*(int *)((char *)(m)+0x94))=(*(int *)((*(char **)(m+0x24))+0x10));
            (*(unsigned short *)((char *)(m)+0x34))|=0x1000;
        }
        if(d->f38) d->f214=ticks239E0(240);
        d->f38=0;
        timer32_239E0((char *)d+0x208);
        if(timer16_239E0((char *)d+0x214)) d->f1FC=12.0f;
        else d->f1FC=20.0f;
        target_kind=target_query239E0(m,query,d->f1FC);
    }
    qcopy(previous,m+0x10);
    position=(float *)(m+0x10);
    expired=timer32_239E0((char *)d+0x224)!=0;
    ground=-1.0f;
    switch((*(unsigned char *)((char *)(m)+0x20))) {
    case 0:
        qcopy((char *)d+0x1D0,position);
        (*(unsigned char *)((char *)(m)+0x20))=1; d->f29=0; d->f214=0; d->f208=0;
        d->f20=1.0f; d->f24=1; d->f5A=2; d->f58=8;
        steer_init239E0((char *)d+0x180);
        d->f180=0x38D; d->f188=2.0f; d->f18C=2.0f;
        d->f1A4=d->f204*D_0015EE6C;
        if(random239E0()&1) (*(unsigned short *)((char *)(m)+0x34))|=0x8000;
        d->fD0=(char *)settings239E0;
        if((*(unsigned char *)((char *)(m)+0x53))!=2) animate239E0(m,2,0,ticks239E0(range239E0(10,13)));
        ground=ground239E0(position,0,0.5f); (*(float *)((char *)(m)+0x18))=ground;
        break;
    case 1:
        subtract239E0(velocity,query,position);
        if((target_kind<2 || length239E0(velocity)<d->f1FC+4.0f) &&
           abs239E0((*(float *)((char *)(m)+0x18))-(*(float *)((char *)(query)+8)))<8.0f && !hero_status239E0(19)) {
            (*(unsigned char *)((char *)(m)+0x20))=2;
            if((*(unsigned char *)((char *)(m)+0x53))!=4) animate239E0(m,4,0,ticks239E0(range239E0(10,13)));
        } else if((*(unsigned char *)((char *)(m)+0xBC))==1 && !hero_status239E0(19)) {
            if(hero_status239E0(0x100)&1) d->f1F8=-d->f1F8;
            d->f1F4=d->f1F8*0.017453292f;
            d->f210=ticks239E0((int)range_float239E0(30.0f,90.0f));
            (*(unsigned char *)((char *)(m)+0x20))=3;
            if((*(unsigned char *)((char *)(m)+0x53))!=0) animate239E0(m,0,0,ticks239E0(range239E0(10,13)));
            (*(unsigned char *)((char *)(m)+0xBC))=0;
        }
        break;
    case 2: case 8: case 10: case 11:
        turn239E0(m,(char *)d+0x1F0,angle239E0((*(float *)((char *)(query)+0))-position[0],(*(float *)((char *)(query)+4))-position[1]),0.02f,0.3f,0.1f);
        subtract239E0(velocity,query,position);
        if((target_kind<2 || length239E0(velocity)<d->f1FC) &&
           abs239E0((*(float *)((char *)(m)+0x18))-(*(float *)((char *)(query)+8)))<8.0f && !hero_status239E0(19)) {
            if((*(unsigned char *)((char *)(m)+0x21))!=255) event239E0((*(unsigned char *)((char *)(m)+0x21)),1);
            goto choose_approach;
        } else if((*(unsigned char *)((char *)(m)+0xBC))==1 && !hero_status239E0(19)) {
choose_approach:
            if(hero_status239E0(0x100)&1) d->f1F8=-d->f1F8;
            d->f1F4=d->f1F8*0.017453292f;
            d->f210=ticks239E0((int)range_float239E0(30.0f,90.0f));
            (*(unsigned char *)((char *)(m)+0x20))=3;
            if((*(unsigned char *)((char *)(m)+0x53))!=0) animate239E0(m,0,0,ticks239E0(range239E0(10,13)));
            (*(unsigned char *)((char *)(m)+0xBC))=0;
        }
        if((*(unsigned char *)((char *)(m)+0x53))==4 && (*(unsigned char *)((char *)(m)+0x70))&2) animate239E0(m,2,0,ticks239E0(range239E0(10,13)));
        break;
    case 3: {
        float steepness=abs239E0((*(float *)((char *)(m)+0x18))-(*(float *)((char *)(query)+8)));
        int flags;
        steepness/=fast_distance239E0(position,query);
        if(d->f21C!=-1) project239E0(m,D_L09_001B0930[d->f21C],query,projected);
        else qcopy(projected,query);
        turn239E0(m,(char *)d+0x1F0,angle239E0(projected[0]-position[0],projected[1]-position[1])+d->f1F4,0.05f,0.3f,0.2f);
        velocity[0]=2.0f*sine239E0((*(float *)((char *)(m)+0x48)));
        velocity[1]=2.0f*cosine239E0((*(float *)((char *)(m)+0x48))); velocity[2]=0.0f;
        add239E0(projected,position,velocity);
        flags=move239E0(m,(char *)d+0x180,projected,velocity,1.0f);
        if(timer32_239E0((char *)d+0x210)) {
            d->f210=ticks239E0((int)range_float239E0(30.0f,90.0f));
            d->f1F4=-d->f1F4;
        }
        subtract239E0(displacement,query,(char *)d+0x1D0);
        if((flags&4) || (fast_distance239E0(position,query)<1.5f && !(flags&2))) {
attack_state:
            (*(unsigned char *)((char *)(m)+0x20))=4;
            if((*(unsigned char *)((char *)(m)+0x53))!=1) animate239E0(m,1,0,ticks239E0(range239E0(10,13)));
        } else if(d->f190<D_0015EE6C || steepness>1.0f || (flags&2)) {
            d->f224=ticks239E0(50); (*(unsigned char *)((char *)(m)+0x20))=5;
        } else if(length239E0(displacement)<d->f1FC+4.0f && abs239E0((*(float *)((char *)(m)+0x18))-(*(float *)((char *)(query)+8)))<8.0f) {
            if((*(unsigned char *)((char *)(m)+0x21))!=255) event239E0((*(unsigned char *)((char *)(m)+0x21)),1);
        } else if((*(unsigned char *)((char *)(m)+0xBC))!=1) (*(unsigned char *)((char *)(m)+0x20))=5;
        (*(unsigned char *)((char *)(m)+0xBC))=0;
        break;
    }
    case 4:
        turn239E0(m,(char *)d+0x1F0,angle239E0((*(float *)((char *)(query)+0))-position[0],(*(float *)((char *)(query)+4))-position[1]),0.05f,0.3f,0.2f);
        if((*(unsigned char *)((char *)(m)+0x52))==(*(unsigned char *)((char *)(m)+0x53)) && frame239E0(m)==13.0f &&
           abs239E0((*(float *)((char *)(m)+0x18))-(*(float *)((char *)(query)+8)))<0.5f && fast_distance239E0(position,query)<2.0f &&
           angle_distance239E0(angle239E0((*(float *)((char *)(query)+0))-position[0],(*(float *)((char *)(query)+4))-position[1]),(*(float *)((char *)(m)+0x48)))<0.2617994f) {
            velocity[0]=sine239E0((*(float *)((char *)(m)+0x48)))*0.2f;
            velocity[1]=cosine239E0((*(float *)((char *)(m)+0x48)))*0.2f; velocity[2]=0.0f;
            qcopy(projected,query); projected[2]+=0.75f;
            hurt239E0((*(char * *)((char *)(query)+0x40)),m,1,projected,velocity,1.0f);
        }
        if((*(unsigned char *)((char *)(m)+0x70))&2 && fast_distance239E0(position,query)>1.5f) {
            (*(unsigned char *)((char *)(m)+0x20))=3;
            if((*(unsigned char *)((char *)(m)+0x53))!=0) animate239E0(m,0,0,ticks239E0(range239E0(10,13)));
        }
        ground=ground239E0(position,0,0.5f);
        d->f198-=D_0015EE70*9.8f;
        (*(float *)((char *)(m)+0x18))+=d->f198;
        if((*(float *)((char *)(m)+0x18))<ground) { d->f198=0.0f; (*(float *)((char *)(m)+0x18))=ground; }
        break;
    case 5: {
        char *home=(char *)d+0x1D0;
        int flags;
        if(d->f21C!=-1) project239E0(m,D_L09_001B0930[d->f21C],home,projected);
        else qcopy(projected,home);
        turn239E0(m,(char *)d+0x1F0,angle239E0(projected[0]-position[0],projected[1]-position[1]),0.02f,0.3f,0.1f);
        velocity[0]=2.0f*sine239E0((*(float *)((char *)(m)+0x48)));
        velocity[1]=2.0f*cosine239E0((*(float *)((char *)(m)+0x48))); velocity[2]=0.0f;
        add239E0(projected,position,velocity);
        flags=move239E0(m,(char *)d+0x180,projected,velocity,1.0f);
        if(fast_distance239E0(position,home)<2.0f) {
            (*(unsigned char *)((char *)(m)+0x20))=1;
            if((*(unsigned char *)((char *)(m)+0x53))!=2) animate239E0(m,2,0,ticks239E0(range239E0(10,13)));
        }
        subtract239E0(displacement,query,home);
        if(expired && (length239E0(displacement)<d->f1FC || (*(unsigned char *)((char *)(m)+0xBC))==1)) {
            if(length239E0(displacement)<d->f1FC && (*(unsigned char *)((char *)(m)+0x21))!=255) event239E0((*(unsigned char *)((char *)(m)+0x21)),1);
            (*(unsigned char *)((char *)(m)+0x20))=3;
            if((*(unsigned char *)((char *)(m)+0x53))!=0) animate239E0(m,0,0,ticks239E0(range239E0(10,13)));
        } else if(flags&2) {
            position[0]=previous[0]; position[1]=previous[1]; (*(unsigned char *)((char *)(m)+0x20))=12;
            if((*(unsigned char *)((char *)(m)+0x53))!=4) animate239E0(m,4,0,ticks239E0(range239E0(10,13)));
        }
        (*(unsigned char *)((char *)(m)+0xBC))=0;
        break;
    }
    case 6:
        if(hit_update239E0(m,(char *)d+0x120)&1) {
            (*(unsigned char *)((char *)(m)+0x20))=9;
            if((*(unsigned char *)((char *)(m)+0x53))!=3) animate239E0(m,3,0,ticks239E0(range239E0(10,13)));
            return;
        } else if((*(float *)((char *)(m)+0x18))<0.0f) goto delete_moby;
        break;
    case 7:
        if(helper239E0(m,(char *)d+0x120)) {
            (*(unsigned char *)((char *)(m)+0x20))=1;
            if((*(unsigned char *)((char *)(m)+0x53))!=2) animate239E0(m,2,0,0);
            d->fC8=0;
        }
        break;
    case 9:
        if(frame239E0(m)>29.0f) {
            (*(unsigned char *)((char *)(m)+0x20))=3;
            if((*(unsigned char *)((char *)(m)+0x53))!=0) animate239E0(m,0,0,ticks239E0(range239E0(10,13)));
            return;
        }
        break;
    case 99:
        if(hit_update239E0(m,(char *)d+0x120)&0x40) { zero239E0(velocity); goto death_effect; }
        else if((*(float *)((char *)(m)+0x18))<0.0f) goto delete_moby;
        break;
    case 12: {
        char *home=(char *)d+0x1D0;
        int flags;
        float steepness=abs239E0((*(float *)((char *)(m)+0x18))-(*(float *)((char *)(query)+8)));
        steepness/=fast_distance239E0(position,query);
        if(d->f21C!=-1) project239E0(m,D_L09_001B0930[d->f21C],home,projected);
        else qcopy(projected,home);
        turn239E0(m,(char *)d+0x1F0,angle239E0(projected[0]-position[0],projected[1]-position[1]),0.05f,0.3f,0.2f);
        velocity[0]=2.0f*sine239E0((*(float *)((char *)(m)+0x48)));
        velocity[1]=2.0f*cosine239E0((*(float *)((char *)(m)+0x48))); velocity[2]=0.0f;
        add239E0(projected,position,velocity);
        flags=move239E0(m,(char *)d+0x180,projected,velocity,1.0f);
        subtract239E0(displacement,query,home);
        if((flags&4) || (fast_distance239E0(position,query)<1.5f && steepness<=1.0f)) goto attack_state;
        if(steepness<=1.0f && !(flags&2)) {
            (*(unsigned char *)((char *)(m)+0x20))=5;
            if((*(unsigned char *)((char *)(m)+0x53))!=0) animate239E0(m,0,0,ticks239E0(range239E0(10,13)));
        } else if((flags&2) && expired) {
            (*(unsigned char *)((char *)(m)+0x20))=1;
            if((*(unsigned char *)((char *)(m)+0x53))!=2) animate239E0(m,2,0,ticks239E0(range239E0(10,13)));
        } else if((*(unsigned char *)((char *)(m)+0x70))&2) {
            int anim;
            hero_status239E0(4);
            anim=hero_status239E0(4)?2:4;
            animate239E0(m,anim,0,ticks239E0(range239E0(10,13)));
        }
        (*(unsigned char *)((char *)(m)+0xBC))=0;
        break;
    }
    case 13: {
        char *other;
        if((*(unsigned char *)((char *)(m)+0x52))!=0 && (*(unsigned char *)((char *)(m)+0x53))!=0) animate239E0(m,0,0,ticks239E0(range239E0(10,13)));
        velocity[0]=sine239E0((*(float *)((char *)(m)+0x48)))*(d->f204*D_0015EE6C);
        velocity[1]=cosine239E0((*(float *)((char *)(m)+0x48)))*(d->f204*D_0015EE6C); velocity[2]=0.0f;
        add239E0(projected,position,velocity);
        for(other=D_L09_00160064;other;other=(*(char * *)((char *)(other)+0x28))) {
            if(other!=m && (*(signed char *)((char *)(other)+0x20))>=0 && ((*(short *)((char *)(other)+0xA6))==0 || (*(short *)((char *)(other)+0xA6))==193)) {
                float *otherpos=(float *)(other+0x10);
                if(fast_distance239E0(projected,otherpos)<2.0f) {
                    float height=(*(float *)((char *)(m)+0x18));
                    float a=angle239E0(otherpos[0]-position[0],otherpos[1]-position[1]);
                    float turn=D_0015EE6C*1.5707964f;
                    if(!(angle_delta239E0((*(float *)((char *)(m)+0x48)),a)>0.0f)) turn=-turn;
                    (*(float *)((char *)(m)+0x48))=angle_add239E0((*(float *)((char *)(m)+0x48)),turn);
                    subtract239E0(projected,position,otherpos);
                    vec_scale239E0(projected,projected,2.0f);
                    add239E0(projected,projected,otherpos);
                    projected[2]=height;
                }
            }
        }
        qcopy(position,projected);
        ground=ground239E0(position,0,0.5f);
        d->f198-=D_0015EE70*9.8f;
        (*(float *)((char *)(m)+0x18))+=d->f198;
        if((*(float *)((char *)(m)+0x18))<ground) { d->f198=0.0f; (*(float *)((char *)(m)+0x18))=ground; }
        if(!d->f218 || fast_distance239E0(position,d->f218+0x10)>fixed_float239E0(d->f216)) {
            (*(unsigned char *)((char *)(m)+0x20))=5;
            if((*(unsigned char *)((char *)(m)+0x53))!=0) animate239E0(m,0,0,ticks239E0(range239E0(10,13)));
        }
        (*(unsigned char *)((char *)(m)+0xBC))=0;
        break;
    }
    default: break;
    }
    if(ground==-1.0f) ground=ground239E0(position,0,0.5f);
    if(ground!=0.0f && (*(float *)((char *)(m)+0x18))-ground<0.1f && hazard239E0(m)==1) {
death_effect:
        effect239E0(m,position,6,0.5f,13.0f);
delete_moby:
        delete239E0(m);
        return;
    }
    effects_update239E0(m,(char *)d+0x110);
}
