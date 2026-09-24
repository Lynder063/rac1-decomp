#include "common.h"
#include "structs.h"

/*
 * core_text object 0x1236F0-0x125218. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
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

INCLUDE_ASM("asm/nonmatchings/core_text", func_001236F0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001238A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001238B0);

extern int func_001238B0(int, int, int, int);
extern int D_00132EA8;

int func_001239D8(int arg0, int arg1, int arg2) {
    int r = func_001238B0(arg0, arg1, arg2, 0x40);
    if (r == 0) {
        D_00132EA8 = 0xB;
    }
    return r;
}

extern char D_00159B00[];
extern int D_00132EAC;
extern int D_00159B80;
extern char D_0015B0C0[];
extern int func_00118CC0(int);
extern int func_0011B4C8();

/* RPC 3 on the client D_00159B00, in func_001239D8's shape: -100 with
   no server bound, -200 when the semaphore wait fails. */
int func_00123A10(int arg0) {
    char *cd = D_00159B00;
    int r;

    if (*(int *)(cd + 0x24) == 0) {
        return -100;
    }
    if (func_00118CC0(D_00132EAC) < 0) {
        return -200;
    }
    D_00159B80 = arg0;
    r = func_0011B4C8(cd, 3, 1, &D_00159B80, 0x30, D_0015B0C0, 4, 0, 0);
    if (r == 0) {
        D_00132EA8 = 3;
    } else {
        func_00118C90(D_00132EAC);
    }
    return r;
}

extern char D_00159B00[];
extern int D_00132EAC;
extern int D_00159B80;
extern char D_0015B0C0[];
extern int func_00118CC0(int);
extern int func_0011B4C8();

/* RPC 4, the same shape with three request words. `buf` is assigned
   after the semaphore call, so retail builds its address in a temp. */
int func_00123AC8(int arg0, int arg1, int arg2) {
    char *cd = D_00159B00;
    int *buf;
    int r;

    if (*(int *)(cd + 0x24) == 0) {
        return -100;
    }
    if (func_00118CC0(D_00132EAC) < 0) {
        return -200;
    }
    buf = &D_00159B80;
    buf[0] = arg0;
    buf[4] = arg1;
    buf[5] = arg2;
    r = func_0011B4C8(cd, 4, 1, buf, 0x30, D_0015B0C0, 4, 0, 0);
    if (r == 0) {
        D_00132EA8 = 4;
    } else {
        func_00118C90(D_00132EAC);
    }
    return r;
}

/*
 * Unpack a scratchpad-resident descriptor: arg0 is forced into the SPR
 * window (| 0x20000000), then two counted byte runs are copied out of
 * it -- the one at +0x10 to the pointer at +0x8 for the count at +0x0,
 * and the one at +0x50 to the pointer at +0xC for the count at +0x4.
 * The counts are re-read from the descriptor on every iteration, so
 * they are written out in full rather than cached.
 *
 * The explicit zero-trip guard around each do/while is what makes this
 * match, and it is worth knowing why. Written as a plain `for`, the
 * source base (p + 0x10) is loop-invariant, so GCC hoists it ABOVE the
 * guard; retail computes it BELOW, between the guard and the loop head.
 * That one position shifts the loop head by a word, which in turn costs
 * the alignment nop retail carries -- two instructions per loop, 16
 * bytes over the two loops. Spelling the guard yourself puts the
 * invariant where retail has it. (Folding the +0x10 into the load
 * offset instead of keeping a base pointer costs another 8.)
 */
void func_00123BA0(void *arg0) {
    char *p = (char *)((unsigned int)arg0 | 0x20000000);
    unsigned char *src;
    char *d;
    int i;

    if (*(int *)(p + 0x0) != 0) {
        d = *(char **)(p + 0x8);
        i = 0;
        if (i < *(int *)(p + 0x0)) {
            src = (unsigned char *)(p + 0x10);
            do {
                *d++ = src[i];
                i++;
            } while (i < *(int *)(p + 0x0));
        }
    }
    if (*(int *)(p + 0x4) != 0) {
        d = *(char **)(p + 0xC);
        i = 0;
        if (i < *(int *)(p + 0x4)) {
            src = (unsigned char *)(p + 0x50);
            do {
                *d++ = src[i];
                i++;
            } while (i < *(int *)(p + 0x4));
        }
    }
}

extern char D_00159B00[];
extern int D_00132EAC;
extern int func_00118CC0(int);
extern void func_00118C90(int);
extern int D_00159B80;
extern char D_0015A000[];
extern char D_0015B0C0[];
extern int func_0011AD70(void *, int);
extern int func_0011B4C8();
extern int D_00132EA8;
extern void func_00123BA0(void *);

int func_00123C30(int fd, void *buf, int nbyte) {
    char *cd = D_00159B00;
    int *p;
    char *next;
    int r;

    if (*(int *)(cd + 0x24) == 0) {
        return -100;
    }
    if (func_00118CC0(D_00132EAC) < 0) {
        return -200;
    }
    p = &D_00159B80;
    next = D_0015A000;
    p[0] = fd;
    p[7] = (int)next;
    func_0011AD70((void *)(p[6] = (int)buf), p[3] = nbyte);
    func_0011AD70(next, 0xC0);
    r = func_0011B4C8(cd, 5, 1, p, 0x30, D_0015B0C0, 4, func_00123BA0, next);
    if (r == 0) {
        D_00132EA8 = 5;
    } else {
        func_00118C90(D_00132EAC);
    }
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123D48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123EC0);

extern int func_00118BE0(void);
extern int func_00118C00(void);
extern void func_00123EC0(int, unsigned short, void *);

/* mcDelayThread (libmc): sleep this thread until an alarm of `time`
   h-lines wakes it: SetAlarm (func_00118B20) with mcHearAlarm
   (func_00123EC0) on GetThreadId(), then SleepThread(). */
void func_00123EE8(int time) {
    func_00118B20((unsigned short)time, func_00123EC0, func_00118BE0());
    func_00118C00();
}

extern char D_00159B00[];
extern int D_00132EAC;
extern char D_0015B0C0[];
extern void func_00123EE8(int);

/* sceMcSync(mode, &cmd, &result): polls the pending memory card command
   (or waits for it when mode is 0) and hands back its result. Exact
   only under 2.9-ee: 2.95.3's gcse leaves two extra %hi copies. */
int func_00123F30(int mode, int *cmd, int *result) {
    int r;

    if (D_00132EA8 == 0) {
        return -1;
    }
    r = func_0011B6B8(D_00159B00);
    if (mode == 0 && r != 0) {
        while (func_0011B6B8(D_00159B00) != 0) {
            func_00123EE8(0x3C);
        }
        r = 0;
    }
    r = (r == 0);
    if (cmd != 0) {
        *cmd = D_00132EA8;
    }
    if (r != 0) {
        D_00132EA8 = 0;
        if (result != 0) {
            *result = *(int *)D_0015B0C0;
        }
        func_00118C90(D_00132EAC);
    }
    return r;
}

extern int *D_00159B28;
extern int *D_00159B2C;
extern int *D_00159B30;

void func_00124010(int arg0) {
    char *p = (char *)(arg0 | 0x20000000);
    if (D_00159B28 != 0) *D_00159B28 = *(int *)(p + 0x0);
    if (D_00159B2C != 0) *D_00159B2C = *(int *)(p + 0x4);
    if (D_00159B30 != 0) *D_00159B30 = *(int *)(p + 0x90);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124068);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001241E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124338);

extern char D_00159B00[];
extern int D_00132EAC;
extern int func_00118CC0(int);
extern void func_00118C90(int);
extern char D_00159BB0[];
extern void *func_00116B00(void *, const void *, int);
extern char D_0015B0C0[];
extern int func_0011B4C8();
extern int D_00132EA8;

/* sceMcDelete(port, slot, fname): rejects a null/empty fname (SignalSema,
   return -210), else strncpy's it into the shared sifParamFname
   descriptor's name field (D_00159BB0+0x14), fills in port/slot/flags
   and force-terminates at the max length, then runs RPC 0xF (delete)
   through cd_base. Nonzero (queued) result SignalSemas and returns the
   handle; 0 records the command and returns 0 -- the same idiom as
   func_00123C30/sceMcRead. */
int func_00124410(int port, int slot, char *fname) {
    char *cd = D_00159B00;
    char *fp;
    int r;

    if (*(int *)(cd + 0x24) == 0) {
        return -100;
    }
    if (func_00118CC0(D_00132EAC) < 0) {
        return -200;
    }
    if (fname == 0 || *fname == 0) {
        func_00118C90(D_00132EAC);
        return -210;
    }
    func_00116B00(D_00159BB0 + 0x14, fname, 0x3FF);
    fp = D_00159BB0;
    *(int *)(fp + 0x0) = port;
    *(int *)(fp + 0x4) = slot;
    fp[0x413] = 0;
    *(int *)(fp + 0x8) = 0;
    r = func_0011B4C8(cd, 0xF, 1, fp, 0x414, D_0015B0C0, 4, 0, 0);
    if (r == 0) {
        D_00132EA8 = 0xF;
    } else {
        func_00118C90(D_00132EAC);
    }
    return r;
}

extern char D_00159B00[];
extern int D_00132EAC;
extern int D_00159B80;
extern char D_0015B0C0[];
extern int func_00118CC0(int);
extern int func_0011B4C8();

/* RPC 0x11, the same shape with two request words. */
int func_00124528(int arg0, int arg1) {
    char *cd = D_00159B00;
    int *buf;
    int r;

    if (*(int *)(cd + 0x24) == 0) {
        return -100;
    }
    if (func_00118CC0(D_00132EAC) < 0) {
        return -200;
    }
    buf = &D_00159B80;
    buf[1] = arg0;
    buf[2] = arg1;
    r = func_0011B4C8(cd, 0x11, 1, buf, 0x30, D_0015B0C0, 4, 0, 0);
    if (r == 0) {
        D_00132EA8 = 0x11;
    } else {
        func_00118C90(D_00132EAC);
    }
    return r;
}

extern int func_0011B4C8();
extern char D_0015B108[];
extern int D_0015B180;

int func_001245F8(void) {
    func_0011B4C8(D_0015B108, 0x80000963, 0, &D_0015B180, 0x400,
                  &D_0015B180, 0x400, 0, 0);
    return D_0015B180;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124650);

extern void func_00124B60(void *, ...);
extern char D_00153658[];

/* Same RPC shape as func_001245F8 above (9 args: $4-$11 plus one stack
   slot), but with a different command id and an error path.

   The request word goes into the buffer at +4. It has to be written
   through a local pointer, not as (&D_0015B180)[1]: the latter folds to
   the symbol D_0015B180+4, so the compiler builds THAT address and then
   subtracts 4 to pass the buffer. With `buf`, one lui/addiu serves both
   the store and the two pointer arguments, as retail does.

   The test is written >= 0 so the error path is the fall-through and the
   success path is the branch target, letting the result load sit in the
   bgez delay slot. */
int func_001247E8(int arg0) {
    int *buf = &D_0015B180;

    buf[1] = arg0;
    if (func_0011B4C8(D_0015B108, 0x80000904, 0, buf, 0x400,
                      buf, 0x400, 0, 0) >= 0) {
        return D_0015B180;
    } else {
        func_00124B60(D_00153658);
        return 0;
    }
}

extern int D_0015B180;
extern char D_0015B108[];
extern int func_0011B4C8();
extern void func_00124B60(void *, ...);
extern char D_00153678[];

/* sceDbcCreateSocket (libdbc): copy the caller's socket record (five
   header words, then a 16-byte name) into the RPC buffer D_0015B180, set
   its port (arg1, word 10) and mode (arg2, word 11), then run the
   create-socket RPC (0x80000901) through cd_base. Prints and returns 0
   on failure, else the reply's word 9.

   The header words are copied as pointers. Their alias set then differs
   from the int port/mode stores, so the header loads need not wait for
   those stores; the scheduler then places `i = 0` ahead of them, and the
   loop registers come out in $t0-$t2 as in retail. namesrc/namedst are
   precomputed so each byte address is one base+index add, and the call
   re-takes &D_0015B180 for its buffer arguments. */
int func_00124858(void *arg0, int arg1, int arg2) {
    int *buf = &D_0015B180;
    char *namesrc = (char *)arg0 + 0x14;
    char *namedst = (char *)buf + 0x14;
    int i;

    buf[10] = arg1;
    buf[11] = arg2;
    ((void **)buf)[0] = ((void **)arg0)[0];
    ((void **)buf)[1] = ((void **)arg0)[1];
    ((void **)buf)[2] = ((void **)arg0)[2];
    ((void **)buf)[3] = ((void **)arg0)[3];
    ((void **)buf)[4] = ((void **)arg0)[4];
    for (i = 0; i < 0x10; i++) {
        namedst[i] = namesrc[i];
    }
    if (func_0011B4C8(D_0015B108, 0x80000901, 0, &D_0015B180, 0x400,
                       &D_0015B180, 0x400, 0, 0) < 0) {
        func_00124B60(D_00153678);
        return 0;
    }
    return buf[9];
}

extern void func_00119288(void *, void *);
extern int func_0011D960(void);
/* EIntr returns the previous interrupt state; the file declares it void.
   A call that returns a value changes how the lookup after it is
   allocated. */
extern int func_0011D9A8_i(void) __asm__("func_0011D9A8");
extern char D_0015B580[];
extern int D_0015B600[];
extern void *memcpy(void *, const void *, unsigned int);
extern int D_0015B180;
extern char D_0015B108[];
extern int func_0011B4C8();
extern void func_00124B60(void *, ...);
extern char D_001536B8[];

/*
 * sceDbcGetDepNumber(port) (libdbc): write back the 0x80-byte DMA buffer
 * D_0015B580 (func_00119288), then with interrupts off (DIntr/EIntr)
 * copy its first 0x40 bytes into the link-state table D_0015B600. A port
 * whose state is not 1 (linked) returns -12. Otherwise RPC 0x80000903
 * with the port as the request word; returns the reply's second word, or
 * reports the failure (func_00124B60) and returns 0.
 *
 * The RPC buffer is re-taken as &D_0015B180 for the call's arguments and
 * `buf` is only assigned where it is used, so the table base and the
 * buffer share retail's saved register.
 */
int func_00124920(int port) {
    int *buf;

    func_00119288(D_0015B580, D_0015B580 + 0x80);
    func_0011D960();
    memcpy(D_0015B600, D_0015B580, 0x40);
    func_0011D9A8_i();
    if (D_0015B600[port] != 1) {
        return -0xC;
    }
    buf = &D_0015B180;
    buf[0] = port;
    if (func_0011B4C8(D_0015B108, 0x80000903, 0, &D_0015B180, 0x400,
                       &D_0015B180, 0x400, 0, 0) < 0) {
        func_00124B60(D_001536B8);
        return 0;
    }
    return buf[1];
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124A68);

extern char D_001537A0[];

/* RPC 0x8000091A round trip on D_0015B180 (the buffer is both request
   and reply), copying the reply's bytes to arg3. `r` is assigned in both
   arms of the copy guard with one return; two returns would be
   cross-jumped into one. */
int func_00124A70(int arg0, int arg1, int *arg2, char *arg3) {
    int *buf = &D_0015B180;
    unsigned char *src;
    int i;
    int r;

    buf[0] = arg0;
    buf[1] = arg1;
    buf[2] = *arg2;
    if (func_0011B4C8(D_0015B108, 0x8000091A, 0, buf, 0x400, buf, 0x400, 0, 0) < 0) {
        func_00124B60(D_001537A0);
        return 0;
    }
    r = buf[0x23];
    if (r >= 0) {
        *arg2 = buf[2];
        i = 0;
        if (i < buf[2]) {
            src = (unsigned char *)buf + 0xC;
            do {
                arg3[i] = src[i];
                i++;
            } while (i < buf[2]);
            r = buf[0x23];
        } else {
            r = buf[0x23];
        }
    }
    return r;
}

/* The library's debug print, compiled out to an empty varargs function.
   Only Sony's 2.9-ee gives retail's shape, spilling $5-$11 and no FP
   argument registers; the game's 2.95.3 also saves $f12-$f18. That is
   how this file was found to be built with 2.9-ee (Makefile.sn). */
void func_00124B60(void *fmt, ...) {
}

/*
 * Reverted: size mismatch (ours=72, retail=60 -- 12 bytes over).
 *
 *   extern int D_00132ED0;
 *   extern char D_0015B640_b[] __asm__("D_0015B640");
 *
 *   int func_00124B88(void) {
 *       int p = (int)D_0015B640_b;
 *       int end = p + 0x3300;
 *       D_00132ED0 = 1;
 *       do {
 *           *(int *)(p + 0) = 0;
 *           *(int *)(p + 4) = 0;
 *           *(int *)(p + 8) = 0;
 *           p += 0x330;
 *       } while (p < end);
 *       return 1;
 *   }
 *
 * Zeroes the +0x00/+0x04/+0x08 fields of all 16 entries in the
 * 0x330-stride table D_0015B640, then marks it initialized. Semantics
 * certain; retail's loop is a plain ascending `bnez` with the
 * comparison as `slt` (signed) and no duplicated body. Because
 * end-start (0x3300) is an exact multiple of the stride (0x330) --
 * always 16 iterations -- this compiler can prove the trip count at
 * compile time and reverses the loop into a `bnezl`-based down-count
 * with the first store duplicated as the branch's delay-slot
 * instruction, regardless of whether the cursor is typed `int`,
 * `unsigned int`, or `char *` (tried all three; `int` at least
 * recovers retail's `slt`, but the reversal itself doesn't go away).
 * A different case from the established "unsigned loop counter blocks
 * reversal" lever ([[rac1-64bit-field-type]]'s sibling precedent,
 * e.g. func_0011DCB8) -- that lever stops reversal driven by a small
 * loop-counter comparison, not one driven by a statically-divisible
 * address range.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00124B88);

extern int func_00124858(void *, int, int);
extern void func_001153FC(void *, int, int);
extern void *memcpy(void *, const void *, unsigned int);

extern char D_0015B640_b[] __asm__("D_0015B640");

typedef struct {
    int w0;
    int mode;
    int w2;
    int w3;
    int w4;
    char name[16];
} Pad2SockParam;

/* scePad2CreateSocket(param, buf). c5: `desc.w0 = 0` moved inside the
   else (null) block instead of shared before the if, probing the last
   1-byte beqz/beql (branch-likely) difference from c4. */
int func_00124BC8(void *param, char *buf) {
    Pad2SockParam desc;
    int r;
    int i;
    char *p;

    if (((int)buf & 0x3F) != 0) {
        return -1;
    }
    if (param != 0) {
        int *src = (int *)param;
        desc.w0 = src[0];
        desc.w2 = src[1];
        desc.w3 = src[2];
        desc.w4 = src[3];
        memcpy(desc.name, (char *)param + 0x10, 16);
    } else {
        desc.w0 = 0;
        desc.w2 = 0;
        desc.w3 = 0;
        desc.w4 = 0;
        desc.name[0] = 0;
    }
    desc.w0 |= 1;
    desc.mode = 1;
    r = func_00124858(&desc, (int)buf, (int)buf + 0x80);
    if (r < 0) {
        return r;
    }
    *(int *)(D_0015B640_b + r * 0x330) = 1;
    *(char **)(D_0015B640_b + r * 0x330 + 0xC) = buf;
    p = buf;
    for (i = 1; i >= 0; i--) {
        p[0] = 0;
        *(int *)(p + 0x7C) = 0;
        p[1] = 0;
        p[3] = 0;
        p[2] = 0;
        *(int *)(p + 4) = 0;
        func_001153FC(p + 0x1C, 0xFF, 0x20);
        p += 0x80;
    }
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124D10);

/* 0x330-stride entry table. Declared as a real struct array, not
   `char[]` + byte offset: the two are not codegen-equivalent. Indexing a
   typed array emits `addu base,index`; the char-pointer form emits
   `addu index,base`, and reordering the C addition cannot change it
   because GCC canonicalises the PLUS first. See func_00125078 and the
   same lever on D_001E8F80 in text.c. */
typedef struct {
    char unk_00[4];
    int  unk_04;
    int  unk_08;
    char *unk_0C;
    char unk_10[0x320];
} Ent330;
extern Ent330 D_0015B640[];

extern int func_00125020(int);
extern int func_00125160(unsigned char *, int *);

/* The command word, built as bitfields of an `unsigned long` union: the
   union stays in a register, each insert is a 64-bit and/or, and the
   int view is the dsll32/dsra32 truncation retail passes in $a1. */
typedef union {
    struct {
        unsigned long f0 : 14;
        unsigned long f1 : 2;
        unsigned long f2 : 8;
        unsigned long f3 : 8;
    } b;
    int i;
} McCmd;

/* Opens entry `port` of the table if it is not (func_00125020), sends
   command {2, 3, 2, 1} through func_00124A70, expands the 40-bit mask it
   returns into the entry's slots (func_00125160) and returns the result
   word func_00124A70 filled in. */
int func_00124DF0(int port, void *arg1) {
    McCmd cmd;
    int result;
    int r;

    if (D_0015B640[port].unk_04 == 0) {
        if (func_00125020(port) < 0) {
            return -1;
        }
    }
    cmd.b.f0 = 2;
    cmd.b.f1 = 3;
    cmd.b.f2 = 2;
    cmd.b.f3 = 1;
    r = func_00124A70(port, cmd.i, &result, arg1);
    if (r < 0) {
        return r;
    }
    func_00125160(arg1, (int *)D_0015B640[port].unk_10);
    return result;
}

extern int func_001250E0(int);
extern void *func_00125078(int);

/* A single stack-resident local shared by both call paths below: its
   byte 0 is the state code every path eventually returns (retail's two
   "side" sub-paths converge on one `sb`/`lbu` round trip through it,
   and the RPC path stages its return through the same byte), and the
   word at +4 is the uninitialised in/out count func_00124A70 wants. */
typedef struct {
    unsigned char state;
    char pad[3];
    int result;
} Pad2Buf;

/* scePad2GetState(port): link the pad if needed (func_00125020), then
   ask func_001250E0 (scePad2CheckDma) whether new data has arrived.
   If so, fetch the active "side" struct (func_00125078) and take its
   state byte directly if it looks initialised (+0x4 != 0); otherwise
   try one more relink and use it anyway on success, else forget this
   port's link and return 0. If CheckDma says nothing changed, build
   the RPC command word (the same McCmd bitfield union as
   func_00124DF0's {2,3,2,1}, here {0xC,2,1,1}) and round-trip it
   through func_00124A70; return its state byte on success, 0 on
   failure. */
int func_00124EE0(int port) {
    Pad2Buf buf;
    char *side;
    McCmd cmd;

    if (D_0015B640[port].unk_04 == 0) {
        if (func_00125020(port) < 0) {
            return 0;
        }
    }
    if (func_001250E0(port) != 0) {
        side = func_00125078(port);
        if (*(int *)(side + 0x4) != 0) {
            buf.state = side[0];
        } else if (func_00125020(port) >= 0) {
            buf.state = side[0];
        } else {
            D_0015B640[port].unk_04 = 0;
            return 0;
        }
        return buf.state;
    }
    cmd.b.f0 = 0xC;
    cmd.b.f1 = 2;
    cmd.b.f2 = 1;
    cmd.b.f3 = 1;
    if (func_00124A70(port, cmd.i, &buf.result, (char *)&buf) < 0) {
        return 0;
    }
    return buf.state;
}

extern int func_00124920(int);

/*
 * Close, not exact (28/84), same size. Logic confirmed: call
 * func_00124920(arg0); if it returns >= 0, mark entry arg0 of the
 * 0x330-stride table D_0015B640 as {+4 = 1, +8 = result}; return the
 * result either way.
 *
 * Retail computes the entry address once into $5, copies it to $3, and
 * stores with displacements 8($5) and 4($3) -- a redundant register
 * copy. Writing the address once into a `char *e` local coalesces to a
 * single register and comes out 4 bytes SHORT (a size mismatch, so not
 * keepable); recomputing the address per store restores the right size
 * but makes the compiler fold the +4 into the address constant instead
 * of using a store displacement. Two pointer locals (`f = e`) coalesce
 * straight back to one register. So the size and the addressing form
 * are reachable separately here but not together.
 */

int func_00125020(int arg0) {
    int t = func_00124920(arg0);
    if (t >= 0) {
        D_0015B640[arg0].unk_04 = 1;
        D_0015B640[arg0].unk_08 = t;
    }
    return t;
}

extern void func_00119288(void *a, void *b);

/*
 * Close, not exact (3/100), same size. Logic confirmed: take entry
 * arg0 of the 0x330-stride table D_0015B640, follow its +0xC pointer,
 * record that pointer and pointer+0x80 in a two-slot stack array, call
 * func_00119288(p, p+0x100), then return whichever slot has the smaller
 * +0x7C field -- retail indexes the array with the `slt` result
 * directly, which plain C reproduces.
 *
 * The three differing bytes were one instruction: retail forms the entry
 * address as `addu $2,$2,$4` (base, index) where we emitted
 * `addu $a0,$a0,$v0` (index, base). Writing the addition the other way
 * round changes nothing -- GCC canonicalises the PLUS -- and this was
 * recorded here as "the allocator's destination choice, not operand
 * order", which was wrong. It is operand order, and it is steerable:
 * give the table a real element type and index it. See Ent330 above.
 */
void *func_00125078(int arg0) {
    char *p = D_0015B640[arg0].unk_0C;
    char *slot[2];

    slot[0] = p;
    slot[1] = p + 0x80;
    func_00119288(p, p + 0x100);
    return slot[*(int *)(slot[0] + 0x7C) < *(int *)(slot[1] + 0x7C)];
}

extern int D_00132ED8[];

/* Has entry arg0's current pair changed? Follow entry arg0 of the
   0x330-stride table to its buffer p; the pair is p+0x7C and p+0x80+0x7C.
   If the first is zero, or both equal the cached pair D_00132ED8[0..1],
   report 0; otherwise cache them and report 1. The two-slot stack array
   is retail's (the same idiom as func_00125078). Exact under this file's
   2.9-ee; under 2.95.3 it was a word long. */
/* The old note's decode, exact since 001236F0.c builds with 2.9-ee. */
int func_001250E0(int arg0) {
    char *p = D_0015B640[arg0].unk_0C;
    char *slot[2];

    slot[0] = p;
    slot[1] = p + 0x80;
    if (*(int *)(p + 0x7C) == 0 ||
        (D_00132ED8[0] == *(int *)(p + 0x7C) &&
         D_00132ED8[1] == *(int *)(slot[1] + 0x7C))) {
        return 0;
    }
    D_00132ED8[0] = *(int *)(slot[0] + 0x7C);
    D_00132ED8[1] = *(int *)(slot[1] + 0x7C);
    return 1;
}

/* Expand a 40-bit mask into 40 four-word slots. For each set bit, record
   slot type 1 plus the running (a, b) pair; entries 0x10..0x1F and
   0x23..0x26 are "wide" (size 8) and only advance a, everything else is
   size 1 and advances b, rolling a over every eighth. Clear bits zero
   the slot's type and both counters. Initialising b before the loop
   sets i gives i the shorter live range, so this file's compiler
   (2.9-ee) allocates it first, as retail. */
int func_00125160(unsigned char *src, int *out) {
    int bit;
    int a;
    int i;
    int b;

    bit = 0;
    a = 0;
    b = 0;
    for (i = 0; i < 0x28; i++) {
        if (((*src >> bit) & 1) != 0) {
            out[0] = 1;
            out[2] = a;
            out[3] = b;
            if ((i >= 0x10 && i < 0x20) || (i >= 0x23 && i < 0x27)) {
                out[1] = 8;
                a++;
            } else {
                b++;
                out[1] = 1;
                if ((b & 7) == 0) {
                    a++;
                    b = 0;
                }
            }
        } else {
            out[0] = 0;
            out[2] = 0;
            out[3] = 0;
        }
        bit++;
        if ((bit & 7) == 0) {
            src++;
            bit = 0;
        }
        out += 4;
    }
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125210);
