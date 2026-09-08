.align 3
nonmatching func_0022EEB8, 0x94

glabel func_0022EEB8
    /* 12FE38 0022EEB8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 12FE3C 0022EEBC 1600033C */  lui        $v1, %hi(D_0015F694)
    /* 12FE40 0022EEC0 94F6638C */  lw         $v1, %lo(D_0015F694)($v1)
    /* 12FE44 0022EEC4 0000B07F */  sq         $s0, 0x0($sp)
    /* 12FE48 0022EEC8 1600023C */  lui        $v0, %hi(D_0015F710)
    /* 12FE4C 0022EECC 10F7428C */  lw         $v0, %lo(D_0015F710)($v0)
    /* 12FE50 0022EED0 21808300 */  addu       $s0, $a0, $v1
    /* 12FE54 0022EED4 1000B17F */  sq         $s1, 0x10($sp)
    /* 12FE58 0022EED8 2000BF7F */  sq         $ra, 0x20($sp)
    /* 12FE5C 0022EEDC 2A100202 */  slt        $v0, $s0, $v0
    /* 12FE60 0022EEE0 03004014 */  bnez       $v0, .L0022EEF0
    /* 12FE64 0022EEE4 2D88C000 */   daddu     $s1, $a2, $zero
    /* 12FE68 0022EEE8 13000010 */  b          .L0022EF38
    /* 12FE6C 0022EEEC FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0022EEF0:
    /* 12FE70 0022EEF0 1600023C */  lui        $v0, %hi(D_0015F714)
    /* 12FE74 0022EEF4 14F7428C */  lw         $v0, %lo(D_0015F714)($v0)
    /* 12FE78 0022EEF8 40211000 */  sll        $a0, $s0, 5
    /* 12FE7C 0022EEFC 2D302002 */  daddu      $a2, $s1, $zero
    /* 12FE80 0022EF00 2D380000 */  daddu      $a3, $zero, $zero
    /* 12FE84 0022EF04 21204400 */  addu       $a0, $v0, $a0
    /* 12FE88 0022EF08 C2BA080C */  jal        func_0022EB08
    /* 12FE8C 0022EF0C 00040824 */   addiu     $t0, $zero, 0x400
    /* 12FE90 0022EF10 2D204000 */  daddu      $a0, $v0, $zero
    /* 12FE94 0022EF14 07008004 */  bltz       $a0, .L0022EF34
    /* 12FE98 0022EF18 70000324 */   addiu     $v1, $zero, 0x70
    /* 12FE9C 0022EF1C 1400023C */  lui        $v0, %hi(D_0013E650)
    /* 12FEA0 0022EF20 18188300 */  mult       $v1, $a0, $v1
    /* 12FEA4 0022EF24 50E64224 */  addiu      $v0, $v0, %lo(D_0013E650)
    /* 12FEA8 0022EF28 21186200 */  addu       $v1, $v1, $v0
    /* 12FEAC 0022EF2C 7E0070A4 */  sh         $s0, 0x7E($v1)
    /* 12FEB0 0022EF30 880071AC */  sw         $s1, 0x88($v1)
.align 2
  .L0022EF34:
    /* 12FEB4 0022EF34 2D108000 */  daddu      $v0, $a0, $zero
.align 2
  .L0022EF38:
    /* 12FEB8 0022EF38 2000BF7B */  lq         $ra, 0x20($sp)
    /* 12FEBC 0022EF3C 1000B17B */  lq         $s1, 0x10($sp)
    /* 12FEC0 0022EF40 0000B07B */  lq         $s0, 0x0($sp)
    /* 12FEC4 0022EF44 0800E003 */  jr         $ra
    /* 12FEC8 0022EF48 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0022EEB8
    /* 12FECC 0022EF4C 00000000 */  nop
