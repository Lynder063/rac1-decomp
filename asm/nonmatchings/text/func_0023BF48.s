.align 3
nonmatching func_0023BF48, 0x24

glabel func_0023BF48
    /* 13CEC8 0023BF48 2D288000 */  daddu      $5, $4, $0
    /* 13CECC 0023BF4C F0FFBD27 */  addiu      $29, $29, -0x10
    /* 13CED0 0023BF50 1600043C */  lui        $4, %hi(D_001612F8)
    /* 13CED4 0023BF54 0000BF7F */  sq         $31, 0x0($29)
    /* 13CED8 0023BF58 CCA5070C */  jal        func_001E9730
    /* 13CEDC 0023BF5C F8128424 */   addiu     $4, $4, %lo(D_001612F8)
    /* 13CEE0 0023BF60 0000BF7B */  lq         $31, 0x0($29)
    /* 13CEE4 0023BF64 0800E003 */  jr         $31
    /* 13CEE8 0023BF68 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0023BF48
    /* 13CEEC 0023BF6C 00000000 */  nop
