.align 3
nonmatching func_0012C4C0, 0x20

glabel func_0012C4C0
    /* 2D440 0012C4C0 03110500 */  sra        $2, $5, 4
    /* 2D444 0012C4C4 03190600 */  sra        $3, $6, 4
    /* 2D448 0012C4C8 0C0082AC */  sw         $2, 0xC($4)
    /* 2D44C 0012C4CC 100083AC */  sw         $3, 0x10($4)
    /* 2D450 0012C4D0 01000224 */  addiu      $2, $0, 0x1
    /* 2D454 0012C4D4 040085AC */  sw         $5, 0x4($4)
    /* 2D458 0012C4D8 0800E003 */  jr         $31
    /* 2D45C 0012C4DC 080086AC */   sw        $6, 0x8($4)
endlabel func_0012C4C0
