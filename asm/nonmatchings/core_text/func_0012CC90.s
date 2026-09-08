.align 3
nonmatching func_0012CC90, 0x64

glabel func_0012CC90
    /* 2DC10 0012CC90 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2DC14 0012CC94 0000B0FF */  sd         $16, 0x0($29)
    /* 2DC18 0012CC98 1000BFFF */  sd         $31, 0x10($29)
    /* 2DC1C 0012CC9C 5876040C */  jal        func_0011D960
    /* 2DC20 0012CCA0 2D808000 */   daddu     $16, $4, $0
    /* 2DC24 0012CCA4 0010053C */  lui        $5, (0x1000F520 >> 16)
    /* 2DC28 0012CCA8 0100073C */  lui        $7, (0x10000 >> 16)
    /* 2DC2C 0012CCAC 20F5A534 */  ori        $5, $5, (0x1000F520 & 0xFFFF)
    /* 2DC30 0012CCB0 0010063C */  lui        $6, (0x1000F590 >> 16)
    /* 2DC34 0012CCB4 0000A28C */  lw         $2, 0x0($5)
    /* 2DC38 0012CCB8 90F5C634 */  ori        $6, $6, (0x1000F590 & 0xFFFF)
    /* 2DC3C 0012CCBC 0010033C */  lui        $3, (0x1000B000 >> 16)
    /* 2DC40 0012CCC0 FEFF043C */  lui        $4, (0xFFFEFFFF >> 16)
    /* 2DC44 0012CCC4 25104700 */  or         $2, $2, $7
    /* 2DC48 0012CCC8 00B06334 */  ori        $3, $3, (0x1000B000 & 0xFFFF)
    /* 2DC4C 0012CCCC 0000C2AC */  sw         $2, 0x0($6)
    /* 2DC50 0012CCD0 FFFF8434 */  ori        $4, $4, (0xFFFEFFFF & 0xFFFF)
    /* 2DC54 0012CCD4 000070AC */  sw         $16, 0x0($3)
    /* 2DC58 0012CCD8 1000BFDF */  ld         $31, 0x10($29)
    /* 2DC5C 0012CCDC 0000A28C */  lw         $2, 0x0($5)
    /* 2DC60 0012CCE0 0000B0DF */  ld         $16, 0x0($29)
    /* 2DC64 0012CCE4 24104400 */  and        $2, $2, $4
    /* 2DC68 0012CCE8 0000C2AC */  sw         $2, 0x0($6)
    /* 2DC6C 0012CCEC 6A760408 */  j          func_0011D9A8
    /* 2DC70 0012CCF0 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012CC90
    /* 2DC74 0012CCF4 00000000 */  nop
