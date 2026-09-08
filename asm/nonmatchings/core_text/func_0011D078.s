.align 3
nonmatching func_0011D078, 0x1C

glabel func_0011D078
    /* 1DFF8 0011D078 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1DFFC 0011D07C 1000BFFF */  sd         $ra, 0x10($sp)
    /* 1E000 0011D080 9C73040C */  jal        func_0011CE70
    /* 1E004 0011D084 2D38A003 */   daddu     $a3, $sp, $zero
    /* 1E008 0011D088 1000BFDF */  ld         $ra, 0x10($sp)
    /* 1E00C 0011D08C 0800E003 */  jr         $ra
    /* 1E010 0011D090 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0011D078
    /* 1E014 0011D094 00000000 */  nop
