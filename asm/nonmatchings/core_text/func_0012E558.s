.align 3
nonmatching func_0012E558, 0x30

glabel func_0012E558
    /* 2F4D8 0012E558 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2F4DC 0012E55C 04000524 */  addiu      $5, $0, 0x4
    /* 2F4E0 0012E560 0000A4AF */  sw         $4, 0x0($29)
    /* 2F4E4 0012E564 2D30A003 */  daddu      $6, $29, $0
    /* 2F4E8 0012E568 1000BF7F */  sq         $31, 0x10($29)
    /* 2F4EC 0012E56C 17000424 */  addiu      $4, $0, 0x17
    /* 2F4F0 0012E570 2D380000 */  daddu      $7, $0, $0
    /* 2F4F4 0012E574 08BA040C */  jal        func_0012E820
    /* 2F4F8 0012E578 2D400000 */   daddu     $8, $0, $0
    /* 2F4FC 0012E57C 1000BF7B */  lq         $31, 0x10($29)
    /* 2F500 0012E580 0800E003 */  jr         $31
    /* 2F504 0012E584 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012E558
