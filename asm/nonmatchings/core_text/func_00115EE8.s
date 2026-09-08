.align 3
nonmatching func_00115EE8, 0x17C

glabel func_00115EE8
    /* 16E68 00115EE8 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 16E6C 00115EEC 1000B0FF */  sd         $s0, 0x10($sp)
    /* 16E70 00115EF0 2D80A000 */  daddu      $s0, $a1, $zero
    /* 16E74 00115EF4 6000B5FF */  sd         $s5, 0x60($sp)
    /* 16E78 00115EF8 5000B4FF */  sd         $s4, 0x50($sp)
    /* 16E7C 00115EFC 2DA8E000 */  daddu      $s5, $a3, $zero
    /* 16E80 00115F00 4000B3FF */  sd         $s3, 0x40($sp)
    /* 16E84 00115F04 2DA0C000 */  daddu      $s4, $a2, $zero
    /* 16E88 00115F08 3000B2FF */  sd         $s2, 0x30($sp)
    /* 16E8C 00115F0C 2000B1FF */  sd         $s1, 0x20($sp)
    /* 16E90 00115F10 7000BFFF */  sd         $ra, 0x70($sp)
    /* 16E94 00115F14 3455040C */  jal        func_001154D0
    /* 16E98 00115F18 01000524 */   addiu     $a1, $zero, 0x1
    /* 16E9C 00115F1C 2D884000 */  daddu      $s1, $v0, $zero
    /* 16EA0 00115F20 3F281000 */  dsra32     $a1, $s0, 0
    /* 16EA4 00115F24 FF7F023C */  lui        $v0, (0x7FFFFFFF >> 16)
    /* 16EA8 00115F28 0F00033C */  lui        $v1, (0xFFFFF >> 16)
    /* 16EAC 00115F2C FFFF4234 */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
    /* 16EB0 00115F30 FFFF043C */  lui        $a0, (0xFFFF0000 >> 16)
    /* 16EB4 00115F34 3E200400 */  dsrl32     $a0, $a0, 0
    /* 16EB8 00115F38 2410A200 */  and        $v0, $a1, $v0
    /* 16EBC 00115F3C 24800402 */  and        $s0, $s0, $a0
    /* 16EC0 00115F40 3C100200 */  dsll32     $v0, $v0, 0
    /* 16EC4 00115F44 FFFF6334 */  ori        $v1, $v1, (0xFFFFF & 0xFFFF)
    /* 16EC8 00115F48 25800202 */  or         $s0, $s0, $v0
    /* 16ECC 00115F4C 2428A300 */  and        $a1, $a1, $v1
    /* 16ED0 00115F50 14003326 */  addiu      $s3, $s1, 0x14
    /* 16ED4 00115F54 3E951000 */  dsrl32     $s2, $s0, 20
    /* 16ED8 00115F58 04004012 */  beqz       $s2, .L00115F6C
    /* 16EDC 00115F5C 0400A5AF */   sw        $a1, 0x4($sp)
    /* 16EE0 00115F60 1000023C */  lui        $v0, (0x100000 >> 16)
    /* 16EE4 00115F64 2510A200 */  or         $v0, $a1, $v0
    /* 16EE8 00115F68 0400A2AF */  sw         $v0, 0x4($sp)
.align 2
  .L00115F6C:
    /* 16EEC 00115F6C 3C101000 */  dsll32     $v0, $s0, 0
    /* 16EF0 00115F70 3F100200 */  dsra32     $v0, $v0, 0
    /* 16EF4 00115F74 19004010 */  beqz       $v0, .L00115FDC
    /* 16EF8 00115F78 0000A2AF */   sw        $v0, 0x0($sp)
    /* 16EFC 00115F7C D255040C */  jal        func_00115748
    /* 16F00 00115F80 2D20A003 */   daddu     $a0, $sp, $zero
    /* 16F04 00115F84 2D284000 */  daddu      $a1, $v0, $zero
    /* 16F08 00115F88 0A00A010 */  beqz       $a1, .L00115FB4
    /* 16F0C 00115F8C 0400A28F */   lw        $v0, 0x4($sp)
    /* 16F10 00115F90 23200500 */  negu       $a0, $a1
    /* 16F14 00115F94 0000A38F */  lw         $v1, 0x0($sp)
    /* 16F18 00115F98 04108200 */  sllv       $v0, $v0, $a0
    /* 16F1C 00115F9C 25186200 */  or         $v1, $v1, $v0
    /* 16F20 00115FA0 140023AE */  sw         $v1, 0x14($s1)
    /* 16F24 00115FA4 0400A28F */  lw         $v0, 0x4($sp)
    /* 16F28 00115FA8 0610A200 */  srlv       $v0, $v0, $a1
    /* 16F2C 00115FAC 03000010 */  b          .L00115FBC
    /* 16F30 00115FB0 0400A2AF */   sw        $v0, 0x4($sp)
.align 2
  .L00115FB4:
    /* 16F34 00115FB4 0000A28F */  lw         $v0, 0x0($sp)
    /* 16F38 00115FB8 140022AE */  sw         $v0, 0x14($s1)
.align 2
  .L00115FBC:
    /* 16F3C 00115FBC 0400A28F */  lw         $v0, 0x4($sp)
    /* 16F40 00115FC0 01000324 */  addiu      $v1, $zero, 0x1
    /* 16F44 00115FC4 02000424 */  addiu      $a0, $zero, 0x2
    /* 16F48 00115FC8 0B188200 */  movn       $v1, $a0, $v0
    /* 16F4C 00115FCC 040062AE */  sw         $v0, 0x4($s3)
    /* 16F50 00115FD0 2D806000 */  daddu      $s0, $v1, $zero
    /* 16F54 00115FD4 09000010 */  b          .L00115FFC
    /* 16F58 00115FD8 100023AE */   sw        $v1, 0x10($s1)
.align 2
  .L00115FDC:
    /* 16F5C 00115FDC 0400A437 */  ori        $a0, $sp, 0x4
    /* 16F60 00115FE0 D255040C */  jal        func_00115748
    /* 16F64 00115FE4 01001024 */   addiu     $s0, $zero, 0x1
    /* 16F68 00115FE8 0400A48F */  lw         $a0, 0x4($sp)
    /* 16F6C 00115FEC 01000324 */  addiu      $v1, $zero, 0x1
    /* 16F70 00115FF0 100023AE */  sw         $v1, 0x10($s1)
    /* 16F74 00115FF4 20004524 */  addiu      $a1, $v0, 0x20
    /* 16F78 00115FF8 140024AE */  sw         $a0, 0x14($s1)
.align 2
  .L00115FFC:
    /* 16F7C 00115FFC 06004012 */  beqz       $s2, .L00116018
    /* 16F80 00116000 CDFBA224 */   addiu     $v0, $a1, -0x433
    /* 16F84 00116004 35000324 */  addiu      $v1, $zero, 0x35
    /* 16F88 00116008 21104202 */  addu       $v0, $s2, $v0
    /* 16F8C 0011600C 23186500 */  subu       $v1, $v1, $a1
    /* 16F90 00116010 09000010 */  b          .L00116038
    /* 16F94 00116014 000082AE */   sw        $v0, 0x0($s4)
.align 2
  .L00116018:
    /* 16F98 00116018 CEFBA324 */  addiu      $v1, $a1, -0x432
    /* 16F9C 0011601C 80101000 */  sll        $v0, $s0, 2
    /* 16FA0 00116020 000083AE */  sw         $v1, 0x0($s4)
    /* 16FA4 00116024 21105300 */  addu       $v0, $v0, $s3
    /* 16FA8 00116028 B055040C */  jal        func_001156C0
    /* 16FAC 0011602C FCFF448C */   lw        $a0, -0x4($v0)
    /* 16FB0 00116030 40191000 */  sll        $v1, $s0, 5
    /* 16FB4 00116034 23186200 */  subu       $v1, $v1, $v0
.align 2
  .L00116038:
    /* 16FB8 00116038 0000A3AE */  sw         $v1, 0x0($s5)
    /* 16FBC 0011603C 2D102002 */  daddu      $v0, $s1, $zero
    /* 16FC0 00116040 7000BFDF */  ld         $ra, 0x70($sp)
    /* 16FC4 00116044 6000B5DF */  ld         $s5, 0x60($sp)
    /* 16FC8 00116048 5000B4DF */  ld         $s4, 0x50($sp)
    /* 16FCC 0011604C 4000B3DF */  ld         $s3, 0x40($sp)
    /* 16FD0 00116050 3000B2DF */  ld         $s2, 0x30($sp)
    /* 16FD4 00116054 2000B1DF */  ld         $s1, 0x20($sp)
    /* 16FD8 00116058 1000B0DF */  ld         $s0, 0x10($sp)
    /* 16FDC 0011605C 0800E003 */  jr         $ra
    /* 16FE0 00116060 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_00115EE8
    /* 16FE4 00116064 00000000 */  nop
