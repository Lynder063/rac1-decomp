.align 3
nonmatching func_00123AC8, 0xD8

glabel func_00123AC8
    /* 24A48 00123AC8 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 24A4C 00123ACC 1600023C */  lui        $v0, %hi(D_00159B00)
    /* 24A50 00123AD0 4000B3FF */  sd         $s3, 0x40($sp)
    /* 24A54 00123AD4 3000B2FF */  sd         $s2, 0x30($sp)
    /* 24A58 00123AD8 009B5324 */  addiu      $s3, $v0, %lo(D_00159B00)
    /* 24A5C 00123ADC 2000B1FF */  sd         $s1, 0x20($sp)
    /* 24A60 00123AE0 2D908000 */  daddu      $s2, $a0, $zero
    /* 24A64 00123AE4 1000B0FF */  sd         $s0, 0x10($sp)
    /* 24A68 00123AE8 2D88C000 */  daddu      $s1, $a2, $zero
    /* 24A6C 00123AEC 6000BFFF */  sd         $ra, 0x60($sp)
    /* 24A70 00123AF0 5000B4FF */  sd         $s4, 0x50($sp)
    /* 24A74 00123AF4 2400628E */  lw         $v0, 0x24($s3)
    /* 24A78 00123AF8 03004014 */  bnez       $v0, .L00123B08
    /* 24A7C 00123AFC 2D80A000 */   daddu     $s0, $a1, $zero
    /* 24A80 00123B00 1F000010 */  b          .L00123B80
    /* 24A84 00123B04 9CFF0224 */   addiu     $v0, $zero, -0x64
.align 2
  .L00123B08:
    /* 24A88 00123B08 1300143C */  lui        $s4, %hi(D_00132EAC)
    /* 24A8C 00123B0C 3063040C */  jal        func_00118CC0
    /* 24A90 00123B10 AC2E848E */   lw        $a0, %lo(D_00132EAC)($s4)
    /* 24A94 00123B14 03004104 */  bgez       $v0, .L00123B24
    /* 24A98 00123B18 1600023C */   lui       $v0, %hi(D_00159B80)
    /* 24A9C 00123B1C 18000010 */  b          .L00123B80
    /* 24AA0 00123B20 38FF0224 */   addiu     $v0, $zero, -0xC8
.align 2
  .L00123B24:
    /* 24AA4 00123B24 1600093C */  lui        $t1, %hi(D_0015B0C0)
    /* 24AA8 00123B28 809B4724 */  addiu      $a3, $v0, %lo(D_00159B80)
    /* 24AAC 00123B2C 809B52AC */  sw         $s2, %lo(D_00159B80)($v0)
    /* 24AB0 00123B30 1000F0AC */  sw         $s0, 0x10($a3)
    /* 24AB4 00123B34 2D206002 */  daddu      $a0, $s3, $zero
    /* 24AB8 00123B38 1400F1AC */  sw         $s1, 0x14($a3)
    /* 24ABC 00123B3C C0B02925 */  addiu      $t1, $t1, %lo(D_0015B0C0)
    /* 24AC0 00123B40 0000A0AF */  sw         $zero, 0x0($sp)
    /* 24AC4 00123B44 04000524 */  addiu      $a1, $zero, 0x4
    /* 24AC8 00123B48 01000624 */  addiu      $a2, $zero, 0x1
    /* 24ACC 00123B4C 30000824 */  addiu      $t0, $zero, 0x30
    /* 24AD0 00123B50 04000A24 */  addiu      $t2, $zero, 0x4
    /* 24AD4 00123B54 326D040C */  jal        func_0011B4C8
    /* 24AD8 00123B58 2D580000 */   daddu     $t3, $zero, $zero
    /* 24ADC 00123B5C 2D804000 */  daddu      $s0, $v0, $zero
    /* 24AE0 00123B60 04000016 */  bnez       $s0, .L00123B74
    /* 24AE4 00123B64 1300033C */   lui       $v1, %hi(D_00132EA8)
    /* 24AE8 00123B68 04000224 */  addiu      $v0, $zero, 0x4
    /* 24AEC 00123B6C 03000010 */  b          .L00123B7C
    /* 24AF0 00123B70 A82E62AC */   sw        $v0, %lo(D_00132EA8)($v1)
.align 2
  .L00123B74:
    /* 24AF4 00123B74 2463040C */  jal        func_00118C90
    /* 24AF8 00123B78 AC2E848E */   lw        $a0, %lo(D_00132EAC)($s4)
.align 2
  .L00123B7C:
    /* 24AFC 00123B7C 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L00123B80:
    /* 24B00 00123B80 6000BFDF */  ld         $ra, 0x60($sp)
    /* 24B04 00123B84 5000B4DF */  ld         $s4, 0x50($sp)
    /* 24B08 00123B88 4000B3DF */  ld         $s3, 0x40($sp)
    /* 24B0C 00123B8C 3000B2DF */  ld         $s2, 0x30($sp)
    /* 24B10 00123B90 2000B1DF */  ld         $s1, 0x20($sp)
    /* 24B14 00123B94 1000B0DF */  ld         $s0, 0x10($sp)
    /* 24B18 00123B98 0800E003 */  jr         $ra
    /* 24B1C 00123B9C 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_00123AC8
