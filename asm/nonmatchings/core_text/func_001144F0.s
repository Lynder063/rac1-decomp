.align 3
nonmatching func_001144F0, 0x24

glabel func_001144F0
    /* 15470 001144F0 1300023C */  lui        $v0, %hi(D_0012F86C)
    /* 15474 001144F4 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 15478 001144F8 6CF8448C */  lw         $a0, %lo(D_0012F86C)($v0)
    /* 1547C 001144FC 0000BFFF */  sd         $ra, 0x0($sp)
    /* 15480 00114500 3651040C */  jal        func_001144D8
    /* 15484 00114504 00000000 */   nop
    /* 15488 00114508 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1548C 0011450C 0800E003 */  jr         $ra
    /* 15490 00114510 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001144F0
