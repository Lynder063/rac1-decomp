/* Handwritten function */
nonmatching func_001208E4, 0x28

glabel func_001208E4
    /* 21864 001208E4 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 21868 001208E8 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 2186C 001208EC 0000BFFF */  sd         $31, 0x0($29)
    /* 21870 001208F0 2863040C */  jal        func_00118CA0
    /* 21874 001208F4 2D20C000 */   daddu     $4, $6, $0
    /* 21878 001208F8 0F000000 */  sync
    /* 2187C 001208FC 38000042 */  ei /* handwritten instruction */
    /* 21880 00120900 0000BFDF */  ld         $31, 0x0($29)
    /* 21884 00120904 0800E003 */  jr         $31
    /* 21888 00120908 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_001208E4
    /* 2188C 0012090C 00000000 */  nop
