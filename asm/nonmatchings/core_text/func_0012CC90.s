.align 3
nonmatching func_0012CC90, 0x64

glabel func_0012CC90
    /* 2DC10 0012CC90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2DC14 0012CC94 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2DC18 0012CC98 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2DC1C 0012CC9C 5876040C */  jal        func_0011D960
    /* 2DC20 0012CCA0 2D808000 */   daddu     $s0, $a0, $zero
    /* 2DC24 0012CCA4 0010053C */  lui        $a1, (0x1000F520 >> 16)
    /* 2DC28 0012CCA8 0100073C */  lui        $a3, (0x10000 >> 16)
    /* 2DC2C 0012CCAC 20F5A534 */  ori        $a1, $a1, (0x1000F520 & 0xFFFF)
    /* 2DC30 0012CCB0 0010063C */  lui        $a2, (0x1000F590 >> 16)
    /* 2DC34 0012CCB4 0000A28C */  lw         $v0, 0x0($a1)
    /* 2DC38 0012CCB8 90F5C634 */  ori        $a2, $a2, (0x1000F590 & 0xFFFF)
    /* 2DC3C 0012CCBC 0010033C */  lui        $v1, (0x1000B000 >> 16)
    /* 2DC40 0012CCC0 FEFF043C */  lui        $a0, (0xFFFEFFFF >> 16)
    /* 2DC44 0012CCC4 25104700 */  or         $v0, $v0, $a3
    /* 2DC48 0012CCC8 00B06334 */  ori        $v1, $v1, (0x1000B000 & 0xFFFF)
    /* 2DC4C 0012CCCC 0000C2AC */  sw         $v0, 0x0($a2)
    /* 2DC50 0012CCD0 FFFF8434 */  ori        $a0, $a0, (0xFFFEFFFF & 0xFFFF)
    /* 2DC54 0012CCD4 000070AC */  sw         $s0, 0x0($v1)
    /* 2DC58 0012CCD8 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2DC5C 0012CCDC 0000A28C */  lw         $v0, 0x0($a1)
    /* 2DC60 0012CCE0 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2DC64 0012CCE4 24104400 */  and        $v0, $v0, $a0
    /* 2DC68 0012CCE8 0000C2AC */  sw         $v0, 0x0($a2)
    /* 2DC6C 0012CCEC 6A760408 */  j          func_0011D9A8
    /* 2DC70 0012CCF0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012CC90
    /* 2DC74 0012CCF4 00000000 */  nop
