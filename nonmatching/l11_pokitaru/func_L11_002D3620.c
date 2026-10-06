/* NON_MATCHING func_L11_002D3620 -- src/overlays/l11_pokitaru/vendor_002CC828.c
 * Best so far: SIZE ours 396 / retail 392, checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Returns 0, 1, or 2 based on active objects in four group lists and proximity below ten.
 *   p2, p3 and p4 compile to identical 396-byte code versus 392 retail: saved result/group-base assignments differ
 *   Unblock requires an allocator/pointer-lifetime idiom; full frame matches, and all list filtering calls and inn
 */
extern short D_L11_00160074;
extern int D_L11_00160074_m __asm__("D_L11_00160074") MACRO_ADDR;
extern short *D_L11_001AC540[];
extern int D_L11_00160058_m __asm__("D_L11_00160058") MACRO_ADDR;
extern int func_L11_00317598(char *);
extern float func_001F9D10(void *,void *);
/* tests nearby active objects in four selected class lists */
int func_L11_002D3620(char *moby) {
 int found=0; char *data=*(char **)(moby+0x78); char *groups; int i=0; short *ids; int group;
 { char *first=data+0x90; group=*(short *)(first+*(int *)(data+0x158)*16); }
 if(group<0)return found;
 if(D_L11_00160074_m<group)return found;
 groups=data+0x90;
 do {
 ids=D_L11_001AC540[group];
 if(ids) { do { unsigned int offset=(*(unsigned short *)ids&0x7FFF)*256; char *other=(char *)D_L11_00160058_m+offset;
 if(other[0x20]>=0 && (*(short *)(other+0xA6)!=1246 || !func_L11_00317598(other))) {
 found=1; if(func_001F9D10(moby+0x10,(char *)D_L11_00160058_m+offset+0x10)<10.0f)return 2;
 }
 }while(*ids++>=0); }
 ++i; if(i>=4)break;
 group=*(short *)(groups+(i*4+*(int *)(data+0x158)*16));
 }while(group>=0 && D_L11_00160074_m>=group);
 return found;
}
