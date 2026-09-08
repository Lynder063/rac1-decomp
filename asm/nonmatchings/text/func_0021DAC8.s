.align 3
nonmatching func_0021DAC8, 0x14

glabel func_0021DAC8
    /* 11EA48 0021DAC8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 11EA4C 0021DACC 1A00033C */  lui        $v1, %hi(D_001A0418)
    /* 11EA50 0021DAD0 180462AC */  sw         $v0, %lo(D_001A0418)($v1)
    /* 11EA54 0021DAD4 0800E003 */  jr         $ra
    /* 11EA58 0021DAD8 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0021DAC8
    /* 11EA5C 0021DADC 00000000 */  nop
