.align 3
nonmatching func_0012EE70, 0x28

glabel func_0012EE70
    /* 2FDF0 0012EE70 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2FDF4 0012EE74 04000524 */  addiu      $5, $0, 0x4
    /* 2FDF8 0012EE78 0000A4AF */  sw         $4, 0x0($29)
    /* 2FDFC 0012EE7C 2D30A003 */  daddu      $6, $29, $0
    /* 2FE00 0012EE80 1000BF7F */  sq         $31, 0x10($29)
    /* 2FE04 0012EE84 A2B9040C */  jal        func_0012E688
    /* 2FE08 0012EE88 36000424 */   addiu     $4, $0, 0x36
    /* 2FE0C 0012EE8C 1000BF7B */  lq         $31, 0x10($29)
    /* 2FE10 0012EE90 0800E003 */  jr         $31
    /* 2FE14 0012EE94 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012EE70
