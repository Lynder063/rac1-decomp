.align 3
nonmatching func_0020CC10, 0x28

glabel func_0020CC10
    /* 10DB90 0020CC10 1400023C */  lui        $v0, %hi(D_0013DAE4)
    /* 10DB94 0020CC14 E4DA438C */  lw         $v1, %lo(D_0013DAE4)($v0)
    /* 10DB98 0020CC18 04006010 */  beqz       $v1, .L0020CC2C
    /* 10DB9C 0020CC1C 1400043C */   lui       $a0, %hi(D_0013D4E5)
    /* 10DBA0 0020CC20 E5D48390 */  lbu        $v1, %lo(D_0013D4E5)($a0)
    /* 10DBA4 0020CC24 02006014 */  bnez       $v1, .L0020CC30
    /* 10DBA8 0020CC28 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0020CC2C:
    /* 10DBAC 0020CC2C 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0020CC30:
    /* 10DBB0 0020CC30 0800E003 */  jr         $ra
    /* 10DBB4 0020CC34 00000000 */   nop
endlabel func_0020CC10
