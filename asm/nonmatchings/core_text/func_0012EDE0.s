.align 3
nonmatching func_0012EDE0, 0x30

glabel func_0012EDE0
    /* 2FD60 0012EDE0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FD64 0012EDE4 04000524 */  addiu      $a1, $zero, 0x4
    /* 2FD68 0012EDE8 0000A4AF */  sw         $a0, 0x0($sp)
    /* 2FD6C 0012EDEC 2D30A003 */  daddu      $a2, $sp, $zero
    /* 2FD70 0012EDF0 1000BF7F */  sq         $ra, 0x10($sp)
    /* 2FD74 0012EDF4 2E000424 */  addiu      $a0, $zero, 0x2E
    /* 2FD78 0012EDF8 2D380000 */  daddu      $a3, $zero, $zero
    /* 2FD7C 0012EDFC 08BA040C */  jal        func_0012E820
    /* 2FD80 0012EE00 2D400000 */   daddu     $t0, $zero, $zero
    /* 2FD84 0012EE04 1000BF7B */  lq         $ra, 0x10($sp)
    /* 2FD88 0012EE08 0800E003 */  jr         $ra
    /* 2FD8C 0012EE0C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012EDE0
