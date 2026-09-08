.align 3
nonmatching func_0011AC08, 0x3C

glabel func_0011AC08
    /* 1BB88 0011AC08 2D10C000 */  daddu      $v0, $a2, $zero
    /* 1BB8C 0011AC0C 2D18E000 */  daddu      $v1, $a3, $zero
    /* 1BB90 0011AC10 2D580001 */  daddu      $t3, $t0, $zero
    /* 1BB94 0011AC14 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1BB98 0011AC18 2D502001 */  daddu      $t2, $t1, $zero
    /* 1BB9C 0011AC1C 2D30A000 */  daddu      $a2, $a1, $zero
    /* 1BBA0 0011AC20 0000BFFF */  sd         $ra, 0x0($sp)
    /* 1BBA4 0011AC24 2D384000 */  daddu      $a3, $v0, $zero
    /* 1BBA8 0011AC28 2D406000 */  daddu      $t0, $v1, $zero
    /* 1BBAC 0011AC2C 2D486001 */  daddu      $t1, $t3, $zero
    /* 1BBB0 0011AC30 A46A040C */  jal        func_0011AA90
    /* 1BBB4 0011AC34 01000524 */   addiu     $a1, $zero, 0x1
    /* 1BBB8 0011AC38 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1BBBC 0011AC3C 0800E003 */  jr         $ra
    /* 1BBC0 0011AC40 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0011AC08
    /* 1BBC4 0011AC44 00000000 */  nop
