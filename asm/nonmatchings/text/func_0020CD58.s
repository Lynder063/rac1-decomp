.align 3
nonmatching func_0020CD58, 0x28

glabel func_0020CD58
    /* 10DCD8 0020CD58 1400023C */  lui        $v0, %hi(D_0013D4F1)
    /* 10DCDC 0020CD5C F1D44390 */  lbu        $v1, %lo(D_0013D4F1)($v0)
    /* 10DCE0 0020CD60 04006010 */  beqz       $v1, .L0020CD74
    /* 10DCE4 0020CD64 1400043C */   lui       $a0, %hi(D_0013DE55)
    /* 10DCE8 0020CD68 55DE8390 */  lbu        $v1, %lo(D_0013DE55)($a0)
    /* 10DCEC 0020CD6C 02006014 */  bnez       $v1, .L0020CD78
    /* 10DCF0 0020CD70 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0020CD74:
    /* 10DCF4 0020CD74 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0020CD78:
    /* 10DCF8 0020CD78 0800E003 */  jr         $ra
    /* 10DCFC 0020CD7C 00000000 */   nop
endlabel func_0020CD58
