.align 3
nonmatching func_0011ABC8, 0x3C

glabel func_0011ABC8
    /* 1BB48 0011ABC8 2D10C000 */  daddu      $2, $6, $0
    /* 1BB4C 0011ABCC 2D18E000 */  daddu      $3, $7, $0
    /* 1BB50 0011ABD0 2D580001 */  daddu      $11, $8, $0
    /* 1BB54 0011ABD4 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 1BB58 0011ABD8 2D502001 */  daddu      $10, $9, $0
    /* 1BB5C 0011ABDC 2D30A000 */  daddu      $6, $5, $0
    /* 1BB60 0011ABE0 0000BFFF */  sd         $31, 0x0($29)
    /* 1BB64 0011ABE4 2D384000 */  daddu      $7, $2, $0
    /* 1BB68 0011ABE8 2D406000 */  daddu      $8, $3, $0
    /* 1BB6C 0011ABEC 2D486001 */  daddu      $9, $11, $0
    /* 1BB70 0011ABF0 A46A040C */  jal        func_0011AA90
    /* 1BB74 0011ABF4 2D280000 */   daddu     $5, $0, $0
    /* 1BB78 0011ABF8 0000BFDF */  ld         $31, 0x0($29)
    /* 1BB7C 0011ABFC 0800E003 */  jr         $31
    /* 1BB80 0011AC00 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0011ABC8
    /* 1BB84 0011AC04 00000000 */  nop
