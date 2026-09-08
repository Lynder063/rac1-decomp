.align 3
nonmatching func_00215328, 0x4C

glabel func_00215328
    /* 1162A8 00215328 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 1162AC 0021532C 5000B17F */  sq         $s1, 0x50($sp)
    /* 1162B0 00215330 4000B07F */  sq         $s0, 0x40($sp)
    /* 1162B4 00215334 2D888000 */  daddu      $s1, $a0, $zero
    /* 1162B8 00215338 2D80A000 */  daddu      $s0, $a1, $zero
    /* 1162BC 0021533C 6000BF7F */  sq         $ra, 0x60($sp)
    /* 1162C0 00215340 18E9070C */  jal        func_001FA460
    /* 1162C4 00215344 2D20A003 */   daddu     $a0, $sp, $zero
    /* 1162C8 00215348 2D202002 */  daddu      $a0, $s1, $zero
    /* 1162CC 0021534C 2C54080C */  jal        func_002150B0
    /* 1162D0 00215350 2D28A003 */   daddu     $a1, $sp, $zero
    /* 1162D4 00215354 2D200002 */  daddu      $a0, $s0, $zero
    /* 1162D8 00215358 20E9070C */  jal        func_001FA480
    /* 1162DC 0021535C 2D28A003 */   daddu     $a1, $sp, $zero
    /* 1162E0 00215360 6000BF7B */  lq         $ra, 0x60($sp)
    /* 1162E4 00215364 5000B17B */  lq         $s1, 0x50($sp)
    /* 1162E8 00215368 4000B07B */  lq         $s0, 0x40($sp)
    /* 1162EC 0021536C 0800E003 */  jr         $ra
    /* 1162F0 00215370 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_00215328
    /* 1162F4 00215374 00000000 */  nop
