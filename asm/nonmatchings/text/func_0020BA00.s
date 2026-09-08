.align 3
nonmatching func_0020BA00, 0xA8

glabel func_0020BA00
    /* 10C980 0020BA00 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 10C984 0020BA04 0000B07F */  sq         $s0, 0x0($sp)
    /* 10C988 0020BA08 2000B27F */  sq         $s2, 0x20($sp)
    /* 10C98C 0020BA0C 1A00103C */  lui        $s0, %hi(D_001A05C0)
    /* 10C990 0020BA10 2D908000 */  daddu      $s2, $a0, $zero
    /* 10C994 0020BA14 C0051026 */  addiu      $s0, $s0, %lo(D_001A05C0)
    /* 10C998 0020BA18 4000B47F */  sq         $s4, 0x40($sp)
    /* 10C99C 0020BA1C 2D200002 */  daddu      $a0, $s0, $zero
    /* 10C9A0 0020BA20 3000B37F */  sq         $s3, 0x30($sp)
    /* 10C9A4 0020BA24 1000B17F */  sq         $s1, 0x10($sp)
    /* 10C9A8 0020BA28 2D980000 */  daddu      $s3, $zero, $zero
    /* 10C9AC 0020BA2C 5000BF7F */  sq         $ra, 0x50($sp)
    /* 10C9B0 0020BA30 B62E080C */  jal        func_0020BAD8
    /* 10C9B4 0020BA34 1A00113C */   lui       $s1, %hi(D_001A08C0)
    /* 10C9B8 0020BA38 2DA02002 */  daddu      $s4, $s1, $zero
    /* 10C9BC 0020BA3C 000042AE */  sw         $v0, 0x0($s2)
    /* 10C9C0 0020BA40 B62E080C */  jal        func_0020BAD8
    /* 10C9C4 0020BA44 C0082426 */   addiu     $a0, $s1, %lo(D_001A08C0)
    /* 10C9C8 0020BA48 040042AE */  sw         $v0, 0x4($s2)
    /* 10C9CC 0020BA4C 2D300002 */  daddu      $a2, $s0, $zero
    /* 10C9D0 0020BA50 08005226 */  addiu      $s2, $s2, 0x8
    /* 10C9D4 0020BA54 2D280000 */  daddu      $a1, $zero, $zero
    /* 10C9D8 0020BA58 F22E080C */  jal        func_0020BBC8
    /* 10C9DC 0020BA5C 2D204002 */   daddu     $a0, $s2, $zero
    /* 10C9E0 0020BA60 21904202 */  addu       $s2, $s2, $v0
    /* 10C9E4 0020BA64 2D204002 */  daddu      $a0, $s2, $zero
.align 2
  .L0020BA68:
    /* 10C9E8 0020BA68 2D286002 */  daddu      $a1, $s3, $zero
    /* 10C9EC 0020BA6C C0088626 */  addiu      $a2, $s4, %lo(D_001A08C0)
    /* 10C9F0 0020BA70 F22E080C */  jal        func_0020BBC8
    /* 10C9F4 0020BA74 01007326 */   addiu     $s3, $s3, 0x1
    /* 10C9F8 0020BA78 21904202 */  addu       $s2, $s2, $v0
    /* 10C9FC 0020BA7C 1400622A */  slti       $v0, $s3, 0x14
    /* 10CA00 0020BA80 F9FF4014 */  bnez       $v0, .L0020BA68
    /* 10CA04 0020BA84 2D204002 */   daddu     $a0, $s2, $zero
    /* 10CA08 0020BA88 5000BF7B */  lq         $ra, 0x50($sp)
    /* 10CA0C 0020BA8C 4000B47B */  lq         $s4, 0x40($sp)
    /* 10CA10 0020BA90 3000B37B */  lq         $s3, 0x30($sp)
    /* 10CA14 0020BA94 2000B27B */  lq         $s2, 0x20($sp)
    /* 10CA18 0020BA98 1000B17B */  lq         $s1, 0x10($sp)
    /* 10CA1C 0020BA9C 0000B07B */  lq         $s0, 0x0($sp)
    /* 10CA20 0020BAA0 0800E003 */  jr         $ra
    /* 10CA24 0020BAA4 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0020BA00
