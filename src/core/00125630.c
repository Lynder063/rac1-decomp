#include "common.h"
#include "structs.h"

/*
 * core_text object 0x125630-0x12A2F0. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 *
 * Sony's MPEG library (libmpeg): the macroblock/slice/picture decoder
 * ("Invalid macroblock_type code", "slice_start_code out of range", ...)
 * over the IPU (0x10002000 IPU_CMD, 0x10002010 IPU_CTRL). Built with
 * Sony's 2.9-ee like the rest of libmpeg (0012A2F0.c, 0012AC80.c): the IPU
 * wait loops that 2.95.3 hoisted into saved registers (func_00128968,
 * func_00128860) are 2.9-ee's rematerialised constants.
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
extern void func_0011A6C8();
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

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125630);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125880);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125F88);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001263A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001265C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126640);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001266D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126790);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126860);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126910);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001269C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126AC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126BC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126C60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126D10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126DF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126ED8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126FB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127080);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001271A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001272B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127318);

void func_00127378(int arg0) {
    unsigned int *p = (unsigned int *)0x10002010;
    *p = (*p & 0xFF7FFFFF) | (arg0 << 23);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001273A0);

/* func_001286E8 returns a short: its epilogue sign-extends $v0. */
extern short func_001286E8(int, int);

/* Returns its callee's value: retail keeps the frame and calls, and
   2.9-ee turns a void one-call function into a bare tail jump (8 bytes
   against 28). */
short func_001275A0(int arg0) {
    return func_001286E8(arg0, 3);
}

/* dualPrimeVector (libmpeg.a:mpc.o): ISO/IEC 13818-2 7.6.3.6
 * Dual_Prime_Arithmetic(), matching mpeg2decode reference source
 * (motion.c) line for line. picture_structure (+0x174) and
 * top_field_first (+0x178) come from the bitstream-state struct instead
 * of globals; FRAME_PICTURE == 3, TOP_FIELD == 1 (ISO encoding).
 */
void func_001275C0(void *arg0, int DMV[][2], int *dmvector, int mvx, int mvy) {
    char *s = (char *)arg0;

    if (*(int *)(s + 0x174) == 3) {
        int top_field_first = *(int *)(s + 0x178);
        if (top_field_first) {
            DMV[0][0] = ((mvx + (mvx > 0)) >> 1) + dmvector[0];
            DMV[0][1] = ((mvy + (mvy > 0)) >> 1) + dmvector[1] - 1;
            DMV[1][0] = ((3 * mvx + (mvx > 0)) >> 1) + dmvector[0];
            DMV[1][1] = ((3 * mvy + (mvy > 0)) >> 1) + dmvector[1] + 1;
        } else {
            DMV[0][0] = ((3 * mvx + (mvx > 0)) >> 1) + dmvector[0];
            DMV[0][1] = ((3 * mvy + (mvy > 0)) >> 1) + dmvector[1] - 1;
            DMV[1][0] = ((mvx + (mvx > 0)) >> 1) + dmvector[0];
            DMV[1][1] = ((mvy + (mvy > 0)) >> 1) + dmvector[1] + 1;
        }
    } else {
        DMV[0][0] = ((mvx + (mvx > 0)) >> 1) + dmvector[0];
        DMV[0][1] = ((mvy + (mvy > 0)) >> 1) + dmvector[1];
        if (*(int *)(s + 0x174) == 1) {
            DMV[0][1]--;
        } else {
            DMV[0][1]++;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127748);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127858);

extern void func_00128BA8(void *);
extern int func_00128860(void *, int);
extern void func_0012C430(void *, char *, int);
extern void func_00128968(void *, int);
extern int func_00128C28(void *);
extern void func_0012C468(void *, void *);
extern char D_00153900[];
extern char D_00153928[];

/* sliceA0 (libmpeg.a:mpc.o): ISO/IEC 13818-2 6.2.4 slice_header(), the
 * hardware-VLC variant. nextStartCode, then peek 32 bits: if it isn't a
 * slice_start_code (0x101..0x1AF), report it (func_0012C430) and return 2.
 * Otherwise consume the 32 bits, run sliceB (IPU setup) and
 * mbAddressIncrement, stash the raw increment at *arg3 (in case of a
 * fault), and if the fault flag (+0x11C, cleared at entry) got set, report
 * it (func_0012C468) and return 1. On full success, compute the starting
 * macroblock address from the slice's row (low byte of the start code)
 * and the picture's mb width (+0x12C), overwrite *arg3 with 1, latch
 * +0x1B0, and zero eight fields of the *arg4 output struct.
 */
int func_00127960(void *arg0, int arg1, int *arg2, int *arg3, void *arg4) {
    char *s = (char *)arg0;
    char *p5 = (char *)arg4;
    unsigned int code;
    int sliceB_result;
    int mbInc;
    int row;

    *(int *)(s + 0x11C) = 0;
    func_00128BA8(s);
    code = func_00128860(s, 0x20);

    if ((unsigned int)(code - 0x101) >= 0xAF) {
        func_0012C430(s, D_00153900, code);
        return 2;
    }

    func_00128968(s, 0x20);
    sliceB_result = func_00128C28(s);
    mbInc = func_00127748(s);
    *arg3 = mbInc;

    if (*(int *)(s + 0x11C) != 0) {
        func_0012C468(s, D_00153928);
        return 1;
    }

    row = (sliceB_result << 7) + (int)(code & 0xFF) - 1;
    *arg2 = row * (*(int *)(s + 0x12C)) + mbInc - 1;
    *arg3 = 1;
    *(int *)(s + 0x1B0) = 1;
    *(int *)(p5 + 0x14) = 0;
    *(int *)(p5 + 0x10) = 0;
    *(int *)(p5 + 0x4) = 0;
    *(int *)(p5 + 0x0) = 0;
    *(int *)(p5 + 0x1C) = 0;
    *(int *)(p5 + 0x18) = 0;
    *(int *)(p5 + 0xC) = 0;
    *(int *)(p5 + 0x8) = 0;
    return 0;
}

extern int func_00127960(void *, int, int *, int *, void *);
extern int func_001273A0(void *);
extern int func_00128860(void *, int);
extern int func_00127748(void *);
extern void func_0012C468(void *, void *);
extern char D_00153948[];
extern int func_00127D40(void *, int *, int *, int *, void *, void *, void *);
extern int func_00125630(void *, int, int, int, int, void *, void *, void *);
extern int func_001263A8(void *, int);

/* slice0 (libmpeg.a:mpc.o): the per-picture macroblock loop -- sliceA0
 * (func_00127960) parses the first slice header and starting mb address
 * (local "mbAddr"/"mbInc" pair, plus the zeroed 8-word block-info struct
 * at local0); then while mbAddr < mbCount: waitBdecOut (func_001273A0)
 * must succeed; if this macroblock doesn't already have a pending
 * mbAddressIncrement (mbInc==0, i.e. a fresh slice), peek 23 bits looking
 * for the next slice_start_code prefix, and if found read the next
 * mbAddressIncrement (func_00127748) -- both faulting through +0x11C;
 * decode (decMB0, func_00127D40) when mbInc==1, else skip (skipMB0,
 * func_00127C80) the run of skipped macroblocks; run motion compensation
 * (motionComp0, func_00125630) on the result; for every macroblock after
 * the first, run the previous macroblock's IPU motion-comp dispatch
 * (doMC, func_001263A8) using the alternating +0x810 buffer index before
 * flipping it; advance mbAddr and consume one mbInc, looping until the
 * picture's macroblocks are exhausted (return 0) or a fault (1/2/3)
 * happens along the way.
 */
int func_00127A90(void *arg0, int mbCount) {
    char *s = (char *)arg0;
    int mbAddr = 0;
    int mbInc = 0;
    int local48, local4C, local50;
    int local0[8];
    int scratch20[4];
    int scratch30[4];
    int r;

    r = func_00127960(s, mbCount, &mbAddr, &mbInc, local0);
    if (r != 0) {
        return r;
    }
    *(int *)(s + 0x11C) = 0;

    for (;;) {
        int mbIdx;
        char *entry;

        if (!(mbAddr < mbCount)) {
            return 0;
        }

        mbIdx = *(int *)(s + 0x810);
        entry = s + mbIdx * 0x140;
        *(int *)(entry + 0x6CC) = 0;
        r = func_001273A0(s);
        if (r == 0) {
            return 2;
        }

        if (mbInc == 0) {
            int peeked = func_00128860(s, 0x17);
            if (peeked == 0) {
                *(int *)(s + 0x11C) = 0;
                return 3;
            }
            if (*(int *)(s + 0x11C) != 0) {
                *(int *)(s + 0x11C) = 0;
                return 3;
            }

            mbInc = func_00127748(s);
            if (*(int *)(s + 0x11C) != 0) {
                *(int *)(s + 0x11C) = 0;
                return 1;
            }
        }

        if (!(mbAddr < mbCount)) {
            func_0012C468(s, D_00153948);
            return 2;
        }

        if (mbInc == 1) {
            r = func_00127D40(s, &local48, &local4C, &local50, local0,
                               scratch20, scratch30);
            if (r == 0) {
                *(int *)(s + 0x11C) = 0;
                return 1;
            }
        } else {
            r = func_00127C80(s, local0, &local4C, scratch20, &local48);
            if (r == 0) {
                *(int *)(s + 0x11C) = 0;
                return 2;
            }
        }

        r = func_00125630(s, mbAddr, mbInc, local48, local4C, local0,
                           scratch20, scratch30);
        if (r == 0) {
            *(int *)(s + 0x11C) = 0;
            return 2;
        }

        if (mbAddr != 0) {
            int fault = *(int *)(s + 0x810);
            func_001263A8(s, fault ^ 1);
        }

        mbAddr = mbAddr + 1;
        *(int *)(s + 0x810) ^= 1;
        mbInc = mbInc - 1;
    }
}

extern void func_0012C468(void *, void *);
extern char D_00153968[];

/* arg0 is a moby/entity-ish struct: a table index at +0x810 selects a
 * +0x140-strided sub-entry whose +0x6CC field gets set, and several
 * other struct-pointer outputs get filled from +0x150/+0x174 flags.
 * Ends by clearing bit 0 of *a4, reporting through func_0012C468 (an
 * already-matched "log to D_00153968" family member) first when
 * +0x150 == 1. The func_0012C468 call takes arg0 -- the moby struct,
 * still live in $4 -- not a4/s0, which is a common trap here. */
int func_00127C80(void *a0, int *a1, int *a2, int *a3, int *a4) {
    int idx;
    char *entry;
    int ret = 1;
    int c;
    int mask;

    idx = *(int *)((char *)a0 + 0x810);
    entry = (char *)a0 + idx * 0x140;
    *(int *)(entry + 0x6CC) = 1;
    *(int *)((char *)a0 + 0x1B0) = 1;

    if (*(int *)((char *)a0 + 0x150) == 2) {
        *(int *)((char *)a1 + 0x14) = 0;
        *(int *)((char *)a1 + 0x10) = 0;
        *(int *)((char *)a1 + 0x4) = 0;
        *(int *)((char *)a1 + 0x0) = 0;
    }

    if (*(int *)((char *)a0 + 0x174) == 3) {
        *a2 = 2;
    } else {
        *a2 = 1;
        c = (*(int *)((char *)a0 + 0x174) == 2);
        a3[1] = c;
        *a3 = c;
    }

    if (*(int *)((char *)a0 + 0x150) == 1) {
        func_0012C468(a0, D_00153968);
        ret = 0;
    }
    mask = *a4;
    mask &= ~1;
    *a4 = mask;
    return ret;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127D40);

/* decode_motion_vector (libmpeg.a:mpc.o): ISO/IEC 13818-2 motion_vector()
 * component reconstruction, matching mpeg2decode reference source
 * (motion.c) decode_motion_vector() line for line. full_pel_vector is
 * MPEG-1 (ISO/IEC 11172-1) support; called from func_00128410
 * (motionVector, already matched in this file).
 */
void func_001281E8(int *pred, int r_size, int motion_code, int motion_residual, int full_pel_vector) {
    int lim, vec;

    lim = 16 << r_size;
    vec = full_pel_vector ? (*pred >> 1) : (*pred);

    if (motion_code > 0) {
        vec += ((motion_code - 1) << r_size) + motion_residual + 1;
        if (vec >= lim)
            vec -= lim + lim;
    } else if (motion_code < 0) {
        vec -= ((-motion_code - 1) << r_size) + motion_residual + 1;
        if (vec < -lim)
            vec += lim + lim;
    }
    *pred = full_pel_vector ? (vec << 1) : vec;
}

extern void func_00128410(void *, int *, int *, int, int, int, int, int);
extern int func_00128A58(void *, int);

/* motionVectors (libmpeg.a:mpc.o): ISO/IEC 13818-2 6.2.5.2/6.3.17.2/7.6.3
 * motion_vectors(), matching mpeg2decode reference source (motion.c)
 * almost line for line, with the bitstream-state pointer threaded through
 * explicitly as the new first argument (this file's convention) instead
 * of read from a global. func_00128410 is motionVector (already matched
 * in this file); func_00128A58 is Get_Bits.
 */
void func_00128270(void *arg0, int PMV[][2][2], int *dmvector, int mvfs[][2],
                    int s_idx, int motion_vector_count, int mv_format,
                    int h_r_size, int v_r_size, int dmv, int mvscale) {
    if (motion_vector_count == 1) {
        if (mv_format == 0 && dmv == 0) {
            mvfs[1][s_idx] = mvfs[0][s_idx] = func_00128A58(arg0, 1);
        }
        func_00128410(arg0, PMV[0][s_idx], dmvector, h_r_size, v_r_size, dmv, mvscale, 0);
        PMV[1][s_idx][0] = PMV[0][s_idx][0];
        PMV[1][s_idx][1] = PMV[0][s_idx][1];
    } else {
        mvfs[0][s_idx] = func_00128A58(arg0, 1);
        func_00128410(arg0, PMV[0][s_idx], dmvector, h_r_size, v_r_size, dmv, mvscale, 0);
        mvfs[1][s_idx] = func_00128A58(arg0, 1);
        func_00128410(arg0, PMV[1][s_idx], dmvector, h_r_size, v_r_size, dmv, mvscale, 0);
    }
}

extern void func_001281E8(int *, int, int, int, int);
extern int func_00128A58(void *, int);

/* motionVector (libmpeg.a:mpc.o): ISO/IEC 13818-2 7.6.3.1 motion_vector(),
 * hardware-VLC variant of mpeg2decode's motion.c. func_001286E8(s, 2) is
 * Get_motion_code (IPU VLC table 2); func_001275A0 is Get_dmvector (table
 * 3, already matched in this file). func_001281E8 is decode_motion_vector.
 */
void func_00128410(void *arg0, int *PMV, int *dmvector, int h_r_size,
                    int v_r_size, int dmv, int mvscale, int full_pel_vector) {
    char *s = (char *)arg0;
    int motion_code;
    int motion_residual;

    motion_code = func_001286E8((int)s, 2);
    motion_residual = (h_r_size != 0 && motion_code != 0) ? func_00128A58(s, h_r_size) : 0;
    func_001281E8(PMV, h_r_size, motion_code, motion_residual, full_pel_vector);
    if (dmv) {
        dmvector[0] = func_001275A0((int)s);
    }

    motion_code = func_001286E8((int)s, 2);
    motion_residual = (v_r_size != 0 && motion_code != 0) ? func_00128A58(s, v_r_size) : 0;
    if (mvscale) {
        PMV[1] >>= 1;
    }
    func_001281E8(PMV + 1, v_r_size, motion_code, motion_residual, full_pel_vector);
    if (mvscale) {
        PMV[1] <<= 1;
    }
    if (dmv) {
        dmvector[1] = func_001275A0((int)s);
    }
}

extern int D_00132F70[];

void func_00128560(char *arg0, unsigned int arg1) {
    volatile int *reg = (volatile int *)0x10002000;
    *reg = arg1;
    *(int *)(arg0 + 0x818) = D_00132F70[arg1 >> 28];
}

extern void func_0012BCC8(int);

/* Spins until the VIF1 DMA channel (D_CHCR 0x10002010) reports idle,
   nudging the IOP via func_0012BCC8 every 5001 spins so a stalled
   stream cannot deadlock. Same wait loop documented on func_00128860. */
void func_00128590(void *arg0) {
    int counter = 0;

    while ((*(volatile int *)0x10002010 & 0x80004000) == 0x80000000) {
        if (counter++ >= 0x1389) {
            func_0012BCC8(*(int *)((char *)arg0 + 0x858));
            counter = 0;
        }
    }
}

/*
 * IPU wait: the same spin as func_00128590, while IPU_CMD (0x10002000,
 * read as a 64-bit word) is negative (busy) and IPU_CTRL (0x10002010)
 * bit 0x4000 is clear, kicking func_0012BCC8 every 5001 spins. Returns
 * the raw 64-bit IPU_CMD word; func_00128860 and func_00128968 narrow it
 * with dsll32/dsra32, so the return type is `long`.
 *
 * Exact under both compilers once BOTH MMIO reads are spelled inline in
 * the condition: both addresses are then loop invariants that loop.c
 * hoists into $17/$16 as retail has them. The old note's
 * `volatile long *chcr` local made the compiler use the constant as an
 * absolute `ld` address instead (160 against 176 bytes).
 */
long func_00128638(void *arg0) {
    long v;
    int counter = 0;
    while ((v = *(volatile long *)0x10002000) < 0 && (*(volatile int *)0x10002010 & 0x4000) == 0) {
        if (counter++ >= 0x1389) {
            func_0012BCC8(*(int *)((char *)arg0 + 0x858));
            counter = 0;
        }
    }
    return v;
}


INCLUDE_ASM("asm/nonmatchings/core_text", func_001286E8);

/*
 * REVERTED -- decode is complete and believed correct; blocked on
 * register allocation, and the overage is a SIZE mismatch (0x114 vs
 * retail's 0x108) that overflows .core_text into .core_data, so it
 * cannot be left in as documented-close.
 *
 * A bitstream refill-and-extract: if the cache is empty or holds fewer
 * than n bits, wait for the DMA channel to go idle, refill from the
 * table, then return the top n bits.
 *
 *   extern long func_00128638_wide(void *, int *) __asm__("func_00128638");
 *
 *   int func_00128860(void *arg0, int n) {
 *       char *s = (char *)arg0;
 *       int bits;
 *       if (*(int *)(s + 0x818) != 0 || *(int *)(s + 0x83C) < n) {
 *           int *tbl = D_00132F70;
 *           int counter = 0;
 *           while ((*(volatile int *)0x10002010 & 0x80004000) == 0x80000000) {
 *               if (counter++ >= 0x1389) {
 *                   func_0012BCC8(*(int *)(s + 0x858));
 *                   counter = 0;
 *               }
 *           }
 *           *(volatile int *)0x10002000 = 0x40000000;
 *           *(int *)(s + 0x818) = tbl[4];
 *           *(int *)(s + 0x838) = (int)func_00128638_wide(s, tbl);
 *           *(int *)(s + 0x83C) = 0x20;
 *       }
 *       bits = *(int *)(s + 0x838);
 *       return (unsigned int)bits >> -n;
 *   }
 *
 * Confirmed right along the way: `counter++ >= 0x1389` is correct, not a
 * violation of the don't-put-++-in-a-comparison lever -- retail carries
 * the `daddu $2,$6,$0` spare move that lever warns about, so here the
 * move is EVIDENCE the ++ belongs inside the comparison. The dsll32/dsra32
 * after the jal is the 64-bit-return narrowing, handled by the _wide alias.
 *
 * Why it failed under 2.95.3: retail keeps only $16/$17/$18 across the
 * call (object, D_00132F70 base, n) in a 0x40 frame and REMATERIALISES
 * the hardware constants 0x10002010 / 0x80004000 / 0x80000000 with
 * lui/ori at each use, where 2.95.3 hoists all three into callee-saved
 * registers (a 0x70 frame, 0x114 against 0x108). 2.9-ee, this object's
 * compiler, rematerialises them like retail (see func_00128968), and the
 * C above then comes out 268 against 264: the frame and the wait loop
 * are right, but n is parked in $a3 and negated early where retail
 * keeps it in $s2 and negates it at the end. Still open.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00128860);

/*
 * IPU command send: func_00128590's wait (IPU_CTRL & 0x80004000 ==
 * 0x80000000, a func_0012BCC8 kick every 5001 spins) inlined, then
 * cmd = arg1 | 0x40000000 to IPU_CMD, s+0x818 = D_00132F70[cmd >> 28]
 * (func_00128560 inlined), s+0x838 = the narrowed func_00128638 result,
 * s+0x83C = 0x20.
 *
 * Written plainly it is exact under 2.9-ee, which rematerialises the
 * MMIO constants inside the loop and keeps only %hi(D_00132F70) in $18,
 * like retail; 2.95.3 hoists them into saved registers (SIZE 252/240).
 * The stores go in source order 0x838 then 0x83C.
 */
void func_00128968(void *arg0, int arg1) {
    int counter = 0;
    unsigned int cmd;

    while ((*(volatile int *)0x10002010 & 0x80004000) == 0x80000000) {
        if (counter++ >= 0x1389) {
            func_0012BCC8(*(int *)((char *)arg0 + 0x858));
            counter = 0;
        }
    }
    cmd = arg1 | 0x40000000;
    *(volatile int *)0x10002000 = cmd;
    *(int *)((char *)arg0 + 0x818) = D_00132F70[cmd >> 28];
    *(int *)((char *)arg0 + 0x838) = func_00128638(arg0);
    *(int *)((char *)arg0 + 0x83C) = 0x20;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128A58);

extern void func_00128590(void *);
extern void func_00128968(void *, int);
extern int func_00128860(void *, int);

void func_00128BA8(void *arg0) {
    int pad;

    func_00128590(arg0);
    pad = -(*(volatile int *)0x10002020 & 7) & 7;
    if (pad != 0) {
        func_00128968(arg0, pad);
    }
    while (func_00128860(arg0, 0x18) != 1) {
        func_00128968(arg0, 8);
    }
}

extern void func_00128968(void *, int);
extern int func_00128A58(void *, int);
extern void func_00129180(void *);

int func_00128C28(void *arg0) {
    *(int *)((char *)arg0 + 0x1B4) = func_00128A58(arg0, 5);
    if (func_00128A58(arg0, 1) != 0) {
        func_00128A58(arg0, 1);
        func_00128968(arg0, 7);
        func_00129180(arg0);
    }
    return 0;
}

extern void func_00128BA8(void *);
extern int func_00128A58(void *, int);
extern void func_0012C4E0(void *);
extern void func_00129240(void *);
extern void func_00128DA0(void *);
extern void func_0012BC78(int, void *);

typedef struct {
    int n;
    long long v[2];
} Buf18;

/* nextHeader (libmpeg.a:mpc.o): ISO/IEC 13818-2 6.2.2.1 Get_Hdr() loop --
 * nextStartCode, Get_Bits32, dispatch on the start code: sequence_header
 * (0x1B3, func_0012C4E0), group_start (0x1B8, func_00129240 groupOf...),
 * picture_start (0x100, func_00128DA0 pictureHeader then a PTS/DTS-style
 * query through func_0012BC78, whose two 64-bit outputs land at +0x828/
 * +0x830), sequence_end (0x1B7, returns 0), anything else loops again.
 * On picture_start it returns picture_coding_type (+0x150).
 */
int func_00128C90(void *arg0) {
    char *s = (char *)arg0;
    unsigned int code;
    Buf18 buf;

    for (;;) {
        func_00128BA8(s);
        code = func_00128A58(s, 0x20);
        switch (code) {
        case 0x1B3:
            func_0012C4E0(s);
            break;
        case 0x1B8:
            func_00129240(s);
            break;
        case 0x100:
            func_00128DA0(s);
            buf.n = 5;
            buf.v[0] = -1;
            buf.v[1] = -1;
            func_0012BC78(*(int *)(s + 0x858), &buf);
            *(long long *)(s + 0x830) = buf.v[1];
            *(long long *)(s + 0x828) = buf.v[0];
            return *(int *)(s + 0x150);
        case 0x1B7:
            return 0;
        }
    }
}

extern int func_00128A58(void *, int);
extern void func_00129180(void *);
extern void func_00128E68(void *);
extern void func_001291C8(void *, int);

/* pictureHeader (libmpeg.a:mpc.o): ISO/IEC 13818-2 6.2.3 picture_header().
 * temporal_reference (+bits 10) is kept live across the whole function to
 * feed func_001291C8 (updateTempTackData) at the end. picture_coding_type
 * (+0x150) is re-read from the struct at each use rather than kept in a
 * local -- it must survive calls that could (as far as the compiler
 * knows) touch the struct. P_TYPE/B_TYPE (2/3) is the classic
 * (x-2)<2u range check; B_TYPE alone is a plain ==3.
 */
void func_00128DA0(void *arg0) {
    char *s = (char *)arg0;
    int temporal_reference = func_00128A58(s, 10);

    *(int *)(s + 0x150) = func_00128A58(s, 3);   /* picture_coding_type */
    func_00128A58(s, 16);                         /* vbv_delay, discarded */

    if ((unsigned int)(*(int *)(s + 0x150) - 2) < 2) {
        *(int *)(s + 0x154) = func_00128A58(s, 1);  /* full_pel_forward_vector */
        *(int *)(s + 0x158) = func_00128A58(s, 3);  /* forward_f_code */
    }
    if (*(int *)(s + 0x150) == 3) {
        *(int *)(s + 0x15C) = func_00128A58(s, 1);  /* full_pel_backward_vector */
        *(int *)(s + 0x160) = func_00128A58(s, 3);  /* backward_f_code */
    }

    func_00129180(s);   /* extra_bit_information */
    func_00128E68(s);   /* extension_and_user_data */
    func_001291C8(s, temporal_reference);  /* Update_Temporal_Reference_Tacking_Data */
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128E68);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128F90);

extern void func_00128968(void *, int);
extern int func_00128A58(void *, int);

void func_00129180(void *arg0) {
    while (func_00128A58(arg0, 1) != 0) {
        func_00128968(arg0, 8);
    }
}

/* updateTempTackData (libmpeg.a:mpc.o): Update_Temporal_Reference_Tracking_Data
 * Updates bitstream frame numbers based on picture_coding_type (+0x150),
 * Temporal_Reference_Base (+0x84C), and GOP reset state (+0x854).
 */
void func_001291C8(void *arg0, int arg1) {
    char *s = (char *)arg0;
    int flag = 0;
    int x = 0;
    int max;

    if (*(int *)(s + 0x150) != 3) {
        if (arg1 != 0) {
            if (arg1 < 0) {
                flag = *(int *)(s + 0x854) == 0;
            }
            *(int *)(s + 0x854) = 0;
            x = arg1;
        }
    }

    *(int *)(s + 0x1AC) = *(int *)(s + 0x84C) + arg1;

    if (flag) {
        if (x >= arg1) {
            *(int *)(s + 0x1AC) += 0x400;
        }
    }

    max = *(int *)(s + 0x850);
    if (max < *(int *)(s + 0x1AC)) {
        max = *(int *)(s + 0x1AC);
    }
    *(int *)(s + 0x850) = max;
}

extern int func_00128A58(void *, int);
extern void func_00128E68(void *);

/* groupOfPicturesHeader (libmpeg.a:mpc.o): ISO/IEC 13818-2 6.2.2.6
 * group_of_pictures_header(). The reference decoder's "if (ld == &base)"
 * scalable-layer bookkeeping collapses to unconditional field updates here
 * (this port keeps one bitstream state, not a base/enhancement pair):
 * Temporal_Reference_Base (+0x84C) = True_Framenum_max (+0x850) + 1,
 * Temporal_Reference_GOP_Reset (+0x854) = 1, plus a +0xE8 reset.
 * Then drop_flag(1), hour(5), minute(6), marker_bit(1), sec(6), frame(6)
 * are read and discarded (dead outside VERBOSE), while closed_gop(1) and
 * broken_link(1) are kept at +0x1A4/+0x1A8; ends with a tail call into
 * extensionAndUserData.
 */
void func_00129240(void *arg0) {
    char *s = (char *)arg0;

    *(int *)(s + 0xE8) = 0;
    *(int *)(s + 0x84C) = *(int *)(s + 0x850) + 1;
    *(int *)(s + 0x854) = 1;

    func_00128A58(s, 1);  /* drop_flag */
    func_00128A58(s, 5);  /* hour */
    func_00128A58(s, 6);  /* minute */
    func_00128A58(s, 1);  /* marker_bit */
    func_00128A58(s, 6);  /* sec */
    func_00128A58(s, 6);  /* frame */
    *(int *)(s + 0x1A4) = func_00128A58(s, 1);  /* closed_gop */
    *(int *)(s + 0x1A8) = func_00128A58(s, 1);  /* broken_link */

    func_00128E68(s);
}

extern int func_00128A58(void *, int);
extern void func_00128590(void *);
extern void func_00128560(char *, unsigned int);
extern void func_0012C468(void *, void *);
extern char D_001539E8[];
extern char D_00153A10[];

/* quantMatrixExtension (libmpeg.a:mpc.o): ISO/IEC 13818-2 6.2.3.2
 * quant_matrix_extension(). Unlike the reference decoder's 64-coefficient
 * software copy loops, this hardware-assisted port just flags the IPU to
 * pull the following intra/non-intra matrix straight off the bitstream
 * (waitIpuIdle, sendIpuCommand(0x50000000 / 0x58000000), waitIpuIdle) when
 * load_intra/non_intra_quantizer_matrix is set, storing the flag at
 * +0x840/+0x844 either way. The chroma variants aren't hardware-supported:
 * setting either just logs a warning through func_0012C468.
 */
void func_001292E0(void *arg0) {
    char *s = (char *)arg0;
    int flag;

    flag = func_00128A58(s, 1);        /* load_intra_quantizer_matrix */
    *(int *)(s + 0x840) = flag;
    if (flag != 0) {
        func_00128590(s);
        func_00128560(s, 0x50000000);
        func_00128590(s);
    }

    flag = func_00128A58(s, 1);        /* load_non_intra_quantizer_matrix */
    *(int *)(s + 0x844) = flag;
    if (flag != 0) {
        func_00128590(s);
        func_00128560(s, 0x58000000);
        func_00128590(s);
    }

    if (func_00128A58(s, 1) != 0) {    /* load_chroma_intra_quantizer_matrix */
        func_0012C468(s, D_001539E8);
    }

    if (func_00128A58(s, 1) != 0) {    /* load_chroma_non_intra_quantizer_matrix */
        func_0012C468(s, D_00153A10);
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001293A8);

extern int func_00128A58(void *, int);

/* copyrightExtension (libmpeg.a:mpc.o) -- ISO/IEC 13818-2 6.2.3.6: skip the
 * copyright_extension() fields with func_00128A58 (nextBit, "get n bits").
 * Reference decoder (mpeg2decode gethdr.c copyright_extension()) assigns
 * each field to a local only used by its VERBOSE printf, which this port
 * drops entirely, so every nextBit's result is a dead store the compiler
 * elides -- the sequence is bare `nextBit(s, width)` calls, and the final
 * one, its value discarded, becomes 2.9-ee's bare tail jump.
 */
void func_001294A0(void *arg0) {
    func_00128A58(arg0, 1);   /* copyright_flag */
    func_00128A58(arg0, 8);   /* copyright_identifier */
    func_00128A58(arg0, 1);   /* original_or_copy */
    func_00128A58(arg0, 7);   /* reserved */
    func_00128A58(arg0, 1);   /* marker_bit */
    func_00128A58(arg0, 20);  /* copyright_number_1 */
    func_00128A58(arg0, 1);   /* marker_bit */
    func_00128A58(arg0, 22);  /* copyright_number_2 */
    func_00128A58(arg0, 1);   /* marker_bit */
    func_00128A58(arg0, 22);  /* copyright_number_3 */
}

extern int func_00127858(void *);
extern char D_00153A40[];
extern char D_00153A60[];

/*
 * Decoder state step: if the picture state (s+0x174) is 3 and s+0x120 is
 * set, report D_00153A40 through func_0012C468, clear s+0x120 and re-read
 * the state; pick the target pointer by state (3 -> +0x1C0, 1 -> +0x1D0,
 * 2 -> +0x1E0, anything else -> +0x1C0 plus a D_00153A60 report; the
 * field is a POINTER, the target of the final +0x28 write); then
 * r = func_00127858(s), and if r, target->+0x28 = 1. Exact under both
 * compilers.
 *
 * It is a `switch`, with the case bodies in the order 3, 1, 2, default.
 * GCC's decision tree is fixed (==2, <3, ==1 / ==3), but the body that
 * follows the dispatch is the first case in source order, and jump.c
 * then turns `beq 3,case3; b default` into retail's `bne 3,default` plus
 * fall-through (the nested-if decode was 200 against 204). The state is
 * re-read into the local after the report, as 2.95.3 needs; switching on
 * the memory re-read is exact under 2.9-ee too.
 */
int func_00129530(void *arg0) {
    char *s = arg0;
    int state = *(int *)(s + 0x174);
    char *target;
    int r;

    if (state == 3 && *(int *)(s + 0x120) != 0) {
        func_0012C468(s, D_00153A40);
        *(int *)(s + 0x120) = 0;
        state = *(int *)(s + 0x174);
    }
    switch (state) {
    case 3:
        target = *(char **)(s + 0x1C0);
        break;
    case 1:
        target = *(char **)(s + 0x1D0);
        break;
    case 2:
        target = *(char **)(s + 0x1E0);
        break;
    default:
        target = *(char **)(s + 0x1C0);
        func_0012C468(s, D_00153A60);
        break;
    }
    r = func_00127858(s);
    if (r != 0) {
        *(int *)(target + 0x28) = 1;
    }
    return r;
}

extern void func_00129E30();
extern void func_00129F40();

void func_00129600(void *arg0, int arg1, int arg2) {
    char *s = (char *)arg0;
    int v, w;

    if (arg2 != 0) {
        if (*(int *)(s + 0x174) == 3) {
            if (*(int *)(s + 0x150) == 3) {
                v = *(int *)(s + 0x1C4);
            } else {
                v = *(int *)(s + 0x1B8);
            }
            func_00129E30(s, v, arg1 - 1);
        } else {
            if (*(int *)(s + 0x150) == 3) {
                v = *(int *)(s + 0x1D4);
                w = *(int *)(s + 0x1E4);
            } else {
                v = *(int *)(s + 0x1C8);
                w = *(int *)(s + 0x1D8);
            }
            func_00129F40(s, v, w, arg1 - 1);
        }
    }
    if (*(int *)(s + 0xF8) == 1) {
        *(int *)(s + 0xF8) = 2;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129690);

extern char D_00153A80[];
extern void func_00116248_4(void *, char *, int, int) __asm__("func_00116248");
extern void func_0012C468_a(void *, void *) __asm__("func_0012C468");

/* Does the request at arg1 fit the heap described by arg0? A sized
   request (+0xE0 non-zero) has to fit both the byte budget at +0xDC and
   the entry budget at +0xE0; an unsized one has to fit width * height
   against +0xE4. On a refusal, format the two figures into the message
   at D_00153A80 and report it. Returns whether it fits. */
int func_00129948(void *arg0, void *arg1) {
    char buf[0x100];
    char *h = (char *)arg0;
    char *q = (char *)arg1;
    int e = *(int *)(h + 0xE0);
    int ok;

    if (e != 0) {
        ok = *(int *)(h + 0xDC) >= *(int *)(q + 0x4) &&
             e >= *(int *)(q + 0x8);
    } else {
        ok = *(int *)(h + 0xE4) >= *(int *)(q + 0xC) * *(int *)(q + 0x10);
    }
    if (ok == 0) {
        func_00116248_4(buf, D_00153A80, *(int *)(q + 0x4),
                        *(int *)(q + 0x8));
        func_0012C468_a(arg0, buf);
    }
    return ok;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001299E8);

int func_00129C78(void *arg0) {
    Obj40 *s = (Obj40 *)arg0;
    int r = 1;
    if (s->unk008 != 2) {
        int v = s->unk118;
        s->unk008 = 2;
        s->unk0AC = v;
    }
    s->unk820 = r;
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129CA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129E30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129F40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A0F8);

extern int func_0011D960(void);
extern void func_0011D9A8(void);

/* receiveDataFromIPU (libmpeg.a:mpc.o): kicks off an IPU->main-memory DMA
 * receive. func_0011D960 presumably starts/queries the DMA channel; its
 * result gates whether func_0011D9A8 (presumably a completion/kick) runs.
 * The three MMIO stores (0x1000B000/10/20 -- D2_CHCR/D2_MADR/D2_QWC, the
 * IPU_to_RAM DMA channel) queue the transfer: MADR = (arg0 physical addr)
 * | 0x80000000 (spr flag), QWC = arg1 >> 4 (bytes -> qwords), CHCR = 0x100
 * (start, from-memory... actually to-memory chain/normal mode).
 */
void func_0012A268(void *arg0, int arg1) {
    int r = func_0011D960();
    *(volatile unsigned int *)0x1000B010 = ((unsigned int)arg0 & 0x0FFFFFFF) | 0x80000000;
    *(volatile unsigned int *)0x1000B020 = arg1 >> 4;
    *(volatile unsigned int *)0x1000B000 = 0x100;
    if (r != 0) {
        func_0011D9A8();
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A2EC);
