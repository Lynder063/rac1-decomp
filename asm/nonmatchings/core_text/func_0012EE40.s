.align 3
nonmatching func_0012EE40, 0x30

glabel func_0012EE40
    /* 2FDC0 0012EE40 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FDC4 0012EE44 2D38A000 */  daddu      $a3, $a1, $zero
    /* 2FDC8 0012EE48 0000A4AF */  sw         $a0, 0x0($sp)
    /* 2FDCC 0012EE4C 2D40C000 */  daddu      $t0, $a2, $zero
    /* 2FDD0 0012EE50 1000BF7F */  sq         $ra, 0x10($sp)
    /* 2FDD4 0012EE54 4F000424 */  addiu      $a0, $zero, 0x4F
    /* 2FDD8 0012EE58 04000524 */  addiu      $a1, $zero, 0x4
    /* 2FDDC 0012EE5C 08BA040C */  jal        func_0012E820
    /* 2FDE0 0012EE60 2D30A003 */   daddu     $a2, $sp, $zero
    /* 2FDE4 0012EE64 1000BF7B */  lq         $ra, 0x10($sp)
    /* 2FDE8 0012EE68 0800E003 */  jr         $ra
    /* 2FDEC 0012EE6C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012EE40
