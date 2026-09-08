.align 3
nonmatching func_0012D000, 0x64

glabel func_0012D000
    /* 2DF80 0012D000 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2DF84 0012D004 0000B0FF */  sd         $16, 0x0($29)
    /* 2DF88 0012D008 1000BFFF */  sd         $31, 0x10($29)
    /* 2DF8C 0012D00C 5876040C */  jal        func_0011D960
    /* 2DF90 0012D010 2D808000 */   daddu     $16, $4, $0
    /* 2DF94 0012D014 0010053C */  lui        $5, (0x1000F520 >> 16)
    /* 2DF98 0012D018 0100073C */  lui        $7, (0x10000 >> 16)
    /* 2DF9C 0012D01C 20F5A534 */  ori        $5, $5, (0x1000F520 & 0xFFFF)
    /* 2DFA0 0012D020 0010063C */  lui        $6, (0x1000F590 >> 16)
    /* 2DFA4 0012D024 0000A28C */  lw         $2, 0x0($5)
    /* 2DFA8 0012D028 90F5C634 */  ori        $6, $6, (0x1000F590 & 0xFFFF)
    /* 2DFAC 0012D02C 0010033C */  lui        $3, (0x1000B400 >> 16)
    /* 2DFB0 0012D030 FEFF043C */  lui        $4, (0xFFFEFFFF >> 16)
    /* 2DFB4 0012D034 25104700 */  or         $2, $2, $7
    /* 2DFB8 0012D038 00B46334 */  ori        $3, $3, (0x1000B400 & 0xFFFF)
    /* 2DFBC 0012D03C 0000C2AC */  sw         $2, 0x0($6)
    /* 2DFC0 0012D040 FFFF8434 */  ori        $4, $4, (0xFFFEFFFF & 0xFFFF)
    /* 2DFC4 0012D044 000070AC */  sw         $16, 0x0($3)
    /* 2DFC8 0012D048 1000BFDF */  ld         $31, 0x10($29)
    /* 2DFCC 0012D04C 0000A28C */  lw         $2, 0x0($5)
    /* 2DFD0 0012D050 0000B0DF */  ld         $16, 0x0($29)
    /* 2DFD4 0012D054 24104400 */  and        $2, $2, $4
    /* 2DFD8 0012D058 0000C2AC */  sw         $2, 0x0($6)
    /* 2DFDC 0012D05C 6A760408 */  j          func_0011D9A8
    /* 2DFE0 0012D060 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012D000
    /* 2DFE4 0012D064 00000000 */  nop
