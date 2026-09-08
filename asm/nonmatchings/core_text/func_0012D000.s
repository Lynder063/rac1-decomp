.align 3
nonmatching func_0012D000, 0x64

glabel func_0012D000
    /* 2DF80 0012D000 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2DF84 0012D004 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2DF88 0012D008 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2DF8C 0012D00C 5876040C */  jal        func_0011D960
    /* 2DF90 0012D010 2D808000 */   daddu     $s0, $a0, $zero
    /* 2DF94 0012D014 0010053C */  lui        $a1, (0x1000F520 >> 16)
    /* 2DF98 0012D018 0100073C */  lui        $a3, (0x10000 >> 16)
    /* 2DF9C 0012D01C 20F5A534 */  ori        $a1, $a1, (0x1000F520 & 0xFFFF)
    /* 2DFA0 0012D020 0010063C */  lui        $a2, (0x1000F590 >> 16)
    /* 2DFA4 0012D024 0000A28C */  lw         $v0, 0x0($a1)
    /* 2DFA8 0012D028 90F5C634 */  ori        $a2, $a2, (0x1000F590 & 0xFFFF)
    /* 2DFAC 0012D02C 0010033C */  lui        $v1, (0x1000B400 >> 16)
    /* 2DFB0 0012D030 FEFF043C */  lui        $a0, (0xFFFEFFFF >> 16)
    /* 2DFB4 0012D034 25104700 */  or         $v0, $v0, $a3
    /* 2DFB8 0012D038 00B46334 */  ori        $v1, $v1, (0x1000B400 & 0xFFFF)
    /* 2DFBC 0012D03C 0000C2AC */  sw         $v0, 0x0($a2)
    /* 2DFC0 0012D040 FFFF8434 */  ori        $a0, $a0, (0xFFFEFFFF & 0xFFFF)
    /* 2DFC4 0012D044 000070AC */  sw         $s0, 0x0($v1)
    /* 2DFC8 0012D048 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2DFCC 0012D04C 0000A28C */  lw         $v0, 0x0($a1)
    /* 2DFD0 0012D050 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2DFD4 0012D054 24104400 */  and        $v0, $v0, $a0
    /* 2DFD8 0012D058 0000C2AC */  sw         $v0, 0x0($a2)
    /* 2DFDC 0012D05C 6A760408 */  j          func_0011D9A8
    /* 2DFE0 0012D060 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012D000
    /* 2DFE4 0012D064 00000000 */  nop
