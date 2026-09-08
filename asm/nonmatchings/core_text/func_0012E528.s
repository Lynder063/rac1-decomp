.align 3
nonmatching func_0012E528, 0x30

glabel func_0012E528
    /* 2F4A8 0012E528 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2F4AC 0012E52C 04000524 */  addiu      $5, $0, 0x4
    /* 2F4B0 0012E530 0000A4AF */  sw         $4, 0x0($29)
    /* 2F4B4 0012E534 2D30A003 */  daddu      $6, $29, $0
    /* 2F4B8 0012E538 1000BF7F */  sq         $31, 0x10($29)
    /* 2F4BC 0012E53C 16000424 */  addiu      $4, $0, 0x16
    /* 2F4C0 0012E540 2D380000 */  daddu      $7, $0, $0
    /* 2F4C4 0012E544 08BA040C */  jal        func_0012E820
    /* 2F4C8 0012E548 2D400000 */   daddu     $8, $0, $0
    /* 2F4CC 0012E54C 1000BF7B */  lq         $31, 0x10($29)
    /* 2F4D0 0012E550 0800E003 */  jr         $31
    /* 2F4D4 0012E554 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012E528
