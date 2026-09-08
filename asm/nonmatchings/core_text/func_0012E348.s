.align 3
nonmatching func_0012E348, 0x34

glabel func_0012E348
    /* 2F2C8 0012E348 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2F2CC 0012E34C 2D380000 */  daddu      $7, $0, $0
    /* 2F2D0 0012E350 0000A4AF */  sw         $4, 0x0($29)
    /* 2F2D4 0012E354 2D30A003 */  daddu      $6, $29, $0
    /* 2F2D8 0012E358 0400A5AF */  sw         $5, 0x4($29)
    /* 2F2DC 0012E35C 09000424 */  addiu      $4, $0, 0x9
    /* 2F2E0 0012E360 1000BF7F */  sq         $31, 0x10($29)
    /* 2F2E4 0012E364 08000524 */  addiu      $5, $0, 0x8
    /* 2F2E8 0012E368 08BA040C */  jal        func_0012E820
    /* 2F2EC 0012E36C 2D400000 */   daddu     $8, $0, $0
    /* 2F2F0 0012E370 1000BF7B */  lq         $31, 0x10($29)
    /* 2F2F4 0012E374 0800E003 */  jr         $31
    /* 2F2F8 0012E378 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012E348
    /* 2F2FC 0012E37C 00000000 */  nop
