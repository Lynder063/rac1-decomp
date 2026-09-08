.align 3
nonmatching func_001EBAF0, 0x58

glabel func_001EBAF0
    /* ECA70 001EBAF0 2D108000 */  daddu      $2, $4, $0
    /* ECA74 001EBAF4 11004004 */  bltz       $2, .L001EBB3C
    /* ECA78 001EBAF8 2D18A000 */   daddu     $3, $5, $0
    /* ECA7C 001EBAFC 70000524 */  addiu      $5, $0, 0x70
    /* ECA80 001EBB00 1400043C */  lui        $4, %hi(D_0013E650)
    /* ECA84 001EBB04 18284500 */  mult       $5, $2, $5
    /* ECA88 001EBB08 50E68424 */  addiu      $4, $4, %lo(D_0013E650)
    /* ECA8C 001EBB0C 1600023C */  lui        $2, %hi(D_0015F694)
    /* ECA90 001EBB10 94F6428C */  lw         $2, %lo(D_0015F694)($2)
    /* ECA94 001EBB14 21106200 */  addu       $2, $3, $2
    /* ECA98 001EBB18 2120A400 */  addu       $4, $5, $4
    /* ECA9C 001EBB1C 7E008384 */  lh         $3, 0x7E($4)
    /* ECAA0 001EBB20 07006214 */  bne        $3, $2, .L001EBB40
    /* ECAA4 001EBB24 2D100000 */   daddu     $2, $0, $0
    /* ECAA8 001EBB28 74008390 */  lbu        $3, 0x74($4)
    /* ECAAC 001EBB2C FFFF6324 */  addiu      $3, $3, -0x1
    /* ECAB0 001EBB30 0200632C */  sltiu      $3, $3, 0x2
    /* ECAB4 001EBB34 02006014 */  bnez       $3, .L001EBB40
    /* ECAB8 001EBB38 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L001EBB3C:
    /* ECABC 001EBB3C 2D100000 */  daddu      $2, $0, $0
.align 2
  .L001EBB40:
    /* ECAC0 001EBB40 0800E003 */  jr         $31
    /* ECAC4 001EBB44 00000000 */   nop
endlabel func_001EBAF0
