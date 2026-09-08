.align 3
nonmatching func_001FFAB8, 0x74

glabel func_001FFAB8
    /* 100A38 001FFAB8 D0FFBD27 */  addiu      $29, $29, -0x30
    /* 100A3C 001FFABC 1A00033C */  lui        $3, %hi(D_0019A4E8)
    /* 100A40 001FFAC0 1000B17F */  sq         $17, 0x10($29)
    /* 100A44 001FFAC4 0000B07F */  sq         $16, 0x0($29)
    /* 100A48 001FFAC8 E8A47124 */  addiu      $17, $3, %lo(D_0019A4E8)
    /* 100A4C 001FFACC 2000BF7F */  sq         $31, 0x20($29)
    /* 100A50 001FFAD0 1000228E */  lw         $2, 0x10($17)
    /* 100A54 001FFAD4 03004014 */  bnez       $2, .L001FFAE4
    /* 100A58 001FFAD8 2D808000 */   daddu     $16, $4, $0
    /* 100A5C 001FFADC A4FE070C */  jal        func_001FFA90
    /* 100A60 001FFAE0 00000000 */   nop
.align 2
  .L001FFAE4:
    /* 100A64 001FFAE4 1400228E */  lw         $2, 0x14($17)
    /* 100A68 001FFAE8 1000248E */  lw         $4, 0x10($17)
    /* 100A6C 001FFAEC 23104400 */  subu       $2, $2, $4
    /* 100A70 001FFAF0 2A105000 */  slt        $2, $2, $16
    /* 100A74 001FFAF4 08004014 */  bnez       $2, .L001FFB18
    /* 100A78 001FFAF8 2D100000 */   daddu     $2, $0, $0
    /* 100A7C 001FFAFC FFFF033C */  lui        $3, (0xFFFFFFF0 >> 16)
    /* 100A80 001FFB00 0F000526 */  addiu      $5, $16, 0xF
    /* 100A84 001FFB04 F0FF6334 */  ori        $3, $3, (0xFFFFFFF0 & 0xFFFF)
    /* 100A88 001FFB08 2D108000 */  daddu      $2, $4, $0
    /* 100A8C 001FFB0C 2480A300 */  and        $16, $5, $3
    /* 100A90 001FFB10 21209000 */  addu       $4, $4, $16
    /* 100A94 001FFB14 100024AE */  sw         $4, 0x10($17)
.align 2
  .L001FFB18:
    /* 100A98 001FFB18 2000BF7B */  lq         $31, 0x20($29)
    /* 100A9C 001FFB1C 1000B17B */  lq         $17, 0x10($29)
    /* 100AA0 001FFB20 0000B07B */  lq         $16, 0x0($29)
    /* 100AA4 001FFB24 0800E003 */  jr         $31
    /* 100AA8 001FFB28 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_001FFAB8
    /* 100AAC 001FFB2C 00000000 */  nop
    /* 100AB0 001FFB30 00000000 */  nop
    /* 100AB4 001FFB34 00000000 */  nop
