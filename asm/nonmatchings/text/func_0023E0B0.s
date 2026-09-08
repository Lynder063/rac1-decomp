.align 3
nonmatching func_0023E0B0, 0x1C

glabel func_0023E0B0
    /* 13F030 0023E0B0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13F034 0023E0B4 0000BF7F */  sq         $ra, 0x0($sp)
    /* 13F038 0023E0B8 78F6080C */  jal        func_0023D9E0
    /* 13F03C 0023E0BC 48008424 */   addiu     $a0, $a0, 0x48
    /* 13F040 0023E0C0 0000BF7B */  lq         $ra, 0x0($sp)
    /* 13F044 0023E0C4 0800E003 */  jr         $ra
    /* 13F048 0023E0C8 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0023E0B0
    /* 13F04C 0023E0CC 00000000 */  nop
