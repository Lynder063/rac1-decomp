.align 3
nonmatching func_00216270, 0x20

glabel func_00216270
    /* 1171F0 00216270 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1171F4 00216274 2100043C */  lui        $a0, %hi(func_002177F0)
    /* 1171F8 00216278 0000BF7F */  sq         $ra, 0x0($sp)
    /* 1171FC 0021627C 1ABC040C */  jal        func_0012F068
    /* 117200 00216280 F0778424 */   addiu     $a0, $a0, %lo(func_002177F0)
    /* 117204 00216284 0000BF7B */  lq         $ra, 0x0($sp)
    /* 117208 00216288 0800E003 */  jr         $ra
    /* 11720C 0021628C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00216270
