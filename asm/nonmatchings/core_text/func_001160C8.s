.align 3
nonmatching func_001160C8, 0x10

glabel func_001160C8
    /* 17048 001160C8 1300023C */  lui        $v0, %hi(D_0012F86C)
    /* 1704C 001160CC 6CF8438C */  lw         $v1, %lo(D_0012F86C)($v0)
    /* 17050 001160D0 0800E003 */  jr         $ra
    /* 17054 001160D4 580064AC */   sw        $a0, 0x58($v1)
endlabel func_001160C8
