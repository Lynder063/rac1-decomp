/* NON_MATCHING func_L16_002E3FC8 -- src/overlays/shared/vendor_002A1B58.c
 * Best so far: SIZE ours 808 / retail 804, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * Cannot land as written (#define in a candidate): rewrite that in plain C first.
 * What the last attempts found:
 *   - Initialize absent pursuit owner/position from resident player data.
 *   1. LINK D_00160098: globals above resident limit need canonical level names. Existing canonical pointer has MA
 *   2. SIZE808: GP pointer view resolves. First differences are early damage pointer and zero store/float lifetime
 *   3. SIZE812: chained zero assignment reproduces saved F20, and hit/death ordering now matches. Move repeated da
 *   4. SIZE820: child lifetimes corrected, but repeated damage alias still splits into two saved pointers. Use dir
 *   5. SIZE808: direct damage addresses reproduce every pointer setup and register lifetime. Only child loop has a
 *   6. SIZE808: ascending loop optimizes to the same duplicated decrement. Try a descending while loop with the po
 *   7. SIZE808: descending while still duplicates counter decrement through branch-likely; three loop wordings ret
 */
#include "common.h"
extern int func_L00_0028EB98(void*,int);
extern int func_0022ED80_6B70(int,int,void*) __asm__("func_0022ED80");
extern void func_L00_0028EBF0(int);
extern char *func_L00_0025B478(void*,int,int);
extern int func_L00_0025B4D0(void*,void*,void*,int,int*,float*,int,int);
extern float func_L00_00258C80(float,float);
extern void func_0020D678(void*);
extern int func_001F9850(int);
extern void func_L00_0025E4B0(void*,void*);
extern void func_L00_0025E590(void*,void*);
extern int func_L00_00260FB0(float,char*,void*,int,int,void*,int);
extern float D_0015EE6C MACRO_ADDR;
extern short D_L16_00161E38,D_L16_00160094;
extern char D_0013E633[];
extern char *D_L16_001B0C30[];
typedef struct {char pad[0x74];unsigned char active;char pad75[0x13];char *owner;} L16InteractionSlot;
typedef struct {char pad[0x80];float position[4];char pad90[0x1FF0];int owner;} L16PursuitPlayer;
typedef struct {int status;float amount;} L16HitResult;
#define W(p,o) (*(int*)((char*)(p)+(o)))
#define B(p,o) (*(unsigned char*)((char*)(p)+(o)))
#define F(p,o) (*(float*)((char*)(p)+(o)))
/* Update interaction ownership, damage responses and pursuit tracking. */
void func_L16_002E3FC8(char *m) {
    L16HitResult hit;
    char *d=*(char**)(m+0x78);
    float zero;
    char *record;
    int response;
    F(m,0x2C)=F(*(char**)(m+0x24),0x24)*(*(float*)&D_L16_00161E38);
    if((unsigned int)(B(m,0x20)-2)<4) {
        if(!func_L00_0028EB98(m,W(d,0x190))) W(d,0x190)=func_0022ED80_6B70(0,4,m);
    } else if(func_L00_0028EB98(m,W(d,0x190))) {
        int slot=W(d,0x190);
        if(slot!=-1) {
            L16InteractionSlot *s=(L16InteractionSlot*)(D_0013E633+0x1D+slot*0x70);
            if(s->owner==m && s->active!=0) func_L00_0028EBF0(slot);
        }
        W(d,0x190)=-1;
    }
    hit.amount=zero=0.0f;
    record=func_L00_0025B478(m,0x330000,0);
    response=func_L00_0025B4D0(m,record,d+0x20,0,&hit.status,&hit.amount,0,4);
    if(hit.status!=1 && B(m,0x20)!=8) {
        F(d,0x20)-=hit.amount;
        if(F(d,0x20)<=zero || (B(D_0013E633,0x2EC1)==2 && hit.amount>=2.0f)) response=1;
            if(response>0) {
            if(response>=3) {
                if(response<9) {
                func_0022ED80_6B70(3,0,m);
                B(d,0x67)=120;
                F(d,0x188)=func_L00_00258C80(30.0f,50.0f)*0.017453292f*D_0015EE6C;
                }
            } else {
                func_0022ED80_6B70(3,0,m);
                if(B(D_0013E633,0x2EC1)!=2) func_0022ED80_6B70(2,0,m);
                {int *child=(int*)(d+0xC0),count=3;
                while(count>=0) {
                    if(*child>=0) func_0020D678(*(char**)((char*)&D_L16_00160094+4)+(*child<<8));
                    count--;child++;
                }
                }
                B(m,0x20)=8;W(d,0x160)=func_001F9850(90);B(d,0x67)=120;

            }
        }
        func_L00_0025E4B0(m,d+0x60);
    }
    B(m,0xA4)=255;
    func_L00_0025E590(m,d+0x60);
    if(W(d,0xD0)!=-1 && W(D_0013E633,0x2EA9)!=22) {
        char *path=D_L16_001B0C30[W(d,0xD0)];
        func_L00_00260FB0(128.0f,m,d+0x70,0,0,path+0x10,*(int*)path);
    } else W(d,0xB4)=2;
    if(W(d,0xB0)==0) {
        L16PursuitPlayer *player=(L16PursuitPlayer*)(D_0013E633+0xE1D);
        W(d,0xB0)=player->owner;
        qcopy(d+0x70,player->position);
    }
}
