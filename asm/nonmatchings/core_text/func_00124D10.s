.align 3
nonmatching func_00124D10, 0xDC

glabel func_00124D10
    /* 25C90 00124D10 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 25C94 00124D14 00000000 */  nop
.align 2
  alabel func_00124D18
    /* 25C98 00124D18 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 25C9C 00124D1C 30030224 */  addiu      $v0, $zero, 0x330
    /* 25CA0 00124D20 1000B1FF */  sd         $s1, 0x10($sp)
    /* 25CA4 00124D24 1600033C */  lui        $v1, %hi(D_0015B640)
    /* 25CA8 00124D28 2D888000 */  daddu      $s1, $a0, $zero
    /* 25CAC 00124D2C 2000B2FF */  sd         $s2, 0x20($sp)
    /* 25CB0 00124D30 18202202 */  mult       $a0, $s1, $v0
    /* 25CB4 00124D34 40B66624 */  addiu      $a2, $v1, %lo(D_0015B640)
    /* 25CB8 00124D38 3000BFFF */  sd         $ra, 0x30($sp)
    /* 25CBC 00124D3C 2D90A000 */  daddu      $s2, $a1, $zero
    /* 25CC0 00124D40 0000B0FF */  sd         $s0, 0x0($sp)
    /* 25CC4 00124D44 21108600 */  addu       $v0, $a0, $a2
    /* 25CC8 00124D48 0000438C */  lw         $v1, 0x0($v0)
    /* 25CCC 00124D4C 21006010 */  beqz       $v1, .L00124DD4
    /* 25CD0 00124D50 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 25CD4 00124D54 2110C400 */  addu       $v0, $a2, $a0
    /* 25CD8 00124D58 0400438C */  lw         $v1, 0x4($v0)
    /* 25CDC 00124D5C 05006014 */  bnez       $v1, .L00124D74
    /* 25CE0 00124D60 00000000 */   nop
    /* 25CE4 00124D64 0894040C */  jal        func_00125020
    /* 25CE8 00124D68 2D202002 */   daddu     $a0, $s1, $zero
    /* 25CEC 00124D6C 19004004 */  bltz       $v0, .L00124DD4
    /* 25CF0 00124D70 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L00124D74:
    /* 25CF4 00124D74 1E94040C */  jal        func_00125078
    /* 25CF8 00124D78 2D202002 */   daddu     $a0, $s1, $zero
    /* 25CFC 00124D7C 2D804000 */  daddu      $s0, $v0, $zero
    /* 25D00 00124D80 02000292 */  lbu        $v0, 0x2($s0)
    /* 25D04 00124D84 10004050 */  beql       $v0, $zero, .L00124DC8
    /* 25D08 00124D88 0400028E */   lw        $v0, 0x4($s0)
    /* 25D0C 00124D8C 1C000526 */  addiu      $a1, $s0, 0x1C
    /* 25D10 00124D90 0C00A010 */  beqz       $a1, .L00124DC4
    /* 25D14 00124D94 2D304000 */   daddu     $a2, $v0, $zero
    /* 25D18 00124D98 9254040C */  jal        func_00115248
    /* 25D1C 00124D9C 2D204002 */   daddu     $a0, $s2, $zero
    /* 25D20 00124DA0 30030324 */  addiu      $v1, $zero, 0x330
    /* 25D24 00124DA4 02000492 */  lbu        $a0, 0x2($s0)
    /* 25D28 00124DA8 18182302 */  mult       $v1, $s1, $v1
    /* 25D2C 00124DAC 1600053C */  lui        $a1, %hi(D_0015B650)
    /* 25D30 00124DB0 1C008424 */  addiu      $a0, $a0, 0x1C
    /* 25D34 00124DB4 50B6A524 */  addiu      $a1, $a1, %lo(D_0015B650)
    /* 25D38 00124DB8 21200402 */  addu       $a0, $s0, $a0
    /* 25D3C 00124DBC 5894040C */  jal        func_00125160
    /* 25D40 00124DC0 21286500 */   addu      $a1, $v1, $a1
.align 2
  .L00124DC4:
    /* 25D44 00124DC4 0400028E */  lw         $v0, 0x4($s0)
.align 2
  .L00124DC8:
    /* 25D48 00124DC8 02004054 */  bnel       $v0, $zero, .L00124DD4
    /* 25D4C 00124DCC 02000292 */   lbu       $v0, 0x2($s0)
    /* 25D50 00124DD0 FFFF0224 */  addiu      $v0, $zero, -0x1
.align 2
  .L00124DD4:
    /* 25D54 00124DD4 3000BFDF */  ld         $ra, 0x30($sp)
    /* 25D58 00124DD8 2000B2DF */  ld         $s2, 0x20($sp)
    /* 25D5C 00124DDC 1000B1DF */  ld         $s1, 0x10($sp)
    /* 25D60 00124DE0 0000B0DF */  ld         $s0, 0x0($sp)
    /* 25D64 00124DE4 0800E003 */  jr         $ra
    /* 25D68 00124DE8 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_00124D10
    /* 25D6C 00124DEC 00000000 */  nop
