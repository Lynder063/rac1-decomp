.align 3
nonmatching func_0020E098, 0x2C

glabel func_0020E098
    /* 10F018 0020E098 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 10F01C 0020E09C 1B00053C */  lui        $a1, %hi(D_001B3200)
    /* 10F020 0020E0A0 0070043C */  lui        $a0, (0x70003A00 >> 16)
    /* 10F024 0020E0A4 0000BF7F */  sq         $ra, 0x0($sp)
    /* 10F028 0020E0A8 0032A524 */  addiu      $a1, $a1, %lo(D_001B3200)
    /* 10F02C 0020E0AC 003A8434 */  ori        $a0, $a0, (0x70003A00 & 0xFFFF)
    /* 10F030 0020E0B0 A6E6070C */  jal        func_001F9A98
    /* 10F034 0020E0B4 80030624 */   addiu     $a2, $zero, 0x380
    /* 10F038 0020E0B8 0000BF7B */  lq         $ra, 0x0($sp)
    /* 10F03C 0020E0BC 0800E003 */  jr         $ra
    /* 10F040 0020E0C0 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0020E098
    /* 10F044 0020E0C4 00000000 */  nop
