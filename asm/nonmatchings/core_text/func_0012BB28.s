.align 3
nonmatching func_0012BB28, 0x50

glabel func_0012BB28
    /* 2CAA8 0012BB28 00310600 */  sll        $6, $6, 4
    /* 2CAAC 0012BB2C 00000000 */  nop
.align 2
  alabel func_0012BB30
    /* 2CAB0 0012BB30 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 2CAB4 0012BB34 FF0F023C */  lui        $2, (0xFFFFFFF >> 16)
    /* 2CAB8 0012BB38 0000BFFF */  sd         $31, 0x0($29)
    /* 2CABC 0012BB3C FFFF4234 */  ori        $2, $2, (0xFFFFFFF & 0xFFFF)
    /* 2CAC0 0012BB40 2428A200 */  and        $5, $5, $2
    /* 2CAC4 0012BB44 0020033C */  lui        $3, (0x20000000 >> 16)
    /* 2CAC8 0012BB48 4000878C */  lw         $7, 0x40($4)
    /* 2CACC 0012BB4C 2528A300 */  or         $5, $5, $3
    /* 2CAD0 0012BB50 01000224 */  addiu      $2, $0, 0x1
    /* 2CAD4 0012BB54 B000E2AC */  sw         $2, 0xB0($7)
    /* 2CAD8 0012BB58 D800E5AC */  sw         $5, 0xD8($7)
    /* 2CADC 0012BB5C E400E6AC */  sw         $6, 0xE4($7)
    /* 2CAE0 0012BB60 DC00E0AC */  sw         $0, 0xDC($7)
    /* 2CAE4 0012BB64 74AF040C */  jal        func_0012BDD0
    /* 2CAE8 0012BB68 E000E0AC */   sw        $0, 0xE0($7)
    /* 2CAEC 0012BB6C 0000BFDF */  ld         $31, 0x0($29)
    /* 2CAF0 0012BB70 0800E003 */  jr         $31
    /* 2CAF4 0012BB74 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0012BB28
