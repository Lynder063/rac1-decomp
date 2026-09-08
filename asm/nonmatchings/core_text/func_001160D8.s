.align 3
nonmatching func_001160D8, 0x30

glabel func_001160D8
    /* 17058 001160D8 1300023C */  lui        $v0, %hi(D_0012F86C)
    /* 1705C 001160DC C641043C */  lui        $a0, (0x41C64E6D >> 16)
    /* 17060 001160E0 6CF8458C */  lw         $a1, %lo(D_0012F86C)($v0)
    /* 17064 001160E4 6D4E8434 */  ori        $a0, $a0, (0x41C64E6D & 0xFFFF)
    /* 17068 001160E8 FF7F023C */  lui        $v0, (0x7FFFFFFF >> 16)
    /* 1706C 001160EC 5800A38C */  lw         $v1, 0x58($a1)
    /* 17070 001160F0 FFFF4234 */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
    /* 17074 001160F4 18186400 */  mult       $v1, $v1, $a0
    /* 17078 001160F8 39306324 */  addiu      $v1, $v1, 0x3039
    /* 1707C 001160FC 24106200 */  and        $v0, $v1, $v0
    /* 17080 00116100 0800E003 */  jr         $ra
    /* 17084 00116104 5800A3AC */   sw        $v1, 0x58($a1)
endlabel func_001160D8
