.align 3
nonmatching func_0011CCB0, 0x1C

glabel func_0011CCB0
    /* 1DC30 0011CCB0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1DC34 0011CCB4 0000BFFF */  sd         $ra, 0x0($sp)
    /* 1DC38 0011CCB8 0E73040C */  jal        func_0011CC38
    /* 1DC3C 0011CCBC 00000000 */   nop
    /* 1DC40 0011CCC0 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1DC44 0011CCC4 0800E003 */  jr         $ra
    /* 1DC48 0011CCC8 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0011CCB0
    /* 1DC4C 0011CCCC 00000000 */  nop
