/* NON_MATCHING func_L09_002F0BB8 -- src/overlays/l09_gaspar/vendor_002C2B08.c
 * Best so far: BYTES 2/324 (99.4% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Spawns moby (base+0x140), seeds three random floats, copies two stack vectors, two scaled angles via func_0021
 *   w16: fixed constant 9.0757122f (p7); still 320 vs 324. Retail keeps 0x7F in two regs (v1 for sh, v0 for sb 0x3
 *   mini46 main-only: corrected staged 9.0672f to retail9.0757122f (0x4111361E), p13 still320/324. p14 typed Moby/
 *   hq3 s11 (8 runs, p16-p23): the 0x7F sharing wall is about store order, not the constant. Storing group (0x7F),
 */
extern char *func_0020D348(int);
extern float func_00214158(void);
extern float func_002140F8(float, float);
extern int func_L00_00258BC8(int, int);
extern int func_001F9850(int);
extern void func_L00_00251E30(void *);
extern float D_0015EE6C MACRO_ADDR;
typedef int u128_2F0BB8 __attribute__((mode(TI)));

typedef struct { char pad[0x24]; float scale; } SpawnClass_2F0BB8;
typedef struct { float velocity[4]; float spin; float roll; char *owner; int timer; } SpawnData_2F0BB8;
typedef struct { char pad0[0x10]; float position[4]; unsigned char state; char pad21[3]; SpawnClass_2F0BB8 *definition; void *next; float scale; unsigned char group; char active; short draw; unsigned short flags; short pad36; long color; float rotation[4]; char pad50[0x28]; SpawnData_2F0BB8 *data; } SpawnMoby_2F0BB8;

// Spawns a moby from class 0x140 + base, seeds random rotation and velocity data.
char *func_L09_002F0BB8(char *owner, void *pos, void *vec, int base, float f) {
    u128_2F0BB8 a = *(u128_2F0BB8 *)pos;
    u128_2F0BB8 b = *(u128_2F0BB8 *)vec;
    void *pa = &a;
    void *pb = &b;
    SpawnMoby_2F0BB8 *m = (SpawnMoby_2F0BB8 *)func_0020D348(base + 0x140);
    if (m != 0) {
        SpawnData_2F0BB8 *d = m->data;
        d->owner = owner;
        m->group = 0x7F;
        m->draw = 0x7F;
        m->active = 1;
        m->color = *(long *)(owner + 0x38);
        m->rotation[0] = func_00214158();
        m->rotation[1] = func_00214158();
        m->rotation[2] = func_00214158();
        qcopy(m->position, pa);
        qcopy(d, pb);
        {
            float x;
            SpawnClass_2F0BB8 *def = m->definition;
            x = D_0015EE6C * 9.0757122f;
            m->scale = def->scale * f;
            d->spin = func_002140F8(-x, x);
        }
        {
            float y = D_0015EE6C * 6.2831855f;
            d->roll = func_002140F8(-y, y);
        }
        d->timer = func_001F9850(func_L00_00258BC8(0x5A, 0x6E));
        func_L00_00251E30(m);
    }
    return (char *)m;
}
