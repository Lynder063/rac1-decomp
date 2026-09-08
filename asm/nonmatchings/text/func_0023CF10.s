.align 3
nonmatching func_0023CF10, 0x6C

glabel func_0023CF10
    /* 13DE90 0023CF10 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 13DE94 0023CF14 0000B07F */  sq         $16, 0x0($29)
    /* 13DE98 0023CF18 1000BF7F */  sq         $31, 0x10($29)
    /* 13DE9C 0023CF1C 5876040C */  jal        func_0011D960
    /* 13DEA0 0023CF20 2D808000 */   daddu     $16, $4, $0
    /* 13DEA4 0023CF24 0010053C */  lui        $5, (0x1000F520 >> 16)
    /* 13DEA8 0023CF28 0100073C */  lui        $7, (0x10000 >> 16)
    /* 13DEAC 0023CF2C 20F5A534 */  ori        $5, $5, (0x1000F520 & 0xFFFF)
    /* 13DEB0 0023CF30 0010063C */  lui        $6, (0x1000F590 >> 16)
    /* 13DEB4 0023CF34 0000A28C */  lw         $2, 0x0($5)
    /* 13DEB8 0023CF38 90F5C634 */  ori        $6, $6, (0x1000F590 & 0xFFFF)
    /* 13DEBC 0023CF3C 0010033C */  lui        $3, (0x1000B000 >> 16)
    /* 13DEC0 0023CF40 FEFF043C */  lui        $4, (0xFFFEFFFF >> 16)
    /* 13DEC4 0023CF44 25104700 */  or         $2, $2, $7
    /* 13DEC8 0023CF48 00B06334 */  ori        $3, $3, (0x1000B000 & 0xFFFF)
    /* 13DECC 0023CF4C 0000C2AC */  sw         $2, 0x0($6)
    /* 13DED0 0023CF50 FFFF8434 */  ori        $4, $4, (0xFFFEFFFF & 0xFFFF)
    /* 13DED4 0023CF54 000070AC */  sw         $16, 0x0($3)
    /* 13DED8 0023CF58 0000A28C */  lw         $2, 0x0($5)
    /* 13DEDC 0023CF5C 24104400 */  and        $2, $2, $4
    /* 13DEE0 0023CF60 0000C2AC */  sw         $2, 0x0($6)
    /* 13DEE4 0023CF64 6A76040C */  jal        func_0011D9A8
    /* 13DEE8 0023CF68 00000000 */   nop
    /* 13DEEC 0023CF6C 1000BF7B */  lq         $31, 0x10($29)
    /* 13DEF0 0023CF70 0000B07B */  lq         $16, 0x0($29)
    /* 13DEF4 0023CF74 0800E003 */  jr         $31
    /* 13DEF8 0023CF78 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0023CF10
    /* 13DEFC 0023CF7C 00000000 */  nop
