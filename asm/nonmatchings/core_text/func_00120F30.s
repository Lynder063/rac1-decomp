.align 3
nonmatching func_00120F30, 0xA0

glabel func_00120F30
    /* 21EB0 00120F30 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 21EB4 00120F34 2000BFFF */  sd         $ra, 0x20($sp)
    /* 21EB8 00120F38 1000B1FF */  sd         $s1, 0x10($sp)
    /* 21EBC 00120F3C 15008014 */  bnez       $a0, .L00120F94
    /* 21EC0 00120F40 0000B0FF */   sd        $s0, 0x0($sp)
    /* 21EC4 00120F44 1300023C */  lui        $v0, %hi(D_001313D0)
    /* 21EC8 00120F48 D013438C */  lw         $v1, %lo(D_001313D0)($v0)
    /* 21ECC 00120F4C 03006018 */  blez       $v1, .L00120F5C
    /* 21ED0 00120F50 1500043C */   lui       $a0, %hi(D_00152FF0)
    /* 21ED4 00120F54 B269040C */  jal        func_0011A6C8
    /* 21ED8 00120F58 F02F8424 */   addiu     $a0, $a0, %lo(D_00152FF0)
.align 2
  .L00120F5C:
    /* 21EDC 00120F5C 1300113C */  lui        $s1, %hi(D_001313F0)
    /* 21EE0 00120F60 03000010 */  b          .L00120F70
    /* 21EE4 00120F64 1300103C */   lui       $s0, %hi(D_00132590)
.align 2
  .L00120F68:
    /* 21EE8 00120F68 4482040C */  jal        func_00120910
    /* 21EEC 00120F6C 3C000424 */   addiu     $a0, $zero, 0x3C
.align 2
  .L00120F70:
    /* 21EF0 00120F70 F013228E */  lw         $v0, %lo(D_001313F0)($s1)
    /* 21EF4 00120F74 FCFF4014 */  bnez       $v0, .L00120F68
    /* 21EF8 00120F78 00000000 */   nop
    /* 21EFC 00120F7C AE6D040C */  jal        func_0011B6B8
    /* 21F00 00120F80 90250426 */   addiu     $a0, $s0, %lo(D_00132590)
    /* 21F04 00120F84 F8FF4014 */  bnez       $v0, .L00120F68
    /* 21F08 00120F88 2D100000 */   daddu     $v0, $zero, $zero
    /* 21F0C 00120F8C 0C000010 */  b          .L00120FC0
    /* 21F10 00120F90 2000BFDF */   ld        $ra, 0x20($sp)
.align 2
  .L00120F94:
    /* 21F14 00120F94 1300023C */  lui        $v0, %hi(D_001313F0)
    /* 21F18 00120F98 F013438C */  lw         $v1, %lo(D_001313F0)($v0)
    /* 21F1C 00120F9C 07006014 */  bnez       $v1, .L00120FBC
    /* 21F20 00120FA0 01000224 */   addiu     $v0, $zero, 0x1
    /* 21F24 00120FA4 1300043C */  lui        $a0, %hi(D_00132590)
    /* 21F28 00120FA8 AE6D040C */  jal        func_0011B6B8
    /* 21F2C 00120FAC 90258424 */   addiu     $a0, $a0, %lo(D_00132590)
    /* 21F30 00120FB0 02004014 */  bnez       $v0, .L00120FBC
    /* 21F34 00120FB4 01000224 */   addiu     $v0, $zero, 0x1
    /* 21F38 00120FB8 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L00120FBC:
    /* 21F3C 00120FBC 2000BFDF */  ld         $ra, 0x20($sp)
.align 2
  .L00120FC0:
    /* 21F40 00120FC0 1000B1DF */  ld         $s1, 0x10($sp)
    /* 21F44 00120FC4 0000B0DF */  ld         $s0, 0x0($sp)
    /* 21F48 00120FC8 0800E003 */  jr         $ra
    /* 21F4C 00120FCC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00120F30
