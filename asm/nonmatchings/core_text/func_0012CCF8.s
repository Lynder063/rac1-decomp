.align 3
nonmatching func_0012CCF8, 0x64

glabel func_0012CCF8
    /* 2DC78 0012CCF8 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2DC7C 0012CCFC 0000B0FF */  sd         $16, 0x0($29)
    /* 2DC80 0012CD00 1000BFFF */  sd         $31, 0x10($29)
    /* 2DC84 0012CD04 5876040C */  jal        func_0011D960
    /* 2DC88 0012CD08 2D808000 */   daddu     $16, $4, $0
    /* 2DC8C 0012CD0C 0010053C */  lui        $5, (0x1000F520 >> 16)
    /* 2DC90 0012CD10 0100073C */  lui        $7, (0x10000 >> 16)
    /* 2DC94 0012CD14 20F5A534 */  ori        $5, $5, (0x1000F520 & 0xFFFF)
    /* 2DC98 0012CD18 0010063C */  lui        $6, (0x1000F590 >> 16)
    /* 2DC9C 0012CD1C 0000A28C */  lw         $2, 0x0($5)
    /* 2DCA0 0012CD20 90F5C634 */  ori        $6, $6, (0x1000F590 & 0xFFFF)
    /* 2DCA4 0012CD24 0010033C */  lui        $3, (0x1000B400 >> 16)
    /* 2DCA8 0012CD28 FEFF043C */  lui        $4, (0xFFFEFFFF >> 16)
    /* 2DCAC 0012CD2C 25104700 */  or         $2, $2, $7
    /* 2DCB0 0012CD30 00B46334 */  ori        $3, $3, (0x1000B400 & 0xFFFF)
    /* 2DCB4 0012CD34 0000C2AC */  sw         $2, 0x0($6)
    /* 2DCB8 0012CD38 FFFF8434 */  ori        $4, $4, (0xFFFEFFFF & 0xFFFF)
    /* 2DCBC 0012CD3C 000070AC */  sw         $16, 0x0($3)
    /* 2DCC0 0012CD40 1000BFDF */  ld         $31, 0x10($29)
    /* 2DCC4 0012CD44 0000A28C */  lw         $2, 0x0($5)
    /* 2DCC8 0012CD48 0000B0DF */  ld         $16, 0x0($29)
    /* 2DCCC 0012CD4C 24104400 */  and        $2, $2, $4
    /* 2DCD0 0012CD50 0000C2AC */  sw         $2, 0x0($6)
    /* 2DCD4 0012CD54 6A760408 */  j          func_0011D9A8
    /* 2DCD8 0012CD58 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012CCF8
    /* 2DCDC 0012CD5C 00000000 */  nop
