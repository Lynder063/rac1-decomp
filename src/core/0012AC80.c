#include "common.h"
#include "structs.h"

/*
 * core_text object 0x12AC80-0x12CC70. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 *
 * Sony's MPEG library (libmpeg): sceMpegInit/Create/Delete-style setup,
 * the callback table (sceMpegAddCallback, func_0012BC50) and its
 * dispatcher, the work-area allocator, the picture/field steps and the
 * error reporter ("[MPEG ERROR]%s"). Built with Sony's 2.9-ee like the
 * rest of libmpeg (0012A2F0.c): see func_0012BC50, whose match needs
 * 2.9-ee's type-based alias analysis.
 */

/* Declarations in scope here before the split. */
extern long func_00116F68(int arg0, int arg1, int arg2);
extern int D_0015ED10;
extern void *D_0012F86C NOT_SDA;
extern int func_001162B8(void *arg0, void *arg1, void *arg2);
extern int func_00116320(void *arg0, void *arg1, void *arg2);
extern long func_001163A0(void *arg0, void *arg1, void *arg2);
extern void func_00116408(void *arg0);
extern void func_00113968(void);
extern void func_00114438(void *, void *);
extern char D_00152470[];
extern int func_00119088();
extern int func_00119110();
extern long func_00116108_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00116108");
extern long func_001188C8_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_001188C8");
extern long func_00114518_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00114518");
extern int func_00112468(int *errOut, int arg1);
extern int func_00114060(int, void *);
extern void func_00113AE0(void *);
extern void func_00117118(void *, void *, int, int);
extern int func_00119008();
extern int D_0012FCF0 NOT_SDA;
extern void func_00118E90(int arg0, void *arg1);
extern void *D_00154A40 NOT_SDA;
extern int D_00155080[];
extern void func_001193F8(int);
extern void func_00118AD0(int, int);
extern int D_00154F54;
extern int D_0012FD04;
extern int D_00154F64 NOT_SDA;
extern int D_00154F6C NOT_SDA;
extern void func_0011AA90(int, int, int, int, int, int, int);
extern void func_0011AA00(void);
extern int D_0012FD08 NOT_SDA;
extern int func_0011D960(void);
extern void func_0011D9A8(void);
extern int func_00118C70(void *);
extern int D_0012FDA0;
extern int D_0012FDA4;
extern char D_00157E80[];
extern int D_0012FD9C;
extern void func_0011BBF0(void);
extern int D_0012FD9C NOT_SDA;
extern int func_001151B4();
extern char D_0012FCEC[];
extern char D_001580A8[];
extern int D_0012FDA8;
extern void func_001153FC(void *, int, int);
extern int D_0012FD94;
extern int D_0012FDAC;
extern char D_00158140[];
extern int D_00158180;
extern int D_001581C0;
extern char D_00158528[];
extern int D_0012FDB4;
extern int func_0011CE70(int arg0, int arg1, int arg2, void *arg3);
extern int func_00118E70(int);
extern void func_00118EC0(void);
extern int func_00118EA0(void);
extern void func_0011D4E0(void);
extern void func_00118EB0(void);
extern int D_00130420;
extern int D_00130424;
extern void func_00118CF0(void *);
extern void func_00118CE0(void *);
extern int D_00130BD0[];
extern char D_00130428[];
extern int func_0011DC50(void);
extern void func_0011DBE8(int, int);
extern void func_0011DBF8(int, void *, int);
extern int func_0011DC40(int);
extern void func_00118D80(int);
extern void func_001206B0(float *, int *);
extern void func_001208E4();
extern void func_00118B20(int, void *, int);
extern void func_00118C80(int);
extern int func_00120F30(int);
extern void *D_00159840;
extern int D_001313E0;
extern int D_001313E8;
extern int D_001313EC;
extern int D_001313F0;
extern int D_001313E4;
extern int D_001313FC;
extern void func_00120C58(void);
extern int func_0011B4C8();
extern int func_00120D28(int);
extern void func_00118C90(int);
extern char D_00132590[];
extern int D_00131440;
extern int func_0011B6B8(void *);
extern char D_00153000[];
extern char D_00132E08[];
extern int D_001313D0;
extern int func_00121040(int);
extern int D_001325C0;
extern char D_00132E40[];
extern void func_00123650(void *);
extern char D_001534E0[];
extern int D_00132E70[];
extern int func_001238B0(int, int, int, int);
extern int D_00132EA8;
extern int *D_00159B28;
extern int *D_00159B2C;
extern int *D_00159B30;
extern char D_0015B108[];
extern int D_0015B180;
extern void func_00124B60(void *);
extern char D_00153658[];
extern int func_00124920(int);
typedef struct {
    char unk_00[4];
    int  unk_04;
    int  unk_08;
    char *unk_0C;
    char unk_10[0x320];
} Ent330;
extern Ent330 D_0015B640[];
extern void func_00119288(void *a, void *b);
extern void func_001286E8(int, int);
extern int D_00132F70[];
extern void func_0012BCC8(int);
extern void func_00128590(void *);
extern void func_00128968(void *, int);
extern int func_00128860(void *, int);
extern void func_00129180(void *);
extern char D_00153A80[];
extern void func_00116248_4(void *, char *, int, int) __asm__("func_00116248");
extern void func_0012C468_a(void *, void *) __asm__("func_0012C468");
extern int func_0012AAA8(void *, int);
extern void func_0012AAC8(void *, int);
extern void func_00127378(int arg0);
extern int func_0012AB60(void *arg0, int arg1);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AC80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AD08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B008);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B100);

int func_0012B250(void *arg0) {
    func_0012AB60(arg0, 0x38);
    func_0012AB60(arg0, 0x28);
    while (func_0012AAA8(arg0, 1) == 1) {
        func_0012AB60(arg0, 0x18);
    }
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B2C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B870);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B918);

int func_0012BB20(void) {
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BB28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BB78);

int func_0012BB98(void *arg0) {
    return ((Wrapper *)arg0)->obj->unk004 == 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BBA8);

int func_0012BBF8(void *arg0) {
    char *b = *(char **)((char *)arg0 + 0x40);
    char *p;
    p = *(char **)(b + 0x1B8); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1C8); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1D8); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1BC); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1CC); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1DC); if (p != 0) *(int *)(p + 0x28) = 0;
    return 1;
}

/* The callback table at +0x40: {callback, data} pairs from +0xC, one
   per callback type. */
typedef int (*MpegCbFn)(void *, void *, void *);
typedef struct { MpegCbFn func; void *data; } MpegCbEnt;
typedef struct { char pad[0xC]; MpegCbEnt cb[1]; } MpegCbTbl;

/*
 * sceMpegAddCallback: install (callback arg2, data arg3) for type arg1 and
 * return the old callback.
 *
 * Typing the entry as {function pointer, void *} is the lever: 2.9-ee's
 * type-based alias analysis (-fstrict-aliasing is its default) then knows
 * the `data` store cannot alias the `func` load, so sched1 computes
 * `t + 0xC` before `t + off` and the registers fall as in retail. Under
 * 2.95.3 (no type-based aliasing) the same C is 17/36; the old int-offset
 * spelling was 12/36 under both.
 */
int func_0012BC50(void *arg0, int arg1, int arg2, int arg3) {
    MpegCbTbl *t = *(MpegCbTbl **)((char *)arg0 + 0x40);
    MpegCbFn old;
    t->cb[arg1].data = (void *)arg3;
    old = t->cb[arg1].func;
    t->cb[arg1].func = (MpegCbFn)arg2;
    return (int)old;
}

/*
 * Dispatch the callback registered for *arg1 (the callback data's type
 * field) with its data; returns the callback's result, 0 if none.
 *
 * The table entry is indexed afresh for each use (test `.func`, call
 * `.func(arg0, arg1, .data)`) instead of through one `entry` pointer. CSE
 * merges the two `.func` loads, but the `.data` address is rebuilt after
 * the branch, which is retail's second `addu` in a plain beqz slot, and
 * `ret` then lands in $a3 with the table in $a2. Exact under both
 * compilers (one `entry` pointer is SIZE 84/80; the old spelling 12/80).
 */
void *func_0012BC78(void *arg0, int *arg1) {
    int ret = 0;
    if (arg0 != 0) {
        MpegCbTbl *t = *(MpegCbTbl **)((char *)arg0 + 0x40);
        if (t != 0) {
            if (t->cb[*arg1].func != 0) {
                ret = t->cb[*arg1].func(arg0, arg1, t->cb[*arg1].data);
            }
        }
    }
    return (void *)ret;
}

/* No declaration needed: the definition above precedes this caller. The
   extern that used to sit here guessed `void (int, void *)` and now
   conflicts with the real signature. */
void func_0012BCC8(int arg0) {
    int local[8];
    local[0] = 1;
    func_0012BC78(arg0, local);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BCF0);

void func_0012BD28(void *arg0, int arg1, int arg2) {
    int *p = (int *)arg0;
    p[1] = arg2;
    p[0] = arg1;
    p[2] = arg1;
    p[3] = arg1;
}

void func_0012BD40(void *arg0) {
    char *p = (char *)arg0;
    *(int *)(p + 0xC) = *(int *)(p + 0x8);
}

void func_0012BD50(void *arg0) {
    char *p = (char *)arg0;
    *(int *)(p + 0x8) = *(int *)(p + 0xC);
}

extern void func_0012C468(void *, void *);
extern char D_00153B38[];

/* Bump allocator out of a region {base, size, used}: round `used` up to
   `align`, reserve `size` bytes, and hand back the aligned offset. On
   overflow it reports through func_0012C468 and returns 0 WITHOUT
   touching `used`.

   The fitting case is written first (`>=`): 2.9-ee then branches to the
   report on the true side (bnel) and puts the `used` store in the slot
   of the fall-through `b`, as retail. Written overflow-first, as 2.95.3
   needed, 2.9-ee inverts the test and puts the store in a beql slot,
   one instruction short (SIZE 104/108). */
unsigned int func_0012BD60(void *arg0, char *r, unsigned int size,
                           unsigned int align) {
    unsigned int aligned;
    unsigned int end;

    aligned = ((*(unsigned int *)(r + 0x8) + align - 1) / align) * align;
    end = aligned + size;
    if (*(unsigned int *)(r + 0x0) + *(unsigned int *)(r + 0x4) >= end) {
        *(unsigned int *)(r + 0x8) = end;
        return aligned;
    }
    func_0012C468(arg0, D_00153B38);
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BDD0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BF40);

extern int func_0012C0A0(void *, int, int);
extern int func_0012BF40(void *, int, int);

/* Hands the call on by the inner object's +0x174 mode: func_0012BF40 for
   mode 3, func_0012C0A0 otherwise, with the caller's arguments.

   Returns its callees' values: retail keeps the frame and calls both, and
   2.9-ee tail-calls each arm (bare `j`, SIZE 40/68) when it is void. */
int func_0012C058(void *arg0, int arg1, int arg2) {
    Obj40 *inner = ((Wrapper *)arg0)->obj;
    if (inner->unk174 != 3) {
        return func_0012C0A0(arg0, arg1, arg2);
    } else {
        return func_0012BF40(arg0, arg1, arg2);
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C0A0);

extern void func_0012C278(void *);

int func_0012C200(void *arg0) {
    Wrapper *w = (Wrapper *)arg0;
    Obj40 *inner = w->obj;
    int ret = 0;

    if (inner->unk004 != 0 && inner->unk008 != 0) {
        func_0012C278((void *)inner);
        w->unk08 = inner->unk118 - inner->unk0AC;
        inner->unk004 = 0;
        ret = 1;
    }
    return ret;
}

/* Tail call: the constant argument setup lands in the jump's delay slot,
   so the field store precedes it. func_00127378 is defined above. */
void func_0012C268(void *arg0) {
    *(int *)((char *)arg0 + 0x848) = 0;
    func_00127378(1);
}

extern void func_00129E30(void *, int, int, int);
extern void func_00129F40();
extern char D_00153BB8[];

void func_0012C278(void *arg0) {
    Obj40 *s = (Obj40 *)arg0;
    int n = s->unk118;

    if (s->unk120 != 0) {
        func_0012C468(s, D_00153BB8);
    } else if (s->unk174 == 3) {
        func_00129E30(s, (int)s->slots[0].unk04, n - 1, n - 1);
    } else {
        func_00129F40(s, (int)s->slots[1].unk04, (int)s->slots[2].unk04);
    }
    s->unk120 = 0;
}

/*
 * Point the object's four scratchpad pointers at 0x70000000 and clear a
 * flag. Exact under 2.9-ee. Under 2.95.3 it was 2 of 24 words off:
 * that compiler saved $ra before $s1 in the prologue, where retail (and
 * 2.9-ee) saves $s1 first -- the prologue-order residual of the core
 * spill rewrite, not a source question.
 *
 * What does matter: `int a = 0x70000000;` must be written
 * BEFORE the call. An earlier round reverted this at 8 bytes short
 * having tried binding the constants to locals declared AFTER the call,
 * which changes nothing because gcc folds them straight back into the
 * stores. Declared before the call, the pseudo's live range crosses the
 * call, so the allocator gives it a CALLEE-SAVED register and the
 * function pays retail's sd/ld $s1 pair -- 8 bytes. gcc still
 * rematerialises the `lui` after the call, exactly as retail does, so
 * the only trace of the earlier definition is the register class.
 *
 * That is the general point: a constant hoisted above a call does not
 * survive as a value (constant propagation puts it back), but it does
 * survive as a register-class decision. Where retail spends a
 * callee-saved register on something that looks like it needs no
 * register at all, the source defined it before the call.
 */
void func_0012C2F8(void *arg0) {
    char *p = (char *)arg0;
    int a = 0x70000000;

    func_00127378(1);
    *(int *)(p + 0x590) = a;
    *(int *)(p + 0x594) = 0x70001800;
    *(int *)(p + 0x6D0) = 0x70001B00;
    *(int *)(p + 0x6D4) = 0x70003300;
    *(int *)(p + 0x810) = 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C358);

extern char D_00153BD8[];
/* Unprototyped: func_0011A6C8 is a varargs definition (blocked as such),
   but calling one is fine -- only defining one needs stdarg.h. */
extern void func_0011A6C8();

void func_0012C420(void *arg0) {
    func_0011A6C8(D_00153BD8, arg0);
}

extern void func_00116248(void *);

void func_0012C430(void *arg0) {
    char buf[0x100];
    func_00116248(buf);
    func_0012C468(arg0, buf);
}

extern void func_0012C420(void *);

void func_0012C468(void *arg0, void *arg1) {
    char *a = (char *)arg0;
    void *t = *(void **)(a + 0x858);
    /* the arg0 null test is retail's, after it has already dereferenced
       arg0 -- one of the "dead-looking guards" that must be written out */
    if (t != 0 && arg0 != 0 && *(int *)(a + 0xC) != 0) {
        int buf[4];
        buf[0] = 0;
        buf[1] = (int)arg1;
        func_0012BC78(t, buf);
    } else {
        func_0012C420(arg1);
    }
}

/* Store the two sizes and their 16-pixel macroblock counts. (An old note
   here recorded 4/32 with the 0x4/0x8 stores swapped; the function is
   exact under both compilers now.) */
int func_0012C4C0(void *arg0, int arg1, int arg2) {
    char *p = (char *)arg0;
    *(int *)(p + 0x4) = arg1;
    *(int *)(p + 0x8) = arg2;
    *(int *)(p + 0xC) = arg1 >> 4;
    *(int *)(p + 0x10) = arg2 >> 4;
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C4E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C608);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C8B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C990);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CA70);

extern int func_00128A58(void *, int);

/*
 * MPEG-2 sequence_display_extension(): video_format (3 bits), then
 * colour_description (1) and, when set, colour_primaries,
 * transfer_characteristics and matrix_coefficients (8 each; the last is
 * kept at +0x144); display_horizontal_size (14) to +0x148, a marker
 * bit, display_vertical_size (14) to +0x14C.
 *
 * Plain C, exact under 2.9-ee. (Under 2.95.3 it needed the marker bit's
 * read to go through a void view of the reader, `func_00128A58_v`: as a
 * value call it reset $v0's readers and the +0x148 store lost the
 * scheduler tie to the next call's argument setup, 8/140.)
 */
void func_0012CBA0(void *arg0) {
    char *s = (char *)arg0;

    func_00128A58(s, 3);
    if (func_00128A58(s, 1) != 0) {
        func_00128A58(s, 8);
        func_00128A58(s, 8);
        *(int *)(s + 0x144) = func_00128A58(s, 8);
    }
    *(int *)(s + 0x148) = func_00128A58(s, 0xE);
    func_00128A58(s, 1);
    *(int *)(s + 0x14C) = func_00128A58(s, 0xE);
}

extern char D_00153C48[];
extern char D_00153C78[];
extern char D_00153C90[];

/* Three more of the func_0012C468 family, same shape as func_0012CC60. */
void func_0012CC30(void *arg0) {
    func_0012C468(arg0, D_00153C48);
}

void func_0012CC40(void *arg0) {
    func_0012C468(arg0, D_00153C78);
}

void func_0012CC50(void *arg0) {
    func_0012C468(arg0, D_00153C90);
}

extern char D_00153CC8[];

/* Tail call: arg0 passes straight through, arg1 is &D_00153CC8 whose
   %lo half retail schedules into the jump's delay slot. */
void func_0012CC60(void *arg0) {
    func_0012C468(arg0, D_00153CC8);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC6C);
