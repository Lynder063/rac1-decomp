.align 3
nonmatching func_0020E040, 0x28

glabel func_0020E040
    /* 10EFC0 0020E040 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 10EFC4 0020E044 0070043C */  lui        $a0, (0x70003A00 >> 16)
    /* 10EFC8 0020E048 0000BF7F */  sq         $ra, 0x0($sp)
    /* 10EFCC 0020E04C 0040053C */  lui        $a1, (0x40000000 >> 16)
    /* 10EFD0 0020E050 003A8434 */  ori        $a0, $a0, (0x70003A00 & 0xFFFF)
    /* 10EFD4 0020E054 6CE6070C */  jal        func_001F99B0
    /* 10EFD8 0020E058 80030624 */   addiu     $a2, $zero, 0x380
    /* 10EFDC 0020E05C 0000BF7B */  lq         $ra, 0x0($sp)
    /* 10EFE0 0020E060 0800E003 */  jr         $ra
    /* 10EFE4 0020E064 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0020E040
