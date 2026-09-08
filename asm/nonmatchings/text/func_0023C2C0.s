.align 3
nonmatching func_0023C2C0, 0x24

glabel func_0023C2C0
    /* 13D240 0023C2C0 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 13D244 0023C2C4 0000828C */  lw         $2, 0x0($4)
    /* 13D248 0023C2C8 03004010 */  beqz       $2, .L0023C2D8
    /* 13D24C 0023C2CC 0000BF7F */   sq        $31, 0x0($29)
    /* 13D250 0023C2D0 E4F0080C */  jal        func_0023C390
    /* 13D254 0023C2D4 00000000 */   nop
.align 2
  .L0023C2D8:
    /* 13D258 0023C2D8 0000BF7B */  lq         $31, 0x0($29)
    /* 13D25C 0023C2DC 0800E003 */  jr         $31
    /* 13D260 0023C2E0 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0023C2C0
    /* 13D264 0023C2E4 00000000 */  nop
