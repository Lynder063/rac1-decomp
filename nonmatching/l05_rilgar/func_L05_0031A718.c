/* NON_MATCHING func_L05_0031A718 -- src/overlays/l05_rilgar/vendor_0030EB68.c
 * Best so far: SIZE ours 412 / retail 416, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Needs the actual table symbol in a permitted packet before the state branch can be implemented legally.
 *   Lead clarified that direct destination symbols are permitted; the earlier address blocker is superseded. Direc
 *   Direct D_0014C150[][16] candidate compiles after matching existing generated-source declaration; qcopy_nc remo
 *   p3/p4/p5 compile identically at BYTES 38/416; stopped at three equivalent pointer-loop/counter initialization 
 *   Remaining moby/iterator saved-register swap, state-store order and final addition order need a natural allocat
 *   hq3 s08 round (p6-p13, 8 runs): the function scans five table entries at data+0x80 for the nearest pickup poin
 *   Best is 412/416 (p8, p11, p13: a base pointer for the copies and a walker copied from the table; the extra `ad
 *   Left: moby sits in $s1 in ours and $s0 in retail (the walker takes the register retail gives moby), the case-2
 */
extern float func_001F9D10(void *, void *);
extern L05PickupPose *D_L05_001601AC MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern unsigned char D_0014C150[][16];
/* Selects a nearby pickup pose and updates visibility and copied pose vectors. */
void func_L05_0031A718(char *moby) {
 char *data=*(char **)(moby+0x78);
 int *table=(int *)(data+0x80);
 int *w=(int *)(data+0x80);
 int i;
 *(short *)(data+0xB4)=-1;
 for(i=0;i<5;i++) {
  if(func_001F9D10(moby+0x10,(char *)D_L05_001601AC+*w*128+0x30)<1.0f) *(short *)(data+0xB4)=i;
  w++;
 }
 switch(*(short *)(data+0xB4)) {
 case 2:
  if(D_0014C150[D_0015EE84][*(int *)(data+0xB8)]!=255 && D_0014C150[D_0015EE84][*(int *)(data+0xBC)]!=255) {
   moby[0x20]=6; *(unsigned short *)(moby+0x34)|=1; *(int *)(moby+0x94)=0; moby[0x31]=0; break;
  }
 case 0: case 1: case 3: case 4:
  {
   char *pp=*(char **)(moby+0x24);
   unsigned short f=*(unsigned short *)(moby+0x34);
   moby[0x20]=1;
   *(int *)(moby+0x94)=*(int *)(pp+0x10);
   *(unsigned short *)(moby+0x34)=f&0xFFFE;
   moby[0x31]=1;
  }
 }
 {
 char *base=(char *)D_L05_001601AC+table[*(short *)(data+0xB4)]*128;
 qcopy_nc(data+0x60,base+0x30);
 qcopy(data+0x70,base+0x70);}
}
