.align 3
nonmatching func_00123D48, 0x174

glabel func_00123D48
    /* 24CC8 00123D48 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 24CCC 00123D4C 5000B4FF */  sd         $s4, 0x50($sp)
    /* 24CD0 00123D50 3000B2FF */  sd         $s2, 0x30($sp)
    /* 24CD4 00123D54 1600143C */  lui        $s4, %hi(D_00159B00)
    /* 24CD8 00123D58 2000B1FF */  sd         $s1, 0x20($sp)
    /* 24CDC 00123D5C 009B8226 */  addiu      $v0, $s4, %lo(D_00159B00)
    /* 24CE0 00123D60 1000B0FF */  sd         $s0, 0x10($sp)
    /* 24CE4 00123D64 2D908000 */  daddu      $s2, $a0, $zero
    /* 24CE8 00123D68 7000BFFF */  sd         $ra, 0x70($sp)
    /* 24CEC 00123D6C 2D88A000 */  daddu      $s1, $a1, $zero
    /* 24CF0 00123D70 6000B5FF */  sd         $s5, 0x60($sp)
    /* 24CF4 00123D74 4000B3FF */  sd         $s3, 0x40($sp)
    /* 24CF8 00123D78 2400438C */  lw         $v1, 0x24($v0)
    /* 24CFC 00123D7C 03006014 */  bnez       $v1, .L00123D8C
    /* 24D00 00123D80 2D80C000 */   daddu     $s0, $a2, $zero
    /* 24D04 00123D84 44000010 */  b          .L00123E98
    /* 24D08 00123D88 9CFF0224 */   addiu     $v0, $zero, -0x64
.align 2
  .L00123D8C:
    /* 24D0C 00123D8C 1300153C */  lui        $s5, %hi(D_00132EAC)
    /* 24D10 00123D90 3063040C */  jal        func_00118CC0
    /* 24D14 00123D94 AC2EA48E */   lw        $a0, %lo(D_00132EAC)($s5)
    /* 24D18 00123D98 03004104 */  bgez       $v0, .L00123DA8
    /* 24D1C 00123D9C 1600133C */   lui       $s3, %hi(D_00159B80)
    /* 24D20 00123DA0 3D000010 */  b          .L00123E98
    /* 24D24 00123DA4 38FF0224 */   addiu     $v0, $zero, -0xC8
.align 2
  .L00123DA8:
    /* 24D28 00123DA8 1100022A */  slti       $v0, $s0, 0x11
    /* 24D2C 00123DAC 809B6626 */  addiu      $a2, $s3, %lo(D_00159B80)
    /* 24D30 00123DB0 05004010 */  beqz       $v0, .L00123DC8
    /* 24D34 00123DB4 809B72AE */   sw        $s2, %lo(D_00159B80)($s3)
    /* 24D38 00123DB8 1400D0AC */  sw         $s0, 0x14($a2)
    /* 24D3C 00123DBC 1800C0AC */  sw         $zero, 0x18($a2)
    /* 24D40 00123DC0 0C000010 */  b          .L00123DF4
    /* 24D44 00123DC4 0C00C0AC */   sw        $zero, 0xC($a2)
.align 2
  .L00123DC8:
    /* 24D48 00123DC8 FFFF033C */  lui        $v1, (0xFFFFFFF0 >> 16)
    /* 24D4C 00123DCC FFFF2226 */  addiu      $v0, $s1, -0x1
    /* 24D50 00123DD0 F0FF6334 */  ori        $v1, $v1, (0xFFFFFFF0 & 0xFFFF)
    /* 24D54 00123DD4 F0FF2426 */  addiu      $a0, $s1, -0x10
    /* 24D58 00123DD8 24104300 */  and        $v0, $v0, $v1
    /* 24D5C 00123DDC 23104400 */  subu       $v0, $v0, $a0
    /* 24D60 00123DE0 23280202 */  subu       $a1, $s0, $v0
    /* 24D64 00123DE4 21182202 */  addu       $v1, $s1, $v0
    /* 24D68 00123DE8 1800C3AC */  sw         $v1, 0x18($a2)
    /* 24D6C 00123DEC 0C00C5AC */  sw         $a1, 0xC($a2)
    /* 24D70 00123DF0 1400C2AC */  sw         $v0, 0x14($a2)
.align 2
  .L00123DF4:
    /* 24D74 00123DF4 809B6226 */  addiu      $v0, $s3, %lo(D_00159B80)
    /* 24D78 00123DF8 2D386002 */  daddu      $a3, $s3, $zero
    /* 24D7C 00123DFC 1400438C */  lw         $v1, 0x14($v0)
    /* 24D80 00123E00 0F006010 */  beqz       $v1, .L00123E40
    /* 24D84 00123E04 2D300000 */   daddu     $a2, $zero, $zero
    /* 24D88 00123E08 1600103C */  lui        $s0, %hi(D_0015B0C0)
    /* 24D8C 00123E0C 21102602 */  addu       $v0, $s1, $a2
    /* 24D90 00123E10 809BE424 */  addiu      $a0, $a3, %lo(D_00159B80)
    /* 24D94 00123E14 00000000 */  nop
.align 2
  .L00123E18:
    /* 24D98 00123E18 00004590 */  lbu        $a1, 0x0($v0)
    /* 24D9C 00123E1C 21188600 */  addu       $v1, $a0, $a2
    /* 24DA0 00123E20 0100C624 */  addiu      $a2, $a2, 0x1
    /* 24DA4 00123E24 200065A0 */  sb         $a1, 0x20($v1)
    /* 24DA8 00123E28 1400828C */  lw         $v0, 0x14($a0)
    /* 24DAC 00123E2C 2B10C200 */  sltu       $v0, $a2, $v0
    /* 24DB0 00123E30 F9FF4014 */  bnez       $v0, .L00123E18
    /* 24DB4 00123E34 21102602 */   addu      $v0, $s1, $a2
    /* 24DB8 00123E38 02000010 */  b          .L00123E44
    /* 24DBC 00123E3C 00000000 */   nop
.align 2
  .L00123E40:
    /* 24DC0 00123E40 1600103C */  lui        $s0, %hi(D_0015B0C0)
.align 2
  .L00123E44:
    /* 24DC4 00123E44 6063040C */  jal        func_00118D80
    /* 24DC8 00123E48 2D200000 */   daddu     $a0, $zero, $zero
    /* 24DCC 00123E4C C0B00926 */  addiu      $t1, $s0, %lo(D_0015B0C0)
    /* 24DD0 00123E50 009B8426 */  addiu      $a0, $s4, %lo(D_00159B00)
    /* 24DD4 00123E54 809B6726 */  addiu      $a3, $s3, %lo(D_00159B80)
    /* 24DD8 00123E58 0000A0AF */  sw         $zero, 0x0($sp)
    /* 24DDC 00123E5C 06000524 */  addiu      $a1, $zero, 0x6
    /* 24DE0 00123E60 01000624 */  addiu      $a2, $zero, 0x1
    /* 24DE4 00123E64 30000824 */  addiu      $t0, $zero, 0x30
    /* 24DE8 00123E68 04000A24 */  addiu      $t2, $zero, 0x4
    /* 24DEC 00123E6C 326D040C */  jal        func_0011B4C8
    /* 24DF0 00123E70 2D580000 */   daddu     $t3, $zero, $zero
    /* 24DF4 00123E74 2D804000 */  daddu      $s0, $v0, $zero
    /* 24DF8 00123E78 04000016 */  bnez       $s0, .L00123E8C
    /* 24DFC 00123E7C 1300033C */   lui       $v1, %hi(D_00132EA8)
    /* 24E00 00123E80 06000224 */  addiu      $v0, $zero, 0x6
    /* 24E04 00123E84 03000010 */  b          .L00123E94
    /* 24E08 00123E88 A82E62AC */   sw        $v0, %lo(D_00132EA8)($v1)
.align 2
  .L00123E8C:
    /* 24E0C 00123E8C 2463040C */  jal        func_00118C90
    /* 24E10 00123E90 AC2EA48E */   lw        $a0, %lo(D_00132EAC)($s5)
.align 2
  .L00123E94:
    /* 24E14 00123E94 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L00123E98:
    /* 24E18 00123E98 7000BFDF */  ld         $ra, 0x70($sp)
    /* 24E1C 00123E9C 6000B5DF */  ld         $s5, 0x60($sp)
    /* 24E20 00123EA0 5000B4DF */  ld         $s4, 0x50($sp)
    /* 24E24 00123EA4 4000B3DF */  ld         $s3, 0x40($sp)
    /* 24E28 00123EA8 3000B2DF */  ld         $s2, 0x30($sp)
    /* 24E2C 00123EAC 2000B1DF */  ld         $s1, 0x20($sp)
    /* 24E30 00123EB0 1000B0DF */  ld         $s0, 0x10($sp)
    /* 24E34 00123EB4 0800E003 */  jr         $ra
    /* 24E38 00123EB8 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_00123D48
    /* 24E3C 00123EBC 00000000 */  nop
