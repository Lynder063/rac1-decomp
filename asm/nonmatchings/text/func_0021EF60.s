.align 3
nonmatching func_0021EF60, 0x3C

glabel func_0021EF60
    /* 11FEE0 0021EF60 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 11FEE4 0021EF64 1000BF7F */  sq         $31, 0x10($29)
    /* 11FEE8 0021EF68 0000B07F */  sq         $16, 0x0($29)
    /* 11FEEC 0021EF6C 2D808000 */  daddu      $16, $4, $0
    /* 11FEF0 0021EF70 F099080C */  jal        func_002267C0
    /* 11FEF4 0021EF74 4400048E */   lw        $4, 0x44($16)
    /* 11FEF8 0021EF78 4800048E */  lw         $4, 0x48($16)
    /* 11FEFC 0021EF7C F099080C */  jal        func_002267C0
    /* 11FF00 0021EF80 440002AE */   sw        $2, 0x44($16)
    /* 11FF04 0021EF84 480002AE */  sw         $2, 0x48($16)
    /* 11FF08 0021EF88 1000BF7B */  lq         $31, 0x10($29)
    /* 11FF0C 0021EF8C 2D100000 */  daddu      $2, $0, $0
    /* 11FF10 0021EF90 0000B07B */  lq         $16, 0x0($29)
    /* 11FF14 0021EF94 0800E003 */  jr         $31
    /* 11FF18 0021EF98 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0021EF60
    /* 11FF1C 0021EF9C 00000000 */  nop
