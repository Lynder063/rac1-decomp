.align 3
nonmatching func_0021DAC8, 0x14

glabel func_0021DAC8
    /* 11EA48 0021DAC8 FFFF0224 */  addiu      $2, $0, -0x1
    /* 11EA4C 0021DACC 1A00033C */  lui        $3, %hi(D_001A0418)
    /* 11EA50 0021DAD0 180462AC */  sw         $2, %lo(D_001A0418)($3)
    /* 11EA54 0021DAD4 0800E003 */  jr         $31
    /* 11EA58 0021DAD8 2D100000 */   daddu     $2, $0, $0
endlabel func_0021DAC8
    /* 11EA5C 0021DADC 00000000 */  nop
