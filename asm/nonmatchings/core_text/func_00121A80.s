.align 3
nonmatching func_00121A80, 0xF8

glabel func_00121A80
    /* 22A00 00121A80 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 22A04 00121A84 3000B2FF */  sd         $s2, 0x30($sp)
    /* 22A08 00121A88 2D908000 */  daddu      $s2, $a0, $zero
    /* 22A0C 00121A8C 5000BFFF */  sd         $ra, 0x50($sp)
    /* 22A10 00121A90 4000B3FF */  sd         $s3, 0x40($sp)
    /* 22A14 00121A94 0F000424 */  addiu      $a0, $zero, 0xF
    /* 22A18 00121A98 2000B1FF */  sd         $s1, 0x20($sp)
    /* 22A1C 00121A9C 1084040C */  jal        func_00121040
    /* 22A20 00121AA0 1000B0FF */   sd        $s0, 0x10($sp)
    /* 22A24 00121AA4 03004014 */  bnez       $v0, .L00121AB4
    /* 22A28 00121AA8 1300133C */   lui       $s3, %hi(D_001313D0)
    /* 22A2C 00121AAC 2B000010 */  b          .L00121B5C
    /* 22A30 00121AB0 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00121AB4:
    /* 22A34 00121AB4 D013628E */  lw         $v0, %lo(D_001313D0)($s3)
    /* 22A38 00121AB8 03004018 */  blez       $v0, .L00121AC8
    /* 22A3C 00121ABC 1500043C */   lui       $a0, %hi(D_001530F0)
    /* 22A40 00121AC0 B269040C */  jal        func_0011A6C8
    /* 22A44 00121AC4 F0308424 */   addiu     $a0, $a0, %lo(D_001530F0)
.align 2
  .L00121AC8:
    /* 22A48 00121AC8 1300023C */  lui        $v0, %hi(D_001325C0)
    /* 22A4C 00121ACC 1300043C */  lui        $a0, %hi(D_00132E08)
    /* 22A50 00121AD0 C0255024 */  addiu      $s0, $v0, %lo(D_001325C0)
    /* 22A54 00121AD4 082E8424 */  addiu      $a0, $a0, %lo(D_00132E08)
    /* 22A58 00121AD8 0000A0AF */  sw         $zero, 0x0($sp)
    /* 22A5C 00121ADC 01000524 */  addiu      $a1, $zero, 0x1
    /* 22A60 00121AE0 2D300000 */  daddu      $a2, $zero, $zero
    /* 22A64 00121AE4 2D380000 */  daddu      $a3, $zero, $zero
    /* 22A68 00121AE8 2D400000 */  daddu      $t0, $zero, $zero
    /* 22A6C 00121AEC 2D480002 */  daddu      $t1, $s0, $zero
    /* 22A70 00121AF0 10000A24 */  addiu      $t2, $zero, 0x10
    /* 22A74 00121AF4 326D040C */  jal        func_0011B4C8
    /* 22A78 00121AF8 2D580000 */   daddu     $t3, $zero, $zero
    /* 22A7C 00121AFC 06004304 */  bgezl      $v0, .L00121B18
    /* 22A80 00121B00 04000226 */   addiu     $v0, $s0, 0x4
    /* 22A84 00121B04 1300023C */  lui        $v0, %hi(D_001313EC)
    /* 22A88 00121B08 2463040C */  jal        func_00118C90
    /* 22A8C 00121B0C EC13448C */   lw        $a0, %lo(D_001313EC)($v0)
    /* 22A90 00121B10 12000010 */  b          .L00121B5C
    /* 22A94 00121B14 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00121B18:
    /* 22A98 00121B18 0020113C */  lui        $s1, (0x20000000 >> 16)
    /* 22A9C 00121B1C 25105100 */  or         $v0, $v0, $s1
    /* 22AA0 00121B20 07004368 */  ldl        $v1, (0x20000007 & 0xFFFF)($v0)
    /* 22AA4 00121B24 0000436C */  ldr        $v1, (0x20000000 & 0xFFFF)($v0)
    /* 22AA8 00121B28 070043B2 */  sdl        $v1, 0x7($s2)
    /* 22AAC 00121B2C 000043B6 */  sdr        $v1, 0x0($s2)
    /* 22AB0 00121B30 D013638E */  lw         $v1, %lo(D_001313D0)($s3)
    /* 22AB4 00121B34 03006018 */  blez       $v1, .L00121B44
    /* 22AB8 00121B38 1500043C */   lui       $a0, %hi(D_00153110)
    /* 22ABC 00121B3C B269040C */  jal        func_0011A6C8
    /* 22AC0 00121B40 10318424 */   addiu     $a0, $a0, %lo(D_00153110)
.align 2
  .L00121B44:
    /* 22AC4 00121B44 1300023C */  lui        $v0, %hi(D_001313EC)
    /* 22AC8 00121B48 25181102 */  or         $v1, $s0, $s1
    /* 22ACC 00121B4C EC13448C */  lw         $a0, %lo(D_001313EC)($v0)
    /* 22AD0 00121B50 2463040C */  jal        func_00118C90
    /* 22AD4 00121B54 0000708C */   lw        $s0, (0x20000000 & 0xFFFF)($v1)
    /* 22AD8 00121B58 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L00121B5C:
    /* 22ADC 00121B5C 5000BFDF */  ld         $ra, 0x50($sp)
    /* 22AE0 00121B60 4000B3DF */  ld         $s3, 0x40($sp)
    /* 22AE4 00121B64 3000B2DF */  ld         $s2, 0x30($sp)
    /* 22AE8 00121B68 2000B1DF */  ld         $s1, 0x20($sp)
    /* 22AEC 00121B6C 1000B0DF */  ld         $s0, 0x10($sp)
    /* 22AF0 00121B70 0800E003 */  jr         $ra
    /* 22AF4 00121B74 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_00121A80
