.align 3
nonmatching func_00225E00, 0x1B4

glabel func_00225E00
    /* 126D80 00225E00 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 126D84 00225E04 6000B27F */  sq         $s2, 0x60($sp)
    /* 126D88 00225E08 B000BF7F */  sq         $ra, 0xB0($sp)
    /* 126D8C 00225E0C 2D908000 */  daddu      $s2, $a0, $zero
    /* 126D90 00225E10 A000B67F */  sq         $s6, 0xA0($sp)
    /* 126D94 00225E14 9000B57F */  sq         $s5, 0x90($sp)
    /* 126D98 00225E18 8000B47F */  sq         $s4, 0x80($sp)
    /* 126D9C 00225E1C 7000B37F */  sq         $s3, 0x70($sp)
    /* 126DA0 00225E20 5000B17F */  sq         $s1, 0x50($sp)
    /* 126DA4 00225E24 4000B07F */  sq         $s0, 0x40($sp)
    /* 126DA8 00225E28 7800428E */  lw         $v0, 0x78($s2)
    /* 126DAC 00225E2C 70004392 */  lbu        $v1, 0x70($s2)
    /* 126DB0 00225E30 0000448C */  lw         $a0, 0x0($v0)
    /* 126DB4 00225E34 02006330 */  andi       $v1, $v1, 0x2
    /* 126DB8 00225E38 09006010 */  beqz       $v1, .L00225E60
    /* 126DBC 00225E3C 4400938C */   lw        $s3, 0x44($a0)
    /* 126DC0 00225E40 53004392 */  lbu        $v1, 0x53($s2)
    /* 126DC4 00225E44 01000224 */  addiu      $v0, $zero, 0x1
    /* 126DC8 00225E48 05006210 */  beq        $v1, $v0, .L00225E60
    /* 126DCC 00225E4C 2D204002 */   daddu     $a0, $s2, $zero
    /* 126DD0 00225E50 01000524 */  addiu      $a1, $zero, 0x1
    /* 126DD4 00225E54 2D300000 */  daddu      $a2, $zero, $zero
    /* 126DD8 00225E58 784F080C */  jal        func_00213DE0
    /* 126DDC 00225E5C 2D380000 */   daddu     $a3, $zero, $zero
.align 2
  .L00225E60:
    /* 126DE0 00225E60 1800023C */  lui        $v0, %hi(D_001864D0)
    /* 126DE4 00225E64 A6004586 */  lh         $a1, 0xA6($s2)
    /* 126DE8 00225E68 2D884000 */  daddu      $s1, $v0, $zero
    /* 126DEC 00225E6C 2D200000 */  daddu      $a0, $zero, $zero
    /* 126DF0 00225E70 D0644224 */  addiu      $v0, $v0, %lo(D_001864D0)
    /* 126DF4 00225E74 10005626 */  addiu      $s6, $s2, 0x10
    /* 126DF8 00225E78 1000438C */  lw         $v1, 0x10($v0)
    /* 126DFC 00225E7C 3000B527 */  addiu      $s5, $sp, 0x30
    /* 126E00 00225E80 0A006510 */  beq        $v1, $a1, .L00225EAC
    /* 126E04 00225E84 C0005426 */   addiu     $s4, $s2, 0xC0
    /* 126E08 00225E88 10004324 */  addiu      $v1, $v0, 0x10
    /* 126E0C 00225E8C 01008424 */  addiu      $a0, $a0, 0x1
.align 2
  .L00225E90:
    /* 126E10 00225E90 25008228 */  slti       $v0, $a0, 0x25
    /* 126E14 00225E94 05004010 */  beqz       $v0, .L00225EAC
    /* 126E18 00225E98 4C006324 */   addiu     $v1, $v1, 0x4C
    /* 126E1C 00225E9C 0000628C */  lw         $v0, 0x0($v1)
    /* 126E20 00225EA0 00000000 */  nop
    /* 126E24 00225EA4 FAFF4554 */  bnel       $v0, $a1, .L00225E90
    /* 126E28 00225EA8 01008424 */   addiu     $a0, $a0, 0x1
.align 2
  .L00225EAC:
    /* 126E2C 00225EAC 4C001024 */  addiu      $s0, $zero, 0x4C
    /* 126E30 00225EB0 D0643126 */  addiu      $s1, $s1, %lo(D_001864D0)
    /* 126E34 00225EB4 18809000 */  mult       $s0, $a0, $s0
    /* 126E38 00225EB8 2D30A003 */  daddu      $a2, $sp, $zero
    /* 126E3C 00225EBC 2D206002 */  daddu      $a0, $s3, $zero
    /* 126E40 00225EC0 21103002 */  addu       $v0, $s1, $s0
    /* 126E44 00225EC4 BE36080C */  jal        func_0020DAF8
    /* 126E48 00225EC8 0C00458C */   lw        $a1, 0xC($v0)
    /* 126E4C 00225ECC 0000A27A */  lq         $v0, 0x0($s5)
    /* 126E50 00225ED0 0000C27E */  sq         $v0, 0x0($s6)
    /* 126E54 00225ED4 523B080C */  jal        func_0020ED48
    /* 126E58 00225ED8 2D204002 */   daddu     $a0, $s2, $zero
    /* 126E5C 00225EDC 21883002 */  addu       $s1, $s1, $s0
    /* 126E60 00225EE0 2D208002 */  daddu      $a0, $s4, $zero
    /* 126E64 00225EE4 1800228E */  lw         $v0, 0x18($s1)
    /* 126E68 00225EE8 2D28A003 */  daddu      $a1, $sp, $zero
    /* 126E6C 00225EEC 20E9070C */  jal        func_001FA480
    /* 126E70 00225EF0 0100502C */   sltiu     $s0, $v0, 0x1
    /* 126E74 00225EF4 04000016 */  bnez       $s0, .L00225F08
    /* 126E78 00225EF8 1D00023C */   lui       $v0, %hi(D_001D6160)
    /* 126E7C 00225EFC DE53080C */  jal        func_00214F78
    /* 126E80 00225F00 2D208002 */   daddu     $a0, $s4, $zero
    /* 126E84 00225F04 1D00023C */  lui        $v0, %hi(D_001D6160)
.align 2
  .L00225F08:
    /* 126E88 00225F08 2D204002 */  daddu      $a0, $s2, $zero
    /* 126E8C 00225F0C 60615124 */  addiu      $s1, $v0, %lo(D_001D6160)
    /* 126E90 00225F10 BA3B080C */  jal        func_0020EEE8
    /* 126E94 00225F14 2DA00000 */   daddu     $s4, $zero, $zero
    /* 126E98 00225F18 01002292 */  lbu        $v0, 0x1($s1)
    /* 126E9C 00225F1C 04004010 */  beqz       $v0, .L00225F30
    /* 126EA0 00225F20 2D206002 */   daddu     $a0, $s3, $zero
    /* 126EA4 00225F24 01001424 */  addiu      $s4, $zero, 0x1
    /* 126EA8 00225F28 7636080C */  jal        func_0020D9D8
    /* 126EAC 00225F2C 2D282002 */   daddu     $a1, $s1, $zero
.align 2
  .L00225F30:
    /* 126EB0 00225F30 0E000012 */  beqz       $s0, .L00225F6C
    /* 126EB4 00225F34 1800103C */   lui       $s0, %hi(D_001864D0)
    /* 126EB8 00225F38 1800043C */  lui        $a0, %hi(D_001864D0)
    /* 126EBC 00225F3C D0641026 */  addiu      $s0, $s0, %lo(D_001864D0)
    /* 126EC0 00225F40 2400468E */  lw         $a2, 0x24($s2)
    /* 126EC4 00225F44 D0648424 */  addiu      $a0, $a0, %lo(D_001864D0)
    /* 126EC8 00225F48 2D280002 */  daddu      $a1, $s0, $zero
    /* 126ECC 00225F4C 2D380000 */  daddu      $a3, $zero, $zero
    /* 126ED0 00225F50 00A6070C */  jal        func_001E9800
    /* 126ED4 00225F54 2D406002 */   daddu     $t0, $s3, $zero
    /* 126ED8 00225F58 6C0050AE */  sw         $s0, 0x6C($s2)
    /* 126EDC 00225F5C 500040AE */  sw         $zero, 0x50($s2)
    /* 126EE0 00225F60 680050AE */  sw         $s0, 0x68($s2)
    /* 126EE4 00225F64 540040AE */  sw         $zero, 0x54($s2)
    /* 126EE8 00225F68 580040AE */  sw         $zero, 0x58($s2)
.align 2
  .L00225F6C:
    /* 126EEC 00225F6C 07008012 */  beqz       $s4, .L00225F8C
    /* 126EF0 00225F70 2D206002 */   daddu     $a0, $s3, $zero
    /* 126EF4 00225F74 2D280000 */  daddu      $a1, $zero, $zero
    /* 126EF8 00225F78 5836080C */  jal        func_0020D960
    /* 126EFC 00225F7C 2D302002 */   daddu     $a2, $s1, $zero
    /* 126F00 00225F80 280020AE */  sw         $zero, 0x28($s1)
    /* 126F04 00225F84 200020AE */  sw         $zero, 0x20($s1)
    /* 126F08 00225F88 240020AE */  sw         $zero, 0x24($s1)
.align 2
  .L00225F8C:
    /* 126F0C 00225F8C B000BF7B */  lq         $ra, 0xB0($sp)
    /* 126F10 00225F90 A000B67B */  lq         $s6, 0xA0($sp)
    /* 126F14 00225F94 9000B57B */  lq         $s5, 0x90($sp)
    /* 126F18 00225F98 8000B47B */  lq         $s4, 0x80($sp)
    /* 126F1C 00225F9C 7000B37B */  lq         $s3, 0x70($sp)
    /* 126F20 00225FA0 6000B27B */  lq         $s2, 0x60($sp)
    /* 126F24 00225FA4 5000B17B */  lq         $s1, 0x50($sp)
    /* 126F28 00225FA8 4000B07B */  lq         $s0, 0x40($sp)
    /* 126F2C 00225FAC 0800E003 */  jr         $ra
    /* 126F30 00225FB0 C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_00225E00
    /* 126F34 00225FB4 00000000 */  nop
