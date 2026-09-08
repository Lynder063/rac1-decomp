.align 3
nonmatching func_0011D078, 0x1C

glabel func_0011D078
    /* 1DFF8 0011D078 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 1DFFC 0011D07C 1000BFFF */  sd         $31, 0x10($29)
    /* 1E000 0011D080 9C73040C */  jal        func_0011CE70
    /* 1E004 0011D084 2D38A003 */   daddu     $7, $29, $0
    /* 1E008 0011D088 1000BFDF */  ld         $31, 0x10($29)
    /* 1E00C 0011D08C 0800E003 */  jr         $31
    /* 1E010 0011D090 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0011D078
    /* 1E014 0011D094 00000000 */  nop
