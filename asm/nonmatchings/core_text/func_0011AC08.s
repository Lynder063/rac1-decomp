.align 3
nonmatching func_0011AC08, 0x3C

glabel func_0011AC08
    /* 1BB88 0011AC08 2D10C000 */  daddu      $2, $6, $0
    /* 1BB8C 0011AC0C 2D18E000 */  daddu      $3, $7, $0
    /* 1BB90 0011AC10 2D580001 */  daddu      $11, $8, $0
    /* 1BB94 0011AC14 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 1BB98 0011AC18 2D502001 */  daddu      $10, $9, $0
    /* 1BB9C 0011AC1C 2D30A000 */  daddu      $6, $5, $0
    /* 1BBA0 0011AC20 0000BFFF */  sd         $31, 0x0($29)
    /* 1BBA4 0011AC24 2D384000 */  daddu      $7, $2, $0
    /* 1BBA8 0011AC28 2D406000 */  daddu      $8, $3, $0
    /* 1BBAC 0011AC2C 2D486001 */  daddu      $9, $11, $0
    /* 1BBB0 0011AC30 A46A040C */  jal        func_0011AA90
    /* 1BBB4 0011AC34 01000524 */   addiu     $5, $0, 0x1
    /* 1BBB8 0011AC38 0000BFDF */  ld         $31, 0x0($29)
    /* 1BBBC 0011AC3C 0800E003 */  jr         $31
    /* 1BBC0 0011AC40 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0011AC08
    /* 1BBC4 0011AC44 00000000 */  nop
