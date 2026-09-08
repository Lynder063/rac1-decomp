.align 3
/* Handwritten function */
nonmatching func_00123EC0, 0x24

glabel func_00123EC0
    /* 24E40 00123EC0 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 24E44 00123EC4 0000BFFF */  sd         $31, 0x0($29)
    /* 24E48 00123EC8 9E65040C */  jal        func_00119678
    /* 24E4C 00123ECC 2D20C000 */   daddu     $4, $6, $0
    /* 24E50 00123ED0 0F000000 */  sync
    /* 24E54 00123ED4 38000042 */  ei /* handwritten instruction */
    /* 24E58 00123ED8 0000BFDF */  ld         $31, 0x0($29)
    /* 24E5C 00123EDC 0800E003 */  jr         $31
    /* 24E60 00123EE0 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_00123EC0
    /* 24E64 00123EE4 00000000 */  nop
