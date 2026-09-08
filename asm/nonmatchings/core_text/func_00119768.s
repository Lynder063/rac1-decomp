.align 3
nonmatching func_00119768, 0x30

glabel func_00119768
    /* 1A6E8 00119768 002E0500 */  sll        $a1, $a1, 24
    /* 1A6EC 0011976C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1A6F0 00119770 032E0500 */  sra        $a1, $a1, 24
    /* 1A6F4 00119774 0000A4AF */  sw         $a0, 0x0($sp)
    /* 1A6F8 00119778 0400A5AF */  sw         $a1, 0x4($sp)
    /* 1A6FC 0011977C 03000424 */  addiu      $a0, $zero, 0x3
    /* 1A700 00119780 1000BFFF */  sd         $ra, 0x10($sp)
    /* 1A704 00119784 A463040C */  jal        func_00118E90
    /* 1A708 00119788 2D28A003 */   daddu     $a1, $sp, $zero
    /* 1A70C 0011978C 1000BFDF */  ld         $ra, 0x10($sp)
    /* 1A710 00119790 0800E003 */  jr         $ra
    /* 1A714 00119794 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00119768
