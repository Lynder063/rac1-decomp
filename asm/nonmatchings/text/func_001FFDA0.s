.align 3
nonmatching func_001FFDA0, 0x74

glabel func_001FFDA0
    /* 100D20 001FFDA0 1A00023C */  lui        $v0, %hi(D_00199C60)
    /* 100D24 001FFDA4 2D384000 */  daddu      $a3, $v0, $zero
    /* 100D28 001FFDA8 609C4224 */  addiu      $v0, $v0, %lo(D_00199C60)
    /* 100D2C 001FFDAC 6400438C */  lw         $v1, 0x64($v0)
    /* 100D30 001FFDB0 0A006410 */  beq        $v1, $a0, .L001FFDDC
    /* 100D34 001FFDB4 2D300000 */   daddu     $a2, $zero, $zero
    /* 100D38 001FFDB8 64004324 */  addiu      $v1, $v0, 0x64
    /* 100D3C 001FFDBC 0100C624 */  addiu      $a2, $a2, 0x1
.align 2
  .L001FFDC0:
    /* 100D40 001FFDC0 0D00C228 */  slti       $v0, $a2, 0xD
    /* 100D44 001FFDC4 11004010 */  beqz       $v0, .L001FFE0C
    /* 100D48 001FFDC8 90006324 */   addiu     $v1, $v1, 0x90
    /* 100D4C 001FFDCC 0000628C */  lw         $v0, 0x0($v1)
    /* 100D50 001FFDD0 00000000 */  nop
    /* 100D54 001FFDD4 FAFF4454 */  bnel       $v0, $a0, .L001FFDC0
    /* 100D58 001FFDD8 0100C624 */   addiu     $a2, $a2, 0x1
.align 2
  .L001FFDDC:
    /* 100D5C 001FFDDC 0D00C228 */  slti       $v0, $a2, 0xD
    /* 100D60 001FFDE0 0A004010 */  beqz       $v0, .L001FFE0C
    /* 100D64 001FFDE4 90000224 */   addiu     $v0, $zero, 0x90
    /* 100D68 001FFDE8 609CE724 */  addiu      $a3, $a3, %lo(D_00199C60)
    /* 100D6C 001FFDEC 1830C200 */  mult       $a2, $a2, $v0
    /* 100D70 001FFDF0 2118E600 */  addu       $v1, $a3, $a2
    /* 100D74 001FFDF4 240065AC */  sw         $a1, 0x24($v1)
    /* 100D78 001FFDF8 2D206000 */  daddu      $a0, $v1, $zero
    /* 100D7C 001FFDFC 6800828C */  lw         $v0, 0x68($a0)
    /* 100D80 001FFE00 02004014 */  bnez       $v0, .L001FFE0C
    /* 100D84 001FFE04 2D106000 */   daddu     $v0, $v1, $zero
    /* 100D88 001FFE08 040045AC */  sw         $a1, 0x4($v0)
.align 2
  .L001FFE0C:
    /* 100D8C 001FFE0C 0800E003 */  jr         $ra
    /* 100D90 001FFE10 00000000 */   nop
endlabel func_001FFDA0
    /* 100D94 001FFE14 00000000 */  nop
