.align 3
nonmatching func_00119718, 0x44

glabel func_00119718
    /* 1A698 00119718 1500023C */  lui        $v0, %hi(D_00154A10)
    /* 1A69C 0011971C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1A6A0 00119720 0020033C */  lui        $v1, (0x20000000 >> 16)
    /* 1A6A4 00119724 104A4224 */  addiu      $v0, $v0, %lo(D_00154A10)
    /* 1A6A8 00119728 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 1A6AC 0011972C 25104300 */  or         $v0, $v0, $v1
    /* 1A6B0 00119730 0400A5AF */  sw         $a1, 0x4($sp)
    /* 1A6B4 00119734 0000A4AF */  sw         $a0, 0x0($sp)
    /* 1A6B8 00119738 2D28A003 */  daddu      $a1, $sp, $zero
    /* 1A6BC 0011973C 1000BFFF */  sd         $ra, 0x10($sp)
    /* 1A6C0 00119740 01000424 */  addiu      $a0, $zero, 0x1
    /* 1A6C4 00119744 0800A6AF */  sw         $a2, 0x8($sp)
    /* 1A6C8 00119748 A463040C */  jal        func_00118E90
    /* 1A6CC 0011974C 0C00A2AF */   sw        $v0, 0xC($sp)
    /* 1A6D0 00119750 1000BFDF */  ld         $ra, 0x10($sp)
    /* 1A6D4 00119754 0800E003 */  jr         $ra
    /* 1A6D8 00119758 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00119718
    /* 1A6DC 0011975C 00000000 */  nop
