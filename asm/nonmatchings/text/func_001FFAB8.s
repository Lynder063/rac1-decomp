.align 3
nonmatching func_001FFAB8, 0x74

glabel func_001FFAB8
    /* 100A38 001FFAB8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 100A3C 001FFABC 1A00033C */  lui        $v1, %hi(D_0019A4E8)
    /* 100A40 001FFAC0 1000B17F */  sq         $s1, 0x10($sp)
    /* 100A44 001FFAC4 0000B07F */  sq         $s0, 0x0($sp)
    /* 100A48 001FFAC8 E8A47124 */  addiu      $s1, $v1, %lo(D_0019A4E8)
    /* 100A4C 001FFACC 2000BF7F */  sq         $ra, 0x20($sp)
    /* 100A50 001FFAD0 1000228E */  lw         $v0, 0x10($s1)
    /* 100A54 001FFAD4 03004014 */  bnez       $v0, .L001FFAE4
    /* 100A58 001FFAD8 2D808000 */   daddu     $s0, $a0, $zero
    /* 100A5C 001FFADC A4FE070C */  jal        func_001FFA90
    /* 100A60 001FFAE0 00000000 */   nop
.align 2
  .L001FFAE4:
    /* 100A64 001FFAE4 1400228E */  lw         $v0, 0x14($s1)
    /* 100A68 001FFAE8 1000248E */  lw         $a0, 0x10($s1)
    /* 100A6C 001FFAEC 23104400 */  subu       $v0, $v0, $a0
    /* 100A70 001FFAF0 2A105000 */  slt        $v0, $v0, $s0
    /* 100A74 001FFAF4 08004014 */  bnez       $v0, .L001FFB18
    /* 100A78 001FFAF8 2D100000 */   daddu     $v0, $zero, $zero
    /* 100A7C 001FFAFC FFFF033C */  lui        $v1, (0xFFFFFFF0 >> 16)
    /* 100A80 001FFB00 0F000526 */  addiu      $a1, $s0, 0xF
    /* 100A84 001FFB04 F0FF6334 */  ori        $v1, $v1, (0xFFFFFFF0 & 0xFFFF)
    /* 100A88 001FFB08 2D108000 */  daddu      $v0, $a0, $zero
    /* 100A8C 001FFB0C 2480A300 */  and        $s0, $a1, $v1
    /* 100A90 001FFB10 21209000 */  addu       $a0, $a0, $s0
    /* 100A94 001FFB14 100024AE */  sw         $a0, 0x10($s1)
.align 2
  .L001FFB18:
    /* 100A98 001FFB18 2000BF7B */  lq         $ra, 0x20($sp)
    /* 100A9C 001FFB1C 1000B17B */  lq         $s1, 0x10($sp)
    /* 100AA0 001FFB20 0000B07B */  lq         $s0, 0x0($sp)
    /* 100AA4 001FFB24 0800E003 */  jr         $ra
    /* 100AA8 001FFB28 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_001FFAB8
    /* 100AAC 001FFB2C 00000000 */  nop
    /* 100AB0 001FFB30 00000000 */  nop
    /* 100AB4 001FFB34 00000000 */  nop
