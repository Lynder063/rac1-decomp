.align 3
nonmatching func_0023BB60, 0x2C

glabel func_0023BB60
    /* 13CAE0 0023BB60 1600023C */  lui        $2, %hi(D_0016130C)
    /* 13CAE4 0023BB64 0C13428C */  lw         $2, %lo(D_0016130C)($2)
    /* 13CAE8 0023BB68 0D00043C */  lui        $4, (0xD9100 >> 16)
    /* 13CAEC 0023BB6C F0FFBD27 */  addiu      $29, $29, -0x10
    /* 13CAF0 0023BB70 00918434 */  ori        $4, $4, (0xD9100 & 0xFFFF)
    /* 13CAF4 0023BB74 0000BF7F */  sq         $31, 0x0($29)
    /* 13CAF8 0023BB78 ACF0080C */  jal        func_0023C2B0
    /* 13CAFC 0023BB7C 21204400 */   addu      $4, $2, $4
    /* 13CB00 0023BB80 0000BF7B */  lq         $31, 0x0($29)
    /* 13CB04 0023BB84 0800E003 */  jr         $31
    /* 13CB08 0023BB88 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0023BB60
    /* 13CB0C 0023BB8C 00000000 */  nop
