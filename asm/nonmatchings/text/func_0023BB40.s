.align 3
nonmatching func_0023BB40, 0x1C

glabel func_0023BB40
    /* 13CAC0 0023BB40 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13CAC4 0023BB44 0000BF7F */  sq         $ra, 0x0($sp)
    /* 13CAC8 0023BB48 F062040C */  jal        func_00118BC0
    /* 13CACC 0023BB4C 01000424 */   addiu     $a0, $zero, 0x1
    /* 13CAD0 0023BB50 0000BF7B */  lq         $ra, 0x0($sp)
    /* 13CAD4 0023BB54 0800E003 */  jr         $ra
    /* 13CAD8 0023BB58 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0023BB40
    /* 13CADC 0023BB5C 00000000 */  nop
