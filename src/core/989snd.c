#include "common.h"
#include "structs.h"

/*
 * 989snd.c (0x12DB68-0x12F308): 989 Studios' sound library. The
 * "/usr/local/989snd/ee/989snd.c" path string is used from 0x12DBE0 on.
 * Name and extent from bordplate's NTSC RC1 split, shifted +0x140.
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
extern void func_001286E8(int, int);
extern int D_00132F70[];
extern void func_0012BCC8(int);
extern void func_00128590(void *);
extern void func_00128968(void *, int);
extern int func_00128860(void *, int);
extern int func_00128A58(void *, int);
extern void func_00129180(void *);
extern char D_00153A80[];
extern void func_00116248_4(void *, char *, int, int) __asm__("func_00116248");
extern void func_0012C468_a(void *, void *) __asm__("func_0012C468");
extern int func_0012AAA8(void *, int);
extern void func_0012AAC8(void *, int);
extern void func_0012C468(void *, void *);
extern char D_00153B38[];
extern void func_0012C0A0(void *);
extern void func_0012BF40(void *);
extern void func_0012C278(void *);
extern void func_00129E30(void *, int, int, int);
extern void func_00129F40();
extern char D_00153BB8[];
extern char D_00153BD8[];
extern void func_00116248(void *);
extern void func_0012C420(void *);
extern char D_00153C48[];
extern char D_00153C78[];
extern char D_00153C90[];
extern char D_00153CC8[];
extern int func_0012CE48(void *);
extern void func_0012D2A0(void);
extern signed char D_001331D8[];
extern int func_0012D4E0(int);
extern int func_0012D4B0(int);
extern void func_0011DDA0(int);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DB68); /* snd_StartSoundSystem */

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DDC0); /* snd_FlushSoundCommands */

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DFA0);

/*
 * Reverted: size mismatch (ours=144, retail=136 -- 8 bytes over).
 * snd_GotReturns.
 *
 *   extern void func_00118D80(int);
 *   extern int D_0015ECC0;
 *   extern int func_00116078(void *);
 *   extern char D_00153D98[];
 *   extern short D_0015ED80;   // gp 0x166D00-0x7F80, pointer to a
 *                               // pending-returns record
 *   extern short D_0015ED84;   // gp 0x166D00-0x7F7C, index into it
 *
 *   int func_0012DFB0(void) {
 *       func_00118D80(0);
 *       if (*(int *)&D_0015ED80 == 0) {
 *           return 1;
 *       }
 *       if (func_0011B6B8(&D_0015ECC0) != 0) {
 *           return 0;
 *       }
 *       {
 *           int *p = *(int **)&D_0015ED80;
 *           if (p[0] != -1) {
 *               func_00116078(D_00153D98);
 *               return 0;
 *           }
 *           {
 *               int idx = *(int *)&D_0015ED84;
 *               int *slot = (int *)((char *)p + idx * 4);
 *               if (slot[1] != (int)D_00153D98) {
 *                   func_00116078(D_00153D98);
 *                   return 0;
 *               }
 *           }
 *           *(int *)&D_0015ED80 = 0;
 *           return 1;
 *       }
 *   }
 *
 * Semantics recovered with reasonable confidence (D_0015ED80 is a
 * pointer, not a plain flag -- confirmed by the field/index deref
 * chain after the func_0011B6B8 guard). Compiles 8 bytes over; not
 * yet isolated which of the two error-path merges or the delay-slot
 * scheduling accounts for the gap. Left as INCLUDE_ASM pending a
 * closer look.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DFB0); /* snd_GotReturns */

extern short D_0015ED84;
extern short D_0015ED80;

/* snd_PrepareReturnBuffer */
void func_0012E038(void *arg0, int arg1) {
    int *p = (int *)arg0;
    *(int *)&D_0015ED84 = arg1;
    *(int *)&D_0015ED80 = (int)arg0;
    p[arg1 + 1] = 0;
    p[0] = 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E058);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E1B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E2D8);

extern int func_0012E820(int, int, void *, int, int);

/* snd_UnloadBank */
void func_0012E318(int arg0) {
    int local = arg0;
    func_0012E820(6, 4, &local, 0, 0);
}

/* snd_SetMasterVolume */
void func_0012E348(int arg0, int arg1) {
    int local[2];
    local[0] = arg0;
    local[1] = arg1;
    func_0012E820(9, 8, local, 0, 0);
}

/* snd_SetPlaybackMode */
void func_0012E380(int arg0) {
    int local = arg0;
    func_0012E820(0xB, 4, &local, 0, 0);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E3B0);

/* snd_SetGroupVoiceRange */
void func_0012E3F8(int arg0, int arg1, int arg2) {
    int local[3];
    local[0] = arg0;
    local[1] = arg1;
    local[2] = arg2;
    func_0012E820(0x4E, 0xC, local, 0, 0);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E438);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E490);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E4D8);

/* snd_PauseAllSoundsInGroup */
void func_0012E528(int arg0) {
    int local = arg0;
    func_0012E820(0x16, 4, &local, 0, 0);
}

/* snd_ContinueAllSoundsInGroup */
void func_0012E558(int arg0) {
    int local = arg0;
    func_0012E820(0x17, 4, &local, 0, 0);
}

/* snd_SoundIsStillPlaying_CB */
void func_0012E588(int arg0, int arg1, int arg2) {
    int local = arg0;
    func_0012E820(0x19, 4, &local, arg1, arg2);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E5B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E648);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E688); /* snd_SendIOPCommandAndWait */

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E820); /* snd_SendIOPCommandNoWait */

/* gp-relative, no retail symbol: gp 0x166D00 - 0x7F40 = 0x15EDC0
   (message-queue index) and gp 0x166D00 - 0x7F60 = 0x15EDA0 (array of
   pointers to the per-queue message-count int). */
extern short D_0015EDC0;
extern short D_0015EDA0;
extern void func_0012DDC0(void);

/* snd_PostMessage */
void func_0012EAE0(void) {
    int idx = *(int *)&D_0015EDC0;
    int **base = (int **)&D_0015EDA0;
    int *msg = base[idx];

    *msg = *msg + 1;
    func_0012DDC0();
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EB18); /* snd_SendCurrentBatch */

/* gp-relative: declared small so -G2 places it in the small-data area,
   accessed as the word it really is. gp 0x166D00 - 0x7F3C = 0x15EDC4. */
extern short D_0015EDC4;

/* snd_UnkFunction_0012eaf0 */
void func_0012EC30(void) {
    *(int *)&D_0015EDC4 = 1;
}

extern void func_0012DDC0(void);

/*
 * Close, not exact (2/32), same size. Retail saves/restores $ra with
 * sq/lq here; v1.36 (correctly for core_text overall) emits sd/ld, so
 * the two spill instructions differ and nothing else does. This is one
 * of the ~14 core_text functions on the sq side of that split -- the
 * still-open half of the sq/lq question, not a source-shape problem.
 */
/* snd_UnkFunction_0012eb00 */
void func_0012EC40(void) {
    *(int *)&D_0015EDC4 = 0;
    func_0012DDC0();
}

/* gp-relative, no retail symbol: gp 0x166D00 - 0x7F74 = 0x15ED8C
   (streaming-enabled flag, same as func_0012F030/func_0012F068's) and
   gp 0x166D00 - 0x7F38 = 0x15EDC8 (drain-commands-first flag). */
extern short D_0015ED8C;
extern short D_0015EDBC;   /* the word at +0xC, SDA ($gp -0x7F38) */
/* snd_FlushSoundCommands: declared void elsewhere in this file (every
   other call site discards its result), so its int-returning form is
   reached through an alias here, as func_00119718/func_00118E90 do
   elsewhere in core_text for the same reason. */
extern int func_0012DDC0_ret(void) __asm__("func_0012DDC0");
extern int func_0012EF48(int);              /* snd_StreamSafeCdSync */
extern int func_0012E688(int, int, void *); /* snd_SendIOPCommandAndWait */

/* snd_InitVAGStreamingEx: no-op (returns 0) if VAG streaming is already
 * enabled; otherwise drains any pending sound commands, syncs the CD
 * stream, and sends the "init streaming" IOP command with the four
 * arguments packed into a header, storing (and returning) its result as
 * the streaming-enabled flag. */
int func_0012EC60(int arg0, int arg1, int arg2, int arg3) {
    int hdr[4];
    int r;

    if (*(int *)&D_0015ED8C == 1) {
        return 0;
    }
    if (*(int *)((char *)&D_0015EDBC + 0xC) != 0) {
        while (({ int r = func_0012DDC0_ret(); __asm__ __volatile__("nop\n\tnop\n\tnop\n\tnop"); r; }) != 0) {
        }
    }
    func_0012EF48(0);
    hdr[0] = arg0;
    hdr[1] = arg1;
    hdr[2] = arg2;
    hdr[3] = arg3;
    r = func_0012E688(0x2A, 0x10, hdr);
    *(int *)&D_0015ED8C = r;
    return r;
}

/* snd_StopAllStreams */
void func_0012ED10(void) {
    func_0012E820(0x34, 0, 0, 0, 0);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012ED40);

/* snd_PauseVAGStream */
void func_0012EDB0(int arg0) {
    int local = arg0;
    func_0012E820(0x2D, 4, &local, 0, 0);
}

/* snd_ContinueVAGStream */
void func_0012EDE0(int arg0) {
    int local = arg0;
    func_0012E820(0x2E, 4, &local, 0, 0);
}

/* snd_GetVAGStreamTimeRemaining_CB */
void func_0012EE10(int arg0, int arg1, int arg2) {
    int local = arg0;
    func_0012E820(0x32, 4, &local, arg1, arg2);
}

/* snd_IsVAGStreamBuffered_CB */
void func_0012EE40(int arg0, int arg1, int arg2) {
    int local = arg0;
    func_0012E820(0x4F, 4, &local, arg1, arg2);
}

extern int func_0012E688(int, int, void *);

/* snd_StreamSafeCheckCDIdle */
void func_0012EE70(int arg0) {
    int local = arg0;
    func_0012E688(0x36, 4, &local);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EE98); /* snd_StreamSafeCdRead */

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EF48); /* snd_StreamSafeCdSync */

/* gp-relative, no retail symbol: gp 0x166D00 - 0x7F74 = 0x15ED8C
   (streaming-enabled flag, see func_0012F030/func_0012F068). */
extern short D_0015ED8C;
extern int func_001219C8(void);

/* snd_StreamSafeCdBreak */
int func_0012EFE8(void) {
    if (*(int *)&D_0015ED8C == 0) {
        return func_001219C8();
    }
    func_0012E820(0x37, 0, 0, 0, 0);
    return 1;
}

/*
 * Reverted: size mismatch (ours=48, retail=56 -- 8 bytes short).
 * snd_StreamSafeCdGetError.
 *
 *   extern short D_0015ED8C;   // gp 0x166D00-0x7F74, no retail symbol
 *   extern int D_00137C00[];
 *   extern int func_00121930(void);
 *
 *   int func_0012F030(void) {
 *       if (*(int *)&D_0015ED8C == 0) {
 *           return func_00121930();
 *       }
 *       return *(int *)((char *)D_00137C00 + 0x10);
 *   }
 *
 * Semantics certain, every real instruction matches. Retail
 * duplicates the $ra restore in both branches (if-path restores it in
 * the beqz's delay slot before an early `b`, else-path restores it
 * again after the call); this compiler merges both paths into one
 * shared restore+jr at the end, saving 2 instructions -- same
 * compiler-is-smarter-than-retail tail-merge class as func_00203118/
 * func_00203E78. It also folds D_00137C00's +0x10 offset directly
 * into the load's immediate instead of retail's separate lui+addiu
 * address materialization; an explicit `char *p = ...; *(int*)p`
 * local was tried and changed nothing.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F030); /* snd_StreamSafeCdGetError */

/* gp-relative, no retail symbol: gp 0x166D00 - 0x7F74 = 0x15ED8C
   (streaming-enabled flag, same as func_0012F030's) and
   gp 0x166D00 - 0x7F70 = 0x15ED90 (cached callback value). */
extern short D_0015ED8C;
extern short D_0015ED90;
extern int func_00120978(void);

/* snd_StreamSafeCdCallback */
int func_0012F068(int arg0) {
    int old;

    if (*(int *)&D_0015ED8C == 0) {
        return func_00120978();
    }
    old = *(int *)&D_0015ED90;
    *(int *)&D_0015ED90 = arg0;
    return old;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F098);

/* snd_PreAllocReverbWorkArea */
void func_0012F0E8(int arg0, int arg1) {
    int local[2];
    local[0] = arg0;
    local[1] = arg1;
    func_0012E820(0x51, 8, local, 0, 0);
}

/* snd_AutoReverb */
void func_0012F120(int arg0, int arg1, int arg2, int arg3) {
    int local[4];
    local[0] = arg0;
    local[1] = arg1;
    local[2] = arg2;
    local[3] = arg3;
    func_0012E820(0x10, 0x10, local, 0, 0);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F160);

/* snd_ResetMovieSound */
void func_0012F1E8(void) {
    func_0012E688(0x3D, 0, 0);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F210);

/* snd_StartMovieSound */
void func_0012F248(int arg0, int arg1, int arg2, int arg3, int arg4) {
    int local[5];
    local[0] = arg0;
    local[1] = arg1;
    local[2] = arg2;
    local[3] = arg3;
    local[4] = arg4;
    func_0012E688(0x3E, 0x14, local);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F280);

/* snd_GetMovieNAX */
void func_0012F2B8(void) {
    func_0012E688(0x5B, 0, 0);
}

/* snd_GetDopplerPitchMod */
int func_0012F2E0(int arg0) {
    return (arg0 * 0x5F4) / 0x2E5;
}
