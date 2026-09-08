.align 3
nonmatching func_0023DFE0, 0x1C

glabel func_0023DFE0
    /* 13EF60 0023DFE0 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 13EF64 0023DFE4 0000BF7F */  sq         $31, 0x0($29)
    /* 13EF68 0023DFE8 BAF4080C */  jal        func_0023D2E8
    /* 13EF6C 0023DFEC 48008424 */   addiu     $4, $4, 0x48
    /* 13EF70 0023DFF0 0000BF7B */  lq         $31, 0x0($29)
    /* 13EF74 0023DFF4 0800E003 */  jr         $31
    /* 13EF78 0023DFF8 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0023DFE0
    /* 13EF7C 0023DFFC 00000000 */  nop
