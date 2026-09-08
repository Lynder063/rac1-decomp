.align 3
nonmatching func_0011CCB0, 0x1C

glabel func_0011CCB0
    /* 1DC30 0011CCB0 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 1DC34 0011CCB4 0000BFFF */  sd         $31, 0x0($29)
    /* 1DC38 0011CCB8 0E73040C */  jal        func_0011CC38
    /* 1DC3C 0011CCBC 00000000 */   nop
    /* 1DC40 0011CCC0 0000BFDF */  ld         $31, 0x0($29)
    /* 1DC44 0011CCC4 0800E003 */  jr         $31
    /* 1DC48 0011CCC8 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0011CCB0
    /* 1DC4C 0011CCCC 00000000 */  nop
