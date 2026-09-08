.align 3
nonmatching func_0023CF10, 0x6C

glabel func_0023CF10
    /* 13DE90 0023CF10 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 13DE94 0023CF14 0000B07F */  sq         $s0, 0x0($sp)
    /* 13DE98 0023CF18 1000BF7F */  sq         $ra, 0x10($sp)
    /* 13DE9C 0023CF1C 5876040C */  jal        func_0011D960
    /* 13DEA0 0023CF20 2D808000 */   daddu     $s0, $a0, $zero
    /* 13DEA4 0023CF24 0010053C */  lui        $a1, (0x1000F520 >> 16)
    /* 13DEA8 0023CF28 0100073C */  lui        $a3, (0x10000 >> 16)
    /* 13DEAC 0023CF2C 20F5A534 */  ori        $a1, $a1, (0x1000F520 & 0xFFFF)
    /* 13DEB0 0023CF30 0010063C */  lui        $a2, (0x1000F590 >> 16)
    /* 13DEB4 0023CF34 0000A28C */  lw         $v0, 0x0($a1)
    /* 13DEB8 0023CF38 90F5C634 */  ori        $a2, $a2, (0x1000F590 & 0xFFFF)
    /* 13DEBC 0023CF3C 0010033C */  lui        $v1, (0x1000B000 >> 16)
    /* 13DEC0 0023CF40 FEFF043C */  lui        $a0, (0xFFFEFFFF >> 16)
    /* 13DEC4 0023CF44 25104700 */  or         $v0, $v0, $a3
    /* 13DEC8 0023CF48 00B06334 */  ori        $v1, $v1, (0x1000B000 & 0xFFFF)
    /* 13DECC 0023CF4C 0000C2AC */  sw         $v0, 0x0($a2)
    /* 13DED0 0023CF50 FFFF8434 */  ori        $a0, $a0, (0xFFFEFFFF & 0xFFFF)
    /* 13DED4 0023CF54 000070AC */  sw         $s0, 0x0($v1)
    /* 13DED8 0023CF58 0000A28C */  lw         $v0, 0x0($a1)
    /* 13DEDC 0023CF5C 24104400 */  and        $v0, $v0, $a0
    /* 13DEE0 0023CF60 0000C2AC */  sw         $v0, 0x0($a2)
    /* 13DEE4 0023CF64 6A76040C */  jal        func_0011D9A8
    /* 13DEE8 0023CF68 00000000 */   nop
    /* 13DEEC 0023CF6C 1000BF7B */  lq         $ra, 0x10($sp)
    /* 13DEF0 0023CF70 0000B07B */  lq         $s0, 0x0($sp)
    /* 13DEF4 0023CF74 0800E003 */  jr         $ra
    /* 13DEF8 0023CF78 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0023CF10
    /* 13DEFC 0023CF7C 00000000 */  nop
