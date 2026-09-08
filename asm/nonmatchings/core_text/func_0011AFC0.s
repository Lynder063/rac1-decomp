.align 3
nonmatching func_0011AFC0, 0x24

glabel func_0011AFC0
    /* 1BF40 0011AFC0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1BF44 0011AFC4 0000BFFF */  sd         $ra, 0x0($sp)
    /* 1BF48 0011AFC8 806A040C */  jal        func_0011AA00
    /* 1BF4C 0011AFCC 00000000 */   nop
    /* 1BF50 0011AFD0 1300023C */  lui        $v0, %hi(D_0012FD08)
    /* 1BF54 0011AFD4 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1BF58 0011AFD8 08FD40AC */  sw         $zero, %lo(D_0012FD08)($v0)
    /* 1BF5C 0011AFDC 0800E003 */  jr         $ra
    /* 1BF60 0011AFE0 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0011AFC0
    /* 1BF64 0011AFE4 00000000 */  nop
