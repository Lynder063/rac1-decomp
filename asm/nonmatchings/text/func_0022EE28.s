.align 3
nonmatching func_0022EE28, 0x8C

glabel func_0022EE28
    /* 12FDA8 0022EE28 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 12FDAC 0022EE2C 1600023C */  lui        $v0, %hi(D_0015F694)
    /* 12FDB0 0022EE30 94F6428C */  lw         $v0, %lo(D_0015F694)($v0)
    /* 12FDB4 0022EE34 0000B07F */  sq         $s0, 0x0($sp)
    /* 12FDB8 0022EE38 1000B17F */  sq         $s1, 0x10($sp)
    /* 12FDBC 0022EE3C 2D808000 */  daddu      $s0, $a0, $zero
    /* 12FDC0 0022EE40 2000BF7F */  sq         $ra, 0x20($sp)
    /* 12FDC4 0022EE44 2A100202 */  slt        $v0, $s0, $v0
    /* 12FDC8 0022EE48 03004014 */  bnez       $v0, .L0022EE58
    /* 12FDCC 0022EE4C 2D88C000 */   daddu     $s1, $a2, $zero
    /* 12FDD0 0022EE50 13000010 */  b          .L0022EEA0
    /* 12FDD4 0022EE54 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0022EE58:
    /* 12FDD8 0022EE58 1600023C */  lui        $v0, %hi(D_0015F714)
    /* 12FDDC 0022EE5C 14F7428C */  lw         $v0, %lo(D_0015F714)($v0)
    /* 12FDE0 0022EE60 40211000 */  sll        $a0, $s0, 5
    /* 12FDE4 0022EE64 2D302002 */  daddu      $a2, $s1, $zero
    /* 12FDE8 0022EE68 2D380000 */  daddu      $a3, $zero, $zero
    /* 12FDEC 0022EE6C 21204400 */  addu       $a0, $v0, $a0
    /* 12FDF0 0022EE70 C2BA080C */  jal        func_0022EB08
    /* 12FDF4 0022EE74 00040824 */   addiu     $t0, $zero, 0x400
    /* 12FDF8 0022EE78 2D204000 */  daddu      $a0, $v0, $zero
    /* 12FDFC 0022EE7C 07008004 */  bltz       $a0, .L0022EE9C
    /* 12FE00 0022EE80 70000324 */   addiu     $v1, $zero, 0x70
    /* 12FE04 0022EE84 1400023C */  lui        $v0, %hi(D_0013E650)
    /* 12FE08 0022EE88 18188300 */  mult       $v1, $a0, $v1
    /* 12FE0C 0022EE8C 50E64224 */  addiu      $v0, $v0, %lo(D_0013E650)
    /* 12FE10 0022EE90 21186200 */  addu       $v1, $v1, $v0
    /* 12FE14 0022EE94 7E0070A4 */  sh         $s0, 0x7E($v1)
    /* 12FE18 0022EE98 880071AC */  sw         $s1, 0x88($v1)
.align 2
  .L0022EE9C:
    /* 12FE1C 0022EE9C 2D108000 */  daddu      $v0, $a0, $zero
.align 2
  .L0022EEA0:
    /* 12FE20 0022EEA0 2000BF7B */  lq         $ra, 0x20($sp)
    /* 12FE24 0022EEA4 1000B17B */  lq         $s1, 0x10($sp)
    /* 12FE28 0022EEA8 0000B07B */  lq         $s0, 0x0($sp)
    /* 12FE2C 0022EEAC 0800E003 */  jr         $ra
    /* 12FE30 0022EEB0 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0022EE28
    /* 12FE34 0022EEB4 00000000 */  nop
