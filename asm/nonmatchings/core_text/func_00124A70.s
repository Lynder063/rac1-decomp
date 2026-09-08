.align 3
nonmatching func_00124A70, 0xEC

glabel func_00124A70
    /* 259F0 00124A70 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 259F4 00124A74 1600023C */  lui        $v0, %hi(D_0015B180)
    /* 259F8 00124A78 1000B0FF */  sd         $s0, 0x10($sp)
    /* 259FC 00124A7C 00040824 */  addiu      $t0, $zero, 0x400
    /* 25A00 00124A80 80B15024 */  addiu      $s0, $v0, %lo(D_0015B180)
    /* 25A04 00124A84 80B144AC */  sw         $a0, %lo(D_0015B180)($v0)
    /* 25A08 00124A88 3000B2FF */  sd         $s2, 0x30($sp)
    /* 25A0C 00124A8C 1600043C */  lui        $a0, %hi(D_0015B108)
    /* 25A10 00124A90 2000B1FF */  sd         $s1, 0x20($sp)
    /* 25A14 00124A94 2D90E000 */  daddu      $s2, $a3, $zero
    /* 25A18 00124A98 4000BFFF */  sd         $ra, 0x40($sp)
    /* 25A1C 00124A9C 2D88C000 */  daddu      $s1, $a2, $zero
    /* 25A20 00124AA0 040005AE */  sw         $a1, 0x4($s0)
    /* 25A24 00124AA4 08B18424 */  addiu      $a0, $a0, %lo(D_0015B108)
    /* 25A28 00124AA8 0080053C */  lui        $a1, (0x8000091A >> 16)
    /* 25A2C 00124AAC 2D300000 */  daddu      $a2, $zero, $zero
    /* 25A30 00124AB0 0000228E */  lw         $v0, 0x0($s1)
    /* 25A34 00124AB4 1A09A534 */  ori        $a1, $a1, (0x8000091A & 0xFFFF)
    /* 25A38 00124AB8 0000A0AF */  sw         $zero, 0x0($sp)
    /* 25A3C 00124ABC 2D380002 */  daddu      $a3, $s0, $zero
    /* 25A40 00124AC0 080002AE */  sw         $v0, 0x8($s0)
    /* 25A44 00124AC4 2D480002 */  daddu      $t1, $s0, $zero
    /* 25A48 00124AC8 00040A24 */  addiu      $t2, $zero, 0x400
    /* 25A4C 00124ACC 326D040C */  jal        func_0011B4C8
    /* 25A50 00124AD0 2D580000 */   daddu     $t3, $zero, $zero
    /* 25A54 00124AD4 06004304 */  bgezl      $v0, .L00124AF0
    /* 25A58 00124AD8 8C00028E */   lw        $v0, 0x8C($s0)
    /* 25A5C 00124ADC 1500043C */  lui        $a0, %hi(D_001537A0)
    /* 25A60 00124AE0 D892040C */  jal        func_00124B60
    /* 25A64 00124AE4 A0378424 */   addiu     $a0, $a0, %lo(D_001537A0)
    /* 25A68 00124AE8 16000010 */  b          .L00124B44
    /* 25A6C 00124AEC 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00124AF0:
    /* 25A70 00124AF0 15004004 */  bltz       $v0, .L00124B48
    /* 25A74 00124AF4 4000BFDF */   ld        $ra, 0x40($sp)
    /* 25A78 00124AF8 0800038E */  lw         $v1, 0x8($s0)
    /* 25A7C 00124AFC 000023AE */  sw         $v1, 0x0($s1)
    /* 25A80 00124B00 0800028E */  lw         $v0, 0x8($s0)
    /* 25A84 00124B04 0E004018 */  blez       $v0, .L00124B40
    /* 25A88 00124B08 2D280000 */   daddu     $a1, $zero, $zero
    /* 25A8C 00124B0C 0C000626 */  addiu      $a2, $s0, 0xC
    /* 25A90 00124B10 2110C500 */  addu       $v0, $a2, $a1
    /* 25A94 00124B14 00000000 */  nop
.align 2
  .L00124B18:
    /* 25A98 00124B18 21204502 */  addu       $a0, $s2, $a1
    /* 25A9C 00124B1C 00004390 */  lbu        $v1, 0x0($v0)
    /* 25AA0 00124B20 0100A524 */  addiu      $a1, $a1, 0x1
    /* 25AA4 00124B24 000083A0 */  sb         $v1, 0x0($a0)
    /* 25AA8 00124B28 0800028E */  lw         $v0, 0x8($s0)
    /* 25AAC 00124B2C 2A10A200 */  slt        $v0, $a1, $v0
    /* 25AB0 00124B30 F9FF4014 */  bnez       $v0, .L00124B18
    /* 25AB4 00124B34 2110C500 */   addu      $v0, $a2, $a1
    /* 25AB8 00124B38 02000010 */  b          .L00124B44
    /* 25ABC 00124B3C 8C00028E */   lw        $v0, 0x8C($s0)
.align 2
  .L00124B40:
    /* 25AC0 00124B40 8C00028E */  lw         $v0, 0x8C($s0)
.align 2
  .L00124B44:
    /* 25AC4 00124B44 4000BFDF */  ld         $ra, 0x40($sp)
.align 2
  .L00124B48:
    /* 25AC8 00124B48 3000B2DF */  ld         $s2, 0x30($sp)
    /* 25ACC 00124B4C 2000B1DF */  ld         $s1, 0x20($sp)
    /* 25AD0 00124B50 1000B0DF */  ld         $s0, 0x10($sp)
    /* 25AD4 00124B54 0800E003 */  jr         $ra
    /* 25AD8 00124B58 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00124A70
    /* 25ADC 00124B5C 00000000 */  nop
