.align 3
nonmatching func_0020CA50, 0x12C

glabel func_0020CA50
    /* 10D9D0 0020CA50 1A00023C */  lui        $v0, %hi(D_001A2FA0)
    /* 10D9D4 0020CA54 2D580000 */  daddu      $t3, $zero, $zero
    /* 10D9D8 0020CA58 A02F498C */  lw         $t1, %lo(D_001A2FA0)($v0)
    /* 10D9DC 0020CA5C 01000C24 */  addiu      $t4, $zero, 0x1
    /* 10D9E0 0020CA60 0200A010 */  beqz       $a1, .L0020CA6C
    /* 10D9E4 0020CA64 000080AC */   sw        $zero, 0x0($a0)
    /* 10D9E8 0020CA68 0000A0AC */  sw         $zero, 0x0($a1)
.align 2
  .L0020CA6C:
    /* 10D9EC 0020CA6C 0200C010 */  beqz       $a2, .L0020CA78
    /* 10D9F0 0020CA70 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 10D9F4 0020CA74 0000C2AC */  sw         $v0, 0x0($a2)
.align 2
  .L0020CA78:
    /* 10D9F8 0020CA78 03002055 */  bnel       $t1, $zero, .L0020CA88
    /* 10D9FC 0020CA7C 00002285 */   lh        $v0, 0x0($t1)
    /* 10DA00 0020CA80 0800E003 */  jr         $ra
    /* 10DA04 0020CA84 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0020CA88:
    /* 10DA08 0020CA88 32004010 */  beqz       $v0, .L0020CB54
    /* 10DA0C 0020CA8C 00000000 */   nop
    /* 10DA10 0020CA90 02000A24 */  addiu      $t2, $zero, 0x2
    /* 10DA14 0020CA94 01000D24 */  addiu      $t5, $zero, 0x1
    /* 10DA18 0020CA98 24002885 */  lh         $t0, 0x24($t1)
    /* 10DA1C 0020CA9C 00000000 */  nop
.align 2
  .L0020CAA0:
    /* 10DA20 0020CAA0 03000A11 */  beq        $t0, $t2, .L0020CAB0
    /* 10DA24 0020CAA4 10002395 */   lhu       $v1, 0x10($t1)
    /* 10DA28 0020CAA8 02006230 */  andi       $v0, $v1, 0x2
    /* 10DA2C 0020CAAC 0A600200 */  movz       $t4, $zero, $v0
.align 2
  .L0020CAB0:
    /* 10DA30 0020CAB0 02006230 */  andi       $v0, $v1, 0x2
    /* 10DA34 0020CAB4 24004054 */  bnel       $v0, $zero, .L0020CB48
    /* 10DA38 0020CAB8 28002925 */   addiu     $t1, $t1, 0x28
    /* 10DA3C 0020CABC 21000011 */  beqz       $t0, .L0020CB44
    /* 10DA40 0020CAC0 01006230 */   andi      $v0, $v1, 0x1
    /* 10DA44 0020CAC4 04004050 */  beql       $v0, $zero, .L0020CAD8
    /* 10DA48 0020CAC8 00002285 */   lh        $v0, 0x0($t1)
    /* 10DA4C 0020CACC 1E000A51 */  beql       $t0, $t2, .L0020CB48
    /* 10DA50 0020CAD0 28002925 */   addiu     $t1, $t1, 0x28
    /* 10DA54 0020CAD4 00002285 */  lh         $v0, 0x0($t1)
.align 2
  .L0020CAD8:
    /* 10DA58 0020CAD8 2D188000 */  daddu      $v1, $a0, $zero
    /* 10DA5C 0020CADC 0900E010 */  beqz       $a3, .L0020CB04
    /* 10DA60 0020CAE0 000082AC */   sw        $v0, 0x0($a0)
    /* 10DA64 0020CAE4 24002285 */  lh         $v0, 0x24($t1)
    /* 10DA68 0020CAE8 05004A50 */  beql       $v0, $t2, .L0020CB00
    /* 10DA6C 0020CAEC 43520224 */   addiu     $v0, $zero, 0x5243
    /* 10DA70 0020CAF0 26002285 */  lh         $v0, 0x26($t1)
    /* 10DA74 0020CAF4 40100200 */  sll        $v0, $v0, 1
    /* 10DA78 0020CAF8 21102201 */  addu       $v0, $t1, $v0
    /* 10DA7C 0020CAFC 14004284 */  lh         $v0, 0x14($v0)
.align 2
  .L0020CB00:
    /* 10DA80 0020CB00 000062AC */  sw         $v0, 0x0($v1)
.align 2
  .L0020CB04:
    /* 10DA84 0020CB04 0700A010 */  beqz       $a1, .L0020CB24
    /* 10DA88 0020CB08 00000000 */   nop
    /* 10DA8C 0020CB0C 24002285 */  lh         $v0, 0x24($t1)
    /* 10DA90 0020CB10 04004A14 */  bne        $v0, $t2, .L0020CB24
    /* 10DA94 0020CB14 04186D01 */   sllv      $v1, $t5, $t3
    /* 10DA98 0020CB18 0000A28C */  lw         $v0, 0x0($a1)
    /* 10DA9C 0020CB1C 25104300 */  or         $v0, $v0, $v1
    /* 10DAA0 0020CB20 0000A2AC */  sw         $v0, 0x0($a1)
.align 2
  .L0020CB24:
    /* 10DAA4 0020CB24 0600C010 */  beqz       $a2, .L0020CB40
    /* 10DAA8 0020CB28 04008424 */   addiu     $a0, $a0, 0x4
    /* 10DAAC 0020CB2C 12002285 */  lh         $v0, 0x12($t1)
    /* 10DAB0 0020CB30 26002385 */  lh         $v1, 0x26($t1)
    /* 10DAB4 0020CB34 21104300 */  addu       $v0, $v0, $v1
    /* 10DAB8 0020CB38 0000C2AC */  sw         $v0, 0x0($a2)
    /* 10DABC 0020CB3C 0400C624 */  addiu      $a2, $a2, 0x4
.align 2
  .L0020CB40:
    /* 10DAC0 0020CB40 01006B25 */  addiu      $t3, $t3, 0x1
.align 2
  .L0020CB44:
    /* 10DAC4 0020CB44 28002925 */  addiu      $t1, $t1, 0x28
.align 2
  .L0020CB48:
    /* 10DAC8 0020CB48 00002285 */  lh         $v0, 0x0($t1)
    /* 10DACC 0020CB4C D4FF4054 */  bnel       $v0, $zero, .L0020CAA0
    /* 10DAD0 0020CB50 24002885 */   lh        $t0, 0x24($t1)
.align 2
  .L0020CB54:
    /* 10DAD4 0020CB54 0700A010 */  beqz       $a1, .L0020CB74
    /* 10DAD8 0020CB58 00000000 */   nop
    /* 10DADC 0020CB5C 05008011 */  beqz       $t4, .L0020CB74
    /* 10DAE0 0020CB60 00000000 */   nop
    /* 10DAE4 0020CB64 0000A28C */  lw         $v0, 0x0($a1)
    /* 10DAE8 0020CB68 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 10DAEC 0020CB6C 25104300 */  or         $v0, $v0, $v1
    /* 10DAF0 0020CB70 0000A2AC */  sw         $v0, 0x0($a1)
.align 2
  .L0020CB74:
    /* 10DAF4 0020CB74 0800E003 */  jr         $ra
    /* 10DAF8 0020CB78 2D106001 */   daddu     $v0, $t3, $zero
endlabel func_0020CA50
    /* 10DAFC 0020CB7C 00000000 */  nop
