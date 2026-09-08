.align 3
nonmatching func_001275A0, 0x1C

glabel func_001275A0
    /* 28520 001275A0 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 28524 001275A4 0000BFFF */  sd         $31, 0x0($29)
    /* 28528 001275A8 BAA1040C */  jal        func_001286E8
    /* 2852C 001275AC 03000524 */   addiu     $5, $0, 0x3
    /* 28530 001275B0 0000BFDF */  ld         $31, 0x0($29)
    /* 28534 001275B4 0800E003 */  jr         $31
    /* 28538 001275B8 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_001275A0
    /* 2853C 001275BC 00000000 */  nop
