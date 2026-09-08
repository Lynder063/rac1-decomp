.align 3
nonmatching func_00218908, 0x20

glabel func_00218908
    /* 119888 00218908 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 11988C 0021890C 1400043C */  lui        $a0, %hi(D_0013CA40)
    /* 119890 00218910 0000BF7F */  sq         $ra, 0x0($sp)
    /* 119894 00218914 DA5F080C */  jal        func_00217F68
    /* 119898 00218918 40CA8424 */   addiu     $a0, $a0, %lo(D_0013CA40)
    /* 11989C 0021891C 0000BF7B */  lq         $ra, 0x0($sp)
    /* 1198A0 00218920 0800E003 */  jr         $ra
    /* 1198A4 00218924 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00218908
