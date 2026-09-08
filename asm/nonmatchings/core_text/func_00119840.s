.align 3
nonmatching func_00119840, 0x24

glabel func_00119840
    /* 1A7C0 00119840 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 1A7C4 00119844 0000A4AF */  sw         $4, 0x0($29)
    /* 1A7C8 00119848 2D28A003 */  daddu      $5, $29, $0
    /* 1A7CC 0011984C 1000BFFF */  sd         $31, 0x10($29)
    /* 1A7D0 00119850 A463040C */  jal        func_00118E90
    /* 1A7D4 00119854 10000424 */   addiu     $4, $0, 0x10
    /* 1A7D8 00119858 1000BFDF */  ld         $31, 0x10($29)
    /* 1A7DC 0011985C 0800E003 */  jr         $31
    /* 1A7E0 00119860 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_00119840
