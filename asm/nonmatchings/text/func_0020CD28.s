.align 3
nonmatching func_0020CD28, 0x2C

glabel func_0020CD28
    /* 10DCA8 0020CD28 1400023C */  lui        $2, %hi(D_0013D9B4)
    /* 10DCAC 0020CD2C B4D9438C */  lw         $3, %lo(D_0013D9B4)($2)
    /* 10DCB0 0020CD30 06006010 */  beqz       $3, .L0020CD4C
    /* 10DCB4 0020CD34 1400023C */   lui       $2, %hi(D_0013D4B0)
    /* 10DCB8 0020CD38 01000424 */  addiu      $4, $0, 0x1
    /* 10DCBC 0020CD3C B0D44390 */  lbu        $3, %lo(D_0013D4B0)($2)
    /* 10DCC0 0020CD40 02000224 */  addiu      $2, $0, 0x2
    /* 10DCC4 0020CD44 0800E003 */  jr         $31
    /* 10DCC8 0020CD48 0A108300 */   movz      $2, $4, $3
.align 2
  .L0020CD4C:
    /* 10DCCC 0020CD4C 0800E003 */  jr         $31
    /* 10DCD0 0020CD50 2D100000 */   daddu     $2, $0, $0
endlabel func_0020CD28
    /* 10DCD4 0020CD54 00000000 */  nop
