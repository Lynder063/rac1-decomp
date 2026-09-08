.align 3
nonmatching func_0020DFF8, 0x44

glabel func_0020DFF8
    /* 10EF78 0020DFF8 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 10EF7C 0020DFFC 0000BF7F */  sq         $31, 0x0($29)
    /* 10EF80 0020E000 6063040C */  jal        func_00118D80
    /* 10EF84 0020E004 2D200000 */   daddu     $4, $0, $0
    /* 10EF88 0020E008 1600053C */  lui        $5, %hi(D_00165600)
    /* 10EF8C 0020E00C 0070043C */  lui        $4, (0x70003800 >> 16)
    /* 10EF90 0020E010 00080624 */  addiu      $6, $0, 0x800
    /* 10EF94 0020E014 0056A524 */  addiu      $5, $5, %lo(D_00165600)
    /* 10EF98 0020E018 A6E6070C */  jal        func_001F9A98
    /* 10EF9C 0020E01C 00388434 */   ori       $4, $4, (0x70003800 & 0xFFFF)
    /* 10EFA0 0020E020 1600043C */  lui        $4, %hi(D_0015F718)
    /* 10EFA4 0020E024 18F7848C */  lw         $4, %lo(D_0015F718)($4)
    /* 10EFA8 0020E028 5E49080C */  jal        func_00212578
    /* 10EFAC 0020E02C 1C8A858F */   lw        $5, -0x75E4($28)
    /* 10EFB0 0020E030 0000BF7B */  lq         $31, 0x0($29)
    /* 10EFB4 0020E034 0800E003 */  jr         $31
    /* 10EFB8 0020E038 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0020DFF8
    /* 10EFBC 0020E03C 00000000 */  nop
