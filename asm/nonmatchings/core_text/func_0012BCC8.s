.align 3
nonmatching func_0012BCC8, 0x24

glabel func_0012BCC8
    /* 2CC48 0012BCC8 D0FFBD27 */  addiu      $29, $29, -0x30
    /* 2CC4C 0012BCCC 01000224 */  addiu      $2, $0, 0x1
    /* 2CC50 0012BCD0 2000BFFF */  sd         $31, 0x20($29)
    /* 2CC54 0012BCD4 2D28A003 */  daddu      $5, $29, $0
    /* 2CC58 0012BCD8 1EAF040C */  jal        func_0012BC78
    /* 2CC5C 0012BCDC 0000A2AF */   sw        $2, 0x0($29)
    /* 2CC60 0012BCE0 2000BFDF */  ld         $31, 0x20($29)
    /* 2CC64 0012BCE4 0800E003 */  jr         $31
    /* 2CC68 0012BCE8 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0012BCC8
    /* 2CC6C 0012BCEC 00000000 */  nop
