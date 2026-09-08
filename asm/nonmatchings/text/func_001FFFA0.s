.align 3
nonmatching func_001FFFA0, 0x18

glabel func_001FFFA0
    /* 100F20 001FFFA0 D08C828F */  lw         $v0, -0x7330($gp)
    /* 100F24 001FFFA4 02004010 */  beqz       $v0, .L001FFFB0
    /* 100F28 001FFFA8 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 100F2C 001FFFAC D08C82AF */  sw         $v0, -0x7330($gp)
.align 2
  .L001FFFB0:
    /* 100F30 001FFFB0 0800E003 */  jr         $ra
    /* 100F34 001FFFB4 00000000 */   nop
endlabel func_001FFFA0
