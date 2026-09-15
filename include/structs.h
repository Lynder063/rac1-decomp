#ifndef STRUCTS_H
#define STRUCTS_H

/*
 * Recovered struct layouts.
 *
 * These exist to retire the wall of `*(int *)(s + 0x174)` in src/, which
 * is the long-term goal for this project. They are held to one hard
 * rule: **introducing a struct must not change a single byte**. Field
 * access through a correctly-laid-out struct compiles identically to the
 * offset arithmetic it replaces, so every conversion is verified with
 * tools/sweep_matches.py and reverted if the count moves.
 *
 * Fields are named only where their purpose is actually established.
 * `unkNN` is deliberate: a wrong name is worse than no name, and this
 * file is read as documentation.
 */

/*
 * Node at +0x1E4 of a larger object. Ghidra's caller cross-reference is
 * what identified the embedding: func_00113A70(parent + 0x1E4, 4, 0,
 * parent), i.e. it is constructed in place and handed a back-pointer to
 * its parent, which is what `owner` holds.
 *
 * The four function pointers at 0x20..0x2C are installed together by
 * that same constructor and always with the same four routines, so this
 * is a fixed dispatch block rather than a per-instance vtable.
 */
typedef struct Node1E4 {
    /* 0x00 */ int   unk00;
    /* 0x04 */ int   unk04;
    /* 0x08 */ int   unk08;
    /* 0x0C */ short unk0C;
    /* 0x0E */ short unk0E;
    /* 0x10 */ int   unk10;
    /* 0x14 */ int   unk14;
    /* 0x18 */ int   unk18;
    /* 0x1C */ void *owner;
    /* 0x20 */ void *fn20;
    /* 0x24 */ void *fn24;
    /* 0x28 */ void *fn28;
    /* 0x2C */ void *fn2C;
    /* 0x30 */ char  unk30[0x24];
    /* 0x54 */ int   unk54;
} Node1E4;

#endif /* STRUCTS_H */
