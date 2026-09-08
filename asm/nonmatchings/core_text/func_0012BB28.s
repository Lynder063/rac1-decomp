.align 3
nonmatching func_0012BB28, 0x50

glabel func_0012BB28
    /* 2CAA8 0012BB28 00310600 */  sll        $a2, $a2, 4
    /* 2CAAC 0012BB2C 00000000 */  nop
.align 2
  alabel func_0012BB30
    /* 2CAB0 0012BB30 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2CAB4 0012BB34 FF0F023C */  lui        $v0, (0xFFFFFFF >> 16)
    /* 2CAB8 0012BB38 0000BFFF */  sd         $ra, 0x0($sp)
    /* 2CABC 0012BB3C FFFF4234 */  ori        $v0, $v0, (0xFFFFFFF & 0xFFFF)
    /* 2CAC0 0012BB40 2428A200 */  and        $a1, $a1, $v0
    /* 2CAC4 0012BB44 0020033C */  lui        $v1, (0x20000000 >> 16)
    /* 2CAC8 0012BB48 4000878C */  lw         $a3, 0x40($a0)
    /* 2CACC 0012BB4C 2528A300 */  or         $a1, $a1, $v1
    /* 2CAD0 0012BB50 01000224 */  addiu      $v0, $zero, 0x1
    /* 2CAD4 0012BB54 B000E2AC */  sw         $v0, 0xB0($a3)
    /* 2CAD8 0012BB58 D800E5AC */  sw         $a1, 0xD8($a3)
    /* 2CADC 0012BB5C E400E6AC */  sw         $a2, 0xE4($a3)
    /* 2CAE0 0012BB60 DC00E0AC */  sw         $zero, 0xDC($a3)
    /* 2CAE4 0012BB64 74AF040C */  jal        func_0012BDD0
    /* 2CAE8 0012BB68 E000E0AC */   sw        $zero, 0xE0($a3)
    /* 2CAEC 0012BB6C 0000BFDF */  ld         $ra, 0x0($sp)
    /* 2CAF0 0012BB70 0800E003 */  jr         $ra
    /* 2CAF4 0012BB74 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012BB28
