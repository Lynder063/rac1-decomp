.align 3
nonmatching func_0012E318, 0x30

glabel func_0012E318
    /* 2F298 0012E318 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2F29C 0012E31C 04000524 */  addiu      $5, $0, 0x4
    /* 2F2A0 0012E320 0000A4AF */  sw         $4, 0x0($29)
    /* 2F2A4 0012E324 2D30A003 */  daddu      $6, $29, $0
    /* 2F2A8 0012E328 1000BF7F */  sq         $31, 0x10($29)
    /* 2F2AC 0012E32C 06000424 */  addiu      $4, $0, 0x6
    /* 2F2B0 0012E330 2D380000 */  daddu      $7, $0, $0
    /* 2F2B4 0012E334 08BA040C */  jal        func_0012E820
    /* 2F2B8 0012E338 2D400000 */   daddu     $8, $0, $0
    /* 2F2BC 0012E33C 1000BF7B */  lq         $31, 0x10($29)
    /* 2F2C0 0012E340 0800E003 */  jr         $31
    /* 2F2C4 0012E344 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012E318
