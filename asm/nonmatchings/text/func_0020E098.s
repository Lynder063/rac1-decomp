.align 3
nonmatching func_0020E098, 0x2C

glabel func_0020E098
    /* 10F018 0020E098 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 10F01C 0020E09C 1B00053C */  lui        $5, %hi(D_001B3200)
    /* 10F020 0020E0A0 0070043C */  lui        $4, (0x70003A00 >> 16)
    /* 10F024 0020E0A4 0000BF7F */  sq         $31, 0x0($29)
    /* 10F028 0020E0A8 0032A524 */  addiu      $5, $5, %lo(D_001B3200)
    /* 10F02C 0020E0AC 003A8434 */  ori        $4, $4, (0x70003A00 & 0xFFFF)
    /* 10F030 0020E0B0 A6E6070C */  jal        func_001F9A98
    /* 10F034 0020E0B4 80030624 */   addiu     $6, $0, 0x380
    /* 10F038 0020E0B8 0000BF7B */  lq         $31, 0x0($29)
    /* 10F03C 0020E0BC 0800E003 */  jr         $31
    /* 10F040 0020E0C0 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0020E098
    /* 10F044 0020E0C4 00000000 */  nop
