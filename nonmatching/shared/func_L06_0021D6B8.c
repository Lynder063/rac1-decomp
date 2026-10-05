/* NON_MATCHING func_L06_0021D6B8 -- src/overlays/shared/help_0021D6B8.c
 * Best so far: BYTES 120/156 (23.1% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   copies the %hi half (`daddu $a2,$v0,$zero`) and re-forms it in the second beq's delay slot
 *   (`addiu $a1,$a2,%lo`), while our compiler keeps one copy in $a1 for both blocks (everything else,
 *   instruction for instruction, already matches, so only the alloc/reg number differs). p2 (longhand
 *   first access) and p3 (two separate `if`s, which also un-merges the two return-0 blocks and drops
 *   to 144) are worse. Unblocking it needs the source shape that stops gcc's reload CSE from sharing
 *   the one base address across the branch -- most likely the `||` condition spelled so the first
 *   block's copy is dead before the branch, as in the matched func_L00_00205618 whose ternary
 *   condition leaves the %hi half needing its own register.
 */
extern unsigned char D_0013F450[] NOT_SDA;
typedef struct { char pad[0x24]; int v; char pad2[0x24]; } Rec;
extern Rec D_L06_0017A340[];
extern int func_L00_0020DB30(int);

// Looks up a value in a 0x4C-byte record table, gated on the game state flags.
int func_L06_0021D6B8(int a) {
    char *g = (char *)D_0013F450;
    int c = *(unsigned char *)(g + 0x20A4);
    if (c == 1 || c == 3) return 0;
    if (*(int *)(g + 0x22A8) == 1) return 0x54;
    if (a == 0) return 0;
    if (*(unsigned char *)(g + 0x20A8) == 0) return 0;
    if (*(unsigned char *)(g + 0x20AA) == 0) return 0;
    if (*(short *)(g + 0x22C8) != 0) return 0;
    return D_L06_0017A340[func_L00_0020DB30(0)].v;
}