.align 3
nonmatching func_00222E98, 0x10C

glabel func_00222E98
    /* 123E18 00222E98 1400033C */  lui        $v1, %hi(D_0013CA40)
    /* 123E1C 00222E9C F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 123E20 00222EA0 2D408000 */  daddu      $t0, $a0, $zero
    /* 123E24 00222EA4 0000BF7F */  sq         $ra, 0x0($sp)
    /* 123E28 00222EA8 2D206000 */  daddu      $a0, $v1, $zero
    /* 123E2C 00222EAC 40CA6324 */  addiu      $v1, $v1, %lo(D_0013CA40)
    /* 123E30 00222EB0 C401628C */  lw         $v0, 0x1C4($v1)
    /* 123E34 00222EB4 000D4230 */  andi       $v0, $v0, 0xD00
    /* 123E38 00222EB8 06004010 */  beqz       $v0, .L00222ED4
    /* 123E3C 00222EBC 1D00023C */   lui       $v0, %hi(D_001D6094)
    /* 123E40 00222EC0 9460438C */  lw         $v1, %lo(D_001D6094)($v0)
    /* 123E44 00222EC4 04006014 */  bnez       $v1, .L00222ED8
    /* 123E48 00222EC8 40CA8324 */   addiu     $v1, $a0, %lo(D_0013CA40)
    /* 123E4C 00222ECC 32000010 */  b          .L00222F98
    /* 123E50 00222ED0 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L00222ED4:
    /* 123E54 00222ED4 40CA8324 */  addiu      $v1, $a0, %lo(D_0013CA40)
.align 2
  .L00222ED8:
    /* 123E58 00222ED8 C401628C */  lw         $v0, 0x1C4($v1)
    /* 123E5C 00222EDC 10004230 */  andi       $v0, $v0, 0x10
    /* 123E60 00222EE0 0C004010 */  beqz       $v0, .L00222F14
    /* 123E64 00222EE4 1D00023C */   lui       $v0, %hi(D_001D5F70)
    /* 123E68 00222EE8 705F4224 */  addiu      $v0, $v0, %lo(D_001D5F70)
    /* 123E6C 00222EEC 0400438C */  lw         $v1, 0x4($v0)
    /* 123E70 00222EF0 3800638C */  lw         $v1, 0x38($v1)
    /* 123E74 00222EF4 03006050 */  beql       $v1, $zero, .L00222F04
    /* 123E78 00222EF8 2401428C */   lw        $v0, 0x124($v0)
    /* 123E7C 00222EFC 25000010 */  b          .L00222F94
    /* 123E80 00222F00 080043AC */   sw        $v1, 0x8($v0)
.align 2
  .L00222F04:
    /* 123E84 00222F04 04004014 */  bnez       $v0, .L00222F18
    /* 123E88 00222F08 40CA8224 */   addiu     $v0, $a0, %lo(D_0013CA40)
    /* 123E8C 00222F0C 22000010 */  b          .L00222F98
    /* 123E90 00222F10 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L00222F14:
    /* 123E94 00222F14 40CA8224 */  addiu      $v0, $a0, %lo(D_0013CA40)
.align 2
  .L00222F18:
    /* 123E98 00222F18 A401428C */  lw         $v0, 0x1A4($v0)
    /* 123E9C 00222F1C 40204330 */  andi       $v1, $v0, 0x2040
    /* 123EA0 00222F20 0E006010 */  beqz       $v1, .L00222F5C
    /* 123EA4 00222F24 0C000324 */   addiu     $v1, $zero, 0xC
    /* 123EA8 00222F28 5400028D */  lw         $v0, 0x54($t0)
    /* 123EAC 00222F2C 01006050 */  beql       $v1, $zero, .L00222F34
    /* 123EB0 00222F30 CD010000 */   break     0, 7
.align 2
  .L00222F34:
    /* 123EB4 00222F34 01000424 */  addiu      $a0, $zero, 0x1
    /* 123EB8 00222F38 01004224 */  addiu      $v0, $v0, 0x1
    /* 123EBC 00222F3C 1400068D */  lw         $a2, 0x14($t0)
    /* 123EC0 00222F40 1A004300 */  div        $zero, $v0, $v1
    /* 123EC4 00222F44 11000524 */  addiu      $a1, $zero, 0x11
    /* 123EC8 00222F48 10380000 */  mfhi       $a3
    /* 123ECC 00222F4C 60BB080C */  jal        func_0022ED80
    /* 123ED0 00222F50 540007AD */   sw        $a3, 0x54($t0)
    /* 123ED4 00222F54 10000010 */  b          .L00222F98
    /* 123ED8 00222F58 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00222F5C:
    /* 123EDC 00222F5C 20804230 */  andi       $v0, $v0, 0x8020
    /* 123EE0 00222F60 0D004010 */  beqz       $v0, .L00222F98
    /* 123EE4 00222F64 2D100000 */   daddu     $v0, $zero, $zero
    /* 123EE8 00222F68 5400028D */  lw         $v0, 0x54($t0)
    /* 123EEC 00222F6C 01006050 */  beql       $v1, $zero, .L00222F74
    /* 123EF0 00222F70 CD010000 */   break     0, 7
.align 2
  .L00222F74:
    /* 123EF4 00222F74 01000424 */  addiu      $a0, $zero, 0x1
    /* 123EF8 00222F78 0B004224 */  addiu      $v0, $v0, 0xB
    /* 123EFC 00222F7C 1400068D */  lw         $a2, 0x14($t0)
    /* 123F00 00222F80 1A004300 */  div        $zero, $v0, $v1
    /* 123F04 00222F84 11000524 */  addiu      $a1, $zero, 0x11
    /* 123F08 00222F88 10380000 */  mfhi       $a3
    /* 123F0C 00222F8C 60BB080C */  jal        func_0022ED80
    /* 123F10 00222F90 540007AD */   sw        $a3, 0x54($t0)
.align 2
  .L00222F94:
    /* 123F14 00222F94 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L00222F98:
    /* 123F18 00222F98 0000BF7B */  lq         $ra, 0x0($sp)
    /* 123F1C 00222F9C 0800E003 */  jr         $ra
    /* 123F20 00222FA0 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00222E98
    /* 123F24 00222FA4 00000000 */  nop
