.align 3
nonmatching func_0023CDF0, 0x24

glabel func_0023CDF0
    /* 13DD70 0023CDF0 0500023C */  lui        $2, (0x50004 >> 16)
    /* 13DD74 0023CDF4 21208200 */  addu       $4, $4, $2
    /* 13DD78 0023CDF8 0400828C */  lw         $2, (0x50004 & 0xFFFF)($4)
    /* 13DD7C 0023CDFC 2D304000 */  daddu      $6, $2, $0
    /* 13DD80 0023CE00 2A18A200 */  slt        $3, $5, $2
    /* 13DD84 0023CE04 0B10A300 */  movn       $2, $5, $3
    /* 13DD88 0023CE08 2330C200 */  subu       $6, $6, $2
    /* 13DD8C 0023CE0C 0800E003 */  jr         $31
    /* 13DD90 0023CE10 040086AC */   sw        $6, (0x50004 & 0xFFFF)($4)
endlabel func_0023CDF0
    /* 13DD94 0023CE14 00000000 */  nop
