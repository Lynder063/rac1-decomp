.align 3
nonmatching func_0020E068, 0x2C

glabel func_0020E068
    /* 10EFE8 0020E068 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 10EFEC 0020E06C 1B00043C */  lui        $4, %hi(D_001B3200)
    /* 10EFF0 0020E070 0070053C */  lui        $5, (0x70003A00 >> 16)
    /* 10EFF4 0020E074 0000BF7F */  sq         $31, 0x0($29)
    /* 10EFF8 0020E078 00328424 */  addiu      $4, $4, %lo(D_001B3200)
    /* 10EFFC 0020E07C 003AA534 */  ori        $5, $5, (0x70003A00 & 0xFFFF)
    /* 10F000 0020E080 A6E6070C */  jal        func_001F9A98
    /* 10F004 0020E084 80030624 */   addiu     $6, $0, 0x380
    /* 10F008 0020E088 0000BF7B */  lq         $31, 0x0($29)
    /* 10F00C 0020E08C 0800E003 */  jr         $31
    /* 10F010 0020E090 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0020E068
    /* 10F014 0020E094 00000000 */  nop
