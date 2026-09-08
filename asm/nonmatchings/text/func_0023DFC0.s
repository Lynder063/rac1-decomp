.align 3
nonmatching func_0023DFC0, 0x1C

glabel func_0023DFC0
    /* 13EF40 0023DFC0 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 13EF44 0023DFC4 0000BF7F */  sq         $31, 0x0($29)
    /* 13EF48 0023DFC8 7CF4080C */  jal        func_0023D1F0
    /* 13EF4C 0023DFCC 48008424 */   addiu     $4, $4, 0x48
    /* 13EF50 0023DFD0 0000BF7B */  lq         $31, 0x0($29)
    /* 13EF54 0023DFD4 0800E003 */  jr         $31
    /* 13EF58 0023DFD8 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0023DFC0
    /* 13EF5C 0023DFDC 00000000 */  nop
