.align 3
nonmatching func_0020CC38, 0x28

glabel func_0020CC38
    /* 10DBB8 0020CC38 1400023C */  lui        $2, %hi(D_0013DB24)
    /* 10DBBC 0020CC3C 24DB438C */  lw         $3, %lo(D_0013DB24)($2)
    /* 10DBC0 0020CC40 04006010 */  beqz       $3, .L0020CC54
    /* 10DBC4 0020CC44 1400043C */   lui       $4, %hi(D_0013D4F1)
    /* 10DBC8 0020CC48 F1D48390 */  lbu        $3, %lo(D_0013D4F1)($4)
    /* 10DBCC 0020CC4C 02006014 */  bnez       $3, .L0020CC58
    /* 10DBD0 0020CC50 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L0020CC54:
    /* 10DBD4 0020CC54 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0020CC58:
    /* 10DBD8 0020CC58 0800E003 */  jr         $31
    /* 10DBDC 0020CC5C 00000000 */   nop
endlabel func_0020CC38
