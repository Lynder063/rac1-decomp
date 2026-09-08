.align 3
nonmatching func_0023CD60, 0x44

glabel func_0023CD60
    /* 13DCE0 0023CD60 0500023C */  lui        $v0, (0x50000 >> 16)
    /* 13DCE4 0023CD64 21208200 */  addu       $a0, $a0, $v0
    /* 13DCE8 0023CD68 0800878C */  lw         $a3, (0x50008 & 0xFFFF)($a0)
    /* 13DCEC 0023CD6C 0400888C */  lw         $t0, (0x50004 & 0xFFFF)($a0)
    /* 13DCF0 0023CD70 0000868C */  lw         $a2, (0x50000 & 0xFFFF)($a0)
    /* 13DCF4 0023CD74 0100E050 */  beql       $a3, $zero, .L0023CD7C
    /* 13DCF8 0023CD78 CD010000 */   break     0, 7
.align 2
  .L0023CD7C:
    /* 13DCFC 0023CD7C 2310E800 */  subu       $v0, $a3, $t0
    /* 13DD00 0023CD80 2A18A200 */  slt        $v1, $a1, $v0
    /* 13DD04 0023CD84 0B10A300 */  movn       $v0, $a1, $v1
    /* 13DD08 0023CD88 2130C200 */  addu       $a2, $a2, $v0
    /* 13DD0C 0023CD8C 21400201 */  addu       $t0, $t0, $v0
    /* 13DD10 0023CD90 1A00C700 */  div        $zero, $a2, $a3
    /* 13DD14 0023CD94 040088AC */  sw         $t0, (0x50004 & 0xFFFF)($a0)
    /* 13DD18 0023CD98 10180000 */  mfhi       $v1
    /* 13DD1C 0023CD9C 0800E003 */  jr         $ra
    /* 13DD20 0023CDA0 000083AC */   sw        $v1, (0x50000 & 0xFFFF)($a0)
endlabel func_0023CD60
    /* 13DD24 0023CDA4 00000000 */  nop
