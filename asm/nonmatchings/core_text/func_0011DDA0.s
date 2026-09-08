.align 3
nonmatching func_0011DDA0, 0x28

glabel func_0011DDA0
    /* 1ED20 0011DDA0 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 1ED24 0011DDA4 0000B0FF */  sd         $16, 0x0($29)
    /* 1ED28 0011DDA8 1000BFFF */  sd         $31, 0x10($29)
    /* 1ED2C 0011DDAC 6677040C */  jal        func_0011DD98
    /* 1ED30 0011DDB0 2D808000 */   daddu     $16, $4, $0
    /* 1ED34 0011DDB4 2D200002 */  daddu      $4, $16, $0
    /* 1ED38 0011DDB8 1000BFDF */  ld         $31, 0x10($29)
    /* 1ED3C 0011DDBC 0000B0DF */  ld         $16, 0x0($29)
    /* 1ED40 0011DDC0 98620408 */  j          func_00118A60
    /* 1ED44 0011DDC4 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0011DDA0
