.align 3
nonmatching func_00236BB0, 0x2C

glabel func_00236BB0
    /* 137B30 00236BB0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 137B34 00236BB4 1E00043C */  lui        $a0, %hi(D_001E3500)
    /* 137B38 00236BB8 0000BF7F */  sq         $ra, 0x0($sp)
    /* 137B3C 00236BBC A2E1080C */  jal        func_00238688
    /* 137B40 00236BC0 00358424 */   addiu     $a0, $a0, %lo(D_001E3500)
    /* 137B44 00236BC4 1E00043C */  lui        $a0, %hi(D_001E4700)
    /* 137B48 00236BC8 A2E1080C */  jal        func_00238688
    /* 137B4C 00236BCC 00478424 */   addiu     $a0, $a0, %lo(D_001E4700)
    /* 137B50 00236BD0 0000BF7B */  lq         $ra, 0x0($sp)
    /* 137B54 00236BD4 0800E003 */  jr         $ra
    /* 137B58 00236BD8 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00236BB0
    /* 137B5C 00236BDC 00000000 */  nop
