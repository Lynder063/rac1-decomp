.align 3
nonmatching func_0011FE48, 0x58

glabel func_0011FE48
    /* 20DC8 0011FE48 70FFBD27 */  addiu      $29, $29, -0x90
    /* 20DCC 0011FE4C 6000A4FF */  sd         $4, 0x60($29)
    /* 20DD0 0011FE50 6800A5FF */  sd         $5, 0x68($29)
    /* 20DD4 0011FE54 6000A427 */  addiu      $4, $29, 0x60
    /* 20DD8 0011FE58 7000B0FF */  sd         $16, 0x70($29)
    /* 20DDC 0011FE5C 8000BFFF */  sd         $31, 0x80($29)
    /* 20DE0 0011FE60 DA7E040C */  jal        func_0011FB68
    /* 20DE4 0011FE64 2D28A003 */   daddu     $5, $29, $0
    /* 20DE8 0011FE68 2000B027 */  addiu      $16, $29, 0x20
    /* 20DEC 0011FE6C 6800A427 */  addiu      $4, $29, 0x68
    /* 20DF0 0011FE70 DA7E040C */  jal        func_0011FB68
    /* 20DF4 0011FE74 2D280002 */   daddu     $5, $16, $0
    /* 20DF8 0011FE78 2D280002 */  daddu      $5, $16, $0
    /* 20DFC 0011FE7C 4000A627 */  addiu      $6, $29, 0x40
    /* 20E00 0011FE80 027F040C */  jal        func_0011FC08
    /* 20E04 0011FE84 2D20A003 */   daddu     $4, $29, $0
    /* 20E08 0011FE88 8E7E040C */  jal        func_0011FA38
    /* 20E0C 0011FE8C 2D204000 */   daddu     $4, $2, $0
    /* 20E10 0011FE90 8000BFDF */  ld         $31, 0x80($29)
    /* 20E14 0011FE94 7000B0DF */  ld         $16, 0x70($29)
    /* 20E18 0011FE98 0800E003 */  jr         $31
    /* 20E1C 0011FE9C 9000BD27 */   addiu     $29, $29, 0x90
endlabel func_0011FE48
