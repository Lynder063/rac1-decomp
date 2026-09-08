.align 3
nonmatching func_0012E3F8, 0x3C

glabel func_0012E3F8
    /* 2F378 0012E3F8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2F37C 0012E3FC 2D10A000 */  daddu      $v0, $a1, $zero
    /* 2F380 0012E400 0000A4AF */  sw         $a0, 0x0($sp)
    /* 2F384 0012E404 0C000524 */  addiu      $a1, $zero, 0xC
    /* 2F388 0012E408 0800A6AF */  sw         $a2, 0x8($sp)
    /* 2F38C 0012E40C 4E000424 */  addiu      $a0, $zero, 0x4E
    /* 2F390 0012E410 1000BF7F */  sq         $ra, 0x10($sp)
    /* 2F394 0012E414 2D30A003 */  daddu      $a2, $sp, $zero
    /* 2F398 0012E418 0400A2AF */  sw         $v0, 0x4($sp)
    /* 2F39C 0012E41C 2D380000 */  daddu      $a3, $zero, $zero
    /* 2F3A0 0012E420 08BA040C */  jal        func_0012E820
    /* 2F3A4 0012E424 2D400000 */   daddu     $t0, $zero, $zero
    /* 2F3A8 0012E428 1000BF7B */  lq         $ra, 0x10($sp)
    /* 2F3AC 0012E42C 0800E003 */  jr         $ra
    /* 2F3B0 0012E430 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012E3F8
    /* 2F3B4 0012E434 00000000 */  nop
