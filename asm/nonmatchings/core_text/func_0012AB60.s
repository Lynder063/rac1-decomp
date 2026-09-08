.align 3
nonmatching func_0012AB60, 0x4C

glabel func_0012AB60
    /* 2BAE0 0012AB60 C0FFBD27 */  addiu      $29, $29, -0x40
    /* 2BAE4 0012AB64 1000B1FF */  sd         $17, 0x10($29)
    /* 2BAE8 0012AB68 0000B0FF */  sd         $16, 0x0($29)
    /* 2BAEC 0012AB6C 2D88A000 */  daddu      $17, $5, $0
    /* 2BAF0 0012AB70 2000B2FF */  sd         $18, 0x20($29)
    /* 2BAF4 0012AB74 3000BFFF */  sd         $31, 0x30($29)
    /* 2BAF8 0012AB78 AAAA040C */  jal        func_0012AAA8
    /* 2BAFC 0012AB7C 2D808000 */   daddu     $16, $4, $0
    /* 2BB00 0012AB80 2D904000 */  daddu      $18, $2, $0
    /* 2BB04 0012AB84 2D200002 */  daddu      $4, $16, $0
    /* 2BB08 0012AB88 B2AA040C */  jal        func_0012AAC8
    /* 2BB0C 0012AB8C 2D282002 */   daddu     $5, $17, $0
    /* 2BB10 0012AB90 2D104002 */  daddu      $2, $18, $0
    /* 2BB14 0012AB94 3000BFDF */  ld         $31, 0x30($29)
    /* 2BB18 0012AB98 2000B2DF */  ld         $18, 0x20($29)
    /* 2BB1C 0012AB9C 1000B1DF */  ld         $17, 0x10($29)
    /* 2BB20 0012ABA0 0000B0DF */  ld         $16, 0x0($29)
    /* 2BB24 0012ABA4 0800E003 */  jr         $31
    /* 2BB28 0012ABA8 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_0012AB60
    /* 2BB2C 0012ABAC 00000000 */  nop
