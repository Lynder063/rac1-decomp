.align 3
nonmatching func_00115808, 0x38

glabel func_00115808
    /* 16788 00115808 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1678C 0011580C 0000B0FF */  sd         $s0, 0x0($sp)
    /* 16790 00115810 2D80A000 */  daddu      $s0, $a1, $zero
    /* 16794 00115814 1000BFFF */  sd         $ra, 0x10($sp)
    /* 16798 00115818 3455040C */  jal        func_001154D0
    /* 1679C 0011581C 01000524 */   addiu     $a1, $zero, 0x1
    /* 167A0 00115820 2D184000 */  daddu      $v1, $v0, $zero
    /* 167A4 00115824 01000424 */  addiu      $a0, $zero, 0x1
    /* 167A8 00115828 140070AC */  sw         $s0, 0x14($v1)
    /* 167AC 0011582C 1000BFDF */  ld         $ra, 0x10($sp)
    /* 167B0 00115830 0000B0DF */  ld         $s0, 0x0($sp)
    /* 167B4 00115834 100064AC */  sw         $a0, 0x10($v1)
    /* 167B8 00115838 0800E003 */  jr         $ra
    /* 167BC 0011583C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00115808
