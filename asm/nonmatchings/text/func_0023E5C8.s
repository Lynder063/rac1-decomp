.align 3
nonmatching func_0023E5C8, 0x14

glabel func_0023E5C8
    /* 13F548 0023E5C8 1000838C */  lw         $v1, 0x10($a0)
    /* 13F54C 0023E5CC 0C00828C */  lw         $v0, 0xC($a0)
    /* 13F550 0023E5D0 26104300 */  xor        $v0, $v0, $v1
    /* 13F554 0023E5D4 0800E003 */  jr         $ra
    /* 13F558 0023E5D8 0100422C */   sltiu     $v0, $v0, 0x1
endlabel func_0023E5C8
    /* 13F55C 0023E5DC 00000000 */  nop
