#include "common.h"
#include "structs.h"

/*
 * core_text object 0x119328-0x119868. Boundaries are retail's linker fill
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

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119328);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119390);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001193F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119460);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001194C8);

/*
 * REVERTED (size mismatch: 220 vs retail's 212). Decode is certain.
 * The two argument structs are the real PS2 kernel ones (from
 * kernel.h): CreateSema takes a 6-int ee_sema_t {count, max_count,
 * init_count, wait_threads, attr, option} -- only max_count and
 * init_count are written, count is genuinely left uninitialized --
 * and CreateThread's struct is 9 ints (only the first 6 are written;
 * retail's field 0 holds the entry function pointer, which doesn't
 * match ps2sdk's documented ee_thread_t field order, so this is
 * likely Sony's own layout, not ps2sdk's reconstruction). Getting
 * BOTH struct sizes right was what closed a 32-byte stack-frame gap
 * (0x60 vs retail's 0x80) to an exact match:
 *
 *   extern int func_00118C70(void *); // CreateSema
 *   extern void func_00118C80(int);   // DeleteSema
 *   extern int func_00118B50(void *); // CreateThread
 *   extern int func_00118B70(int, void *);
 *   extern int func_00118BE0(void);
 *   extern int func_00118BA0(int, int);
 *   extern void func_001194C8(void);
 *   extern int D_0012FCF8, D_00154600;
 *   extern char D_00154200[], D_00166D00[];
 *   extern int D_00154608[2];
 *
 *   typedef struct {
 *       int count, max_count, init_count, wait_threads, attr, option;
 *   } Sema001195A0;
 *   typedef struct {
 *       void (*entry)(void); void *gp; void *stack; int stack_size;
 *       int arg1, arg2, f18, f1C, f20;
 *   } Thread001195A0;
 *
 *   int func_001195A0(void) {
 *       Thread001195A0 thread;
 *       Sema001195A0 sema;
 *       int tid;
 *       if (D_0012FCF8 > 0) goto fail;
 *       sema.max_count = 0xFF;
 *       sema.init_count = 0;
 *       tid = func_00118C70(&sema);
 *       if (tid < 0) goto fail;
 *       D_00154600 = tid;
 *       thread.entry = func_001194C8;
 *       thread.gp = D_00154200;
 *       thread.stack = D_00166D00;
 *       thread.stack_size = 0x400;
 *       thread.arg1 = 0;
 *       thread.arg2 = 0;
 *       tid = func_00118B50(&thread);
 *       D_0012FCF8 = tid;
 *       if (tid < 0) {
 *           func_00118C80(D_00154600);
 *           goto fail;
 *       }
 *       D_00154608[0] = 0;
 *       D_00154608[1] = 0;
 *       func_00118B70(tid, D_00154608);
 *       func_00118BA0(func_00118BE0(), 1);
 *       return D_0012FCF8;
 *   fail:
 *       return -1;
 *   }
 *
 * Two residuals, both 4 bytes: sharing the -1 return between the
 * three failure paths (goto to one `fail:` label, as above) recovered
 * one; retail also tests CreateSema's raw return in $2 directly
 * (`bltz $2,...`) with no register move, where this compiler always
 * inserts one -- tried a bare `if (func_00118C70(&sema) < 0)` (can't,
 * needs the value again right after) and `if ((tid = ...) < 0)`
 * (identical codegen to the plain assign-then-test form). Not
 * reachable from source.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_001195A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119678);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119710);

/*
 * REVERTED (30/68, same size). Semantics are certain -- it is the same
 * "stash a tagged struct on the stack and hand it to func_00118E90"
 * forwarder as func_001197C0/func_001197F8, with four fields:
 *
 *   extern int D_00154A10;
 *   void func_00119718(unsigned short arg0, int arg1, int arg2) {
 *       int buf[4];
 *       buf[1] = arg1;
 *       buf[0] = arg0;                  // andi 0xFFFF from the short
 *       buf[2] = arg2;
 *       buf[3] = (int)&D_00154A10 | 0x20000000;
 *       func_00118E90(1, buf);
 *   }
 *
 * Retail computes the buf[3] tag completely (lui/addiu/lui/or) before
 * any store, then stores 0x4, 0x0, 0x8 and puts 0xC in the call's delay
 * slot. This compiler interleaves the tag arithmetic with the stores and
 * spends the delay slot on the &buf move instead. Tried: natural store
 * order, retail's store order, and hoisting the tag into a leading local
 * (the declaration-order lever) -- all three give 30-32/68, so the
 * scheduling is not reachable from source shape here. The sibling
 * func_001197C0 matches with source order == retail's emitted order,
 * which is why that was tried first; the difference is that this one's
 * buf[3] needs runtime arithmetic and theirs does not.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00119718);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119760);

extern void func_00118E90(int arg0, void *arg1);

void func_00119768(int arg0, signed char arg1) {
    int buf[4];
    buf[0] = arg0;
    buf[1] = arg1;
    func_00118E90(0x3, buf);
}


void func_00119798(int arg0) {
    int local = arg0;
    func_00118E90(0x4, &local);
}

void func_001197C0(int arg0, int arg1, unsigned short arg2) {
    int buf[4];
    buf[0] = arg0;
    buf[1] = arg1;
    buf[2] = arg2;
    func_00118E90(-0x5, buf);
}

void func_001197F8(int arg0, int arg1, unsigned short arg2) {
    int buf[4];
    buf[0] = arg0;
    buf[1] = arg1;
    buf[2] = arg2;
    func_00118E90(-0x6, buf);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119830);

void func_00119840(int arg0) {
    int local = arg0;
    func_00118E90(0x10, &local);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119864);
