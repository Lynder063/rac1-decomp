.align 3
nonmatching func_0012F2B8, 0x24

glabel func_0012F2B8
    /* 30238 0012F2B8 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 3023C 0012F2BC 5B000424 */  addiu      $4, $0, 0x5B
    /* 30240 0012F2C0 0000BF7F */  sq         $31, 0x0($29)
    /* 30244 0012F2C4 2D280000 */  daddu      $5, $0, $0
    /* 30248 0012F2C8 A2B9040C */  jal        func_0012E688
    /* 3024C 0012F2CC 2D300000 */   daddu     $6, $0, $0
    /* 30250 0012F2D0 0000BF7B */  lq         $31, 0x0($29)
    /* 30254 0012F2D4 0800E003 */  jr         $31
    /* 30258 0012F2D8 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0012F2B8
    /* 3025C 0012F2DC 00000000 */  nop
