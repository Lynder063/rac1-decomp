.align 3
nonmatching func_0020CC10, 0x28

glabel func_0020CC10
    /* 10DB90 0020CC10 1400023C */  lui        $2, %hi(D_0013DAE4)
    /* 10DB94 0020CC14 E4DA438C */  lw         $3, %lo(D_0013DAE4)($2)
    /* 10DB98 0020CC18 04006010 */  beqz       $3, .L0020CC2C
    /* 10DB9C 0020CC1C 1400043C */   lui       $4, %hi(D_0013D4E5)
    /* 10DBA0 0020CC20 E5D48390 */  lbu        $3, %lo(D_0013D4E5)($4)
    /* 10DBA4 0020CC24 02006014 */  bnez       $3, .L0020CC30
    /* 10DBA8 0020CC28 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L0020CC2C:
    /* 10DBAC 0020CC2C 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0020CC30:
    /* 10DBB0 0020CC30 0800E003 */  jr         $31
    /* 10DBB4 0020CC34 00000000 */   nop
endlabel func_0020CC10
