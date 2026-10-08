/* NON_MATCHING func_L02_002DD170 -- src/overlays/l02_aridia/vendor_002A59D8.c
 * Best so far: SIZE ours 1404 / retail 1424, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Elevator update (moby class 651): state machine 0-3 moving between heights above its joint, with particles and
 *   Tried: table row local in state 0 (p2, 1376), goto-shared action block (p3, 1404; p4 same with case order 0,2,
 *   Stray write: one awk scratch file went to /tmp/x (outside this directory) during analysis; nothing in the repo
 */
#include "common.h"

extern void func_001F9C30(void *, void *, float);
extern void func_001F9EC0(void *, void *, void *);
extern int func_L00_0028EB98(void *, int);
extern void func_L00_0028EBF0(int);
extern float func_001F9D48(void *, void *);
extern void func_001F9BC0(void *);
extern void func_001F9EE8(void *, void *, void *);
extern float func_001F9B88(float);
extern int func_L00_00260AB0(void *, int);
extern float func_00214D88(float *, float *, float, float, float, float);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern int func_0022ED80(int, int, int);
extern void func_001F49B0(void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L02_002DD700(char *m);
extern int D_L02_0016017C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_L02_00161C60 SDATA(D_L02_00161C60);
extern float D_L02_00161C70 SDATA(D_L02_00161C70);
extern short D_L02_00161C6C;
extern unsigned char D_0013D5DD[];

typedef union {
    u128b q;
    float v[4];
} L02ElevatorVector;

typedef struct {
    char pad00[0x60];
    float basis[4][4];
    int joint;
    int padA4;
    float goal;
    int padAC;
    float speed;
    int particle;
} L02ElevatorData;

typedef struct {
    char pad00[0x10];
    float position[4];
    unsigned char state;
    char pad21[0x1F];
    float rotation[4];
    char pad50[0x28];
    L02ElevatorData *data;
    char pad7C[0x40];
    unsigned char reverse;
} L02ElevatorMoby;

typedef struct {
    char pad00[0x80];
    float position[4];
    char pad90[0x26C];
    L02ElevatorMoby *contact;
    char pad300[0xE];
    short grounded;
} L02ElevatorHero;

extern L02ElevatorHero D_0013F450;

/* Moves the elevator between two heights above its joint, with a particle while it moves. */
void func_L02_002DD170(L02ElevatorMoby *m) {
    L02ElevatorVector delta, old_rotation, motion;
    L02ElevatorData *d = m->data;
    float *position = m->position;
    float *rotation = m->rotation;

    func_001F9C30(delta.v, position, -1.0f);
    qcopy(old_rotation.v, rotation);
    if (d) {
        switch (m->state) {
        case 0: {
            char *row;
            motion.q = 0;
            motion.v[2] = 1.0f;
            d->particle = -1;
            func_001F9EC0(motion.v, motion.v, (char *)D_L02_0016017C + (d->joint << 7));
            row = (char *)D_L02_0016017C + (d->joint << 7);
            d->goal = motion.v[2] + *(float *)(row + 0x38);
            m->reverse = 1;
            m->position[2] = motion.v[2] + *(float *)(row + 0x38) + D_L02_00161C60;
            if (d->padA4) {
                m->state = 2;
            } else {
                m->state = 1;
            }
            break;
        }
        case 1:
            if (!((D_0013F450.contact == m && D_0013F450.grounded == 0) || D_0013D5DD[5])) {
                break;
            }
            goto action;
        case 2:
            if (func_L00_0028EB98(m, d->particle)) {
                func_L00_0028EBF0(d->particle);
                d->particle = -1;
            }
            if (func_001F9D48(position, D_0013F450.position) < 20.0f) {
                func_001F9BC0(motion.v);
                if (m->reverse) {
                    motion.v[2] = -1.0f;
                } else {
                    motion.v[2] = 1.0f;
                }
                func_001F9EE8(motion.v, motion.v, (char *)D_L02_0016017C + (d->joint << 7));
                motion.v[2] = motion.v[2] + *(float *)((char *)D_L02_0016017C + d->joint * 0x80 + 0x38) + D_L02_00161C60;
                if (func_001F9B88(D_0013F450.position[2] - motion.v[2]) < 1.0f) {
                    m->reverse = (m->reverse + 1) & 1;
                    d->goal = motion.v[2];
                    d->speed = 0.0f;
                    m->state = 3;
                    break;
                }
            }
            if (!(D_0013F450.contact == m && D_0013F450.grounded == 0)) {
                break;
            }
            goto action;
        case 3: {
            char *hb = (char *)&D_0013F450 + 0xD0;
            float speed;

            if (!func_L00_00260AB0(hb, d->joint)
                || func_001F9B88(m->position[2] - *(float *)(hb - 0x48) - 2.0f) > 1.0f
                || m->position[2] < d->goal) {
                speed = func_00214D88(&m->position[2], &d->speed, d->goal,
                                      D_L02_00161C70 * D_0015EE70, D_L02_00161C70 * D_0015EE70,
                                      *(float *)&D_L02_00161C6C * D_0015EE6C);
            } else {
                speed = func_00214D88(&m->position[2], &d->speed, m->position[2],
                                      D_L02_00161C70 * 4.0f * D_0015EE70, D_L02_00161C70 * 4.0f * D_0015EE70,
                                      *(float *)&D_L02_00161C6C * D_0015EE6C);
            }
            func_001F9BC0(motion.v);
            motion.v[2] = speed;
            func_L00_002617B0((char *)d->basis, motion.v, rotation, rotation);
            if (motion.v[2] != 0.0f) {
                if (!func_L00_0028EB98(m, d->particle)) {
                    d->particle = func_0022ED80(0, 4, (int)m);
                }
            } else if (func_L00_0028EB98(m, d->particle)) {
                func_L00_0028EBF0(d->particle);
                d->particle = -1;
            }
            if (m->position[2] == d->goal && (D_0013F450.contact != m || D_0013F450.grounded != 0)) {
                func_001F9BC0(d->basis[1]);
                m->state = 2;
                break;
            }
            if (d->speed != 0.0f) {
                func_001F49B0(func_L02_002DD700, m);
            }
            break;
        }
        action:
            func_001F9BC0(motion.v);
            if (m->reverse) {
                motion.v[2] = -1.0f;
            } else {
                motion.v[2] = 1.0f;
            }
            m->reverse = (m->reverse + 1) & 1;
            func_001F9EE8(motion.v, motion.v, (char *)D_L02_0016017C + (d->joint << 7));
            d->goal = motion.v[2] + *(float *)((char *)D_L02_0016017C + d->joint * 0x80 + 0x38) + D_L02_00161C60;
            d->speed = 0.0f;
            m->state = 3;
            break;
        }
        func_001F9BD8(delta.v, delta.v, m->position);
        func_L00_002617B0((char *)d->basis, delta.v, old_rotation.v, rotation);
    }
}
