.align 3
nonmatching func_0020C230, 0x38

glabel func_0020C230
    /* 10D1B0 0020C230 0010013C */  lui        $at, (0x1000D400 >> 16)
    /* 10D1B4 0020C234 00D42134 */  ori        $at, $at, (0x1000D400 & 0xFFFF)
.align 2
  alabel func_0020C238
    /* 10D1B8 0020C238 0000228C */  lw         $v0, 0x0($at)
    /* 10D1BC 0020C23C 00000000 */  nop
    /* 10D1C0 0020C240 00000000 */  nop
    /* 10D1C4 0020C244 00000000 */  nop
    /* 10D1C8 0020C248 00014230 */  andi       $v0, $v0, 0x100
    /* 10D1CC 0020C24C 00000000 */  nop
    /* 10D1D0 0020C250 03004010 */  beqz       $v0, .L0020C260
    /* 10D1D4 0020C254 00000000 */   nop
    /* 10D1D8 0020C258 8E300808 */  j          func_0020C238
    /* 10D1DC 0020C25C 00000000 */   nop
.align 2
  .L0020C260:
    /* 10D1E0 0020C260 0800E003 */  jr         $ra
    /* 10D1E4 0020C264 00000000 */   nop
endlabel func_0020C230
