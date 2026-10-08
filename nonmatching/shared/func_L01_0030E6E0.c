/* NON_MATCHING func_L01_0030E6E0 -- src/overlays/shared/vendor_002F7700.c
 * Best so far: SIZE ours 748 / retail 744, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   mini16 a01: Angular target selector with nearest viable raycast candidate. Canonical prototype fixed p1; p2 gu
 *   Remaining early list-base low materialization +c and move +98 instead of retail late low addiu, one alignment 
 */
extern void *func_L00_0025D390(void *);
extern float func_001F9D10(void *,void *);
extern float func_L00_001FF860(float,float);
extern float func_001FA850(float,float);
extern float func_001F9B50(float);
extern int func_L00_001EFFF0(void *,void *,int,int,int);
struct TargetList_a01 {char *head;char *rest[1];};
extern struct TargetList_a01 D_L01_001AC180;
extern char D_L01_00174340[];
struct Player_a01 {char pad[0x2080];void *moby;};
extern struct Player_a01 D_0013F450;
// Selects the nearest viable target inside horizontal and vertical angular limits.
void *func_L01_0030E6E0(void *owner,void *origin,void *rot,float yaw,float pitch,float range,float nearRange,float nearYaw,float nearPitch) {
 float v[4];
 char **list;
 char *m=D_L01_001AC180.head,*best=0;
 float score=1000000000.0f;
 struct Player_a01 *player;
 if(m) {
  list=&D_L01_001AC180.head;
  player=&D_0013F450;
  do {
   char *data,*cls;short kind;float dist,dy,dp;
   if(*(short *)(m+0x32)==0)goto next;
   data=func_L00_0025D390(m);
   if(!m)goto next;
   cls=*(char **)(m+0x24);
   if(!cls)goto next;
   kind=*(short *)(cls+0x46);
   if(kind!=5)goto next;
   if(!data)goto next;
   if(!(*(float *)data>0.0f))goto next;
   dist=func_001F9D10(origin,m+0x10);
   if(!(dist<range))goto next;
   qcopy(v,m+0x10);v[2]+=0.4f;
   dy=func_001FA850(*(float *)(rot+8),func_L00_001FF860(v[0]-*(float *)origin,v[1]-*(float *)(origin+4)));
   dy=dy*dy;
   if(!(dy<yaw*yaw)) {
    if(!(dist<nearRange))goto next;
    if(!(dy<nearYaw*nearYaw))goto next;
   }
   dp=func_001FA850(*(float *)(rot+4),func_L00_001FF860(dist,v[2]-*(float *)(origin+8)));
   dp=dp*dp;
   if(!(dp<pitch*pitch)) {
    if(!(dist<nearRange))goto next;
    if(!(dp<nearPitch*nearPitch))goto next;
   }
   dy=dy*dp;
   dy=dy*func_001F9B50(func_001F9D10(origin,v));
   if(!(dy<score))goto next;
   if(func_L00_001EFFF0(origin,v,0,(int)owner,0)) {
    char *hit=*(char **)(D_L01_00174340+0x18);
    char *info;
    if(!hit)goto next;
    if(hit==player->moby)goto next;
    if(!hit)goto next;
    info=*(char **)(hit+0x24);
    if(!info)goto next;
    if(*(short *)(info+0x46)!=kind)goto next;
   }
   score=dy;best=m;
next:
   ++list;m=*list;
  }while(m);
 }
 return best;
}
