#include "common.h"
#include "structs.h"

/*
 * core_text object 0x1154C0-0x116070. Boundaries are retail's linker fill
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

void func_001154C0(void) {
}

void func_001154C8(void) {
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001154D0);

/*
 * Close but not exact, same register-allocation-choice category as
 * func_001160D8 above (see its comment) -- identical operations, order,
 * and count as retail, just a different scratch-register assignment
 * among $v0/$v1/$a0 for the three live temporaries (idx, table/bucket,
 * old head). See "Open toolchain questions" in docs/DECOMP_PROGRESS.md.
 *
 * Hash-bucket linked-list insertion: pushes arg1 onto the head of the
 * bucket at table[idx], where idx is read from arg1 itself and table is
 * a pointer stored at offset 0x4C of arg0.
 */
void func_00115578(void *arg0, void *arg1) {
    if (arg1 != 0) {
        int idx = *(int *)((char *)arg1 + 4);
        void **table = *(void ***)((char *)arg0 + 0x4C);
        *(void **)arg1 = table[idx];
        table[idx] = arg1;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001155A8);

int func_001156C0(unsigned int arg0) {
    int count;
    if ((arg0 & 0xFFFF0000u) != 0) {
        count = 0;
    } else {
        count = 0x10;
        arg0 <<= 16;
    }
    if ((arg0 & 0xFF000000u) == 0) {
        count += 8;
        arg0 <<= 8;
    }
    if ((arg0 & 0xF0000000u) == 0) {
        count += 4;
        arg0 <<= 4;
    }
    if ((arg0 & 0xC0000000u) == 0) {
        count += 2;
        arg0 <<= 2;
    }
    if ((int)arg0 >= 0) {
        count += 1;
        if ((arg0 & 0x40000000u) == 0) {
            return 0x20;
        }
    }
    return count;
}

int func_00115748(unsigned int *arg0) {
    unsigned int v = *arg0;
    unsigned int count;

    if ((v & 7) != 0) {
        if ((v & 1) != 0) {
            return 0;
        }
        if ((v & 2) != 0) {
            v >>= 1;
            *arg0 = v;
            return 1;
        } else {
            v >>= 2;
            *arg0 = v;
            return 2;
        }
    }

    count = 0;
    if ((v & 0xFFFF) == 0) {
        count = 0x10;
        v >>= 16;
    }
    if ((v & 0xFF) == 0) {
        count += 8;
        v >>= 8;
    }
    if ((v & 0xF) == 0) {
        count += 4;
        v >>= 4;
    }
    if ((v & 3) == 0) {
        count += 2;
        v >>= 2;
    }
    if ((v & 1) == 0) {
        v >>= 1;
        count += 1;
        if (v == 0) {
            return 0x20;
        }
    }
    *arg0 = v;
    return count;
}

extern void *func_001154D0(void *ptr, int k);

/* newlib mprec.c i2b(): b = Balloc(ptr, 1); b->_x[0] = i; b->_wds = 1;
   return b. Returning the Bigint is what keeps the call result in $v0 and
   puts the working copy in $v1 (the void version stores through $v0 and
   comes out 4 bytes short). Bigint: _wds at +0x10, _x[0] at +0x14. */
/* newlib's i2b (mprec.c): a one-word Bigint holding i. It returns b;
   that return is where retail's $v1 copy comes from. */
void *func_00115808(void *ptr, int i) {
    char *b = func_001154D0(ptr, 1);
    *(int *)(b + 0x14) = i;
    *(int *)(b + 0x10) = 1;
    return b;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115840);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115A70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115B70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115CE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115D50);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115EE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115EE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116068);
