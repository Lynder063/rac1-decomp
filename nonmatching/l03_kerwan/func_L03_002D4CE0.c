/* NON_MATCHING func_L03_002D4CE0 -- src/overlays/l03_kerwan/vendor_002CB280.c
 * Best so far: BYTES 5/804 (99.4% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   mini55 main-only: fresh waypoint movement/audio helper decoded from retail. Best p3 BYTES5/804, six runs inclu
 */
extern float D_0015EE6C MACRO_ADDR;
extern char D_0013E633[];
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_L00_001FF860(float, float);
extern char *D_L03_001B08B0[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_L03_00161B88 SDATA(D_L03_00161B88);
extern float D_L03_00161B8C SDATA(D_L03_00161B8C);
extern float D_L03_00161B90 SDATA(D_L03_00161B90);
extern float D_L03_00161B94 SDATA(D_L03_00161B94);
extern float D_L03_00161B98 SDATA(D_L03_00161B98);
extern float D_L03_00161B9C SDATA(D_L03_00161B9C);
extern float func_001F9CB8(void *);
extern float func_001F9D10(void *, void *);
extern float func_00214D88(float *, float *, float, float, float, float);
extern float func_001F9CE8(void *);
extern float func_L00_0025CE58(float *, float, float *, float, float, float);
extern int func_L00_0028EB98(void *, int);
extern int func_L00_0028EF68(int, int, int, int);
extern void func_L00_0028EBF0(int);

typedef struct PathFollower4CE0 {
    char pad0[0x60]; float speed; int waypoint;
    float yawVelocity, pitchVelocity, rollVelocity;
} PathFollower4CE0;

/* Moves along a waypoint path and eases the orientation toward its direction. */
int func_L03_002D4CE0(char *moby, int pathIndex, int *sound) {
    char **entry = &D_L03_001B08B0[pathIndex];
    PathFollower4CE0 *data = *(PathFollower4CE0 **)(moby + 0x78);
    float target[4];
    float direction[4];
    float zero = 0.0f;
    float step, distance, accel, pitch;
    int finished = 0;
    char *position;
    qcopy(target, (data->waypoint << 4) + *entry + 0x10);
    position = moby + 0x10;
    func_001F9BF0(direction, target, position);
    distance = func_001F9CB8(direction);
    step = D_L03_00161B88 * D_0015EE6C;
    if (distance < step + step) {
        data->waypoint++;
        finished = data->waypoint == *(int *)*entry;
    }
    distance = func_001F9D10(position, *entry + (*(int *)*entry << 4));
    accel = D_L03_00161B8C * D_0015EE70;
    func_00214D88(&zero, &data->speed, distance, accel, accel, D_L03_00161B88 * D_0015EE6C);
    func_L00_001FF4B0(direction, direction, data->speed);
    func_001F9BD8(position, direction, position);
    pitch = -func_L00_001FF860(func_001F9CE8(direction), direction[2]);
    if (pitch > 0.261799395f) pitch = 0.261799395f;
    else if (pitch < -0.261799395f) pitch = -0.261799395f;
    func_L00_0025CE58((float *)(moby + 0x44), pitch, &data->pitchVelocity,
        D_L03_00161B90 * 0.017453292f * D_0015EE70,
        D_L03_00161B90 * 0.017453292f * D_0015EE70,
        D_0015EE6C * 12.566371f);
    func_L00_0025CE58((float *)(moby + 0x48),
        func_L00_001FF860(target[0] - *(float *)(moby + 0x10), target[1] - *(float *)(moby + 0x14)), &data->yawVelocity,
        D_L03_00161B94 * 0.017453292f * D_0015EE70,
        D_L03_00161B94 * 0.017453292f * D_0015EE70,
        D_0015EE6C * 12.566371f);
    func_L00_0025CE58((float *)(moby + 0x40),
        data->yawVelocity * data->speed * D_L03_00161B9C, &data->rollVelocity,
        D_L03_00161B98 * 0.017453292f * D_0015EE70,
        D_L03_00161B98 * 0.017453292f * D_0015EE70,
        D_0015EE6C * 12.566371f);
    if (finished == 0) {
        if (func_L00_0028EB98(moby, *sound) == 0)
            *sound = func_L00_0028EF68(0, 4, (int)moby, 0x330);
    } else {
        if (*sound != -1) {
            char *e = D_0013E633 + 0x1D + *sound * 0x70;
            if (*(char **)(e + 0x88) == moby && ((unsigned char *)e)[0x74] != 0)
                func_L00_0028EBF0(*sound);
        }
        *sound = -1;
    }
    return finished;
}
