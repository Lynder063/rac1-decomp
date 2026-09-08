.align 3
nonmatching func_00116F68, 0x34

glabel func_00116F68
    /* 17EE8 00116F68 2D408000 */  daddu      $t0, $a0, $zero
    /* 17EEC 00116F6C 1300023C */  lui        $v0, %hi(D_0012F86C)
    /* 17EF0 00116F70 2D18A000 */  daddu      $v1, $a1, $zero
    /* 17EF4 00116F74 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 17EF8 00116F78 2D38C000 */  daddu      $a3, $a2, $zero
    /* 17EFC 00116F7C 6CF8448C */  lw         $a0, %lo(D_0012F86C)($v0)
    /* 17F00 00116F80 0000BFFF */  sd         $ra, 0x0($sp)
    /* 17F04 00116F84 2D280001 */  daddu      $a1, $t0, $zero
    /* 17F08 00116F88 4C5B040C */  jal        func_00116D30
    /* 17F0C 00116F8C 2D306000 */   daddu     $a2, $v1, $zero
    /* 17F10 00116F90 0000BFDF */  ld         $ra, 0x0($sp)
    /* 17F14 00116F94 0800E003 */  jr         $ra
    /* 17F18 00116F98 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00116F68
