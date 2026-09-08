.align 3
nonmatching func_00119CC8, 0xBC

glabel func_00119CC8
    /* 1AC48 00119CC8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1AC4C 00119CCC 2D200000 */  daddu      $a0, $zero, $zero
    /* 1AC50 00119CD0 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1AC54 00119CD4 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1AC58 00119CD8 2000BFFF */  sd         $ra, 0x20($sp)
    /* 1AC5C 00119CDC 6063040C */  jal        func_00118D80
    /* 1AC60 00119CE0 1500103C */   lui       $s0, %hi(D_00154B50)
    /* 1AC64 00119CE4 504B1126 */  addiu      $s1, $s0, %lo(D_00154B50)
    /* 1AC68 00119CE8 1200063C */  lui        $a2, %hi(func_00119910)
    /* 1AC6C 00119CEC 10020424 */  addiu      $a0, $zero, 0x210
    /* 1AC70 00119CF0 1099C624 */  addiu      $a2, $a2, %lo(func_00119910)
    /* 1AC74 00119CF4 C665040C */  jal        func_00119718
    /* 1AC78 00119CF8 2D282002 */   daddu     $a1, $s1, $zero
    /* 1AC7C 00119CFC 504B02AE */  sw         $v0, %lo(D_00154B50)($s0)
    /* 1AC80 00119D00 504B028E */  lw         $v0, %lo(D_00154B50)($s0)
    /* 1AC84 00119D04 03004104 */  bgez       $v0, .L00119D14
    /* 1AC88 00119D08 1500043C */   lui       $a0, %hi(D_00154CC0)
    /* 1AC8C 00119D0C 18000010 */  b          .L00119D70
    /* 1AC90 00119D10 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00119D14:
    /* 1AC94 00119D14 1500023C */  lui        $v0, %hi(D_00154B80)
    /* 1AC98 00119D18 0C0020AE */  sw         $zero, 0xC($s1)
    /* 1AC9C 00119D1C 0020033C */  lui        $v1, (0x20000002 >> 16)
    /* 1ACA0 00119D20 C04C8424 */  addiu      $a0, $a0, %lo(D_00154CC0)
    /* 1ACA4 00119D24 804B4224 */  addiu      $v0, $v0, %lo(D_00154B80)
    /* 1ACA8 00119D28 25104300 */  or         $v0, $v0, $v1
    /* 1ACAC 00119D2C 040020AE */  sw         $zero, 0x4($s1)
    /* 1ACB0 00119D30 25208300 */  or         $a0, $a0, $v1
    /* 1ACB4 00119D34 080020AE */  sw         $zero, 0x8($s1)
    /* 1ACB8 00119D38 140024AE */  sw         $a0, 0x14($s1)
    /* 1ACBC 00119D3C 10020624 */  addiu      $a2, $zero, 0x210
    /* 1ACC0 00119D40 100022AE */  sw         $v0, 0x10($s1)
    /* 1ACC4 00119D44 45000524 */  addiu      $a1, $zero, 0x45
    /* 1ACC8 00119D48 48000324 */  addiu      $v1, $zero, 0x48
    /* 1ACCC 00119D4C 00010424 */  addiu      $a0, $zero, 0x100
    /* 1ACD0 00119D50 040046A4 */  sh         $a2, (0x20000004 & 0xFFFF)($v0)
    /* 1ACD4 00119D54 060045A0 */  sb         $a1, (0x20000006 & 0xFFFF)($v0)
    /* 1ACD8 00119D58 070043A0 */  sb         $v1, (0x20000007 & 0xFFFF)($v0)
    /* 1ACDC 00119D5C 080040AC */  sw         $zero, (0x20000008 & 0xFFFF)($v0)
    /* 1ACE0 00119D60 1A66040C */  jal        func_00119868
    /* 1ACE4 00119D64 020040A4 */   sh        $zero, (0x20000002 & 0xFFFF)($v0)
    /* 1ACE8 00119D68 180022AE */  sw         $v0, 0x18($s1)
    /* 1ACEC 00119D6C 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L00119D70:
    /* 1ACF0 00119D70 2000BFDF */  ld         $ra, 0x20($sp)
    /* 1ACF4 00119D74 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1ACF8 00119D78 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1ACFC 00119D7C 0800E003 */  jr         $ra
    /* 1AD00 00119D80 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00119CC8
