.align 3
nonmatching func_0011BF48, 0x34

glabel func_0011BF48
    /* 1CEC8 0011BF48 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1CECC 0011BF4C 1300023C */  lui        $v0, %hi(D_0012FD94)
    /* 1CED0 0011BF50 1600043C */  lui        $a0, %hi(D_001580A8)
    /* 1CED4 0011BF54 0000BFFF */  sd         $ra, 0x0($sp)
    /* 1CED8 0011BF58 94FD40AC */  sw         $zero, %lo(D_0012FD94)($v0)
    /* 1CEDC 0011BF5C A8808424 */  addiu      $a0, $a0, %lo(D_001580A8)
    /* 1CEE0 0011BF60 2D280000 */  daddu      $a1, $zero, $zero
    /* 1CEE4 0011BF64 FF54040C */  jal        func_001153FC
    /* 1CEE8 0011BF68 04000624 */   addiu     $a2, $zero, 0x4
    /* 1CEEC 0011BF6C 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1CEF0 0011BF70 2D100000 */  daddu      $v0, $zero, $zero
    /* 1CEF4 0011BF74 0800E003 */  jr         $ra
    /* 1CEF8 0011BF78 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0011BF48
    /* 1CEFC 0011BF7C 00000000 */  nop
