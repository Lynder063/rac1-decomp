.align 3
/* Handwritten function */
nonmatching func_0011BC80, 0x2C

glabel func_0011BC80
    /* 1CC00 0011BC80 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1CC04 0011BC84 0000A28C */  lw         $v0, 0x0($a1)
    /* 1CC08 0011BC88 03004010 */  beqz       $v0, .L0011BC98
    /* 1CC0C 0011BC8C 0000BFFF */   sd        $ra, 0x0($sp)
    /* 1CC10 0011BC90 09F84000 */  jalr       $v0
    /* 1CC14 0011BC94 0400A48C */   lw        $a0, 0x4($a1)
.align 2
  .L0011BC98:
    /* 1CC18 0011BC98 0F000000 */  sync
    /* 1CC1C 0011BC9C 38000042 */  ei /* handwritten instruction */
    /* 1CC20 0011BCA0 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1CC24 0011BCA4 0800E003 */  jr         $ra
    /* 1CC28 0011BCA8 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0011BC80
    /* 1CC2C 0011BCAC 00000000 */  nop
