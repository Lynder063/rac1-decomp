.align 3
nonmatching func_00219E90, 0x220

glabel func_00219E90
    /* 11AE10 00219E90 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 11AE14 00219E94 1D00043C */  lui        $a0, %hi(D_001D5F70)
    /* 11AE18 00219E98 0000B07F */  sq         $s0, 0x0($sp)
    /* 11AE1C 00219E9C 02000324 */  addiu      $v1, $zero, 0x2
    /* 11AE20 00219EA0 1D00063C */  lui        $a2, %hi(D_001D4948)
    /* 11AE24 00219EA4 1A00103C */  lui        $s0, %hi(D_0019C250)
    /* 11AE28 00219EA8 705F83AC */  sw         $v1, %lo(D_001D5F70)($a0)
    /* 11AE2C 00219EAC 705F8224 */  addiu      $v0, $a0, %lo(D_001D5F70)
    /* 11AE30 00219EB0 5000BF7F */  sq         $ra, 0x50($sp)
    /* 11AE34 00219EB4 4849C624 */  addiu      $a2, $a2, %lo(D_001D4948)
    /* 11AE38 00219EB8 4000B47F */  sq         $s4, 0x40($sp)
    /* 11AE3C 00219EBC 50C21026 */  addiu      $s0, $s0, %lo(D_0019C250)
    /* 11AE40 00219EC0 3000B37F */  sq         $s3, 0x30($sp)
    /* 11AE44 00219EC4 2D200002 */  daddu      $a0, $s0, $zero
    /* 11AE48 00219EC8 2000B27F */  sq         $s2, 0x20($sp)
    /* 11AE4C 00219ECC C0958527 */  addiu      $a1, $gp, -0x6A40
    /* 11AE50 00219ED0 1000B17F */  sq         $s1, 0x10($sp)
    /* 11AE54 00219ED4 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 11AE58 00219ED8 00608144 */  mtc1       $at, $f12
    /* 11AE5C 00219EDC 080046AC */  sw         $a2, 0x8($v0)
    /* 11AE60 00219EE0 240140AC */  sw         $zero, 0x124($v0)
    /* 11AE64 00219EE4 0CE7070C */  jal        func_001F9C30
    /* 11AE68 00219EE8 040046AC */   sw        $a2, 0x4($v0)
    /* 11AE6C 00219EEC F0FF0426 */  addiu      $a0, $s0, -0x10
    /* 11AE70 00219EF0 D0958327 */  addiu      $v1, $gp, -0x6A30
    /* 11AE74 00219EF4 00006278 */  lq         $v0, 0x0($v1)
    /* 11AE78 00219EF8 0000827C */  sq         $v0, 0x0($a0)
    /* 11AE7C 00219EFC 20001026 */  addiu      $s0, $s0, 0x20
    /* 11AE80 00219F00 0000007E */  sq         $zero, 0x0($s0)
    /* 11AE84 00219F04 1A00023C */  lui        $v0, %hi(D_0019C260)
    /* 11AE88 00219F08 60C24224 */  addiu      $v0, $v0, %lo(D_0019C260)
    /* 11AE8C 00219F0C 0000407C */  sq         $zero, 0x0($v0)
    /* 11AE90 00219F10 B2D2080C */  jal        func_00234AC8
    /* 11AE94 00219F14 01000424 */   addiu     $a0, $zero, 0x1
    /* 11AE98 00219F18 6689040C */  jal        func_00122598
    /* 11AE9C 00219F1C 2D200000 */   daddu     $a0, $zero, $zero
    /* 11AEA0 00219F20 1900033C */  lui        $v1, %hi(D_001941C0)
    /* 11AEA4 00219F24 0A000A3C */  lui        $t2, (0xA0000 >> 16)
    /* 11AEA8 00219F28 C0416324 */  addiu      $v1, $v1, %lo(D_001941C0)
    /* 11AEAC 00219F2C 0300093C */  lui        $t1, (0x30000 >> 16)
    /* 11AEB0 00219F30 0400668C */  lw         $a2, 0x4($v1)
    /* 11AEB4 00219F34 0C00023C */  lui        $v0, (0xC1000 >> 16)
    /* 11AEB8 00219F38 0800688C */  lw         $t0, 0x8($v1)
    /* 11AEBC 00219F3C 00104234 */  ori        $v0, $v0, (0xC1000 & 0xFFFF)
    /* 11AEC0 00219F40 2130CA00 */  addu       $a2, $a2, $t2
    /* 11AEC4 00219F44 1600043C */  lui        $a0, %hi(D_0015F538)
    /* 11AEC8 00219F48 38F5848C */  lw         $a0, %lo(D_0015F538)($a0)
    /* 11AECC 00219F4C 2148C900 */  addu       $t1, $a2, $t1
    /* 11AED0 00219F50 1D00033C */  lui        $v1, %hi(D_001D5F70)
    /* 11AED4 00219F54 705F7124 */  addiu      $s1, $v1, %lo(D_001D5F70)
    /* 11AED8 00219F58 21400A01 */  addu       $t0, $t0, $t2
    /* 11AEDC 00219F5C 21102201 */  addu       $v0, $t1, $v0
    /* 11AEE0 00219F60 0E00073C */  lui        $a3, (0xE0000 >> 16)
    /* 11AEE4 00219F64 0100053C */  lui        $a1, (0x11800 >> 16)
    /* 11AEE8 00219F68 FC0022AE */  sw         $v0, 0xFC($s1)
    /* 11AEEC 00219F6C 21380701 */  addu       $a3, $t0, $a3
    /* 11AEF0 00219F70 01008424 */  addiu      $a0, $a0, 0x1
    /* 11AEF4 00219F74 0018A534 */  ori        $a1, $a1, (0x11800 & 0xFFFF)
    /* 11AEF8 00219F78 1600013C */  lui        $at, %hi(D_0015F538)
    /* 11AEFC 00219F7C 38F524AC */  sw         $a0, %lo(D_0015F538)($at)
    /* 11AF00 00219F80 2128E500 */  addu       $a1, $a3, $a1
    /* 11AF04 00219F84 01000424 */  addiu      $a0, $zero, 0x1
    /* 11AF08 00219F88 000125AE */  sw         $a1, 0x100($s1)
    /* 11AF0C 00219F8C 1600013C */  lui        $at, %hi(D_0016100C)
    /* 11AF10 00219F90 0C102AAC */  sw         $t2, %lo(D_0016100C)($at)
    /* 11AF14 00219F94 040126AE */  sw         $a2, 0x104($s1)
    /* 11AF18 00219F98 100028AE */  sw         $t0, 0x10($s1)
    /* 11AF1C 00219F9C 080129AE */  sw         $t1, 0x108($s1)
    /* 11AF20 00219FA0 549B080C */  jal        func_00226D50
    /* 11AF24 00219FA4 0C0127AE */   sw        $a3, 0x10C($s1)
    /* 11AF28 00219FA8 3AD2080C */  jal        func_002348E8
    /* 11AF2C 00219FAC 00000000 */   nop
    /* 11AF30 00219FB0 1600023C */  lui        $v0, %hi(D_0015EF78)
    /* 11AF34 00219FB4 78EF428C */  lw         $v0, %lo(D_0015EF78)($v0)
    /* 11AF38 00219FB8 0400238E */  lw         $v1, 0x4($s1)
    /* 11AF3C 00219FBC 34006010 */  beqz       $v1, .L0021A090
    /* 11AF40 00219FC0 180022AE */   sw        $v0, 0x18($s1)
    /* 11AF44 00219FC4 1D00023C */  lui        $v0, %hi(D_001D6120)
    /* 11AF48 00219FC8 2400033C */  lui        $v1, %hi(D_0023B578)
    /* 11AF4C 00219FCC 1800043C */  lui        $a0, %hi(D_00187040)
    /* 11AF50 00219FD0 2D982002 */  daddu      $s3, $s1, $zero
    /* 11AF54 00219FD4 78B57424 */  addiu      $s4, $v1, %lo(D_0023B578)
    /* 11AF58 00219FD8 40709224 */  addiu      $s2, $a0, %lo(D_00187040)
    /* 11AF5C 00219FDC 20615024 */  addiu      $s0, $v0, %lo(D_001D6120)
    /* 11AF60 00219FE0 2D880000 */  daddu      $s1, $zero, $zero
    /* 11AF64 00219FE4 00000000 */  nop
.align 2
  .L00219FE8:
    /* 11AF68 00219FE8 C899080C */  jal        func_00226720
    /* 11AF6C 00219FEC 72040424 */   addiu     $a0, $zero, 0x472
    /* 11AF70 00219FF0 2D184000 */  daddu      $v1, $v0, $zero
    /* 11AF74 00219FF4 80281100 */  sll        $a1, $s1, 2
    /* 11AF78 00219FF8 21006010 */  beqz       $v1, .L0021A080
    /* 11AF7C 00219FFC 000003AE */   sw        $v1, 0x0($s0)
    /* 11AF80 0021A000 34006294 */  lhu        $v0, 0x34($v1)
    /* 11AF84 0021A004 FDFF4230 */  andi       $v0, $v0, 0xFFFD
    /* 11AF88 0021A008 340062A4 */  sh         $v0, 0x34($v1)
    /* 11AF8C 0021A00C 0000038E */  lw         $v1, 0x0($s0)
    /* 11AF90 0021A010 740074AC */  sw         $s4, 0x74($v1)
    /* 11AF94 0021A014 0000028E */  lw         $v0, 0x0($s0)
    /* 11AF98 0021A018 400140C6 */  lwc1       $f0, 0x140($s2)
    /* 11AF9C 0021A01C 100040E4 */  swc1       $f0, 0x10($v0)
    /* 11AFA0 0021A020 0000038E */  lw         $v1, 0x0($s0)
    /* 11AFA4 0021A024 440140C6 */  lwc1       $f0, 0x144($s2)
    /* 11AFA8 0021A028 140060E4 */  swc1       $f0, 0x14($v1)
    /* 11AFAC 0021A02C 0000048E */  lw         $a0, 0x0($s0)
    /* 11AFB0 0021A030 480140C6 */  lwc1       $f0, 0x148($s2)
    /* 11AFB4 0021A034 180080E4 */  swc1       $f0, 0x18($a0)
    /* 11AFB8 0021A038 0000028E */  lw         $v0, 0x0($s0)
    /* 11AFBC 0021A03C 400040AC */  sw         $zero, 0x40($v0)
    /* 11AFC0 0021A040 0000038E */  lw         $v1, 0x0($s0)
    /* 11AFC4 0021A044 440060AC */  sw         $zero, 0x44($v1)
    /* 11AFC8 0021A048 0000028E */  lw         $v0, 0x0($s0)
    /* 11AFCC 0021A04C 480040AC */  sw         $zero, 0x48($v0)
    /* 11AFD0 0021A050 0400638E */  lw         $v1, 0x4($s3)
    /* 11AFD4 0021A054 0000028E */  lw         $v0, 0x0($s0)
    /* 11AFD8 0021A058 21186500 */  addu       $v1, $v1, $a1
    /* 11AFDC 0021A05C 0000658C */  lw         $a1, 0x0($v1)
    /* 11AFE0 0021A060 2D204000 */  daddu      $a0, $v0, $zero
    /* 11AFE4 0021A064 2400438C */  lw         $v1, 0x24($v0)
    /* 11AFE8 0021A068 80300500 */  sll        $a2, $a1, 2
    /* 11AFEC 0021A06C 21186600 */  addu       $v1, $v1, $a2
    /* 11AFF0 0021A070 4800628C */  lw         $v0, 0x48($v1)
    /* 11AFF4 0021A074 10004690 */  lbu        $a2, 0x10($v0)
    /* 11AFF8 0021A078 4A4F080C */  jal        func_00213D28
    /* 11AFFC 0021A07C FFFFC624 */   addiu     $a2, $a2, -0x1
.align 2
  .L0021A080:
    /* 11B000 0021A080 01003126 */  addiu      $s1, $s1, 0x1
    /* 11B004 0021A084 0E00222A */  slti       $v0, $s1, 0xE
    /* 11B008 0021A088 D7FF4014 */  bnez       $v0, .L00219FE8
    /* 11B00C 0021A08C 04001026 */   addiu     $s0, $s0, 0x4
.align 2
  .L0021A090:
    /* 11B010 0021A090 5000BF7B */  lq         $ra, 0x50($sp)
    /* 11B014 0021A094 4000B47B */  lq         $s4, 0x40($sp)
    /* 11B018 0021A098 3000B37B */  lq         $s3, 0x30($sp)
    /* 11B01C 0021A09C 2000B27B */  lq         $s2, 0x20($sp)
    /* 11B020 0021A0A0 1000B17B */  lq         $s1, 0x10($sp)
    /* 11B024 0021A0A4 0000B07B */  lq         $s0, 0x0($sp)
    /* 11B028 0021A0A8 0800E003 */  jr         $ra
    /* 11B02C 0021A0AC 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_00219E90
