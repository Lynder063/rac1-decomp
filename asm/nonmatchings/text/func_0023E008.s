.align 3
nonmatching func_0023E008, 0x34

glabel func_0023E008
    /* 13EF88 0023E008 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 13EF8C 0023E00C 0000B07F */  sq         $16, 0x0($29)
    /* 13EF90 0023E010 2D808000 */  daddu      $16, $4, $0
    /* 13EF94 0023E014 1000BF7F */  sq         $31, 0x10($29)
    /* 13EF98 0023E018 62F6080C */  jal        func_0023D988
    /* 13EF9C 0023E01C 48000426 */   addiu     $4, $16, 0x48
    /* 13EFA0 0023E020 C8AE040C */  jal        func_0012BB20
    /* 13EFA4 0023E024 2D200002 */   daddu     $4, $16, $0
    /* 13EFA8 0023E028 1000BF7B */  lq         $31, 0x10($29)
    /* 13EFAC 0023E02C 01000224 */  addiu      $2, $0, 0x1
    /* 13EFB0 0023E030 0000B07B */  lq         $16, 0x0($29)
    /* 13EFB4 0023E034 0800E003 */  jr         $31
    /* 13EFB8 0023E038 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0023E008
    /* 13EFBC 0023E03C 00000000 */  nop
