.align 3
nonmatching func_0012CCF8, 0x64

glabel func_0012CCF8
    /* 2DC78 0012CCF8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2DC7C 0012CCFC 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2DC80 0012CD00 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2DC84 0012CD04 5876040C */  jal        func_0011D960
    /* 2DC88 0012CD08 2D808000 */   daddu     $s0, $a0, $zero
    /* 2DC8C 0012CD0C 0010053C */  lui        $a1, (0x1000F520 >> 16)
    /* 2DC90 0012CD10 0100073C */  lui        $a3, (0x10000 >> 16)
    /* 2DC94 0012CD14 20F5A534 */  ori        $a1, $a1, (0x1000F520 & 0xFFFF)
    /* 2DC98 0012CD18 0010063C */  lui        $a2, (0x1000F590 >> 16)
    /* 2DC9C 0012CD1C 0000A28C */  lw         $v0, 0x0($a1)
    /* 2DCA0 0012CD20 90F5C634 */  ori        $a2, $a2, (0x1000F590 & 0xFFFF)
    /* 2DCA4 0012CD24 0010033C */  lui        $v1, (0x1000B400 >> 16)
    /* 2DCA8 0012CD28 FEFF043C */  lui        $a0, (0xFFFEFFFF >> 16)
    /* 2DCAC 0012CD2C 25104700 */  or         $v0, $v0, $a3
    /* 2DCB0 0012CD30 00B46334 */  ori        $v1, $v1, (0x1000B400 & 0xFFFF)
    /* 2DCB4 0012CD34 0000C2AC */  sw         $v0, 0x0($a2)
    /* 2DCB8 0012CD38 FFFF8434 */  ori        $a0, $a0, (0xFFFEFFFF & 0xFFFF)
    /* 2DCBC 0012CD3C 000070AC */  sw         $s0, 0x0($v1)
    /* 2DCC0 0012CD40 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2DCC4 0012CD44 0000A28C */  lw         $v0, 0x0($a1)
    /* 2DCC8 0012CD48 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2DCCC 0012CD4C 24104400 */  and        $v0, $v0, $a0
    /* 2DCD0 0012CD50 0000C2AC */  sw         $v0, 0x0($a2)
    /* 2DCD4 0012CD54 6A760408 */  j          func_0011D9A8
    /* 2DCD8 0012CD58 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012CCF8
    /* 2DCDC 0012CD5C 00000000 */  nop
