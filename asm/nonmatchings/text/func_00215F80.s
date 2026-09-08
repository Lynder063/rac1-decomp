.align 3
nonmatching func_00215F80, 0xA4

glabel func_00215F80
    /* 116F00 00215F80 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 116F04 00215F84 1600023C */  lui        $v0, %hi(D_0015F6B4)
    /* 116F08 00215F88 B4F6428C */  lw         $v0, %lo(D_0015F6B4)($v0)
    /* 116F0C 00215F8C 1000B17F */  sq         $s1, 0x10($sp)
    /* 116F10 00215F90 0000B07F */  sq         $s0, 0x0($sp)
    /* 116F14 00215F94 2D888000 */  daddu      $s1, $a0, $zero
    /* 116F18 00215F98 2000BF7F */  sq         $ra, 0x20($sp)
    /* 116F1C 00215F9C 0C005114 */  bne        $v0, $s1, .L00215FD0
    /* 116F20 00215FA0 2D80A000 */   daddu     $s0, $a1, $zero
    /* 116F24 00215FA4 06000012 */  beqz       $s0, .L00215FC0
    /* 116F28 00215FA8 02000224 */   addiu     $v0, $zero, 0x2
    /* 116F2C 00215FAC 50F9070C */  jal        func_001FE540
    /* 116F30 00215FB0 2D200002 */   daddu     $a0, $s0, $zero
    /* 116F34 00215FB4 A2FF070C */  jal        func_001FFE88
    /* 116F38 00215FB8 2D204000 */   daddu     $a0, $v0, $zero
    /* 116F3C 00215FBC 02000224 */  addiu      $v0, $zero, 0x2
.align 2
  .L00215FC0:
    /* 116F40 00215FC0 1600013C */  lui        $at, %hi(D_00161388)
    /* 116F44 00215FC4 881330AC */  sw         $s0, %lo(D_00161388)($at)
    /* 116F48 00215FC8 11000010 */  b          .L00216010
    /* 116F4C 00215FCC B08982AF */   sw        $v0, -0x7650($gp)
.align 2
  .L00215FD0:
    /* 116F50 00215FD0 0F004014 */  bnez       $v0, .L00216010
    /* 116F54 00215FD4 2D100000 */   daddu     $v0, $zero, $zero
    /* 116F58 00215FD8 06000012 */  beqz       $s0, .L00215FF4
    /* 116F5C 00215FDC 02000224 */   addiu     $v0, $zero, 0x2
    /* 116F60 00215FE0 50F9070C */  jal        func_001FE540
    /* 116F64 00215FE4 2D200002 */   daddu     $a0, $s0, $zero
    /* 116F68 00215FE8 A2FF070C */  jal        func_001FFE88
    /* 116F6C 00215FEC 2D204000 */   daddu     $a0, $v0, $zero
    /* 116F70 00215FF0 02000224 */  addiu      $v0, $zero, 0x2
.align 2
  .L00215FF4:
    /* 116F74 00215FF4 1600013C */  lui        $at, %hi(D_0015F6B4)
    /* 116F78 00215FF8 B4F631AC */  sw         $s1, %lo(D_0015F6B4)($at)
    /* 116F7C 00215FFC 1600013C */  lui        $at, %hi(D_0015F6B0)
    /* 116F80 00216000 B0F622AC */  sw         $v0, %lo(D_0015F6B0)($at)
    /* 116F84 00216004 01000224 */  addiu      $v0, $zero, 0x1
    /* 116F88 00216008 1600013C */  lui        $at, %hi(D_00161388)
    /* 116F8C 0021600C 881330AC */  sw         $s0, %lo(D_00161388)($at)
.align 2
  .L00216010:
    /* 116F90 00216010 2000BF7B */  lq         $ra, 0x20($sp)
    /* 116F94 00216014 1000B17B */  lq         $s1, 0x10($sp)
    /* 116F98 00216018 0000B07B */  lq         $s0, 0x0($sp)
    /* 116F9C 0021601C 0800E003 */  jr         $ra
    /* 116FA0 00216020 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00215F80
    /* 116FA4 00216024 00000000 */  nop
