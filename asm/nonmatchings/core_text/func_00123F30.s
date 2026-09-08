.align 3
nonmatching func_00123F30, 0xE0

glabel func_00123F30
    /* 24EB0 00123F30 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 24EB4 00123F34 3000B3FF */  sd         $s3, 0x30($sp)
    /* 24EB8 00123F38 1300133C */  lui        $s3, %hi(D_00132EA8)
    /* 24EBC 00123F3C 5000B5FF */  sd         $s5, 0x50($sp)
    /* 24EC0 00123F40 4000B4FF */  sd         $s4, 0x40($sp)
    /* 24EC4 00123F44 2DA8C000 */  daddu      $s5, $a2, $zero
    /* 24EC8 00123F48 2000B2FF */  sd         $s2, 0x20($sp)
    /* 24ECC 00123F4C 2DA0A000 */  daddu      $s4, $a1, $zero
    /* 24ED0 00123F50 A82E628E */  lw         $v0, %lo(D_00132EA8)($s3)
    /* 24ED4 00123F54 2D908000 */  daddu      $s2, $a0, $zero
    /* 24ED8 00123F58 6000BFFF */  sd         $ra, 0x60($sp)
    /* 24EDC 00123F5C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 24EE0 00123F60 03004014 */  bnez       $v0, .L00123F70
    /* 24EE4 00123F64 0000B0FF */   sd        $s0, 0x0($sp)
    /* 24EE8 00123F68 20000010 */  b          .L00123FEC
    /* 24EEC 00123F6C FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L00123F70:
    /* 24EF0 00123F70 1600113C */  lui        $s1, %hi(D_00159B00)
    /* 24EF4 00123F74 AE6D040C */  jal        func_0011B6B8
    /* 24EF8 00123F78 009B2426 */   addiu     $a0, $s1, %lo(D_00159B00)
    /* 24EFC 00123F7C 0C004016 */  bnez       $s2, .L00123FB0
    /* 24F00 00123F80 2D804000 */   daddu     $s0, $v0, $zero
    /* 24F04 00123F84 0A000012 */  beqz       $s0, .L00123FB0
    /* 24F08 00123F88 00000000 */   nop
    /* 24F0C 00123F8C 04000010 */  b          .L00123FA0
    /* 24F10 00123F90 00000000 */   nop
    /* 24F14 00123F94 00000000 */  nop
.align 2
  .L00123F98:
    /* 24F18 00123F98 BA8F040C */  jal        func_00123EE8
    /* 24F1C 00123F9C 3C000424 */   addiu     $a0, $zero, 0x3C
.align 2
  .L00123FA0:
    /* 24F20 00123FA0 AE6D040C */  jal        func_0011B6B8
    /* 24F24 00123FA4 009B2426 */   addiu     $a0, $s1, %lo(D_00159B00)
    /* 24F28 00123FA8 FBFF4014 */  bnez       $v0, .L00123F98
    /* 24F2C 00123FAC 2D800000 */   daddu     $s0, $zero, $zero
.align 2
  .L00123FB0:
    /* 24F30 00123FB0 03008012 */  beqz       $s4, .L00123FC0
    /* 24F34 00123FB4 0100102E */   sltiu     $s0, $s0, 0x1
    /* 24F38 00123FB8 A82E628E */  lw         $v0, %lo(D_00132EA8)($s3)
    /* 24F3C 00123FBC 000082AE */  sw         $v0, 0x0($s4)
.align 2
  .L00123FC0:
    /* 24F40 00123FC0 0A000012 */  beqz       $s0, .L00123FEC
    /* 24F44 00123FC4 2D100002 */   daddu     $v0, $s0, $zero
    /* 24F48 00123FC8 0400A012 */  beqz       $s5, .L00123FDC
    /* 24F4C 00123FCC A82E60AE */   sw        $zero, %lo(D_00132EA8)($s3)
    /* 24F50 00123FD0 1600023C */  lui        $v0, %hi(D_0015B0C0)
    /* 24F54 00123FD4 C0B0438C */  lw         $v1, %lo(D_0015B0C0)($v0)
    /* 24F58 00123FD8 0000A3AE */  sw         $v1, 0x0($s5)
.align 2
  .L00123FDC:
    /* 24F5C 00123FDC 1300023C */  lui        $v0, %hi(D_00132EAC)
    /* 24F60 00123FE0 2463040C */  jal        func_00118C90
    /* 24F64 00123FE4 AC2E448C */   lw        $a0, %lo(D_00132EAC)($v0)
    /* 24F68 00123FE8 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L00123FEC:
    /* 24F6C 00123FEC 6000BFDF */  ld         $ra, 0x60($sp)
    /* 24F70 00123FF0 5000B5DF */  ld         $s5, 0x50($sp)
    /* 24F74 00123FF4 4000B4DF */  ld         $s4, 0x40($sp)
    /* 24F78 00123FF8 3000B3DF */  ld         $s3, 0x30($sp)
    /* 24F7C 00123FFC 2000B2DF */  ld         $s2, 0x20($sp)
    /* 24F80 00124000 1000B1DF */  ld         $s1, 0x10($sp)
    /* 24F84 00124004 0000B0DF */  ld         $s0, 0x0($sp)
    /* 24F88 00124008 0800E003 */  jr         $ra
    /* 24F8C 0012400C 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_00123F30
