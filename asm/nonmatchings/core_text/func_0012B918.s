.align 3
nonmatching func_0012B918, 0x208

glabel func_0012B918
    /* 2C898 0012B918 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2C89C 0012B91C 3000B3FF */  sd         $s3, 0x30($sp)
    /* 2C8A0 0012B920 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2C8A4 0012B924 2D988000 */  daddu      $s3, $a0, $zero
    /* 2C8A8 0012B928 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2C8AC 0012B92C 2D88C000 */  daddu      $s1, $a2, $zero
    /* 2C8B0 0012B930 2D80A000 */  daddu      $s0, $a1, $zero
    /* 2C8B4 0012B934 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2C8B8 0012B938 2D200002 */  daddu      $a0, $s0, $zero
    /* 2C8BC 0012B93C 4000BFFF */  sd         $ra, 0x40($sp)
    /* 2C8C0 0012B940 FF54040C */  jal        func_001153FC
    /* 2C8C4 0012B944 2D280000 */   daddu     $a1, $zero, $zero
    /* 2C8C8 0012B948 03000326 */  addiu      $v1, $s0, 0x3
    /* 2C8CC 0012B94C 82180300 */  srl        $v1, $v1, 2
    /* 2C8D0 0012B950 80900300 */  sll        $s2, $v1, 2
    /* 2C8D4 0012B954 23805002 */  subu       $s0, $s2, $s0
    /* 2C8D8 0012B958 23303002 */  subu       $a2, $s1, $s0
    /* 2C8DC 0012B95C C010C22C */  sltiu      $v0, $a2, 0x10C0
    /* 2C8E0 0012B960 06004010 */  beqz       $v0, .L0012B97C
    /* 2C8E4 0012B964 1500053C */   lui       $a1, %hi(D_00153B10)
    /* 2C8E8 0012B968 2D204002 */  daddu      $a0, $s2, $zero
    /* 2C8EC 0012B96C 1AB1040C */  jal        func_0012C468
    /* 2C8F0 0012B970 103BA524 */   addiu     $a1, $a1, %lo(D_00153B10)
    /* 2C8F4 0012B974 63000010 */  b          .L0012BB04
    /* 2C8F8 0012B978 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0012B97C:
    /* 2C8FC 0012B97C 08015126 */  addiu      $s1, $s2, 0x108
    /* 2C900 0012B980 400072AE */  sw         $s2, 0x40($s3)
    /* 2C904 0012B984 40EFC624 */  addiu      $a2, $a2, -0x10C0
    /* 2C908 0012B988 2D202002 */  daddu      $a0, $s1, $zero
    /* 2C90C 0012B98C C0104526 */  addiu      $a1, $s2, 0x10C0
    /* 2C910 0012B990 4AAF040C */  jal        func_0012BD28
    /* 2C914 0012B994 FFFF1024 */   addiu     $s0, $zero, -0x1
    /* 2C918 0012B998 000060AE */  sw         $zero, 0x0($s3)
    /* 2C91C 0012B99C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2C920 0012B9A0 040060AE */  sw         $zero, 0x4($s3)
    /* 2C924 0012B9A4 1300033C */  lui        $v1, %hi(D_0012CC70)
    /* 2C928 0012B9A8 080060AE */  sw         $zero, 0x8($s3)
    /* 2C92C 0012B9AC 1300083C */  lui        $t0, %hi(func_0012CC80)
    /* 2C930 0012B9B0 70CC6324 */  addiu      $v1, $v1, %lo(D_0012CC70)
    /* 2C934 0012B9B4 80CC0825 */  addiu      $t0, $t0, %lo(func_0012CC80)
    /* 2C938 0012B9B8 100062FE */  sd         $v0, 0x10($s3)
    /* 2C93C 0012B9BC 08000724 */  addiu      $a3, $zero, 0x8
    /* 2C940 0012B9C0 180062FE */  sd         $v0, 0x18($s3)
    /* 2C944 0012B9C4 2D204002 */  daddu      $a0, $s2, $zero
    /* 2C948 0012B9C8 200060FE */  sd         $zero, 0x20($s3)
    /* 2C94C 0012B9CC 2D282002 */  daddu      $a1, $s1, $zero
    /* 2C950 0012B9D0 280062FE */  sd         $v0, 0x28($s3)
    /* 2C954 0012B9D4 00060624 */  addiu      $a2, $zero, 0x600
    /* 2C958 0012B9D8 300062FE */  sd         $v0, 0x30($s3)
    /* 2C95C 0012B9DC 380060FE */  sd         $zero, 0x38($s3)
    /* 2C960 0012B9E0 B40040AE */  sw         $zero, 0xB4($s2)
    /* 2C964 0012B9E4 B80040AE */  sw         $zero, 0xB8($s2)
    /* 2C968 0012B9E8 BC0040AE */  sw         $zero, 0xBC($s2)
    /* 2C96C 0012B9EC C00040AE */  sw         $zero, 0xC0($s2)
    /* 2C970 0012B9F0 C40040AE */  sw         $zero, 0xC4($s2)
    /* 2C974 0012B9F4 C80040AE */  sw         $zero, 0xC8($s2)
    /* 2C978 0012B9F8 CC0040AE */  sw         $zero, 0xCC($s2)
    /* 2C97C 0012B9FC D00040AE */  sw         $zero, 0xD0($s2)
    /* 2C980 0012BA00 D40040AE */  sw         $zero, 0xD4($s2)
    /* 2C984 0012BA04 D80040AE */  sw         $zero, 0xD8($s2)
    /* 2C988 0012BA08 DC0040AE */  sw         $zero, 0xDC($s2)
    /* 2C98C 0012BA0C E00040AE */  sw         $zero, 0xE0($s2)
    /* 2C990 0012BA10 E40040AE */  sw         $zero, 0xE4($s2)
    /* 2C994 0012BA14 E80040AE */  sw         $zero, 0xE8($s2)
    /* 2C998 0012BA18 F80040AE */  sw         $zero, 0xF8($s2)
    /* 2C99C 0012BA1C 0C0040AE */  sw         $zero, 0xC($s2)
    /* 2C9A0 0012BA20 140040AE */  sw         $zero, 0x14($s2)
    /* 2C9A4 0012BA24 2C0040AE */  sw         $zero, 0x2C($s2)
    /* 2C9A8 0012BA28 340040AE */  sw         $zero, 0x34($s2)
    /* 2C9AC 0012BA2C 3C0040AE */  sw         $zero, 0x3C($s2)
    /* 2C9B0 0012BA30 F00042FE */  sd         $v0, 0xF0($s2)
    /* 2C9B4 0012BA34 1C0043AE */  sw         $v1, 0x1C($s2)
    /* 2C9B8 0012BA38 58AF040C */  jal        func_0012BD60
    /* 2C9BC 0012BA3C 240048AE */   sw        $t0, 0x24($s2)
    /* 2C9C0 0012BA40 01000324 */  addiu      $v1, $zero, 0x1
    /* 2C9C4 0012BA44 480040AE */  sw         $zero, 0x48($s2)
    /* 2C9C8 0012BA48 FC0040AE */  sw         $zero, 0xFC($s2)
    /* 2C9CC 0012BA4C 2D204002 */  daddu      $a0, $s2, $zero
    /* 2C9D0 0012BA50 000140AE */  sw         $zero, 0x100($s2)
    /* 2C9D4 0012BA54 040140AE */  sw         $zero, 0x104($s2)
    /* 2C9D8 0012BA58 700040AE */  sw         $zero, 0x70($s2)
    /* 2C9DC 0012BA5C 780040FE */  sd         $zero, 0x78($s2)
    /* 2C9E0 0012BA60 800050AE */  sw         $s0, 0x80($s2)
    /* 2C9E4 0012BA64 880040FE */  sd         $zero, 0x88($s2)
    /* 2C9E8 0012BA68 900040AE */  sw         $zero, 0x90($s2)
    /* 2C9EC 0012BA6C AC0040AE */  sw         $zero, 0xAC($s2)
    /* 2C9F0 0012BA70 940050AE */  sw         $s0, 0x94($s2)
    /* 2C9F4 0012BA74 980050AE */  sw         $s0, 0x98($s2)
    /* 2C9F8 0012BA78 9C0050AE */  sw         $s0, 0x9C($s2)
    /* 2C9FC 0012BA7C 580853AE */  sw         $s3, 0x858($s2)
    /* 2CA00 0012BA80 440042AE */  sw         $v0, 0x44($s2)
    /* 2CA04 0012BA84 BEB0040C */  jal        func_0012C2F8
    /* 2CA08 0012BA88 B00043AE */   sw        $v1, 0xB0($s2)
    /* 2CA0C 0012BA8C EAAE040C */  jal        func_0012BBA8
    /* 2CA10 0012BA90 2D206002 */   daddu     $a0, $s3, $zero
    /* 2CA14 0012BA94 FEAE040C */  jal        func_0012BBF8
    /* 2CA18 0012BA98 2D206002 */   daddu     $a0, $s3, $zero
    /* 2CA1C 0012BA9C E8014326 */  addiu      $v1, $s2, 0x1E8
    /* 2CA20 0012BAA0 50024226 */  addiu      $v0, $s2, 0x250
    /* 2CA24 0012BAA4 B8024526 */  addiu      $a1, $s2, 0x2B8
    /* 2CA28 0012BAA8 20034626 */  addiu      $a2, $s2, 0x320
    /* 2CA2C 0012BAAC 88034726 */  addiu      $a3, $s2, 0x388
    /* 2CA30 0012BAB0 F0034826 */  addiu      $t0, $s2, 0x3F0
    /* 2CA34 0012BAB4 58044926 */  addiu      $t1, $s2, 0x458
    /* 2CA38 0012BAB8 C0044A26 */  addiu      $t2, $s2, 0x4C0
    /* 2CA3C 0012BABC 28054B26 */  addiu      $t3, $s2, 0x528
    /* 2CA40 0012BAC0 B80143AE */  sw         $v1, 0x1B8($s2)
    /* 2CA44 0012BAC4 BC0142AE */  sw         $v0, 0x1BC($s2)
    /* 2CA48 0012BAC8 2D202002 */  daddu      $a0, $s1, $zero
    /* 2CA4C 0012BACC C40145AE */  sw         $a1, 0x1C4($s2)
    /* 2CA50 0012BAD0 C80146AE */  sw         $a2, 0x1C8($s2)
    /* 2CA54 0012BAD4 CC0147AE */  sw         $a3, 0x1CC($s2)
    /* 2CA58 0012BAD8 D40148AE */  sw         $t0, 0x1D4($s2)
    /* 2CA5C 0012BADC D80149AE */  sw         $t1, 0x1D8($s2)
    /* 2CA60 0012BAE0 DC014AAE */  sw         $t2, 0x1DC($s2)
    /* 2CA64 0012BAE4 50AF040C */  jal        func_0012BD40
    /* 2CA68 0012BAE8 E4014BAE */   sw        $t3, 0x1E4($s2)
    /* 2CA6C 0012BAEC 0070023C */  lui        $v0, (0x70003600 >> 16)
    /* 2CA70 0012BAF0 500850AE */  sw         $s0, 0x850($s2)
    /* 2CA74 0012BAF4 00364234 */  ori        $v0, $v0, (0x70003600 & 0xFFFF)
    /* 2CA78 0012BAF8 540840AE */  sw         $zero, 0x854($s2)
    /* 2CA7C 0012BAFC 1C0842AE */  sw         $v0, 0x81C($s2)
    /* 2CA80 0012BB00 4C0840AE */  sw         $zero, 0x84C($s2)
.align 2
  .L0012BB04:
    /* 2CA84 0012BB04 4000BFDF */  ld         $ra, 0x40($sp)
    /* 2CA88 0012BB08 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2CA8C 0012BB0C 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2CA90 0012BB10 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2CA94 0012BB14 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2CA98 0012BB18 0800E003 */  jr         $ra
    /* 2CA9C 0012BB1C 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0012B918
