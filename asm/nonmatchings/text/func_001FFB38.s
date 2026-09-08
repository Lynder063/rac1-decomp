.align 3
nonmatching func_001FFB38, 0x10C

glabel func_001FFB38
    /* 100AB8 001FFB38 0F008B30 */  andi       $11, $4, 0xF
    /* 100ABC 001FFB3C 90000324 */  addiu      $3, $0, 0x90
    /* 100AC0 001FFB40 18186301 */  mult       $3, $11, $3
    /* 100AC4 001FFB44 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 100AC8 001FFB48 1A00023C */  lui        $2, %hi(D_00199C60)
    /* 100ACC 001FFB4C 0000B07F */  sq         $16, 0x0($29)
    /* 100AD0 001FFB50 609C4224 */  addiu      $2, $2, %lo(D_00199C60)
    /* 100AD4 001FFB54 F0FF8C30 */  andi       $12, $4, 0xFFF0
    /* 100AD8 001FFB58 1600043C */  lui        $4, %hi(D_0015F6E8)
    /* 100ADC 001FFB5C E8F6848C */  lw         $4, %lo(D_0015F6E8)($4)
    /* 100AE0 001FFB60 2D68A000 */  daddu      $13, $5, $0
    /* 100AE4 001FFB64 21806200 */  addu       $16, $3, $2
    /* 100AE8 001FFB68 05000224 */  addiu      $2, $0, 0x5
    /* 100AEC 001FFB6C 06008214 */  bne        $4, $2, .L001FFB88
    /* 100AF0 001FFB70 1000BF7F */   sq        $31, 0x10($29)
    /* 100AF4 001FFB74 02000224 */  addiu      $2, $0, 0x2
    /* 100AF8 001FFB78 04006251 */  beql       $11, $2, .L001FFB8C
    /* 100AFC 001FFB7C 2C00028E */   lw        $2, 0x2C($16)
    /* 100B00 001FFB80 2C006015 */  bnez       $11, .L001FFC34
    /* 100B04 001FFB84 2D100000 */   daddu     $2, $0, $0
.align 2
  .L001FFB88:
    /* 100B08 001FFB88 2C00028E */  lw         $2, 0x2C($16)
.align 2
  .L001FFB8C:
    /* 100B0C 001FFB8C 13004914 */  bne        $2, $9, .L001FFBDC
    /* 100B10 001FFB90 1A00043C */   lui       $4, %hi(D_0019A4E8)
    /* 100B14 001FFB94 2800028E */  lw         $2, 0x28($16)
    /* 100B18 001FFB98 11004A54 */  bnel       $2, $10, .L001FFBE0
    /* 100B1C 001FFB9C 0400038E */   lw        $3, 0x4($16)
    /* 100B20 001FFBA0 2000028E */  lw         $2, 0x20($16)
    /* 100B24 001FFBA4 0E004D54 */  bnel       $2, $13, .L001FFBE0
    /* 100B28 001FFBA8 0400038E */   lw        $3, 0x4($16)
    /* 100B2C 001FFBAC 2400028E */  lw         $2, 0x24($16)
    /* 100B30 001FFBB0 0B004C54 */  bnel       $2, $12, .L001FFBE0
    /* 100B34 001FFBB4 0400038E */   lw        $3, 0x4($16)
    /* 100B38 001FFBB8 3000028E */  lw         $2, 0x30($16)
    /* 100B3C 001FFBBC 08004654 */  bnel       $2, $6, .L001FFBE0
    /* 100B40 001FFBC0 0400038E */   lw        $3, 0x4($16)
    /* 100B44 001FFBC4 3400028E */  lw         $2, 0x34($16)
    /* 100B48 001FFBC8 05004754 */  bnel       $2, $7, .L001FFBE0
    /* 100B4C 001FFBCC 0400038E */   lw        $3, 0x4($16)
    /* 100B50 001FFBD0 3800028E */  lw         $2, 0x38($16)
    /* 100B54 001FFBD4 17004850 */  beql       $2, $8, .L001FFC34
    /* 100B58 001FFBD8 6400028E */   lw        $2, 0x64($16)
.align 2
  .L001FFBDC:
    /* 100B5C 001FFBDC 0400038E */  lw         $3, 0x4($16)
.align 2
  .L001FFBE0:
    /* 100B60 001FFBE0 E8A4828C */  lw         $2, %lo(D_0019A4E8)($4)
    /* 100B64 001FFBE4 01000524 */  addiu      $5, $0, 0x1
    /* 100B68 001FFBE8 2C0009AE */  sw         $9, 0x2C($16)
    /* 100B6C 001FFBEC 24188301 */  and        $3, $12, $3
    /* 100B70 001FFBF0 640002AE */  sw         $2, 0x64($16)
    /* 100B74 001FFBF4 20006330 */  andi       $3, $3, 0x20
    /* 100B78 001FFBF8 01004224 */  addiu      $2, $2, 0x1
    /* 100B7C 001FFBFC 28000AAE */  sw         $10, 0x28($16)
    /* 100B80 001FFC00 E8A482AC */  sw         $2, %lo(D_0019A4E8)($4)
    /* 100B84 001FFC04 20000DAE */  sw         $13, 0x20($16)
    /* 100B88 001FFC08 300006AE */  sw         $6, 0x30($16)
    /* 100B8C 001FFC0C 340007AE */  sw         $7, 0x34($16)
    /* 100B90 001FFC10 380008AE */  sw         $8, 0x38($16)
    /* 100B94 001FFC14 680005AE */  sw         $5, 0x68($16)
    /* 100B98 001FFC18 24000CAE */  sw         $12, 0x24($16)
    /* 100B9C 001FFC1C 7C0000AE */  sw         $0, 0x7C($16)
    /* 100BA0 001FFC20 03006010 */  beqz       $3, .L001FFC30
    /* 100BA4 001FFC24 700000AE */   sw        $0, 0x70($16)
    /* 100BA8 001FFC28 12FF070C */  jal        func_001FFC48
    /* 100BAC 001FFC2C 2D200002 */   daddu     $4, $16, $0
.align 2
  .L001FFC30:
    /* 100BB0 001FFC30 6400028E */  lw         $2, 0x64($16)
.align 2
  .L001FFC34:
    /* 100BB4 001FFC34 1000BF7B */  lq         $31, 0x10($29)
    /* 100BB8 001FFC38 0000B07B */  lq         $16, 0x0($29)
    /* 100BBC 001FFC3C 0800E003 */  jr         $31
    /* 100BC0 001FFC40 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_001FFB38
    /* 100BC4 001FFC44 00000000 */  nop
