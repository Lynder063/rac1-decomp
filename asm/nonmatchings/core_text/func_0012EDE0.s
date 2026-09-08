.align 3
nonmatching func_0012EDE0, 0x30

glabel func_0012EDE0
    /* 2FD60 0012EDE0 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2FD64 0012EDE4 04000524 */  addiu      $5, $0, 0x4
    /* 2FD68 0012EDE8 0000A4AF */  sw         $4, 0x0($29)
    /* 2FD6C 0012EDEC 2D30A003 */  daddu      $6, $29, $0
    /* 2FD70 0012EDF0 1000BF7F */  sq         $31, 0x10($29)
    /* 2FD74 0012EDF4 2E000424 */  addiu      $4, $0, 0x2E
    /* 2FD78 0012EDF8 2D380000 */  daddu      $7, $0, $0
    /* 2FD7C 0012EDFC 08BA040C */  jal        func_0012E820
    /* 2FD80 0012EE00 2D400000 */   daddu     $8, $0, $0
    /* 2FD84 0012EE04 1000BF7B */  lq         $31, 0x10($29)
    /* 2FD88 0012EE08 0800E003 */  jr         $31
    /* 2FD8C 0012EE0C 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012EDE0
