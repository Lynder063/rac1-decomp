.align 3
nonmatching func_0020CD58, 0x28

glabel func_0020CD58
    /* 10DCD8 0020CD58 1400023C */  lui        $2, %hi(D_0013D4F1)
    /* 10DCDC 0020CD5C F1D44390 */  lbu        $3, %lo(D_0013D4F1)($2)
    /* 10DCE0 0020CD60 04006010 */  beqz       $3, .L0020CD74
    /* 10DCE4 0020CD64 1400043C */   lui       $4, %hi(D_0013DE55)
    /* 10DCE8 0020CD68 55DE8390 */  lbu        $3, %lo(D_0013DE55)($4)
    /* 10DCEC 0020CD6C 02006014 */  bnez       $3, .L0020CD78
    /* 10DCF0 0020CD70 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L0020CD74:
    /* 10DCF4 0020CD74 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0020CD78:
    /* 10DCF8 0020CD78 0800E003 */  jr         $31
    /* 10DCFC 0020CD7C 00000000 */   nop
endlabel func_0020CD58
