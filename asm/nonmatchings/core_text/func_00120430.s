.align 3
nonmatching func_00120430, 0x4C

glabel func_00120430
    /* 213B0 00120430 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 213B4 00120434 4000A4FF */  sd         $a0, 0x40($sp)
    /* 213B8 00120438 4800A5FF */  sd         $a1, 0x48($sp)
    /* 213BC 0012043C 4000A427 */  addiu      $a0, $sp, 0x40
    /* 213C0 00120440 5000B0FF */  sd         $s0, 0x50($sp)
    /* 213C4 00120444 6000BFFF */  sd         $ra, 0x60($sp)
    /* 213C8 00120448 DA7E040C */  jal        func_0011FB68
    /* 213CC 0012044C 2D28A003 */   daddu     $a1, $sp, $zero
    /* 213D0 00120450 2000B027 */  addiu      $s0, $sp, 0x20
    /* 213D4 00120454 4800A427 */  addiu      $a0, $sp, 0x48
    /* 213D8 00120458 DA7E040C */  jal        func_0011FB68
    /* 213DC 0012045C 2D280002 */   daddu     $a1, $s0, $zero
    /* 213E0 00120460 2D280002 */  daddu      $a1, $s0, $zero
    /* 213E4 00120464 C680040C */  jal        func_00120318
    /* 213E8 00120468 2D20A003 */   daddu     $a0, $sp, $zero
    /* 213EC 0012046C 6000BFDF */  ld         $ra, 0x60($sp)
    /* 213F0 00120470 5000B0DF */  ld         $s0, 0x50($sp)
    /* 213F4 00120474 0800E003 */  jr         $ra
    /* 213F8 00120478 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_00120430
    /* 213FC 0012047C 00000000 */  nop
