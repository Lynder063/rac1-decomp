.align 3
nonmatching func_0012EE98, 0xB0

glabel func_0012EE98
    /* 2FE18 0012EE98 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 2FE1C 0012EE9C 8C80828F */  lw         $v0, -0x7F74($gp)
    /* 2FE20 0012EEA0 4000B37F */  sq         $s3, 0x40($sp)
    /* 2FE24 0012EEA4 3000B27F */  sq         $s2, 0x30($sp)
    /* 2FE28 0012EEA8 2D98C000 */  daddu      $s3, $a2, $zero
    /* 2FE2C 0012EEAC 1000B07F */  sq         $s0, 0x10($sp)
    /* 2FE30 0012EEB0 2D90A000 */  daddu      $s2, $a1, $zero
    /* 2FE34 0012EEB4 5000BF7F */  sq         $ra, 0x50($sp)
    /* 2FE38 0012EEB8 2D808000 */  daddu      $s0, $a0, $zero
    /* 2FE3C 0012EEBC 05004014 */  bnez       $v0, .L0012EED4
    /* 2FE40 0012EEC0 2000B17F */   sq        $s1, 0x20($sp)
    /* 2FE44 0012EEC4 D485040C */  jal        func_00121750
    /* 2FE48 0012EEC8 00000000 */   nop
    /* 2FE4C 0012EECC 18000010 */  b          .L0012EF30
    /* 2FE50 0012EED0 5000BF7B */   lq        $ra, 0x50($sp)
.align 2
  .L0012EED4:
    /* 2FE54 0012EED4 01000424 */  addiu      $a0, $zero, 0x1
    /* 2FE58 0012EED8 D2BB040C */  jal        func_0012EF48
    /* 2FE5C 0012EEDC 01001124 */   addiu     $s1, $zero, 0x1
    /* 2FE60 0012EEE0 11005110 */  beq        $v0, $s1, .L0012EF28
    /* 2FE64 0012EEE4 1300023C */   lui       $v0, %hi(D_00137C00)
    /* 2FE68 0012EEE8 0000B0AF */  sw         $s0, 0x0($sp)
    /* 2FE6C 0012EEEC 007C51AC */  sw         $s1, %lo(D_00137C00)($v0)
    /* 2FE70 0012EEF0 38000424 */  addiu      $a0, $zero, 0x38
    /* 2FE74 0012EEF4 007C4224 */  addiu      $v0, $v0, %lo(D_00137C00)
    /* 2FE78 0012EEF8 0C000524 */  addiu      $a1, $zero, 0xC
    /* 2FE7C 0012EEFC 100040AC */  sw         $zero, 0x10($v0)
    /* 2FE80 0012EF00 2D30A003 */  daddu      $a2, $sp, $zero
    /* 2FE84 0012EF04 0400B2AF */  sw         $s2, 0x4($sp)
    /* 2FE88 0012EF08 2D380000 */  daddu      $a3, $zero, $zero
    /* 2FE8C 0012EF0C 0800B3AF */  sw         $s3, 0x8($sp)
    /* 2FE90 0012EF10 08BA040C */  jal        func_0012E820
    /* 2FE94 0012EF14 2D400000 */   daddu     $t0, $zero, $zero
    /* 2FE98 0012EF18 948091AF */  sw         $s1, -0x7F6C($gp)
    /* 2FE9C 0012EF1C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2FEA0 0012EF20 02000010 */  b          .L0012EF2C
    /* 2FEA4 0012EF24 988080AF */   sw        $zero, -0x7F68($gp)
.align 2
  .L0012EF28:
    /* 2FEA8 0012EF28 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0012EF2C:
    /* 2FEAC 0012EF2C 5000BF7B */  lq         $ra, 0x50($sp)
.align 2
  .L0012EF30:
    /* 2FEB0 0012EF30 4000B37B */  lq         $s3, 0x40($sp)
    /* 2FEB4 0012EF34 3000B27B */  lq         $s2, 0x30($sp)
    /* 2FEB8 0012EF38 2000B17B */  lq         $s1, 0x20($sp)
    /* 2FEBC 0012EF3C 1000B07B */  lq         $s0, 0x10($sp)
    /* 2FEC0 0012EF40 0800E003 */  jr         $ra
    /* 2FEC4 0012EF44 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0012EE98
