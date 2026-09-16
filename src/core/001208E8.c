#include "common.h"
#include "structs.h"

/*
 * core_text object 0x1208E8-0x121750. Boundaries are retail's linker fill
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
extern void func_0011AA38(int arg0, int arg1, int arg2);
extern void func_0011B710(void);
extern int func_0011CBC8(int arg0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001208E8);

extern void func_001208E4();
extern void func_00118B20(int, void *, int);
extern void func_00118C80(int);

/* Same stack-descriptor idiom as func_0011BBF0. The second argument to
   func_00118B20 is the address of func_001208E4's *second* instruction --
   retail builds it as one %hi/%lo pair on `func_001208E4 + 4`, so it is a
   code address the source names by symbol, not a separate label.

   Not exact: 24/104, same size. `unsigned short arg0` is confirmed -- it
   is what puts `andi $17,$4,0xFFFF` in the prologue rather than at the
   call site (declaring it `int` and masking at the call costs 4 more
   bytes of mismatch). The rest is the same prologue-scheduling residual
   as func_0011DC50: retail interleaves the three descriptor stores
   between the `$16` and `$31` saves, this build front-loads `sd $31`. */
void func_00120910(unsigned short arg0) {
    int buf[8];
    int h;
    buf[5] = 0;
    buf[2] = 0;
    buf[1] = 1;
    h = func_00118C70(buf);
    func_00118B20(arg0, (char *)func_001208E4 + 4, h);
    func_00118CB0(h);
    func_00118C80(h);
}

extern int func_00120F30(int);
extern int func_0011D960(void);
extern void func_0011D9A8(void);
extern void *D_00159840;

void *func_00120978(void *arg0) {
    void *old;
    int r;
    if (func_00120F30(1) != 0) {
        return 0;
    }
    r = func_0011D960();
    old = D_00159840;
    D_00159840 = arg0;
    if (r != 0) {
        func_0011D9A8();
    }
    return old;
}

/*
 * Reverted (size mismatch: 144 vs retail's 160). Semantics are certain:
 *
 *   void func_001209D8(int *arg0) {
 *       D_00131414 = *arg0;
 *       D_00131418 = D_00131414;
 *       if (D_00131414 == 0xB) {
 *           D_00131414 = 0;
 *           D_001313F0 = 0;
 *           return;
 *       }
 *       func_00118CA0(D_001313E8);
 *       if (D_001313D4 != 0 && D_00159840 != 0) {
 *           func_00118CA0(D_001313E0);
 *       } else {
 *           D_001313F0 = 0;
 *       }
 *       D_00131414 = 0;
 *   }
 *
 * Sixteen bytes short for two reasons, in equal parts:
 *  - retail re-LOADS D_00131414 after storing it, twice (store, load,
 *    store elsewhere, load, compare), where this compiler forwards the
 *    stored value. `volatile` would buy those 8 bytes back, but it is
 *    not something the rest of the tree spells and it would be guessing
 *    at retail's source rather than recovering it.
 *  - both func_00118CA0 calls have a bare `nop` in their delay slots in
 *    retail and we schedule the following load into them -- the known
 *    per-site delay-slot difference, not a rule (see docs).
 * Even with volatile the second half would still block it, so this
 * stays a stub.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_001209D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120A78);

extern int D_001313E0;
extern int D_001313E8;
extern int D_001313EC;
extern int D_001313F0;

/*
 * REVERTED (size mismatch: ours 136, retail 148). Logic is certain --
 * the same one-shot registration idiom as func_0011B710, run only while
 * either handle is still -1:
 *
 *   void func_00120B28(void) {
 *       int buf[8];
 *
 *       if (D_001313E8 == -1 || D_001313EC == -1) {
 *           buf[5] = 0;
 *           buf[1] = 1;
 *           buf[2] = 1;
 *           D_001313E8 = func_00118C70(buf);
 *           D_001313EC = func_00118C70(buf);
 *           buf[2] = 0;
 *           D_001313E0 = func_00118C70(buf);
 *           D_001313F0 = 0;
 *       }
 *   }
 *
 * Three instructions short, and all three are retail's compiler being
 * WORSE at tail merging rather than anything in the source: retail
 * materialises %hi(D_001313EC) separately in each arm of the ||, keeps
 * a separate `addiu $2,$0,1` per arm, and needs a `b` to rejoin. This
 * compiler hoists the lui above the test and merges the two arms into
 * one block. Writing the guard inverted with an early return
 * (`if (a != -1 && b != -1) return;`) produces the identical 34
 * instructions, so the block duplication is not reachable from the
 * condition's spelling.
 *
 * The buf store order is also rotated (ours 2,5,1 against retail's
 * 5,1,2) -- the same unexplained rotation already documented on
 * func_0011B710, which is this function's twin.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00120B28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120BC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120C58);

extern int D_001313E4;
extern int D_001313FC;
extern void func_00120C58(void);

int func_00120CA0(void) {
    int r;

    D_001313E4 = 1;
    r = func_0011D960();
    func_0011AA38(0x80000012, (int)((char *)func_00120C58 + 8), 0);
    if (r != 0) {
        func_0011D9A8();
    }
    D_001313E4 = 0;
    D_001313FC = 1;
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120D18);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120D28);

extern int func_0011B4C8();
extern int func_00120D28(int);
extern void func_00118C90(int);
extern char D_00132590[];
extern int D_00131440;

/*
 * Sibling of func_00121930 below (and of the func_0011CBC8 pair): open
 * the service, run one func_0011B4C8 RPC, then release the lock and
 * hand back the reply. The reply is read back through the uncached
 * mirror of the DMA buffer (| 0x20000000), which is why the address is
 * spelled as an integer or.
 *
 * The RPC test MUST be spelled `>= 0` with the success arm inside the
 * if and the failure path falling through to the end. The obvious
 * inverse -- `if (rpc(...) < 0) { release(); return 0; } ... return r;`
 * -- is 8 bytes short in both siblings, because the early guard's
 * `return 0` and the failure arm's `return 0` then share a tail
 * (`v0 = 0; b epilogue`) and the compiler cross-jumps them into one.
 * Retail keeps two separate zeroings, and laying the arms out this way
 * is what stops the merge. Compare func_0011CBC8 above, where retail
 * DOES share the two exits -- so this is a per-function layout choice
 * that the comparison's spelling controls, not a compiler difference.
 */
int func_00120E98(void) {
    int r;

    if (func_00120D28(2) == 0) {
        return 0;
    }
    if (func_0011B4C8(D_00132590, 0xE, 0, 0, 0, &D_00131440, 4, 0, 0) >= 0) {
        r = *(int *)((unsigned int)&D_00131440 | 0x20000000);
        func_00118C90(D_001313E8);
        return r;
    }
    func_00118C90(D_001313E8);
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120F30);

extern void func_0011A6C8();
extern int func_0011B6B8(void *);
extern char D_00153000[];
extern char D_00132E08[];
extern int D_001313D0;

int func_00120FD0(int arg0) {
    if (arg0 == 0) {
        if (D_001313D0 > 0) {
            func_0011A6C8(D_00153000);
        }
        while (func_0011B6B8(D_00132E08) != 0) {
            func_00120910(0x3C);
        }
        return 0;
    }
    return func_0011B6B8(D_00132E08);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121040);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001211B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121490);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121688);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012174C);
