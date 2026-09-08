.align 3
nonmatching func_0020E040, 0x28

glabel func_0020E040
    /* 10EFC0 0020E040 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 10EFC4 0020E044 0070043C */  lui        $4, (0x70003A00 >> 16)
    /* 10EFC8 0020E048 0000BF7F */  sq         $31, 0x0($29)
    /* 10EFCC 0020E04C 0040053C */  lui        $5, (0x40000000 >> 16)
    /* 10EFD0 0020E050 003A8434 */  ori        $4, $4, (0x70003A00 & 0xFFFF)
    /* 10EFD4 0020E054 6CE6070C */  jal        func_001F99B0
    /* 10EFD8 0020E058 80030624 */   addiu     $6, $0, 0x380
    /* 10EFDC 0020E05C 0000BF7B */  lq         $31, 0x0($29)
    /* 10EFE0 0020E060 0800E003 */  jr         $31
    /* 10EFE4 0020E064 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0020E040
