.align 3
nonmatching func_0012E588, 0x30

glabel func_0012E588
    /* 2F508 0012E588 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2F50C 0012E58C 2D38A000 */  daddu      $7, $5, $0
    /* 2F510 0012E590 0000A4AF */  sw         $4, 0x0($29)
    /* 2F514 0012E594 2D40C000 */  daddu      $8, $6, $0
    /* 2F518 0012E598 1000BF7F */  sq         $31, 0x10($29)
    /* 2F51C 0012E59C 19000424 */  addiu      $4, $0, 0x19
    /* 2F520 0012E5A0 04000524 */  addiu      $5, $0, 0x4
    /* 2F524 0012E5A4 08BA040C */  jal        func_0012E820
    /* 2F528 0012E5A8 2D30A003 */   daddu     $6, $29, $0
    /* 2F52C 0012E5AC 1000BF7B */  lq         $31, 0x10($29)
    /* 2F530 0012E5B0 0800E003 */  jr         $31
    /* 2F534 0012E5B4 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012E588
