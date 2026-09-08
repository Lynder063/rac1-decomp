.align 3
nonmatching func_0011ABC8, 0x3C

glabel func_0011ABC8
    /* 1BB48 0011ABC8 2D10C000 */  daddu      $v0, $a2, $zero
    /* 1BB4C 0011ABCC 2D18E000 */  daddu      $v1, $a3, $zero
    /* 1BB50 0011ABD0 2D580001 */  daddu      $t3, $t0, $zero
    /* 1BB54 0011ABD4 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1BB58 0011ABD8 2D502001 */  daddu      $t2, $t1, $zero
    /* 1BB5C 0011ABDC 2D30A000 */  daddu      $a2, $a1, $zero
    /* 1BB60 0011ABE0 0000BFFF */  sd         $ra, 0x0($sp)
    /* 1BB64 0011ABE4 2D384000 */  daddu      $a3, $v0, $zero
    /* 1BB68 0011ABE8 2D406000 */  daddu      $t0, $v1, $zero
    /* 1BB6C 0011ABEC 2D486001 */  daddu      $t1, $t3, $zero
    /* 1BB70 0011ABF0 A46A040C */  jal        func_0011AA90
    /* 1BB74 0011ABF4 2D280000 */   daddu     $a1, $zero, $zero
    /* 1BB78 0011ABF8 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1BB7C 0011ABFC 0800E003 */  jr         $ra
    /* 1BB80 0011AC00 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0011ABC8
    /* 1BB84 0011AC04 00000000 */  nop
