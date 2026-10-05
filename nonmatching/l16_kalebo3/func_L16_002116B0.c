/* NON_MATCHING func_L16_002116B0 -- src/overlays/l16_kalebo3/help_00209D98.c
 * Best so far: BYTES 55/1672 (96.7% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Tail slope ratio clamped +/-.5 then cap external motion at dt*52.
 *   p0 BYTES69/1672: staged verdict reproduced; main cache/work/plane/velocity/vertical permutation plus collision
 *   p1 BYTES69 unchanged: early collision goto normalized identically. Reuse finished plane pointer for contact ve
 *   p2 BYTES55: plane pointer reused for contact displacement fixes plane/velocity s2/s5. Remaining work s4 vs s3,
 *   p3 BYTES55 unchanged: grouped vector workspace normalizes identically. Split projected vertical pointer from l
 *   p4 BYTES55 unchanged: separate projected vertical/external pointer lifetimes normalize identically. Check unty
 *   p5 BYTES55 unchanged: byte-array resident storage declaration normalizes identically. Stop after three unchang
 *   Best p2 improves staged 69 to55 differing bytes; cache/work/vertical allocation and collision/mode14 branch sh
 */
#include "common.h"
extern void func_L00_00234800(int, void *, void *);
extern float func_L00_00234250(void *);
extern float func_L00_002342F8(void *);
extern void func_L00_002343A0(void *, void *, float);
extern float func_001F9CB8(void *);
extern float func_001F9CE8(void *);
extern void func_L00_001FF500(void *, void *, float);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern void func_001F9BC0(void *);
extern void func_L00_00213E60(void);
extern void func_L16_002105C8(void);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_002136A8(void);
extern float func_001F9C78(void *, void *);
extern void func_L00_00234150(void *, void *);
extern void func_L00_00234420(void *, void *, float);
extern float func_L00_00213A08(void *);
extern void func_001F9C30(void *, void *, float);
extern float D_0015EE6C MACRO_ADDR;
extern char *D_L16_001742D8;
typedef union { unsigned long long quad; float f[4]; } L16MovementVector;
typedef struct {
    char pad00[0x80];
    float position[4];
    float rotation[4];
    char padA0[0x40];
    float velocity[4];
    float contact[4];
    float external[4];
    float delta[4];
    float vertical_delta[4];
    float horizontal_delta[4];
    float frame_delta[4];
    char pad150[0x10];
    float speed;
    float horizontal_speed;
    float vertical_speed;
    float slope;
    char pad170[0x5C];
    int unconstrained;
    char pad1D0[0x64];
    float speed_limit;
    char pad238[4];
    int contact_state;
    char pad240[0x17];
    unsigned char contact_flag;
    char pad258[0x84];
    float gravity_limit;
    char pad2E0[0x218];
    int physics_mode;
    char pad4FC[0x424];
    float extra_step[4];
    char pad930[0x1754];
    int state;
    char pad2088[4];
    int mode;
} L16MovementPlayer;
extern char D_0013E633_movement[] __asm__("D_0013E633");

/* Integrate player motion, resolve contacts, and measure the resulting movement. */
void func_L16_002116B0(void) {
    L16MovementVector previous;
    L16MovementVector work;
    L16MovementVector plane;
    L16MovementPlayer *contact_player;
    L16MovementPlayer *motion_player;
    L16MovementPlayer *cap_player;
    float *position = (float *)(D_0013E633_movement + 0xE9D);
    L16MovementPlayer *player;
    float *delta;
    float *vertical;
    float *horizontal;
    float *extra_step;
    float *velocity;
    float *new_position;
    float magnitude;
    int unconstrained;
    float *plane_address;
    float *work_address;
    qcopy(previous.f, position);
    player = (L16MovementPlayer *)((char *)position - 0x80);
    func_L00_00234800(player->physics_mode, (char *)position + 0x70, (char *)position + 0x10);
    if (player->state == 34 || player->state == 20) {
        float limit;
        float *limited_velocity;
        if (!player->unconstrained) {
            float length;
            position = (float *)((char *)position + 0x60);
            length = func_L00_00234250(position);
            limit = player->speed_limit - 0.02f;
            if (limit < length) func_L00_001FF4B0(position, position, limit);
        }
        limited_velocity = (float *)(D_0013E633_movement + 0xEFD);
        magnitude = func_L00_002342F8(limited_velocity);
        work_address = work.f;
        plane_address = plane.f;
        limit = -*(float *)((char *)limited_velocity + 0x1FC);
        if (magnitude < limit) {
            if (limit > 0.0f) limit = 0.0f;
            func_L00_002343A0(limited_velocity, limited_velocity, limit);
        }
    } else if (player->mode == 15) {
        unconstrained = player->unconstrained;
        work_address = work.f;
        plane_address = plane.f;
        goto clamp_vertical;
    } else if (player->mode == 21) {
        float limit = 0.6f;
        work_address = work.f;
        plane_address = plane.f;
        if (!player->unconstrained) {
            float *limited_velocity = (float *)((char *)position + 0x60);
            if (func_001F9CB8(limited_velocity) > limit) func_L00_001FF4B0(limited_velocity, limited_velocity, limit);
        }
    } else if (player->mode == 22) {
        float *collision_work;
        float *collision_plane;
        int collided;
        qcopy(collision_work = work.f, position);
        work.f[2] += 0.5f;
        func_001F9BD8(collision_plane = plane.f, collision_work, (char *)position + 0x60);
        collided = func_L00_001EFFF0(position, collision_plane, 2, 0, 0);
        work_address = collision_work;
        plane_address = collision_plane;
        if (collided) {
            char *hit = D_L16_001742D8;
            if (!hit || *(short *)(hit + 0xA6) == 0x1F6 || *(short *)(hit + 0xA6) == 0x59F) {
                player = (L16MovementPlayer *)(D_0013E633_movement + 0xE1D);
                unconstrained = player->unconstrained;
clamp_vertical:
                if (!unconstrained) {
                    float length;
                    float limit;
                    position = (float *)(D_0013E633_movement + 0xEFD);
                    length = func_001F9CE8(position);
                    limit = player->speed_limit - 0.02f;
                    if (limit < length) func_L00_001FF500(position, position, limit);
                }
            }
        }
    } else {
        work_address = work.f;
        plane_address = plane.f;
        if (player->mode == 13) goto reset_position;
        if (player->mode == 14) {
            position = (float *)(D_0013E633_movement + 0xE9D);
            goto integrate_position;
        }
        if (!player->unconstrained) {
        float length;
        float limit;
        position = (float *)((char *)position + 0x60);
        length = func_001F9CB8(position);
        limit = player->speed_limit - 0.02f;
        if (limit < length) func_L00_001FF4B0(position, position, limit);
        }
    }
reset_position:
    position = (float *)(D_0013E633_movement + 0xE9D);
integrate_position:
    func_001F9BD8(position, position, (char *)position + 0x60);
    extra_step = (float *)((char *)position + 0x8A0);
    func_001F9BD8(position, position, extra_step);
    func_001F9BC0(extra_step);
    contact_player = (L16MovementPlayer *)((char *)position - 0x80);
    contact_player->contact_flag = 0;
    contact_player->contact_state = 0;
    if (func_001F9CB8((char *)position + 0x70) <= 0.0001f) {
        func_L00_00213E60();
        func_L16_002105C8();
        func_001F9BF0((char *)position + 0x80, position, previous.f);
        func_L00_002136A8();
    } else {
        func_L16_002105C8();
    }
    delta = (float *)(D_0013E633_movement + 0xF2D);
    new_position = (float *)((char *)delta - 0x90);
    horizontal = (float *)((char *)delta + 0x20);
    func_001F9BF0(delta, new_position, previous.f);
    qcopy(horizontal, delta);
    vertical = (float *)((char *)delta + 0x10);
    qcopy(vertical, delta);
    velocity = (float *)((char *)delta - 0x30);
    func_L00_001FF4B0(delta, delta, 1.0f);
    magnitude = func_001F9C78(delta, velocity);
    if (magnitude < 0.0f) magnitude = 0.0f;
    func_L00_001FF4B0(delta, velocity, magnitude);
    qcopy(work_address, velocity);
    func_L00_00234150(work_address, work_address);
    func_L00_00234150(horizontal, horizontal);
    func_L00_001FF4B0(horizontal, horizontal, 1.0f);
    magnitude = func_001F9C78(horizontal, work_address);
    if (magnitude < 0.0f) magnitude = 0.0f;
    func_L00_001FF4B0(horizontal, work_address, magnitude);
    qcopy(plane_address, velocity);
    func_L00_00234420(plane_address, plane_address, 0.0f);
    func_L00_00234420(vertical, vertical, 0.0f);
    func_L00_001FF4B0(vertical, vertical, 1.0f);
    magnitude = func_001F9C78(vertical, plane_address);
    if (magnitude < 0.0f) magnitude = 0.0f;
    func_L00_001FF4B0(vertical, plane_address, magnitude);
    motion_player = (L16MovementPlayer *)((char *)delta - 0x110);
    motion_player->speed = func_001F9CB8(delta);
    motion_player->horizontal_speed = func_001F9CE8(delta);
    work.quad = *(unsigned long long *)delta;
    motion_player->vertical_speed = func_L00_00213A08(work_address);
    if (motion_player->vertical_speed < 0.0f) motion_player->vertical_speed = 0.0f;
    qcopy(work_address, new_position);
    plane_address = (float *)((char *)delta - 0x20);
    vertical = (float *)((char *)delta - 0x10);
    if (func_001F9CB8(plane_address) > 0.0001f) {
        float saved;
        func_001F9BD8(new_position, new_position, plane_address);
        saved = motion_player->contact[3];
        func_001F9BC0(plane_address);
        motion_player->contact[3] = saved;
        func_L00_00213E60();
        func_L16_002105C8();
        func_001F9BF0(vertical, new_position, previous.f);
        func_L00_002136A8();
    }
    func_001F9BF0((char *)delta + 0x30, new_position, work_address);
    motion_player->frame_delta[3] = motion_player->contact[3];
    motion_player->contact[3] = 0.0f;
    func_001F9BF0(vertical, new_position, previous.f);
    motion_player->slope = 0.0f;
    if (motion_player->horizontal_speed > 0.004f) {
        motion_player->slope = motion_player->external[2] / motion_player->horizontal_speed;
        if (motion_player->slope > 0.5f) motion_player->slope = 0.5f;
        else if (motion_player->slope < -0.5f) motion_player->slope = -0.5f;
    }
    cap_player = (L16MovementPlayer *)(D_0013E633_movement + 0xE1D);
    magnitude = D_0015EE6C * 52.0f;
    if (magnitude < cap_player->speed) {
        func_001F9C30(cap_player->external, cap_player->external, magnitude / cap_player->speed);
        cap_player->speed = D_0015EE6C * 52.0f;
    }
}
