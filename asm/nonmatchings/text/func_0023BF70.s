.align 3
nonmatching func_0023BF70, 0x2C

glabel func_0023BF70
    /* 13CEF0 0023BF70 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13CEF4 0023BF74 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
    /* 13CEF8 0023BF78 0D00043C */  lui        $a0, (0xD9100 >> 16)
    /* 13CEFC 0023BF7C F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13CF00 0023BF80 00918434 */  ori        $a0, $a0, (0xD9100 & 0xFFFF)
    /* 13CF04 0023BF84 0000BF7F */  sq         $ra, 0x0($sp)
    /* 13CF08 0023BF88 B0F0080C */  jal        func_0023C2C0
    /* 13CF0C 0023BF8C 21204400 */   addu      $a0, $v0, $a0
    /* 13CF10 0023BF90 0000BF7B */  lq         $ra, 0x0($sp)
    /* 13CF14 0023BF94 0800E003 */  jr         $ra
    /* 13CF18 0023BF98 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0023BF70
    /* 13CF1C 0023BF9C 00000000 */  nop
