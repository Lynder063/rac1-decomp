.align 3
nonmatching func_00112380, 0x28

glabel func_00112380
    /* 13300 00112380 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13304 00112384 2D280000 */  daddu      $a1, $zero, $zero
    /* 13308 00112388 0000BFFF */  sd         $ra, 0x0($sp)
    /* 1330C 0011238C DA5B040C */  jal        func_00116F68
    /* 13310 00112390 0A000624 */   addiu     $a2, $zero, 0xA
    /* 13314 00112394 0000BFDF */  ld         $ra, 0x0($sp)
    /* 13318 00112398 3C100200 */  dsll32     $v0, $v0, 0
    /* 1331C 0011239C 3F100200 */  dsra32     $v0, $v0, 0
    /* 13320 001123A0 0800E003 */  jr         $ra
    /* 13324 001123A4 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00112380
