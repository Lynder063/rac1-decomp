.align 3
nonmatching func_0012C4C0, 0x20

glabel func_0012C4C0
    /* 2D440 0012C4C0 03110500 */  sra        $v0, $a1, 4
    /* 2D444 0012C4C4 03190600 */  sra        $v1, $a2, 4
    /* 2D448 0012C4C8 0C0082AC */  sw         $v0, 0xC($a0)
    /* 2D44C 0012C4CC 100083AC */  sw         $v1, 0x10($a0)
    /* 2D450 0012C4D0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D454 0012C4D4 040085AC */  sw         $a1, 0x4($a0)
    /* 2D458 0012C4D8 0800E003 */  jr         $ra
    /* 2D45C 0012C4DC 080086AC */   sw        $a2, 0x8($a0)
endlabel func_0012C4C0
