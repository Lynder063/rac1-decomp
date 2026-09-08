.align 3
nonmatching func_0022DB00, 0x44

glabel func_0022DB00
    /* 12EA80 0022DB00 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 12EA84 0022DB04 1800023C */  lui        $2, %hi(D_00187180)
    /* 12EA88 0022DB08 0000B07F */  sq         $16, 0x0($29)
    /* 12EA8C 0022DB0C 2D808000 */  daddu      $16, $4, $0
    /* 12EA90 0022DB10 1000BF7F */  sq         $31, 0x10($29)
    /* 12EA94 0022DB14 2D20A000 */  daddu      $4, $5, $0
    /* 12EA98 0022DB18 44E7070C */  jal        func_001F9D10
    /* 12EA9C 0022DB1C 80714524 */   addiu     $5, $2, %lo(D_00187180)
    /* 12EAA0 0022DB20 0800048E */  lw         $4, 0x8($16)
    /* 12EAA4 0022DB24 06030046 */  mov.s      $f12, $f0
    /* 12EAA8 0022DB28 00008DC4 */  lwc1       $f13, 0x0($4)
    /* 12EAAC 0022DB2C 84B6080C */  jal        func_0022DA10
    /* 12EAB0 0022DB30 04008EC4 */   lwc1      $f14, 0x4($4)
    /* 12EAB4 0022DB34 1000BF7B */  lq         $31, 0x10($29)
    /* 12EAB8 0022DB38 0000B07B */  lq         $16, 0x0($29)
    /* 12EABC 0022DB3C 0800E003 */  jr         $31
    /* 12EAC0 0022DB40 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0022DB00
    /* 12EAC4 0022DB44 00000000 */  nop
