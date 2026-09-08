.align 3
nonmatching func_00123A10, 0xB8

glabel func_00123A10
    /* 24990 00123A10 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 24994 00123A14 1600033C */  lui        $v1, %hi(D_00159B00)
    /* 24998 00123A18 2000B1FF */  sd         $s1, 0x20($sp)
    /* 2499C 00123A1C 1000B0FF */  sd         $s0, 0x10($sp)
    /* 249A0 00123A20 009B7124 */  addiu      $s1, $v1, %lo(D_00159B00)
    /* 249A4 00123A24 4000BFFF */  sd         $ra, 0x40($sp)
    /* 249A8 00123A28 3000B2FF */  sd         $s2, 0x30($sp)
    /* 249AC 00123A2C 2400228E */  lw         $v0, 0x24($s1)
    /* 249B0 00123A30 03004014 */  bnez       $v0, .L00123A40
    /* 249B4 00123A34 2D808000 */   daddu     $s0, $a0, $zero
    /* 249B8 00123A38 1D000010 */  b          .L00123AB0
    /* 249BC 00123A3C 9CFF0224 */   addiu     $v0, $zero, -0x64
.align 2
  .L00123A40:
    /* 249C0 00123A40 1300123C */  lui        $s2, %hi(D_00132EAC)
    /* 249C4 00123A44 3063040C */  jal        func_00118CC0
    /* 249C8 00123A48 AC2E448E */   lw        $a0, %lo(D_00132EAC)($s2)
    /* 249CC 00123A4C 03004104 */  bgez       $v0, .L00123A5C
    /* 249D0 00123A50 1600073C */   lui       $a3, %hi(D_00159B80)
    /* 249D4 00123A54 16000010 */  b          .L00123AB0
    /* 249D8 00123A58 38FF0224 */   addiu     $v0, $zero, -0xC8
.align 2
  .L00123A5C:
    /* 249DC 00123A5C 1600093C */  lui        $t1, %hi(D_0015B0C0)
    /* 249E0 00123A60 809BF0AC */  sw         $s0, %lo(D_00159B80)($a3)
    /* 249E4 00123A64 2D202002 */  daddu      $a0, $s1, $zero
    /* 249E8 00123A68 809BE724 */  addiu      $a3, $a3, %lo(D_00159B80)
    /* 249EC 00123A6C C0B02925 */  addiu      $t1, $t1, %lo(D_0015B0C0)
    /* 249F0 00123A70 0000A0AF */  sw         $zero, 0x0($sp)
    /* 249F4 00123A74 03000524 */  addiu      $a1, $zero, 0x3
    /* 249F8 00123A78 01000624 */  addiu      $a2, $zero, 0x1
    /* 249FC 00123A7C 30000824 */  addiu      $t0, $zero, 0x30
    /* 24A00 00123A80 04000A24 */  addiu      $t2, $zero, 0x4
    /* 24A04 00123A84 326D040C */  jal        func_0011B4C8
    /* 24A08 00123A88 2D580000 */   daddu     $t3, $zero, $zero
    /* 24A0C 00123A8C 2D804000 */  daddu      $s0, $v0, $zero
    /* 24A10 00123A90 04000016 */  bnez       $s0, .L00123AA4
    /* 24A14 00123A94 1300033C */   lui       $v1, %hi(D_00132EA8)
    /* 24A18 00123A98 03000224 */  addiu      $v0, $zero, 0x3
    /* 24A1C 00123A9C 03000010 */  b          .L00123AAC
    /* 24A20 00123AA0 A82E62AC */   sw        $v0, %lo(D_00132EA8)($v1)
.align 2
  .L00123AA4:
    /* 24A24 00123AA4 2463040C */  jal        func_00118C90
    /* 24A28 00123AA8 AC2E448E */   lw        $a0, %lo(D_00132EAC)($s2)
.align 2
  .L00123AAC:
    /* 24A2C 00123AAC 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L00123AB0:
    /* 24A30 00123AB0 4000BFDF */  ld         $ra, 0x40($sp)
    /* 24A34 00123AB4 3000B2DF */  ld         $s2, 0x30($sp)
    /* 24A38 00123AB8 2000B1DF */  ld         $s1, 0x20($sp)
    /* 24A3C 00123ABC 1000B0DF */  ld         $s0, 0x10($sp)
    /* 24A40 00123AC0 0800E003 */  jr         $ra
    /* 24A44 00123AC4 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00123A10
