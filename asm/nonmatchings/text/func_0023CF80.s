.align 3
nonmatching func_0023CF80, 0x6C

glabel func_0023CF80
    /* 13DF00 0023CF80 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 13DF04 0023CF84 0000B07F */  sq         $s0, 0x0($sp)
    /* 13DF08 0023CF88 1000BF7F */  sq         $ra, 0x10($sp)
    /* 13DF0C 0023CF8C 5876040C */  jal        func_0011D960
    /* 13DF10 0023CF90 2D808000 */   daddu     $s0, $a0, $zero
    /* 13DF14 0023CF94 0010053C */  lui        $a1, (0x1000F520 >> 16)
    /* 13DF18 0023CF98 0100073C */  lui        $a3, (0x10000 >> 16)
    /* 13DF1C 0023CF9C 20F5A534 */  ori        $a1, $a1, (0x1000F520 & 0xFFFF)
    /* 13DF20 0023CFA0 0010063C */  lui        $a2, (0x1000F590 >> 16)
    /* 13DF24 0023CFA4 0000A28C */  lw         $v0, 0x0($a1)
    /* 13DF28 0023CFA8 90F5C634 */  ori        $a2, $a2, (0x1000F590 & 0xFFFF)
    /* 13DF2C 0023CFAC 0010033C */  lui        $v1, (0x1000B400 >> 16)
    /* 13DF30 0023CFB0 FEFF043C */  lui        $a0, (0xFFFEFFFF >> 16)
    /* 13DF34 0023CFB4 25104700 */  or         $v0, $v0, $a3
    /* 13DF38 0023CFB8 00B46334 */  ori        $v1, $v1, (0x1000B400 & 0xFFFF)
    /* 13DF3C 0023CFBC 0000C2AC */  sw         $v0, 0x0($a2)
    /* 13DF40 0023CFC0 FFFF8434 */  ori        $a0, $a0, (0xFFFEFFFF & 0xFFFF)
    /* 13DF44 0023CFC4 000070AC */  sw         $s0, 0x0($v1)
    /* 13DF48 0023CFC8 0000A28C */  lw         $v0, 0x0($a1)
    /* 13DF4C 0023CFCC 24104400 */  and        $v0, $v0, $a0
    /* 13DF50 0023CFD0 0000C2AC */  sw         $v0, 0x0($a2)
    /* 13DF54 0023CFD4 6A76040C */  jal        func_0011D9A8
    /* 13DF58 0023CFD8 00000000 */   nop
    /* 13DF5C 0023CFDC 1000BF7B */  lq         $ra, 0x10($sp)
    /* 13DF60 0023CFE0 0000B07B */  lq         $s0, 0x0($sp)
    /* 13DF64 0023CFE4 0800E003 */  jr         $ra
    /* 13DF68 0023CFE8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0023CF80
    /* 13DF6C 0023CFEC 00000000 */  nop
