.align 3
nonmatching func_00116F68, 0x34

glabel func_00116F68
    /* 17EE8 00116F68 2D408000 */  daddu      $8, $4, $0
    /* 17EEC 00116F6C 1300023C */  lui        $2, %hi(D_0012F86C)
    /* 17EF0 00116F70 2D18A000 */  daddu      $3, $5, $0
    /* 17EF4 00116F74 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 17EF8 00116F78 2D38C000 */  daddu      $7, $6, $0
    /* 17EFC 00116F7C 6CF8448C */  lw         $4, %lo(D_0012F86C)($2)
    /* 17F00 00116F80 0000BFFF */  sd         $31, 0x0($29)
    /* 17F04 00116F84 2D280001 */  daddu      $5, $8, $0
    /* 17F08 00116F88 4C5B040C */  jal        func_00116D30
    /* 17F0C 00116F8C 2D306000 */   daddu     $6, $3, $0
    /* 17F10 00116F90 0000BFDF */  ld         $31, 0x0($29)
    /* 17F14 00116F94 0800E003 */  jr         $31
    /* 17F18 00116F98 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_00116F68
