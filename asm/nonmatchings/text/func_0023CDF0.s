.align 3
nonmatching func_0023CDF0, 0x24

glabel func_0023CDF0
    /* 13DD70 0023CDF0 0500023C */  lui        $v0, (0x50004 >> 16)
    /* 13DD74 0023CDF4 21208200 */  addu       $a0, $a0, $v0
    /* 13DD78 0023CDF8 0400828C */  lw         $v0, (0x50004 & 0xFFFF)($a0)
    /* 13DD7C 0023CDFC 2D304000 */  daddu      $a2, $v0, $zero
    /* 13DD80 0023CE00 2A18A200 */  slt        $v1, $a1, $v0
    /* 13DD84 0023CE04 0B10A300 */  movn       $v0, $a1, $v1
    /* 13DD88 0023CE08 2330C200 */  subu       $a2, $a2, $v0
    /* 13DD8C 0023CE0C 0800E003 */  jr         $ra
    /* 13DD90 0023CE10 040086AC */   sw        $a2, (0x50004 & 0xFFFF)($a0)
endlabel func_0023CDF0
    /* 13DD94 0023CE14 00000000 */  nop
