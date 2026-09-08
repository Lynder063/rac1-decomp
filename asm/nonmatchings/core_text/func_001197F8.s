.align 3
nonmatching func_001197F8, 0x34

glabel func_001197F8
    /* 1A778 001197F8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1A77C 001197FC 2D10A000 */  daddu      $v0, $a1, $zero
    /* 1A780 00119800 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* 1A784 00119804 0000A4AF */  sw         $a0, 0x0($sp)
    /* 1A788 00119808 1000BFFF */  sd         $ra, 0x10($sp)
    /* 1A78C 0011980C 2D28A003 */  daddu      $a1, $sp, $zero
    /* 1A790 00119810 0400A2AF */  sw         $v0, 0x4($sp)
    /* 1A794 00119814 FAFF0424 */  addiu      $a0, $zero, -0x6
    /* 1A798 00119818 A463040C */  jal        func_00118E90
    /* 1A79C 0011981C 0800A6AF */   sw        $a2, 0x8($sp)
    /* 1A7A0 00119820 1000BFDF */  ld         $ra, 0x10($sp)
    /* 1A7A4 00119824 0800E003 */  jr         $ra
    /* 1A7A8 00119828 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001197F8
    /* 1A7AC 0011982C 00000000 */  nop
