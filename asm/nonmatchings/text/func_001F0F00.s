.align 3
/* Handwritten function */
nonmatching func_001F0F00, 0x30

glabel func_001F0F00
    /* F1E80 001F0F00 1900013C */  lui        $1, %hi(D_00194200)
    /* F1E84 001F0F04 00422124 */  addiu      $1, $1, %lo(D_00194200)
    /* F1E88 001F0F08 1C00228C */  lw         $2, 0x1C($1)
    /* F1E8C 001F0F0C 1F000320 */  addi       $3, $0, 0x1F /* handwritten instruction */
    /* F1E90 001F0F10 05004004 */  bltz       $2, .L001F0F28
    /* F1E94 001F0F14 24104300 */   and       $2, $2, $3
    /* F1E98 001F0F18 03004310 */  beq        $2, $3, .L001F0F28
    /* F1E9C 001F0F1C 00000000 */   nop
    /* F1EA0 001F0F20 0800E003 */  jr         $31
    /* F1EA4 001F0F24 00000000 */   nop
.align 2
  .L001F0F28:
    /* F1EA8 001F0F28 0800E003 */  jr         $31
    /* F1EAC 001F0F2C FFFF0220 */   addi      $2, $0, -0x1 /* handwritten instruction */
endlabel func_001F0F00
