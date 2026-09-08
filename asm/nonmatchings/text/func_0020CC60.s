.align 3
nonmatching func_0020CC60, 0x28

glabel func_0020CC60
    /* 10DBE0 0020CC60 1400023C */  lui        $2, %hi(D_0013DC34)
    /* 10DBE4 0020CC64 34DC438C */  lw         $3, %lo(D_0013DC34)($2)
    /* 10DBE8 0020CC68 04006010 */  beqz       $3, .L0020CC7C
    /* 10DBEC 0020CC6C 1400043C */   lui       $4, %hi(D_0013D605)
    /* 10DBF0 0020CC70 05D68390 */  lbu        $3, %lo(D_0013D605)($4)
    /* 10DBF4 0020CC74 02006014 */  bnez       $3, .L0020CC80
    /* 10DBF8 0020CC78 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L0020CC7C:
    /* 10DBFC 0020CC7C 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0020CC80:
    /* 10DC00 0020CC80 0800E003 */  jr         $31
    /* 10DC04 0020CC84 00000000 */   nop
endlabel func_0020CC60
