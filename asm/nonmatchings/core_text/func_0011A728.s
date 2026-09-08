.align 3
nonmatching func_0011A728, 0x1C

glabel func_0011A728
    /* 1B6A8 0011A728 1000828C */  lw         $2, 0x10($4)
    /* 1B6AC 0011A72C 1C00A68C */  lw         $6, 0x1C($5)
    /* 1B6B0 0011A730 1400838C */  lw         $3, 0x14($4)
    /* 1B6B4 0011A734 80100200 */  sll        $2, $2, 2
    /* 1B6B8 0011A738 21104600 */  addu       $2, $2, $6
    /* 1B6BC 0011A73C 0800E003 */  jr         $31
    /* 1B6C0 0011A740 000043AC */   sw        $3, 0x0($2)
endlabel func_0011A728
    /* 1B6C4 0011A744 00000000 */  nop
