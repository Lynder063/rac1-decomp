.align 3
nonmatching func_0020CD28, 0x2C

glabel func_0020CD28
    /* 10DCA8 0020CD28 1400023C */  lui        $v0, %hi(D_0013D9B4)
    /* 10DCAC 0020CD2C B4D9438C */  lw         $v1, %lo(D_0013D9B4)($v0)
    /* 10DCB0 0020CD30 06006010 */  beqz       $v1, .L0020CD4C
    /* 10DCB4 0020CD34 1400023C */   lui       $v0, %hi(D_0013D4B0)
    /* 10DCB8 0020CD38 01000424 */  addiu      $a0, $zero, 0x1
    /* 10DCBC 0020CD3C B0D44390 */  lbu        $v1, %lo(D_0013D4B0)($v0)
    /* 10DCC0 0020CD40 02000224 */  addiu      $v0, $zero, 0x2
    /* 10DCC4 0020CD44 0800E003 */  jr         $ra
    /* 10DCC8 0020CD48 0A108300 */   movz      $v0, $a0, $v1
.align 2
  .L0020CD4C:
    /* 10DCCC 0020CD4C 0800E003 */  jr         $ra
    /* 10DCD0 0020CD50 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0020CD28
    /* 10DCD4 0020CD54 00000000 */  nop
