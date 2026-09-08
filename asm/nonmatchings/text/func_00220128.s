.align 3
nonmatching func_00220128, 0x38

glabel func_00220128
    /* 1210A8 00220128 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1210AC 0022012C A33C013C */  lui        $at, (0x3CA3D70A >> 16)
    /* 1210B0 00220130 0AD72134 */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
    /* 1210B4 00220134 00688144 */  mtc1       $at, $f13
    /* 1210B8 00220138 1000BF7F */  sq         $ra, 0x10($sp)
    /* 1210BC 0022013C 0000B07F */  sq         $s0, 0x0($sp)
    /* 1210C0 00220140 2D808000 */  daddu      $s0, $a0, $zero
    /* 1210C4 00220144 D2E9070C */  jal        func_001FA748
    /* 1210C8 00220148 40000CC6 */   lwc1      $f12, 0x40($s0)
    /* 1210CC 0022014C 400000E6 */  swc1       $f0, 0x40($s0)
    /* 1210D0 00220150 1000BF7B */  lq         $ra, 0x10($sp)
    /* 1210D4 00220154 0000B07B */  lq         $s0, 0x0($sp)
    /* 1210D8 00220158 0800E003 */  jr         $ra
    /* 1210DC 0022015C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00220128
