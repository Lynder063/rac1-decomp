.align 3
nonmatching func_0023BB60, 0x2C

glabel func_0023BB60
    /* 13CAE0 0023BB60 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13CAE4 0023BB64 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
    /* 13CAE8 0023BB68 0D00043C */  lui        $a0, (0xD9100 >> 16)
    /* 13CAEC 0023BB6C F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13CAF0 0023BB70 00918434 */  ori        $a0, $a0, (0xD9100 & 0xFFFF)
    /* 13CAF4 0023BB74 0000BF7F */  sq         $ra, 0x0($sp)
    /* 13CAF8 0023BB78 ACF0080C */  jal        func_0023C2B0
    /* 13CAFC 0023BB7C 21204400 */   addu      $a0, $v0, $a0
    /* 13CB00 0023BB80 0000BF7B */  lq         $ra, 0x0($sp)
    /* 13CB04 0023BB84 0800E003 */  jr         $ra
    /* 13CB08 0023BB88 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0023BB60
    /* 13CB0C 0023BB8C 00000000 */  nop
