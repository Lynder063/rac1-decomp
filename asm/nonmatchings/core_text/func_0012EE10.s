.align 3
nonmatching func_0012EE10, 0x30

glabel func_0012EE10
    /* 2FD90 0012EE10 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FD94 0012EE14 2D38A000 */  daddu      $a3, $a1, $zero
    /* 2FD98 0012EE18 0000A4AF */  sw         $a0, 0x0($sp)
    /* 2FD9C 0012EE1C 2D40C000 */  daddu      $t0, $a2, $zero
    /* 2FDA0 0012EE20 1000BF7F */  sq         $ra, 0x10($sp)
    /* 2FDA4 0012EE24 32000424 */  addiu      $a0, $zero, 0x32
    /* 2FDA8 0012EE28 04000524 */  addiu      $a1, $zero, 0x4
    /* 2FDAC 0012EE2C 08BA040C */  jal        func_0012E820
    /* 2FDB0 0012EE30 2D30A003 */   daddu     $a2, $sp, $zero
    /* 2FDB4 0012EE34 1000BF7B */  lq         $ra, 0x10($sp)
    /* 2FDB8 0012EE38 0800E003 */  jr         $ra
    /* 2FDBC 0012EE3C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012EE10
