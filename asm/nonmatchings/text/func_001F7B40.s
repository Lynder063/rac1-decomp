.align 3
nonmatching func_001F7B40, 0x2C

glabel func_001F7B40
    /* F8AC0 001F7B40 F0FFBD27 */  addiu      $29, $29, -0x10
    /* F8AC4 001F7B44 0000BF7F */  sq         $31, 0x0($29)
    /* F8AC8 001F7B48 26ED070C */  jal        func_001FB498
    /* F8ACC 001F7B4C 00000000 */   nop
    /* F8AD0 001F7B50 02CC070C */  jal        func_001F3008
    /* F8AD4 001F7B54 00000000 */   nop
    /* F8AD8 001F7B58 50CC070C */  jal        func_001F3140
    /* F8ADC 001F7B5C 00000000 */   nop
    /* F8AE0 001F7B60 0000BF7B */  lq         $31, 0x0($29)
    /* F8AE4 001F7B64 0800E003 */  jr         $31
    /* F8AE8 001F7B68 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_001F7B40
    /* F8AEC 001F7B6C 00000000 */  nop
