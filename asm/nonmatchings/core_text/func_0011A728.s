.align 3
nonmatching func_0011A728, 0x1C

glabel func_0011A728
    /* 1B6A8 0011A728 1000828C */  lw         $v0, 0x10($a0)
    /* 1B6AC 0011A72C 1C00A68C */  lw         $a2, 0x1C($a1)
    /* 1B6B0 0011A730 1400838C */  lw         $v1, 0x14($a0)
    /* 1B6B4 0011A734 80100200 */  sll        $v0, $v0, 2
    /* 1B6B8 0011A738 21104600 */  addu       $v0, $v0, $a2
    /* 1B6BC 0011A73C 0800E003 */  jr         $ra
    /* 1B6C0 0011A740 000043AC */   sw        $v1, 0x0($v0)
endlabel func_0011A728
    /* 1B6C4 0011A744 00000000 */  nop
