.align 3
nonmatching func_0011AA00, 0x34

glabel func_0011AA00
    /* 1B980 0011AA00 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1B984 0011AA04 0000BFFF */  sd         $ra, 0x0($sp)
    /* 1B988 0011AA08 FE64040C */  jal        func_001193F8
    /* 1B98C 0011AA0C 05000424 */   addiu     $a0, $zero, 0x5
    /* 1B990 0011AA10 1500033C */  lui        $v1, %hi(D_00154F54)
    /* 1B994 0011AA14 05000424 */  addiu      $a0, $zero, 0x5
    /* 1B998 0011AA18 B462040C */  jal        func_00118AD0
    /* 1B99C 0011AA1C 544F658C */   lw        $a1, %lo(D_00154F54)($v1)
    /* 1B9A0 0011AA20 1300033C */  lui        $v1, %hi(D_0012FD04)
    /* 1B9A4 0011AA24 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1B9A8 0011AA28 04FD60AC */  sw         $zero, %lo(D_0012FD04)($v1)
    /* 1B9AC 0011AA2C 0800E003 */  jr         $ra
    /* 1B9B0 0011AA30 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0011AA00
    /* 1B9B4 0011AA34 00000000 */  nop
