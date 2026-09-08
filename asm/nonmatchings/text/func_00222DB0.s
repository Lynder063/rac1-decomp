.align 3
nonmatching func_00222DB0, 0xE8

glabel func_00222DB0
    /* 123D30 00222DB0 1400033C */  lui        $v1, %hi(D_0013CA40)
    /* 123D34 00222DB4 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 123D38 00222DB8 2D308000 */  daddu      $a2, $a0, $zero
    /* 123D3C 00222DBC 0000BF7F */  sq         $ra, 0x0($sp)
    /* 123D40 00222DC0 2D206000 */  daddu      $a0, $v1, $zero
    /* 123D44 00222DC4 40CA6324 */  addiu      $v1, $v1, %lo(D_0013CA40)
    /* 123D48 00222DC8 C401628C */  lw         $v0, 0x1C4($v1)
    /* 123D4C 00222DCC 000D4230 */  andi       $v0, $v0, 0xD00
    /* 123D50 00222DD0 06004010 */  beqz       $v0, .L00222DEC
    /* 123D54 00222DD4 1D00023C */   lui       $v0, %hi(D_001D6094)
    /* 123D58 00222DD8 9460438C */  lw         $v1, %lo(D_001D6094)($v0)
    /* 123D5C 00222DDC 04006014 */  bnez       $v1, .L00222DF0
    /* 123D60 00222DE0 40CA8324 */   addiu     $v1, $a0, %lo(D_0013CA40)
    /* 123D64 00222DE4 29000010 */  b          .L00222E8C
    /* 123D68 00222DE8 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L00222DEC:
    /* 123D6C 00222DEC 40CA8324 */  addiu      $v1, $a0, %lo(D_0013CA40)
.align 2
  .L00222DF0:
    /* 123D70 00222DF0 C401628C */  lw         $v0, 0x1C4($v1)
    /* 123D74 00222DF4 10004230 */  andi       $v0, $v0, 0x10
    /* 123D78 00222DF8 0C004010 */  beqz       $v0, .L00222E2C
    /* 123D7C 00222DFC 1D00023C */   lui       $v0, %hi(D_001D5F70)
    /* 123D80 00222E00 705F4224 */  addiu      $v0, $v0, %lo(D_001D5F70)
    /* 123D84 00222E04 0400438C */  lw         $v1, 0x4($v0)
    /* 123D88 00222E08 3800638C */  lw         $v1, 0x38($v1)
    /* 123D8C 00222E0C 03006050 */  beql       $v1, $zero, .L00222E1C
    /* 123D90 00222E10 2401428C */   lw        $v0, 0x124($v0)
    /* 123D94 00222E14 1C000010 */  b          .L00222E88
    /* 123D98 00222E18 080043AC */   sw        $v1, 0x8($v0)
.align 2
  .L00222E1C:
    /* 123D9C 00222E1C 04004014 */  bnez       $v0, .L00222E30
    /* 123DA0 00222E20 40CA8324 */   addiu     $v1, $a0, %lo(D_0013CA40)
    /* 123DA4 00222E24 19000010 */  b          .L00222E8C
    /* 123DA8 00222E28 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L00222E2C:
    /* 123DAC 00222E2C 40CA8324 */  addiu      $v1, $a0, %lo(D_0013CA40)
.align 2
  .L00222E30:
    /* 123DB0 00222E30 A401638C */  lw         $v1, 0x1A4($v1)
    /* 123DB4 00222E34 40006230 */  andi       $v0, $v1, 0x40
    /* 123DB8 00222E38 04004010 */  beqz       $v0, .L00222E4C
    /* 123DBC 00222E3C 4000C58C */   lw        $a1, 0x40($a2)
    /* 123DC0 00222E40 1E000324 */  addiu      $v1, $zero, 0x1E
    /* 123DC4 00222E44 05000010 */  b          .L00222E5C
    /* 123DC8 00222E48 0100A224 */   addiu     $v0, $a1, 0x1
.align 2
  .L00222E4C:
    /* 123DCC 00222E4C 20006230 */  andi       $v0, $v1, 0x20
    /* 123DD0 00222E50 07004010 */  beqz       $v0, .L00222E70
    /* 123DD4 00222E54 1E000324 */   addiu     $v1, $zero, 0x1E
    /* 123DD8 00222E58 1D00A224 */  addiu      $v0, $a1, 0x1D
.align 2
  .L00222E5C:
    /* 123DDC 00222E5C 1A004300 */  div        $zero, $v0, $v1
    /* 123DE0 00222E60 01006050 */  beql       $v1, $zero, .L00222E68
    /* 123DE4 00222E64 CD010000 */   break     0, 7
.align 2
  .L00222E68:
    /* 123DE8 00222E68 10200000 */  mfhi       $a0
    /* 123DEC 00222E6C 4000C4AC */  sw         $a0, 0x40($a2)
.align 2
  .L00222E70:
    /* 123DF0 00222E70 4000C28C */  lw         $v0, 0x40($a2)
    /* 123DF4 00222E74 04004510 */  beq        $v0, $a1, .L00222E88
    /* 123DF8 00222E78 01000424 */   addiu     $a0, $zero, 0x1
    /* 123DFC 00222E7C 1400C68C */  lw         $a2, 0x14($a2)
    /* 123E00 00222E80 60BB080C */  jal        func_0022ED80
    /* 123E04 00222E84 11000524 */   addiu     $a1, $zero, 0x11
.align 2
  .L00222E88:
    /* 123E08 00222E88 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L00222E8C:
    /* 123E0C 00222E8C 0000BF7B */  lq         $ra, 0x0($sp)
    /* 123E10 00222E90 0800E003 */  jr         $ra
    /* 123E14 00222E94 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00222DB0
