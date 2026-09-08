.align 3
nonmatching func_0012EE70, 0x28

glabel func_0012EE70
    /* 2FDF0 0012EE70 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FDF4 0012EE74 04000524 */  addiu      $a1, $zero, 0x4
    /* 2FDF8 0012EE78 0000A4AF */  sw         $a0, 0x0($sp)
    /* 2FDFC 0012EE7C 2D30A003 */  daddu      $a2, $sp, $zero
    /* 2FE00 0012EE80 1000BF7F */  sq         $ra, 0x10($sp)
    /* 2FE04 0012EE84 A2B9040C */  jal        func_0012E688
    /* 2FE08 0012EE88 36000424 */   addiu     $a0, $zero, 0x36
    /* 2FE0C 0012EE8C 1000BF7B */  lq         $ra, 0x10($sp)
    /* 2FE10 0012EE90 0800E003 */  jr         $ra
    /* 2FE14 0012EE94 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012EE70
