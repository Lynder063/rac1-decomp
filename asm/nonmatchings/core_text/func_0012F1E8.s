.align 3
nonmatching func_0012F1E8, 0x24

glabel func_0012F1E8
    /* 30168 0012F1E8 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 3016C 0012F1EC 3D000424 */  addiu      $4, $0, 0x3D
    /* 30170 0012F1F0 0000BF7F */  sq         $31, 0x0($29)
    /* 30174 0012F1F4 2D280000 */  daddu      $5, $0, $0
    /* 30178 0012F1F8 A2B9040C */  jal        func_0012E688
    /* 3017C 0012F1FC 2D300000 */   daddu     $6, $0, $0
    /* 30180 0012F200 0000BF7B */  lq         $31, 0x0($29)
    /* 30184 0012F204 0800E003 */  jr         $31
    /* 30188 0012F208 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0012F1E8
    /* 3018C 0012F20C 00000000 */  nop
