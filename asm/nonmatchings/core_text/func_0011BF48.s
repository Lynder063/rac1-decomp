.align 3
nonmatching func_0011BF48, 0x34

glabel func_0011BF48
    /* 1CEC8 0011BF48 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 1CECC 0011BF4C 1300023C */  lui        $2, %hi(D_0012FD94)
    /* 1CED0 0011BF50 1600043C */  lui        $4, %hi(D_001580A8)
    /* 1CED4 0011BF54 0000BFFF */  sd         $31, 0x0($29)
    /* 1CED8 0011BF58 94FD40AC */  sw         $0, %lo(D_0012FD94)($2)
    /* 1CEDC 0011BF5C A8808424 */  addiu      $4, $4, %lo(D_001580A8)
    /* 1CEE0 0011BF60 2D280000 */  daddu      $5, $0, $0
    /* 1CEE4 0011BF64 FF54040C */  jal        func_001153FC
    /* 1CEE8 0011BF68 04000624 */   addiu     $6, $0, 0x4
    /* 1CEEC 0011BF6C 0000BFDF */  ld         $31, 0x0($29)
    /* 1CEF0 0011BF70 2D100000 */  daddu      $2, $0, $0
    /* 1CEF4 0011BF74 0800E003 */  jr         $31
    /* 1CEF8 0011BF78 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0011BF48
    /* 1CEFC 0011BF7C 00000000 */  nop
