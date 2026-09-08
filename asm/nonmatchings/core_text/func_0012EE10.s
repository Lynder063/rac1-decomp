.align 3
nonmatching func_0012EE10, 0x30

glabel func_0012EE10
    /* 2FD90 0012EE10 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2FD94 0012EE14 2D38A000 */  daddu      $7, $5, $0
    /* 2FD98 0012EE18 0000A4AF */  sw         $4, 0x0($29)
    /* 2FD9C 0012EE1C 2D40C000 */  daddu      $8, $6, $0
    /* 2FDA0 0012EE20 1000BF7F */  sq         $31, 0x10($29)
    /* 2FDA4 0012EE24 32000424 */  addiu      $4, $0, 0x32
    /* 2FDA8 0012EE28 04000524 */  addiu      $5, $0, 0x4
    /* 2FDAC 0012EE2C 08BA040C */  jal        func_0012E820
    /* 2FDB0 0012EE30 2D30A003 */   daddu     $6, $29, $0
    /* 2FDB4 0012EE34 1000BF7B */  lq         $31, 0x10($29)
    /* 2FDB8 0012EE38 0800E003 */  jr         $31
    /* 2FDBC 0012EE3C 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012EE10
