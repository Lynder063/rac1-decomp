.align 3
nonmatching func_001EBAF0, 0x58

glabel func_001EBAF0
    /* ECA70 001EBAF0 2D108000 */  daddu      $v0, $a0, $zero
    /* ECA74 001EBAF4 11004004 */  bltz       $v0, .L001EBB3C
    /* ECA78 001EBAF8 2D18A000 */   daddu     $v1, $a1, $zero
    /* ECA7C 001EBAFC 70000524 */  addiu      $a1, $zero, 0x70
    /* ECA80 001EBB00 1400043C */  lui        $a0, %hi(D_0013E650)
    /* ECA84 001EBB04 18284500 */  mult       $a1, $v0, $a1
    /* ECA88 001EBB08 50E68424 */  addiu      $a0, $a0, %lo(D_0013E650)
    /* ECA8C 001EBB0C 1600023C */  lui        $v0, %hi(D_0015F694)
    /* ECA90 001EBB10 94F6428C */  lw         $v0, %lo(D_0015F694)($v0)
    /* ECA94 001EBB14 21106200 */  addu       $v0, $v1, $v0
    /* ECA98 001EBB18 2120A400 */  addu       $a0, $a1, $a0
    /* ECA9C 001EBB1C 7E008384 */  lh         $v1, 0x7E($a0)
    /* ECAA0 001EBB20 07006214 */  bne        $v1, $v0, .L001EBB40
    /* ECAA4 001EBB24 2D100000 */   daddu     $v0, $zero, $zero
    /* ECAA8 001EBB28 74008390 */  lbu        $v1, 0x74($a0)
    /* ECAAC 001EBB2C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* ECAB0 001EBB30 0200632C */  sltiu      $v1, $v1, 0x2
    /* ECAB4 001EBB34 02006014 */  bnez       $v1, .L001EBB40
    /* ECAB8 001EBB38 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L001EBB3C:
    /* ECABC 001EBB3C 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L001EBB40:
    /* ECAC0 001EBB40 0800E003 */  jr         $ra
    /* ECAC4 001EBB44 00000000 */   nop
endlabel func_001EBAF0
