.align 3
nonmatching func_0012ED10, 0x2C

glabel func_0012ED10
    /* 2FC90 0012ED10 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2FC94 0012ED14 34000424 */  addiu      $a0, $zero, 0x34
    /* 2FC98 0012ED18 0000BF7F */  sq         $ra, 0x0($sp)
    /* 2FC9C 0012ED1C 2D280000 */  daddu      $a1, $zero, $zero
    /* 2FCA0 0012ED20 2D300000 */  daddu      $a2, $zero, $zero
    /* 2FCA4 0012ED24 2D380000 */  daddu      $a3, $zero, $zero
    /* 2FCA8 0012ED28 08BA040C */  jal        func_0012E820
    /* 2FCAC 0012ED2C 2D400000 */   daddu     $t0, $zero, $zero
    /* 2FCB0 0012ED30 0000BF7B */  lq         $ra, 0x0($sp)
    /* 2FCB4 0012ED34 0800E003 */  jr         $ra
    /* 2FCB8 0012ED38 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012ED10
    /* 2FCBC 0012ED3C 00000000 */  nop
