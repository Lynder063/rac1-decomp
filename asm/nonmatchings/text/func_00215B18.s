.align 3
nonmatching func_00215B18, 0x8C

glabel func_00215B18
    /* 116A98 00215B18 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 116A9C 00215B1C 0000B07F */  sq         $s0, 0x0($sp)
    /* 116AA0 00215B20 2800B5E7 */  swc1       $f21, 0x28($sp)
    /* 116AA4 00215B24 2D808000 */  daddu      $s0, $a0, $zero
    /* 116AA8 00215B28 3000B6E7 */  swc1       $f22, 0x30($sp)
    /* 116AAC 00215B2C 2000B4E7 */  swc1       $f20, 0x20($sp)
    /* 116AB0 00215B30 1000BF7F */  sq         $ra, 0x10($sp)
    /* 116AB4 00215B34 0C36080C */  jal        func_0020D830
    /* 116AB8 00215B38 46650046 */   mov.s     $f21, $f12
    /* 116ABC 00215B3C 06050046 */  mov.s      $f20, $f0
    /* 116AC0 00215B40 04000424 */  addiu      $a0, $zero, 0x4
    /* 116AC4 00215B44 A656080C */  jal        func_00215A98
    /* 116AC8 00215B48 01A31546 */   sub.s     $f12, $f20, $f21
    /* 116ACC 00215B4C 86050046 */  mov.s      $f22, $f0
    /* 116AD0 00215B50 58000CC6 */  lwc1       $f12, 0x58($s0)
    /* 116AD4 00215B54 5C0000C6 */  lwc1       $f0, 0x5C($s0)
    /* 116AD8 00215B58 04000424 */  addiu      $a0, $zero, 0x4
    /* 116ADC 00215B5C A656080C */  jal        func_00215A98
    /* 116AE0 00215B60 02630046 */   mul.s     $f12, $f12, $f0
    /* 116AE4 00215B64 36A81446 */  c.le.s     $f21, $f20
    /* 116AE8 00215B68 00000000 */  nop
    /* 116AEC 00215B6C 06000045 */  bc1f       .L00215B88
    /* 116AF0 00215B70 2D100000 */   daddu     $v0, $zero, $zero
    /* 116AF4 00215B74 34B00046 */  c.lt.s     $f22, $f0
    /* 116AF8 00215B78 00000000 */  nop
    /* 116AFC 00215B7C 02000145 */  bc1t       .L00215B88
    /* 116B00 00215B80 01000224 */   addiu     $v0, $zero, 0x1
    /* 116B04 00215B84 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L00215B88:
    /* 116B08 00215B88 1000BF7B */  lq         $ra, 0x10($sp)
    /* 116B0C 00215B8C 0000B07B */  lq         $s0, 0x0($sp)
    /* 116B10 00215B90 3000B6C7 */  lwc1       $f22, 0x30($sp)
    /* 116B14 00215B94 2800B5C7 */  lwc1       $f21, 0x28($sp)
    /* 116B18 00215B98 2000B4C7 */  lwc1       $f20, 0x20($sp)
    /* 116B1C 00215B9C 0800E003 */  jr         $ra
    /* 116B20 00215BA0 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_00215B18
    /* 116B24 00215BA4 00000000 */  nop
