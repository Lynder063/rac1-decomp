.align 3
nonmatching func_0021FAF8, 0x30

glabel func_0021FAF8
    /* 120A78 0021FAF8 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 120A7C 0021FAFC 1000BF7F */  sq         $31, 0x10($29)
    /* 120A80 0021FB00 0000B07F */  sq         $16, 0x0($29)
    /* 120A84 0021FB04 2D808000 */  daddu      $16, $4, $0
    /* 120A88 0021FB08 F099080C */  jal        func_002267C0
    /* 120A8C 0021FB0C 4400048E */   lw        $4, 0x44($16)
    /* 120A90 0021FB10 440002AE */  sw         $2, 0x44($16)
    /* 120A94 0021FB14 1000BF7B */  lq         $31, 0x10($29)
    /* 120A98 0021FB18 2D100000 */  daddu      $2, $0, $0
    /* 120A9C 0021FB1C 0000B07B */  lq         $16, 0x0($29)
    /* 120AA0 0021FB20 0800E003 */  jr         $31
    /* 120AA4 0021FB24 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0021FAF8
