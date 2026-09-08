.align 3
nonmatching func_0011DDA0, 0x28

glabel func_0011DDA0
    /* 1ED20 0011DDA0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1ED24 0011DDA4 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1ED28 0011DDA8 1000BFFF */  sd         $ra, 0x10($sp)
    /* 1ED2C 0011DDAC 6677040C */  jal        func_0011DD98
    /* 1ED30 0011DDB0 2D808000 */   daddu     $s0, $a0, $zero
    /* 1ED34 0011DDB4 2D200002 */  daddu      $a0, $s0, $zero
    /* 1ED38 0011DDB8 1000BFDF */  ld         $ra, 0x10($sp)
    /* 1ED3C 0011DDBC 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1ED40 0011DDC0 98620408 */  j          func_00118A60
    /* 1ED44 0011DDC4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0011DDA0
