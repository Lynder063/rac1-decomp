.align 3
nonmatching func_00123EE8, 0x44

glabel func_00123EE8
    /* 24E68 00123EE8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 24E6C 00123EEC 0000B0FF */  sd         $s0, 0x0($sp)
    /* 24E70 00123EF0 1000B1FF */  sd         $s1, 0x10($sp)
    /* 24E74 00123EF4 1200103C */  lui        $s0, %hi(func_00123EC0)
    /* 24E78 00123EF8 FFFF9130 */  andi       $s1, $a0, 0xFFFF
    /* 24E7C 00123EFC 2000BFFF */  sd         $ra, 0x20($sp)
    /* 24E80 00123F00 F862040C */  jal        func_00118BE0
    /* 24E84 00123F04 C03E1026 */   addiu     $s0, $s0, %lo(func_00123EC0)
    /* 24E88 00123F08 2D202002 */  daddu      $a0, $s1, $zero
    /* 24E8C 00123F0C 2D280002 */  daddu      $a1, $s0, $zero
    /* 24E90 00123F10 C862040C */  jal        func_00118B20
    /* 24E94 00123F14 2D304000 */   daddu     $a2, $v0, $zero
    /* 24E98 00123F18 2000BFDF */  ld         $ra, 0x20($sp)
    /* 24E9C 00123F1C 1000B1DF */  ld         $s1, 0x10($sp)
    /* 24EA0 00123F20 0000B0DF */  ld         $s0, 0x0($sp)
    /* 24EA4 00123F24 00630408 */  j          func_00118C00
    /* 24EA8 00123F28 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00123EE8
    /* 24EAC 00123F2C 00000000 */  nop
