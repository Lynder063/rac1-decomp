.align 3
nonmatching func_0023E5C8, 0x14

glabel func_0023E5C8
    /* 13F548 0023E5C8 1000838C */  lw         $3, 0x10($4)
    /* 13F54C 0023E5CC 0C00828C */  lw         $2, 0xC($4)
    /* 13F550 0023E5D0 26104300 */  xor        $2, $2, $3
    /* 13F554 0023E5D4 0800E003 */  jr         $31
    /* 13F558 0023E5D8 0100422C */   sltiu     $2, $2, 0x1
endlabel func_0023E5C8
    /* 13F55C 0023E5DC 00000000 */  nop
