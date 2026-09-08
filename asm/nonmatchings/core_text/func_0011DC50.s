.align 3
nonmatching func_0011DC50, 0x68

glabel func_0011DC50
    /* 1EBD0 0011DC50 D0FFBD27 */  addiu      $29, $29, -0x30
    /* 1EBD4 0011DC54 1000B0FF */  sd         $16, 0x10($29)
    /* 1EBD8 0011DC58 2000BFFF */  sd         $31, 0x20($29)
    /* 1EBDC 0011DC5C 3C63040C */  jal        func_00118CF0
    /* 1EBE0 0011DC60 2D20A003 */   daddu     $4, $29, $0
    /* 1EBE4 0011DC64 0000A38F */  lw         $3, 0x0($29)
    /* 1EBE8 0011DC68 FFFF023C */  lui        $2, (0xFFFF1FFF >> 16)
    /* 1EBEC 0011DC6C FF1F4234 */  ori        $2, $2, (0xFFFF1FFF & 0xFFFF)
    /* 1EBF0 0011DC70 0400B027 */  addiu      $16, $29, 0x4
    /* 1EBF4 0011DC74 24186200 */  and        $3, $3, $2
    /* 1EBF8 0011DC78 2D200002 */  daddu      $4, $16, $0
    /* 1EBFC 0011DC7C 00206334 */  ori        $3, $3, 0x2000
    /* 1EC00 0011DC80 3863040C */  jal        func_00118CE0
    /* 1EC04 0011DC84 0400A3AF */   sw        $3, 0x4($29)
    /* 1EC08 0011DC88 3C63040C */  jal        func_00118CF0
    /* 1EC0C 0011DC8C 2D200002 */   daddu     $4, $16, $0
    /* 1EC10 0011DC90 3863040C */  jal        func_00118CE0
    /* 1EC14 0011DC94 2D20A003 */   daddu     $4, $29, $0
    /* 1EC18 0011DC98 0400A28F */  lw         $2, 0x4($29)
    /* 1EC1C 0011DC9C 2000BFDF */  ld         $31, 0x20($29)
    /* 1EC20 0011DCA0 42130200 */  srl        $2, $2, 13
    /* 1EC24 0011DCA4 1000B0DF */  ld         $16, 0x10($29)
    /* 1EC28 0011DCA8 07004230 */  andi       $2, $2, 0x7
    /* 1EC2C 0011DCAC 0100422C */  sltiu      $2, $2, 0x1
    /* 1EC30 0011DCB0 0800E003 */  jr         $31
    /* 1EC34 0011DCB4 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0011DC50
