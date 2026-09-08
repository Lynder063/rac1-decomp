.align 3
nonmatching func_001FFFA0, 0x18

glabel func_001FFFA0
    /* 100F20 001FFFA0 D08C828F */  lw         $2, -0x7330($28)
    /* 100F24 001FFFA4 02004010 */  beqz       $2, .L001FFFB0
    /* 100F28 001FFFA8 FFFF4224 */   addiu     $2, $2, -0x1
    /* 100F2C 001FFFAC D08C82AF */  sw         $2, -0x7330($28)
.align 2
  .L001FFFB0:
    /* 100F30 001FFFB0 0800E003 */  jr         $31
    /* 100F34 001FFFB4 00000000 */   nop
endlabel func_001FFFA0
