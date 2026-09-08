.align 3
nonmatching func_0023CD60, 0x44

glabel func_0023CD60
    /* 13DCE0 0023CD60 0500023C */  lui        $2, (0x50000 >> 16)
    /* 13DCE4 0023CD64 21208200 */  addu       $4, $4, $2
    /* 13DCE8 0023CD68 0800878C */  lw         $7, (0x50008 & 0xFFFF)($4)
    /* 13DCEC 0023CD6C 0400888C */  lw         $8, (0x50004 & 0xFFFF)($4)
    /* 13DCF0 0023CD70 0000868C */  lw         $6, (0x50000 & 0xFFFF)($4)
    /* 13DCF4 0023CD74 0100E050 */  beql       $7, $0, .L0023CD7C
    /* 13DCF8 0023CD78 CD010000 */   break     0, 7
.align 2
  .L0023CD7C:
    /* 13DCFC 0023CD7C 2310E800 */  subu       $2, $7, $8
    /* 13DD00 0023CD80 2A18A200 */  slt        $3, $5, $2
    /* 13DD04 0023CD84 0B10A300 */  movn       $2, $5, $3
    /* 13DD08 0023CD88 2130C200 */  addu       $6, $6, $2
    /* 13DD0C 0023CD8C 21400201 */  addu       $8, $8, $2
    /* 13DD10 0023CD90 1A00C700 */  div        $0, $6, $7
    /* 13DD14 0023CD94 040088AC */  sw         $8, (0x50004 & 0xFFFF)($4)
    /* 13DD18 0023CD98 10180000 */  mfhi       $3
    /* 13DD1C 0023CD9C 0800E003 */  jr         $31
    /* 13DD20 0023CDA0 000083AC */   sw        $3, (0x50000 & 0xFFFF)($4)
endlabel func_0023CD60
    /* 13DD24 0023CDA4 00000000 */  nop
