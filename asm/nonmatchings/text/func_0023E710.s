.align 3
nonmatching func_0023E710, 0x20

glabel func_0023E710
    /* 13F690 0023E710 0C00828C */  lw         $v0, 0xC($a0)
    /* 13F694 0023E714 04004018 */  blez       $v0, .L0023E728
    /* 13F698 0023E718 00000000 */   nop
    /* 13F69C 0023E71C 0C00828C */  lw         $v0, 0xC($a0)
    /* 13F6A0 0023E720 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 13F6A4 0023E724 0C0082AC */  sw         $v0, 0xC($a0)
.align 2
  .L0023E728:
    /* 13F6A8 0023E728 0800E003 */  jr         $ra
    /* 13F6AC 0023E72C 00000000 */   nop
endlabel func_0023E710
