#include "common.h"
#include "structs.h"

/*
 * camera.cpp in the original source; text 0x1EC038-0x1EDFF8.
 * Name and boundary from the NTSC split in bordplate's RC1 project
 * (codeberg.org/bordplate/RC1), mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

/* Declarations in scope here before the split. */
extern char D_0013E650[];
extern int D_0015F694;
extern int func_001E97C8(void *arg0);

/* Same signature as the declaration further down this file; duplicate
   identical declarations are legal and avoid a signature clash. */
extern void func_001F9A98(void *, void *, int);
extern char D_00189310[];
extern char D_001899D0[];
extern void *D_001871C0 NOT_SDA;

/* BackupCurrentCam */
void func_001EC038(void) {
    func_001F9A98(D_00189310, D_001871C0, 0xA0);
    func_001F9A98(D_001899D0, D_001899D0 - 0x500, 0x280);
    *(void **)(D_00189310 + 0x70) = D_001899D0;
}

extern int D_0015F08C MACRO_ADDR;
extern void (*D_001893B0[])(void);

/* ExecuteCamPostUpdFuncs: runs the D_0015F08C queued post-update
   callbacks, then empties the queue. */
/* D_0015F08C as MACRO_ADDR removes the hoisted address register (frame
   0x30); a plain indexed loop. */
void func_001EC098(void) {
    int i;

    for (i = 0; i < D_0015F08C; i++) {
        D_001893B0[i]();
    }
    D_0015F08C = 0;
}

/* Not a standalone function: no `jr $31` -- dead-value computation
   (`$v0 = 0` twice with intervening nops) then a store, falling through
   to whatever follows. Same fallthrough-fragment category as
   func_00113AD8 in core_text. */
INCLUDE_ASM("asm/nonmatchings/text", func_001EC108);

extern float func_001F9B88(float);

/* Cam_InterpValues(a, b, p, c, d, e): steps *p toward b - a, clamps it
   to +-e and to +-func_001F9B88(b - a), and returns a + *p. The nop
   between the first compare and its bc1f is ps2eeas's
   (tools/ps2eeas_nops.py). */
float func_001EC120(float a, float b, float *p, float c, float d, float e) {
    float diff = b - a;
    float v = *p;

    v = v + (c * diff - d * v);
    *p = v;
    if (e != 0.0f) {
        if (e < v) {
            *p = e;
        } else if (v < -e) {
            *p = -e;
        }
    }
    if (func_001F9B88(diff) < *p) {
        *p = func_001F9B88(diff);
    } else if (-func_001F9B88(diff) > *p) {
        *p = -func_001F9B88(diff);
    }
    return a + *p;
}

/* Not a standalone function: single `addiu $sp,$sp,0x50`, no `jr $31` --
   fallthrough fragment, same category as func_00113AD8 in core_text. */
INCLUDE_ASM("asm/nonmatchings/text", func_001EC208);

extern char D_001871D0[];
extern void func_0020D678(void *); /* DeleteMoby */

/* Camera_handleCollWithHero: spawns (via func_001E97C8) or deletes the
   moby kept at D_001871D0+0xC4, depending on the flag at arg0+0x86. */
/* A `char *c` base, the `== 0` arm first, and DeleteMoby takes the slot
   as its argument. */
void func_001EC210(void *arg0) {
    char *c = D_001871D0;

    if (*(short *)((char *)arg0 + 0x86) == 0) {
        if (*(void **)(c + 0xC4) == 0) {
            *(int *)(c + 0xC4) = func_001E97C8(c - 0x50);
        }
    } else {
        if (*(void **)(c + 0xC4) != 0) {
            func_0020D678(*(void **)(c + 0xC4));
            *(void **)(c + 0xC4) = 0;
        }
    }
}

/* 0x14-byte dispatch records, indexed by the type id at +0x8C.
   Declared as a real struct array, not `char[]` + byte offset: the two
   forms are not codegen-equivalent here. Retail emits `addu $2,$2,$3`
   (base, index); a char-pointer form emits `addu $2,$3,$2` (index,
   base) and no amount of reordering the C addition changes it, because
   GCC canonicalises the PLUS before operand order is chosen. Indexing
   a typed array puts the base first. See func_001EC270/func_001EC780. */
typedef struct {
    char unk_00[8];
    void (*fn_08)(void *);
    char unk_0C[4];
    void (*fn_10)(void *);
} DispatchRec;
extern DispatchRec D_001E8F80[];

/*
 * 1/68, and the residual is one commutative-operand-order byte: retail
 * emits `addu $2,$2,$3` (base + index), this compiler `addu $2,$3,$2`
 * (index + base). Same instruction, same destination, same size.
 *
 * Getting here took two real fixes worth reusing. Writing the field read
 * as `... * 0x14 + 8` folds the +8 into the %lo address constant instead
 * of leaving it as a `lw` offset (7/68); computing the record pointer
 * first and reading `rec + 8` separately fixes that. And building the
 * pointer with `rec += idx` rather than in the initialiser makes the sum
 * land in the base's register as retail does, rather than the index's
 * (3/68 -> 1/68) -- the documented in-place-accumulate lever.
 *
 * The last byte resisted an explicit index local and both `rec += idx`
 * and `rec = rec + idx`, which is the known scratch-register/operand
 * choice question. Kept per the same-size-tiny-diff precedent.
 */
/* Camera_runSetupToNewCam(UpdateCam *) */
void func_001EC270(void *arg0) {
    void (*fn)(void *) = D_001E8F80[*(short *)((char *)arg0 + 0x8C)].fn_08;
    if (fn != 0) {
        fn(arg0);
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001EC2B8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EC5B8); /* Camera_ActivationCheckPriority */

/* Same shape/blocker as func_001EC270: indirect call via a function
   pointer loaded from a per-type dispatch table, wrapped in an
   sq-for-lone-$ra save this compiler doesn't reproduce (see
   func_001E9E70's comment). Not attempted. */
/* Same vtable dispatch as func_001EC270, on the +0x10 slot instead of
   +8; identical 1/68 operand-order residual, same cause. */
/* Camera_Exit(UpdateCam *) */
void func_001EC780(void *arg0) {
    void (*fn)(void *) = D_001E8F80[*(short *)((char *)arg0 + 0x8C)].fn_10;
    if (fn != 0) {
        fn(arg0);
    }
}

extern int D_00189C50[];
typedef struct { char unk_00[0xA0]; } CamSlot;
extern CamSlot D_00187510[];
extern int func_001EC5B8(void *cur, void *other);
extern void func_001EC2B8(void *arg0);
/* The camera-type table (D_001E8F80) with its +0xC hook typed: DispatchRec
   above keeps that slot as bytes. */
typedef struct {
    char unk_00[0xC];
    void (*fn_0C)(void *);
    char unk_10[4];
} CamTypeHooks;
extern CamTypeHooks D_001E8F80_hooks[] __asm__("D_001E8F80");

/* Camera_ActivationCheck: exits the current camera (func_001EC780, the
   type table's +0x10 hook), then scans the 48 camera slots (D_00189C50[i]
   != 0 = enabled, D_00187510[i] = the 0xA0-byte record) and keeps
   whichever func_001EC5B8 prefers over the current one. If that changed
   the camera, func_001EC2B8 switches to it. Then func_001EC210, the new
   camera's +0xC hook (read before that call, as retail does), a copy of
   its fields 0x30-0x38 to 0x64-0x6C, and the post-update queue
   (func_001EC098). Returns -1, which the one caller ignores.

   The indexed loop is what gives retail's preheader: strength reduction
   builds the two slot pointers in its order, and loop reversal makes the
   count run down 47..0. Indexing the table directly by a typed +0xC
   member puts the base first in the addu. */
int func_001EC7C8(void) {
    void *cur = D_001871C0;
    int changed = 0;
    CamSlot *rec;
    int i;

    func_001EC780(cur);

    for (i = 0; i < 0x30; i++) {
        if (D_00189C50[i] != 0) {
            rec = &D_00187510[i];
            if (rec != cur) {
                if (func_001EC5B8(rec, cur)) {
                    cur = rec;
                    changed = 1;
                }
            }
        }
    }

    if (changed) {
        func_001EC2B8(cur);
    }
    {
        void (*fn0C)(void *) = D_001E8F80_hooks[*(short *)((char *)cur + 0x8C)].fn_0C;
        char *src;
        char *dst;
        float v;

        func_001EC210(cur);
        if (fn0C != 0) {
            fn0C(cur);
        }
        src = (char *)cur + 0x30;
        dst = (char *)cur + 0x64;
        v = *(float *)src;
        *(float *)((char *)cur + 0x64) = v;
        *(float *)(dst + 4) = *(float *)(src + 4);
        *(float *)(dst + 8) = *(float *)(src + 8);
    }
    func_001EC098();
    return -1;
}

extern void func_001F9BF0(void *dst, void *a, void *b);      /* dst = a - b (vector) */
extern float func_001F9C78(void *a, void *b);                 /* dot(a, b) */
extern float func_001F9CB8(void *a);                           /* |a| */
extern void func_001F9DC0(void *dst, void *src, float len);    /* dst = normalize(src) * len */
extern float func_001F9FC0(float x);                            /* approx acos(x) */
extern void func_002156E0(void *dst, void *vec, void *axis, float angle); /* dst = vec rotated `angle` around axis */

/* The camera's angles to a target: out[0] = signed yaw between dir0 and
   (p0 - p1) off the axis, out[1] = signed pitch after rotating dir0 by
   that yaw, out[2] = |p0 - p1|. A zero length becomes 0.0001 before the
   acos. The two sign fixups are shaped differently, as in retail. */
void func_001EC8D8(float *out, void *p0, void *p1, void *dir0, void *dir1,
                    void *axis) {
    char diff[16];
    char proj[16];
    char perp[16];
    char unit[16];
    char rotated[16];
    float d1, d2, d3, d4, d5;
    float lenPerp, lenDiff;
    float angle1, angle2;
    float a0, a1;

    func_001F9BF0(diff, p0, p1);
    d1 = func_001F9C78(diff, axis);
    func_001F9DC0(proj, axis, d1);
    func_001F9BF0(perp, diff, proj);

    d2 = func_001F9C78(dir0, perp);
    lenPerp = func_001F9CB8(perp);
    if (lenPerp == 0.0f) {
        lenPerp = 0.0001f;
    }
    angle1 = func_001F9FC0(d2 / lenPerp);
    a0 = 1.57079637f - angle1;

    func_001F9DC0(unit, perp, 1.0f);
    d3 = func_001F9C78(dir1, unit);
    if (d3 < 0.0f) {
        a0 = -a0;
    }
    out[0] = a0;

    func_002156E0(rotated, dir0, axis, a0);
    d4 = func_001F9C78(rotated, diff);
    lenDiff = func_001F9CB8(diff);
    if (lenDiff == 0.0f) {
        lenDiff = 0.0001f;
    }
    angle2 = func_001F9FC0(d4 / lenDiff);
    a1 = -(1.57079637f - angle2);

    func_001F9DC0(unit, diff, 1.0f);
    d5 = func_001F9C78(axis, unit);
    if (d5 < 0.0f) {
        a1 = 1.57079637f - angle2;
    }
    out[1] = a1;

    out[2] = func_001F9CB8(diff);
}

INCLUDE_ASM("asm/nonmatchings/text", func_001ECAB8);

/*
 * Reverted: size mismatch (ours=96, retail=116 -- 20 bytes short).
 *
 *   extern char D_001872B0[];
 *   extern void func_001F9BD8(void *, void *, void *);
 *   extern char D_0013F590[];
 *
 *   void func_001ECB98(void) {
 *       char *base = D_001872B0;
 *       if (*(unsigned char *)(base + 2) == 0) {
 *           *(unsigned long long *)(base + 0xC0) =
 *               *(unsigned long long *)(base + 0x50);
 *           if (*(unsigned char *)(base + 3) == 2) {
 *               func_001F9BD8(base + 0x60, D_0013F590, base + 0x60);
 *           }
 *           *(unsigned long long *)(base + 0xD0) =
 *               *(unsigned long long *)(base + 0x60);
 *       }
 *   }
 *
 * Two 128-bit (lq/sq) field copies bracketing an optional
 * func_001F9BD8 vector-add call; `unsigned long long` is correct here
 * for once, same exception as func_001ECC10 just above. Retail keeps
 * the first copy as a fully separate, unconditional block before the
 * flag test; this compiler folds its store into the following
 * branch's delay slot instead (still unconditional either way, since
 * delay slots always execute -- not a semantic difference, but it
 * costs several instructions retail didn't need to duplicate/keep
 * apart). Tried forcing the copy through explicit `dst1`/`src1`
 * pointer locals -- no change.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001ECB98);

/* Two conditional 16-byte block copies via bare `lq`/`sq` -- no plain-C
   representation available (same "not attempted, no plain-C
   representation" category as func_001F9BC0 in core_text). */
/*
 * Reverted: size mismatch (ours=44, retail=56 -- 12 bytes short).
 *
 *   extern char D_001872B0[];
 *
 *   void func_001ECC10(void) {
 *       char *base = D_001872B0;
 *       if (*(unsigned char *)(base + 2) != 0) {
 *           *(unsigned long long *)(base + 0x50) =
 *               *(unsigned long long *)(base + 0xC0);
 *           *(unsigned long long *)(base + 0x60) =
 *               *(unsigned long long *)(base + 0xD0);
 *       }
 *   }
 *
 * Two 8-byte (lq/sq quadword) field copies gated by a flag byte.
 * `unsigned long long` for the 128-bit lq/sq is correct here (the
 * usual [[rac1-64bit-field-type]] trap runs the other way -- this is
 * the one place `long long` is what retail actually uses). Retail
 * fully materializes each of the four addresses (base+0x50/0x60/0xC0/
 * 0xD0) before the lq/sq with a zero immediate offset; this compiler
 * always folds the offset directly into the lq/sq instruction
 * instead, needing 3 fewer instructions per pair. Tried both the
 * folded-offset expression form and four explicit pointer locals
 * (`char *dst1 = base+0x50; ...`) -- identical output either way.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001ECC10);

INCLUDE_ASM("asm/nonmatchings/text", func_001ECC48);

INCLUDE_ASM("asm/nonmatchings/text", func_001ECEA0);

INCLUDE_ASM("asm/nonmatchings/text", func_001ED080);

INCLUDE_ASM("asm/nonmatchings/text", func_001ED658);

INCLUDE_ASM("asm/nonmatchings/text", func_001ED708);

INCLUDE_ASM("asm/nonmatchings/text", func_001ED818);

INCLUDE_ASM("asm/nonmatchings/text", func_001EDB98);

INCLUDE_ASM("asm/nonmatchings/text", func_001EDCE8);

extern char D_00187040[];
extern float D_0015F53C MACRO_ADDR;

/* D_0015F53C is a MACRO_ADDR float: $gp-relative in the delay slots,
   lui $1 in the body. */
void func_001EDE08(void) {
    char *c = D_00187040;
    float a = *(float *)(c + 0x258);

    if (a != 0.0f) {
        float t = D_0015F53C - a;
        D_0015F53C = t;
        if (t <= 0.0f) {
            *(float *)(c + 0x258) = 0.0f;
            D_0015F53C = 0.0f;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001EDE50);

INCLUDE_ASM("asm/nonmatchings/text", func_001EDFD8);
