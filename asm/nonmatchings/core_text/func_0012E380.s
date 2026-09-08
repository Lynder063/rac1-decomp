.align 3
nonmatching func_0012E380, 0x30

glabel func_0012E380
    /* 2F300 0012E380 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2F304 0012E384 04000524 */  addiu      $5, $0, 0x4
    /* 2F308 0012E388 0000A4AF */  sw         $4, 0x0($29)
    /* 2F30C 0012E38C 2D30A003 */  daddu      $6, $29, $0
    /* 2F310 0012E390 1000BF7F */  sq         $31, 0x10($29)
    /* 2F314 0012E394 0B000424 */  addiu      $4, $0, 0xB
    /* 2F318 0012E398 2D380000 */  daddu      $7, $0, $0
    /* 2F31C 0012E39C 08BA040C */  jal        func_0012E820
    /* 2F320 0012E3A0 2D400000 */   daddu     $8, $0, $0
    /* 2F324 0012E3A4 1000BF7B */  lq         $31, 0x10($29)
    /* 2F328 0012E3A8 0800E003 */  jr         $31
    /* 2F32C 0012E3AC 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012E380
