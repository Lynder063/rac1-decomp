.align 3
nonmatching func_0012F0E8, 0x34

glabel func_0012F0E8
    /* 30068 0012F0E8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3006C 0012F0EC 2D380000 */  daddu      $a3, $zero, $zero
    /* 30070 0012F0F0 0000A4AF */  sw         $a0, 0x0($sp)
    /* 30074 0012F0F4 2D30A003 */  daddu      $a2, $sp, $zero
    /* 30078 0012F0F8 0400A5AF */  sw         $a1, 0x4($sp)
    /* 3007C 0012F0FC 51000424 */  addiu      $a0, $zero, 0x51
    /* 30080 0012F100 1000BF7F */  sq         $ra, 0x10($sp)
    /* 30084 0012F104 08000524 */  addiu      $a1, $zero, 0x8
    /* 30088 0012F108 08BA040C */  jal        func_0012E820
    /* 3008C 0012F10C 2D400000 */   daddu     $t0, $zero, $zero
    /* 30090 0012F110 1000BF7B */  lq         $ra, 0x10($sp)
    /* 30094 0012F114 0800E003 */  jr         $ra
    /* 30098 0012F118 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012F0E8
    /* 3009C 0012F11C 00000000 */  nop
