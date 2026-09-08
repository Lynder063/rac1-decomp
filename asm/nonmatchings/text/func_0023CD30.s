.align 3
nonmatching func_0023CD30, 0x30

glabel func_0023CD30
    /* 13DCB0 0023CD30 0500023C */  lui        $2, (0x50000 >> 16)
    /* 13DCB4 0023CD34 21308200 */  addu       $6, $4, $2
    /* 13DCB8 0023CD38 0800C38C */  lw         $3, (0x50008 & 0xFFFF)($6)
    /* 13DCBC 0023CD3C 0400C28C */  lw         $2, (0x50004 & 0xFFFF)($6)
    /* 13DCC0 0023CD40 23186200 */  subu       $3, $3, $2
    /* 13DCC4 0023CD44 04006010 */  beqz       $3, .L0023CD58
    /* 13DCC8 0023CD48 00000000 */   nop
    /* 13DCCC 0023CD4C 0000C28C */  lw         $2, (0x50000 & 0xFFFF)($6)
    /* 13DCD0 0023CD50 21108200 */  addu       $2, $4, $2
    /* 13DCD4 0023CD54 0000A2AC */  sw         $2, 0x0($5)
.align 2
  .L0023CD58:
    /* 13DCD8 0023CD58 0800E003 */  jr         $31
    /* 13DCDC 0023CD5C 2D106000 */   daddu     $2, $3, $0
endlabel func_0023CD30
