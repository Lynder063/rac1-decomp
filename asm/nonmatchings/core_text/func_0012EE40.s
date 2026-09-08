.align 3
nonmatching func_0012EE40, 0x30

glabel func_0012EE40
    /* 2FDC0 0012EE40 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2FDC4 0012EE44 2D38A000 */  daddu      $7, $5, $0
    /* 2FDC8 0012EE48 0000A4AF */  sw         $4, 0x0($29)
    /* 2FDCC 0012EE4C 2D40C000 */  daddu      $8, $6, $0
    /* 2FDD0 0012EE50 1000BF7F */  sq         $31, 0x10($29)
    /* 2FDD4 0012EE54 4F000424 */  addiu      $4, $0, 0x4F
    /* 2FDD8 0012EE58 04000524 */  addiu      $5, $0, 0x4
    /* 2FDDC 0012EE5C 08BA040C */  jal        func_0012E820
    /* 2FDE0 0012EE60 2D30A003 */   daddu     $6, $29, $0
    /* 2FDE4 0012EE64 1000BF7B */  lq         $31, 0x10($29)
    /* 2FDE8 0012EE68 0800E003 */  jr         $31
    /* 2FDEC 0012EE6C 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012EE40
