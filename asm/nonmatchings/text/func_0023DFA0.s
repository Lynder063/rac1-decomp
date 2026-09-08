.align 3
nonmatching func_0023DFA0, 0x20

glabel func_0023DFA0
    /* 13EF20 0023DFA0 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 13EF24 0023DFA4 0000BF7F */  sq         $31, 0x0($29)
    /* 13EF28 0023DFA8 02AC040C */  jal        func_0012B008
    /* 13EF2C 0023DFAC 00000000 */   nop
    /* 13EF30 0023DFB0 0000BF7B */  lq         $31, 0x0($29)
    /* 13EF34 0023DFB4 01000224 */  addiu      $2, $0, 0x1
    /* 13EF38 0023DFB8 0800E003 */  jr         $31
    /* 13EF3C 0023DFBC 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0023DFA0
