/* NON_MATCHING func_L06_002F8D60 -- src/overlays/shared/vendor_002D9548.c
 * Best so far: BYTES 14/392 (96.4% of the bytes match), checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Processes two 32-entry trigger lists, requesting fades/restarts or mode 119 after guarded moby initialization.
 *   Budget spent; p6 is best at 14/392 bytes, differing only in constant setup order at +0xA4/+0xA8/+0xAC and +0x1
 *   Typed fields of the actual D_0013F450 root retain the root-pointer setup; separate second-loop locals fix regi
 */
extern GbHero D_0013F450;
extern float D_0013F4D0[];
extern int func_00215570(void *,int);
extern int func_001F9850(int);
extern void func_001F4E08(int);
extern void func_L00_00211908(void);
extern void func_L06_00235E08(int,int);
typedef struct { char pad[0x2084]; int mode; char gap[0x1C]; unsigned char flag; } TransitionFields;
/* processes two trigger lists and requests camera or level transitions */
void func_L06_002F8D60(unsigned char *moby) {
 int *data=*(int **)(moby+0x78); int i; int *p;
 switch(moby[0x20]) {
 case 0: moby[0x20]=1; moby[0x30]=255; break;
 case 1: {
 char *g=(char *)&D_0013F450; int *second;
 if(*(int *)(g+0x2084)==50) { char *other=*(char **)(g+0x15F0); if(other && (unsigned char)other[0x20]!=254 && (unsigned char)other[0x20]!=253 && *(short *)(g+0x15F4)==69) return; }
 second=data+32; p=data;
 for(i=31;i>=0;++p,--i) { if(*p>=0 && func_00215570(D_0013F450.f80,*p)) {
 TransitionFields *globals=(TransitionFields *)&D_0013F450;
 if(globals->flag) { func_001F4E08(func_001F9850(10)); func_L00_00211908(); }
 else if(globals->mode!=119)func_L06_00235E08(119,1);
 } }
 { int j; int *q=second; for(j=31;j>=0;++q,--j) { if(*q>=0 && func_00215570(D_0013F450.f80,*q)) { func_001F4E08(func_001F9850(10)); func_L00_00211908(); } } }
 break;
 }
 }
}
