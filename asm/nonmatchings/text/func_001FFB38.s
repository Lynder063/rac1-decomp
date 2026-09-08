.align 3
nonmatching func_001FFB38, 0x10C

glabel func_001FFB38
    /* 100AB8 001FFB38 0F008B30 */  andi       $t3, $a0, 0xF
    /* 100ABC 001FFB3C 90000324 */  addiu      $v1, $zero, 0x90
    /* 100AC0 001FFB40 18186301 */  mult       $v1, $t3, $v1
    /* 100AC4 001FFB44 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 100AC8 001FFB48 1A00023C */  lui        $v0, %hi(D_00199C60)
    /* 100ACC 001FFB4C 0000B07F */  sq         $s0, 0x0($sp)
    /* 100AD0 001FFB50 609C4224 */  addiu      $v0, $v0, %lo(D_00199C60)
    /* 100AD4 001FFB54 F0FF8C30 */  andi       $t4, $a0, 0xFFF0
    /* 100AD8 001FFB58 1600043C */  lui        $a0, %hi(D_0015F6E8)
    /* 100ADC 001FFB5C E8F6848C */  lw         $a0, %lo(D_0015F6E8)($a0)
    /* 100AE0 001FFB60 2D68A000 */  daddu      $t5, $a1, $zero
    /* 100AE4 001FFB64 21806200 */  addu       $s0, $v1, $v0
    /* 100AE8 001FFB68 05000224 */  addiu      $v0, $zero, 0x5
    /* 100AEC 001FFB6C 06008214 */  bne        $a0, $v0, .L001FFB88
    /* 100AF0 001FFB70 1000BF7F */   sq        $ra, 0x10($sp)
    /* 100AF4 001FFB74 02000224 */  addiu      $v0, $zero, 0x2
    /* 100AF8 001FFB78 04006251 */  beql       $t3, $v0, .L001FFB8C
    /* 100AFC 001FFB7C 2C00028E */   lw        $v0, 0x2C($s0)
    /* 100B00 001FFB80 2C006015 */  bnez       $t3, .L001FFC34
    /* 100B04 001FFB84 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L001FFB88:
    /* 100B08 001FFB88 2C00028E */  lw         $v0, 0x2C($s0)
.align 2
  .L001FFB8C:
    /* 100B0C 001FFB8C 13004914 */  bne        $v0, $t1, .L001FFBDC
    /* 100B10 001FFB90 1A00043C */   lui       $a0, %hi(D_0019A4E8)
    /* 100B14 001FFB94 2800028E */  lw         $v0, 0x28($s0)
    /* 100B18 001FFB98 11004A54 */  bnel       $v0, $t2, .L001FFBE0
    /* 100B1C 001FFB9C 0400038E */   lw        $v1, 0x4($s0)
    /* 100B20 001FFBA0 2000028E */  lw         $v0, 0x20($s0)
    /* 100B24 001FFBA4 0E004D54 */  bnel       $v0, $t5, .L001FFBE0
    /* 100B28 001FFBA8 0400038E */   lw        $v1, 0x4($s0)
    /* 100B2C 001FFBAC 2400028E */  lw         $v0, 0x24($s0)
    /* 100B30 001FFBB0 0B004C54 */  bnel       $v0, $t4, .L001FFBE0
    /* 100B34 001FFBB4 0400038E */   lw        $v1, 0x4($s0)
    /* 100B38 001FFBB8 3000028E */  lw         $v0, 0x30($s0)
    /* 100B3C 001FFBBC 08004654 */  bnel       $v0, $a2, .L001FFBE0
    /* 100B40 001FFBC0 0400038E */   lw        $v1, 0x4($s0)
    /* 100B44 001FFBC4 3400028E */  lw         $v0, 0x34($s0)
    /* 100B48 001FFBC8 05004754 */  bnel       $v0, $a3, .L001FFBE0
    /* 100B4C 001FFBCC 0400038E */   lw        $v1, 0x4($s0)
    /* 100B50 001FFBD0 3800028E */  lw         $v0, 0x38($s0)
    /* 100B54 001FFBD4 17004850 */  beql       $v0, $t0, .L001FFC34
    /* 100B58 001FFBD8 6400028E */   lw        $v0, 0x64($s0)
.align 2
  .L001FFBDC:
    /* 100B5C 001FFBDC 0400038E */  lw         $v1, 0x4($s0)
.align 2
  .L001FFBE0:
    /* 100B60 001FFBE0 E8A4828C */  lw         $v0, %lo(D_0019A4E8)($a0)
    /* 100B64 001FFBE4 01000524 */  addiu      $a1, $zero, 0x1
    /* 100B68 001FFBE8 2C0009AE */  sw         $t1, 0x2C($s0)
    /* 100B6C 001FFBEC 24188301 */  and        $v1, $t4, $v1
    /* 100B70 001FFBF0 640002AE */  sw         $v0, 0x64($s0)
    /* 100B74 001FFBF4 20006330 */  andi       $v1, $v1, 0x20
    /* 100B78 001FFBF8 01004224 */  addiu      $v0, $v0, 0x1
    /* 100B7C 001FFBFC 28000AAE */  sw         $t2, 0x28($s0)
    /* 100B80 001FFC00 E8A482AC */  sw         $v0, %lo(D_0019A4E8)($a0)
    /* 100B84 001FFC04 20000DAE */  sw         $t5, 0x20($s0)
    /* 100B88 001FFC08 300006AE */  sw         $a2, 0x30($s0)
    /* 100B8C 001FFC0C 340007AE */  sw         $a3, 0x34($s0)
    /* 100B90 001FFC10 380008AE */  sw         $t0, 0x38($s0)
    /* 100B94 001FFC14 680005AE */  sw         $a1, 0x68($s0)
    /* 100B98 001FFC18 24000CAE */  sw         $t4, 0x24($s0)
    /* 100B9C 001FFC1C 7C0000AE */  sw         $zero, 0x7C($s0)
    /* 100BA0 001FFC20 03006010 */  beqz       $v1, .L001FFC30
    /* 100BA4 001FFC24 700000AE */   sw        $zero, 0x70($s0)
    /* 100BA8 001FFC28 12FF070C */  jal        func_001FFC48
    /* 100BAC 001FFC2C 2D200002 */   daddu     $a0, $s0, $zero
.align 2
  .L001FFC30:
    /* 100BB0 001FFC30 6400028E */  lw         $v0, 0x64($s0)
.align 2
  .L001FFC34:
    /* 100BB4 001FFC34 1000BF7B */  lq         $ra, 0x10($sp)
    /* 100BB8 001FFC38 0000B07B */  lq         $s0, 0x0($sp)
    /* 100BBC 001FFC3C 0800E003 */  jr         $ra
    /* 100BC0 001FFC40 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001FFB38
    /* 100BC4 001FFC44 00000000 */  nop
