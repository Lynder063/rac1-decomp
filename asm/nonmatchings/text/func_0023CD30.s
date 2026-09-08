.align 3
nonmatching func_0023CD30, 0x30

glabel func_0023CD30
    /* 13DCB0 0023CD30 0500023C */  lui        $v0, (0x50000 >> 16)
    /* 13DCB4 0023CD34 21308200 */  addu       $a2, $a0, $v0
    /* 13DCB8 0023CD38 0800C38C */  lw         $v1, (0x50008 & 0xFFFF)($a2)
    /* 13DCBC 0023CD3C 0400C28C */  lw         $v0, (0x50004 & 0xFFFF)($a2)
    /* 13DCC0 0023CD40 23186200 */  subu       $v1, $v1, $v0
    /* 13DCC4 0023CD44 04006010 */  beqz       $v1, .L0023CD58
    /* 13DCC8 0023CD48 00000000 */   nop
    /* 13DCCC 0023CD4C 0000C28C */  lw         $v0, (0x50000 & 0xFFFF)($a2)
    /* 13DCD0 0023CD50 21108200 */  addu       $v0, $a0, $v0
    /* 13DCD4 0023CD54 0000A2AC */  sw         $v0, 0x0($a1)
.align 2
  .L0023CD58:
    /* 13DCD8 0023CD58 0800E003 */  jr         $ra
    /* 13DCDC 0023CD5C 2D106000 */   daddu     $v0, $v1, $zero
endlabel func_0023CD30
