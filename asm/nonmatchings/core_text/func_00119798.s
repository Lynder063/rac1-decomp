.align 3
nonmatching func_00119798, 0x24

glabel func_00119798
    /* 1A718 00119798 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1A71C 0011979C 0000A4AF */  sw         $a0, 0x0($sp)
    /* 1A720 001197A0 2D28A003 */  daddu      $a1, $sp, $zero
    /* 1A724 001197A4 1000BFFF */  sd         $ra, 0x10($sp)
    /* 1A728 001197A8 A463040C */  jal        func_00118E90
    /* 1A72C 001197AC 04000424 */   addiu     $a0, $zero, 0x4
    /* 1A730 001197B0 1000BFDF */  ld         $ra, 0x10($sp)
    /* 1A734 001197B4 0800E003 */  jr         $ra
    /* 1A738 001197B8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00119798
    /* 1A73C 001197BC 00000000 */  nop
