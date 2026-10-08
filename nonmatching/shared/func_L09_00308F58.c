/* NON_MATCHING func_L09_00308F58 -- src/overlays/shared/vendor_002C6B30.c
 * Best so far: BYTES 14/448 (96.9% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Spawns moby 0x4EA (projectile) copying pos/rot to stack, setting fields, two func_L00_0026E940 calls.
 *   p1.c is 436 vs 448 bytes: retail keeps b address in s3 (4 saved s regs + s4=ticks), ours saves fewer; prologue
 *   Runs wasted re-running p1 for diffs; unblock by trying a pointer local for b and different qcopy order.
 *   q30 w07: best now p5.c (BYTES 39/448): `int ticks` (no sign-extension, as retail), pa/pb pointer locals for th
 *   Left: retail's prologue order (daddu s1,a0 after sq ra; li 0x4EA after the first lq) and `lui 481C` before `lu
 *   mini38: TI C assignments for both incoming vector copies p6 reproduce retailstack stores/jal slot and fix prol
 */
typedef struct {
    char pad0[0x10]; float position[4]; unsigned char state;
    char pad21[2]; char mode; char pad24[8]; float scale;
    unsigned char group, active; short drawGroup; unsigned short flags;
    char pad36[0xa]; float rotation[4]; char pad50[0x28]; void *data;
} ProjectileMoby_308F58;
typedef struct {
    float direction[4]; float spin; int state; int owner; short lifetime[2];
    float distance; int flag24, flag28;
} ProjectileData_308F58;
typedef int InputVector_308F58 __attribute__((mode(TI)));
extern void *func_0020D348(int);
extern float func_001F9CE8(void *);
extern float func_L00_001FF860(float, float);
extern float func_002140F8(float, float);
extern float func_001F9D10(void *, void *);
extern char *func_L00_0026E940(char *, int, int, int, float);
extern void func_L00_00251E30(void *);
extern float D_0015EE6C MACRO_ADDR;
extern char D_0013E633[];

// Spawns moby 0x4EA (a projectile) with position, rotation and lifetime.
char *func_L09_00308F58(int owner, void *pos, void *rot, int ticks) {
    float a[4];
    float b[4];
    float *pa = a;
    float *pb = b;
    char *m;
    ProjectileData_308F58 *d;
    ProjectileMoby_308F58 *object;
    char *p;
    float x;
    int n;
    *(InputVector_308F58 *)a = *(InputVector_308F58 *)pos;
    *(InputVector_308F58 *)b = *(InputVector_308F58 *)rot;
    m = (char *)func_0020D348(0x4EA);
    if (m) {
        object = (ProjectileMoby_308F58 *)m;
        d = object->data;
        d->owner = owner;
        object->rotation[0] = 0;
        object->scale = object->scale * 4.0f;
        p = m + 0x10;
        object->group = 0xFF;
        object->drawGroup = 0xFF;
        object->active = 1;
        object->rotation[1] = -func_L00_001FF860(func_001F9CE8(pb), pb[2]);
        object->rotation[2] = func_L00_001FF860(b[0], pb[1]);
        qcopy(p, pa);
        qcopy(d, pb);
        x = D_0015EE6C * 1.5707964f;
        d->spin = func_002140F8(-x, x);
        d->state = 0;
        d->lifetime[0] = ticks;
        d->lifetime[1] = ticks;
        d->distance = func_001F9D10(p, D_0013E633 + 0xE9D);
        d->flag24 = 0;
        d->flag28 = 0;
        n = ticks * 5 / 4;
        object->flags |= 0x200;
        object->mode = 0x40;
        func_L00_0026E940(m, 0x2F7F4F4F, n, -1, 400000.0f);
        x = 160000.0f;
        func_L00_0026E940(m, 0x4F7F7F7F, n, -1, x);
        func_L00_00251E30(m);
    }
    return m;
}
