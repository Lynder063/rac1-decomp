.align 3
nonmatching func_0012ABB0, 0x44

glabel func_0012ABB0
    /* 2BB30 0012ABB0 D0FFBD27 */  addiu      $29, $29, -0x30
    /* 2BB34 0012ABB4 01000524 */  addiu      $5, $0, 0x1
    /* 2BB38 0012ABB8 0000B0FF */  sd         $16, 0x0($29)
    /* 2BB3C 0012ABBC 1000B1FF */  sd         $17, 0x10($29)
    /* 2BB40 0012ABC0 2000BFFF */  sd         $31, 0x20($29)
    /* 2BB44 0012ABC4 AAAA040C */  jal        func_0012AAA8
    /* 2BB48 0012ABC8 2D808000 */   daddu     $16, $4, $0
    /* 2BB4C 0012ABCC 2D884000 */  daddu      $17, $2, $0
    /* 2BB50 0012ABD0 2D200002 */  daddu      $4, $16, $0
    /* 2BB54 0012ABD4 B2AA040C */  jal        func_0012AAC8
    /* 2BB58 0012ABD8 01000524 */   addiu     $5, $0, 0x1
    /* 2BB5C 0012ABDC 2D102002 */  daddu      $2, $17, $0
    /* 2BB60 0012ABE0 2000BFDF */  ld         $31, 0x20($29)
    /* 2BB64 0012ABE4 1000B1DF */  ld         $17, 0x10($29)
    /* 2BB68 0012ABE8 0000B0DF */  ld         $16, 0x0($29)
    /* 2BB6C 0012ABEC 0800E003 */  jr         $31
    /* 2BB70 0012ABF0 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0012ABB0
    /* 2BB74 0012ABF4 00000000 */  nop
