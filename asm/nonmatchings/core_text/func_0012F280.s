.align 3
nonmatching func_0012F280, 0x34

glabel func_0012F280
    /* 30200 0012F280 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 30204 0012F284 00000000 */  nop
.align 2
  alabel func_0012F288
    /* 30208 0012F288 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3020C 0012F28C 0000A4AF */  sw         $a0, 0x0($sp)
    /* 30210 0012F290 2D30A003 */  daddu      $a2, $sp, $zero
    /* 30214 0012F294 0400A5AF */  sw         $a1, 0x4($sp)
    /* 30218 0012F298 5A000424 */  addiu      $a0, $zero, 0x5A
    /* 3021C 0012F29C 1000BF7F */  sq         $ra, 0x10($sp)
    /* 30220 0012F2A0 A2B9040C */  jal        func_0012E688
    /* 30224 0012F2A4 08000524 */   addiu     $a1, $zero, 0x8
    /* 30228 0012F2A8 1000BF7B */  lq         $ra, 0x10($sp)
    /* 3022C 0012F2AC 0800E003 */  jr         $ra
    /* 30230 0012F2B0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012F280
    /* 30234 0012F2B4 00000000 */  nop
