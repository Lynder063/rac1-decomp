/* NON_MATCHING func_L03_002ECD40 -- src/overlays/l03_kerwan/vendor_002CB280.c
 * Best so far: BYTES 10/372 (97.3% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   ActivateCamera_14 (level 3): seeds the camera's smoothing state (three sub-blocks of the moby's data at +0xB0/
 *   Best p8.c (43 bytes differ of 372, same size): final D_L03_0015F050 load is scheduled after `lw $s0,0x70(m)` i
 *   Pointer forms (char+, float*, index-first, struct array) all compile to the same bytes or worse; needs a diffe
 *   t03/q28: p9 = p8 with D_L03_0015F050 declared int MACRO_ADDR (packet's type; the old char* clashed with the fi
 *   mini60 main-only: six runs, staged40 -> typedp13 BYTES10/372. Camera/config/table/moby records fix second-tabl
 */
#include "common.h"
extern char D_0013E633[];
typedef struct CameraSmoothECD40 {
    float position[4]; int sourceFlag; float duration;
} CameraSmoothECD40;
typedef struct CameraZoomECD40 {
    float start, pad4, end, padC, weight;
} CameraZoomECD40;
typedef struct CameraOrientationECD40 {
    float vector[4]; char pad10[0x10];
    int flags20, flags24, flags28, flags2C, flags30;
    float height;
} CameraOrientationECD40;
typedef struct CameraDataECD40 {
    float position[4], motion[4]; float speed, acceleration;
    int state, pad2C, timer; char pad34[0x7C];
    CameraSmoothECD40 origin; char padC8[8];
    CameraZoomECD40 zoom; char padE4[0xC];
    CameraOrientationECD40 orientation;
} CameraDataECD40;
typedef struct CameraMobyECD40 {
    char pad0[0x70]; CameraDataECD40 *camera;
    char pad74[0xA]; short resetFlag;
    char pad80[4]; short index;
} CameraMobyECD40;
typedef struct CameraConfigECD40 {
    char pad0[0x20]; float range, weight;
} CameraConfigECD40;
typedef struct CameraEntryECD40 {
    char pad0[0x10]; float rotation[3]; CameraConfigECD40 *config;
} CameraEntryECD40;
extern CameraEntryECD40 *D_L03_0015F050_camera __asm__("D_L03_0015F050") MACRO_ADDR;

extern int D_L03_001670F4;
extern void func_001F9BC0(void *);
extern int func_001F9850(int);
extern void func_001FA1F8(void *, void *);
extern void func_L03_002ECBA8(void *);

/* ActivateCamera_14: seed the camera's smoothing state from the current camera table entry */
void func_L03_002ECD40(char *m) {
    CameraMobyECD40 *mob = (CameraMobyECD40 *)m;
    char *g = D_0013E633 + 0xE1D;
    CameraConfigECD40 *e = D_L03_0015F050_camera[mob->index].config;
    CameraSmoothECD40 *d1;
    CameraZoomECD40 *v;
    CameraDataECD40 *a;
    CameraDataECD40 *b;
    CameraOrientationECD40 *c;
    float *e2;
    CameraEntryECD40 *dd;
    float t, height;
    float buf[16];
    d1 = &mob->camera->origin;
    d1->duration = 1.5f;
    d1->sourceFlag = *(int *)(g + 0x2080);
    qcopy(d1, g + 0x80);
    *(int *)&d1->position[3] = 0;
    v = &mob->camera->zoom;
    t = e->range;
    v->end = t;
    v->start = t;
    v->weight = e->weight;
    a = mob->camera;
    a->state = 0;
    a->speed = 0.01f;
    a->acceleration = 0.2f;
    func_001F9BC0(a->motion);
    qcopy(a, g + 0x80);
    b = mob->camera;
    b->timer = func_001F9850(0x78);
    dd = D_L03_0015F050_camera;
    c = &mob->camera->orientation;
    c->flags30 = 0;
    c->flags28 = 0;
    c->flags2C = 0;
    height = *(float *)(g + 0x88);
    c->flags20 = 0;
    c->height = height;
    c->flags24 = 0;
    e2 = (float *)((mob->index << 5) + (int)dd) + 4;
    buf[12] = e2[0];
    buf[13] = e2[1];
    buf[14] = e2[2];
    *(int *)(buf + 15) = 0;
    func_001FA1F8(buf, buf + 12);
    qcopy(c, buf);
    func_L03_002ECBA8(m);
    mob->resetFlag = 0;
    D_L03_001670F4 = 0x78;
}
