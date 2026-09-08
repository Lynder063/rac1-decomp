.align 3
nonmatching func_0023C060, 0x20

glabel func_0023C060
    /* 13CFE0 0023C060 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13CFE4 0023C064 0000BF7F */  sq         $ra, 0x0($sp)
    /* 13CFE8 0023C068 88BC040C */  jal        func_0012F220
    /* 13CFEC 0023C06C 00000000 */   nop
    /* 13CFF0 0023C070 0000BF7B */  lq         $ra, 0x0($sp)
    /* 13CFF4 0023C074 01000224 */  addiu      $v0, $zero, 0x1
    /* 13CFF8 0023C078 0800E003 */  jr         $ra
    /* 13CFFC 0023C07C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0023C060
