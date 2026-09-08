.align 3
nonmatching func_0020CC38, 0x28

glabel func_0020CC38
    /* 10DBB8 0020CC38 1400023C */  lui        $v0, %hi(D_0013DB24)
    /* 10DBBC 0020CC3C 24DB438C */  lw         $v1, %lo(D_0013DB24)($v0)
    /* 10DBC0 0020CC40 04006010 */  beqz       $v1, .L0020CC54
    /* 10DBC4 0020CC44 1400043C */   lui       $a0, %hi(D_0013D4F1)
    /* 10DBC8 0020CC48 F1D48390 */  lbu        $v1, %lo(D_0013D4F1)($a0)
    /* 10DBCC 0020CC4C 02006014 */  bnez       $v1, .L0020CC58
    /* 10DBD0 0020CC50 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0020CC54:
    /* 10DBD4 0020CC54 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0020CC58:
    /* 10DBD8 0020CC58 0800E003 */  jr         $ra
    /* 10DBDC 0020CC5C 00000000 */   nop
endlabel func_0020CC38
