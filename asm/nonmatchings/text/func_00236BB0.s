.align 3
nonmatching func_00236BB0, 0x2C

glabel func_00236BB0
    /* 137B30 00236BB0 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 137B34 00236BB4 1E00043C */  lui        $4, %hi(D_001E3500)
    /* 137B38 00236BB8 0000BF7F */  sq         $31, 0x0($29)
    /* 137B3C 00236BBC A2E1080C */  jal        func_00238688
    /* 137B40 00236BC0 00358424 */   addiu     $4, $4, %lo(D_001E3500)
    /* 137B44 00236BC4 1E00043C */  lui        $4, %hi(D_001E4700)
    /* 137B48 00236BC8 A2E1080C */  jal        func_00238688
    /* 137B4C 00236BCC 00478424 */   addiu     $4, $4, %lo(D_001E4700)
    /* 137B50 00236BD0 0000BF7B */  lq         $31, 0x0($29)
    /* 137B54 00236BD4 0800E003 */  jr         $31
    /* 137B58 00236BD8 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_00236BB0
    /* 137B5C 00236BDC 00000000 */  nop
