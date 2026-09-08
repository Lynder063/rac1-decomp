.align 3
nonmatching func_0020CC60, 0x28

glabel func_0020CC60
    /* 10DBE0 0020CC60 1400023C */  lui        $v0, %hi(D_0013DC34)
    /* 10DBE4 0020CC64 34DC438C */  lw         $v1, %lo(D_0013DC34)($v0)
    /* 10DBE8 0020CC68 04006010 */  beqz       $v1, .L0020CC7C
    /* 10DBEC 0020CC6C 1400043C */   lui       $a0, %hi(D_0013D605)
    /* 10DBF0 0020CC70 05D68390 */  lbu        $v1, %lo(D_0013D605)($a0)
    /* 10DBF4 0020CC74 02006014 */  bnez       $v1, .L0020CC80
    /* 10DBF8 0020CC78 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0020CC7C:
    /* 10DBFC 0020CC7C 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0020CC80:
    /* 10DC00 0020CC80 0800E003 */  jr         $ra
    /* 10DC04 0020CC84 00000000 */   nop
endlabel func_0020CC60
