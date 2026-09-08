.align 3
nonmatching func_00222AD0, 0x30

glabel func_00222AD0
    /* 123A50 00222AD0 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 123A54 00222AD4 1000BF7F */  sq         $31, 0x10($29)
    /* 123A58 00222AD8 0000B07F */  sq         $16, 0x0($29)
    /* 123A5C 00222ADC 2D808000 */  daddu      $16, $4, $0
    /* 123A60 00222AE0 DA9B080C */  jal        func_00226F68
    /* 123A64 00222AE4 5400048E */   lw        $4, 0x54($16)
    /* 123A68 00222AE8 540002AE */  sw         $2, 0x54($16)
    /* 123A6C 00222AEC 1000BF7B */  lq         $31, 0x10($29)
    /* 123A70 00222AF0 2D100000 */  daddu      $2, $0, $0
    /* 123A74 00222AF4 0000B07B */  lq         $16, 0x0($29)
    /* 123A78 00222AF8 0800E003 */  jr         $31
    /* 123A7C 00222AFC 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_00222AD0
