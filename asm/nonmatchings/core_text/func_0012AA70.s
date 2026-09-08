.align 3
nonmatching func_0012AA70, 0x34

glabel func_0012AA70
    /* 2B9F0 0012AA70 2D108000 */  daddu      $v0, $a0, $zero
    /* 2B9F4 0012AA74 2D40A000 */  daddu      $t0, $a1, $zero
    /* 2B9F8 0012AA78 2118C700 */  addu       $v1, $a2, $a3
    /* 2B9FC 0012AA7C 0C0048AC */  sw         $t0, 0xC($v0)
    /* 2BA00 0012AA80 240043AC */  sw         $v1, 0x24($v0)
    /* 2BA04 0012AA84 280047AC */  sw         $a3, 0x28($v0)
    /* 2BA08 0012AA88 2D280000 */  daddu      $a1, $zero, $zero
    /* 2BA0C 0012AA8C 080048AC */  sw         $t0, 0x8($v0)
    /* 2BA10 0012AA90 000040FC */  sd         $zero, 0x0($v0)
    /* 2BA14 0012AA94 100040AC */  sw         $zero, 0x10($v0)
    /* 2BA18 0012AA98 180040FC */  sd         $zero, 0x18($v0)
    /* 2BA1C 0012AA9C B2AA0408 */  j          func_0012AAC8
    /* 2BA20 0012AAA0 200046AC */   sw        $a2, 0x20($v0)
endlabel func_0012AA70
    /* 2BA24 0012AAA4 00000000 */  nop
