.align 3
nonmatching func_001197C0, 0x34

glabel func_001197C0
    /* 1A740 001197C0 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 1A744 001197C4 2D10A000 */  daddu      $2, $5, $0
    /* 1A748 001197C8 FFFFC630 */  andi       $6, $6, 0xFFFF
    /* 1A74C 001197CC 0000A4AF */  sw         $4, 0x0($29)
    /* 1A750 001197D0 1000BFFF */  sd         $31, 0x10($29)
    /* 1A754 001197D4 2D28A003 */  daddu      $5, $29, $0
    /* 1A758 001197D8 0400A2AF */  sw         $2, 0x4($29)
    /* 1A75C 001197DC FBFF0424 */  addiu      $4, $0, -0x5
    /* 1A760 001197E0 A463040C */  jal        func_00118E90
    /* 1A764 001197E4 0800A6AF */   sw        $6, 0x8($29)
    /* 1A768 001197E8 1000BFDF */  ld         $31, 0x10($29)
    /* 1A76C 001197EC 0800E003 */  jr         $31
    /* 1A770 001197F0 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_001197C0
    /* 1A774 001197F4 00000000 */  nop
