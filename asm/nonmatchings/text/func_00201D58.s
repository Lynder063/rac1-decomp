.align 3
nonmatching func_00201D58, 0xB4

glabel func_00201D58
    /* 102CD8 00201D58 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 102CDC 00201D5C 2000B17F */  sq         $s1, 0x20($sp)
    /* 102CE0 00201D60 1000B07F */  sq         $s0, 0x10($sp)
    /* 102CE4 00201D64 2D888000 */  daddu      $s1, $a0, $zero
    /* 102CE8 00201D68 2D80A000 */  daddu      $s0, $a1, $zero
    /* 102CEC 00201D6C 4000B37F */  sq         $s3, 0x40($sp)
    /* 102CF0 00201D70 3000B27F */  sq         $s2, 0x30($sp)
    /* 102CF4 00201D74 2D200002 */  daddu      $a0, $s0, $zero
    /* 102CF8 00201D78 5000BF7F */  sq         $ra, 0x50($sp)
    /* 102CFC 00201D7C F272040C */  jal        func_0011CBC8
    /* 102D00 00201D80 01001324 */   addiu     $s3, $zero, 0x1
    /* 102D04 00201D84 2D904000 */  daddu      $s2, $v0, $zero
    /* 102D08 00201D88 0800B0AF */  sw         $s0, 0x8($sp)
    /* 102D0C 00201D8C 0000B1AF */  sw         $s1, 0x0($sp)
    /* 102D10 00201D90 2D20A003 */  daddu      $a0, $sp, $zero
    /* 102D14 00201D94 0400B2AF */  sw         $s2, 0x4($sp)
    /* 102D18 00201D98 01000524 */  addiu      $a1, $zero, 0x1
    /* 102D1C 00201D9C 8863040C */  jal        func_00118E20
    /* 102D20 00201DA0 0C00A0AF */   sw        $zero, 0xC($sp)
    /* 102D24 00201DA4 2D804000 */  daddu      $s0, $v0, $zero
    /* 102D28 00201DA8 11000012 */  beqz       $s0, .L00201DF0
    /* 102D2C 00201DAC 2D106002 */   daddu     $v0, $s3, $zero
.align 2
  .L00201DB0:
    /* 102D30 00201DB0 8463040C */  jal        func_00118E10
    /* 102D34 00201DB4 2D200002 */   daddu     $a0, $s0, $zero
    /* 102D38 00201DB8 00000000 */  nop
    /* 102D3C 00201DBC 00000000 */  nop
    /* 102D40 00201DC0 00000000 */  nop
    /* 102D44 00201DC4 FAFF4104 */  bgez       $v0, .L00201DB0
    /* 102D48 00201DC8 2D204002 */   daddu     $a0, $s2, $zero
    /* 102D4C 00201DCC 2D280000 */  daddu      $a1, $zero, $zero
    /* 102D50 00201DD0 1E74040C */  jal        func_0011D078
    /* 102D54 00201DD4 2D300000 */   daddu     $a2, $zero, $zero
    /* 102D58 00201DD8 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 102D5C 00201DDC 2D204002 */  daddu      $a0, $s2, $zero
    /* 102D60 00201DE0 2A186200 */  slt        $v1, $v1, $v0
    /* 102D64 00201DE4 2C73040C */  jal        func_0011CCB0
    /* 102D68 00201DE8 0A980300 */   movz      $s3, $zero, $v1
    /* 102D6C 00201DEC 2D106002 */  daddu      $v0, $s3, $zero
.align 2
  .L00201DF0:
    /* 102D70 00201DF0 5000BF7B */  lq         $ra, 0x50($sp)
    /* 102D74 00201DF4 4000B37B */  lq         $s3, 0x40($sp)
    /* 102D78 00201DF8 3000B27B */  lq         $s2, 0x30($sp)
    /* 102D7C 00201DFC 2000B17B */  lq         $s1, 0x20($sp)
    /* 102D80 00201E00 1000B07B */  lq         $s0, 0x10($sp)
    /* 102D84 00201E04 0800E003 */  jr         $ra
    /* 102D88 00201E08 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_00201D58
    /* 102D8C 00201E0C 00000000 */  nop
