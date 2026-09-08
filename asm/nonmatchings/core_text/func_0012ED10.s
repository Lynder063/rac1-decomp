.align 3
nonmatching func_0012ED10, 0x2C

glabel func_0012ED10
    /* 2FC90 0012ED10 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 2FC94 0012ED14 34000424 */  addiu      $4, $0, 0x34
    /* 2FC98 0012ED18 0000BF7F */  sq         $31, 0x0($29)
    /* 2FC9C 0012ED1C 2D280000 */  daddu      $5, $0, $0
    /* 2FCA0 0012ED20 2D300000 */  daddu      $6, $0, $0
    /* 2FCA4 0012ED24 2D380000 */  daddu      $7, $0, $0
    /* 2FCA8 0012ED28 08BA040C */  jal        func_0012E820
    /* 2FCAC 0012ED2C 2D400000 */   daddu     $8, $0, $0
    /* 2FCB0 0012ED30 0000BF7B */  lq         $31, 0x0($29)
    /* 2FCB4 0012ED34 0800E003 */  jr         $31
    /* 2FCB8 0012ED38 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0012ED10
    /* 2FCBC 0012ED3C 00000000 */  nop
