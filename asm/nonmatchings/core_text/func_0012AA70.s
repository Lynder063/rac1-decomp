.align 3
nonmatching func_0012AA70, 0x34

glabel func_0012AA70
    /* 2B9F0 0012AA70 2D108000 */  daddu      $2, $4, $0
    /* 2B9F4 0012AA74 2D40A000 */  daddu      $8, $5, $0
    /* 2B9F8 0012AA78 2118C700 */  addu       $3, $6, $7
    /* 2B9FC 0012AA7C 0C0048AC */  sw         $8, 0xC($2)
    /* 2BA00 0012AA80 240043AC */  sw         $3, 0x24($2)
    /* 2BA04 0012AA84 280047AC */  sw         $7, 0x28($2)
    /* 2BA08 0012AA88 2D280000 */  daddu      $5, $0, $0
    /* 2BA0C 0012AA8C 080048AC */  sw         $8, 0x8($2)
    /* 2BA10 0012AA90 000040FC */  sd         $0, 0x0($2)
    /* 2BA14 0012AA94 100040AC */  sw         $0, 0x10($2)
    /* 2BA18 0012AA98 180040FC */  sd         $0, 0x18($2)
    /* 2BA1C 0012AA9C B2AA0408 */  j          func_0012AAC8
    /* 2BA20 0012AAA0 200046AC */   sw        $6, 0x20($2)
endlabel func_0012AA70
    /* 2BA24 0012AAA4 00000000 */  nop
