.align 3
nonmatching func_0023C2C0, 0x24

glabel func_0023C2C0
    /* 13D240 0023C2C0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13D244 0023C2C4 0000828C */  lw         $v0, 0x0($a0)
    /* 13D248 0023C2C8 03004010 */  beqz       $v0, .L0023C2D8
    /* 13D24C 0023C2CC 0000BF7F */   sq        $ra, 0x0($sp)
    /* 13D250 0023C2D0 E4F0080C */  jal        func_0023C390
    /* 13D254 0023C2D4 00000000 */   nop
.align 2
  .L0023C2D8:
    /* 13D258 0023C2D8 0000BF7B */  lq         $ra, 0x0($sp)
    /* 13D25C 0023C2DC 0800E003 */  jr         $ra
    /* 13D260 0023C2E0 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0023C2C0
    /* 13D264 0023C2E4 00000000 */  nop
