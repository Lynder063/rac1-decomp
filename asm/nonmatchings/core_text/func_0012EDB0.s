.align 3
nonmatching func_0012EDB0, 0x30

glabel func_0012EDB0
    /* 2FD30 0012EDB0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FD34 0012EDB4 04000524 */  addiu      $a1, $zero, 0x4
    /* 2FD38 0012EDB8 0000A4AF */  sw         $a0, 0x0($sp)
    /* 2FD3C 0012EDBC 2D30A003 */  daddu      $a2, $sp, $zero
    /* 2FD40 0012EDC0 1000BF7F */  sq         $ra, 0x10($sp)
    /* 2FD44 0012EDC4 2D000424 */  addiu      $a0, $zero, 0x2D
    /* 2FD48 0012EDC8 2D380000 */  daddu      $a3, $zero, $zero
    /* 2FD4C 0012EDCC 08BA040C */  jal        func_0012E820
    /* 2FD50 0012EDD0 2D400000 */   daddu     $t0, $zero, $zero
    /* 2FD54 0012EDD4 1000BF7B */  lq         $ra, 0x10($sp)
    /* 2FD58 0012EDD8 0800E003 */  jr         $ra
    /* 2FD5C 0012EDDC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012EDB0
