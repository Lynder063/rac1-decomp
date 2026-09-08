.align 3
nonmatching func_00216D88, 0x168

glabel func_00216D88
    /* 117D08 00216D88 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 117D0C 00216D8C 1500023C */  lui        $v0, %hi(D_001517D0)
    /* 117D10 00216D90 2000B27F */  sq         $s2, 0x20($sp)
    /* 117D14 00216D94 FFFF033C */  lui        $v1, (0xFFFFFFFF >> 16)
    /* 117D18 00216D98 3000BF7F */  sq         $ra, 0x30($sp)
    /* 117D1C 00216D9C 2D904000 */  daddu      $s2, $v0, $zero
    /* 117D20 00216DA0 1000B17F */  sq         $s1, 0x10($sp)
    /* 117D24 00216DA4 D0174224 */  addiu      $v0, $v0, %lo(D_001517D0)
    /* 117D28 00216DA8 0000B07F */  sq         $s0, 0x0($sp)
    /* 117D2C 00216DAC FFFF6334 */  ori        $v1, $v1, (0xFFFFFFFF & 0xFFFF)
    /* 117D30 00216DB0 3400448C */  lw         $a0, 0x34($v0)
    /* 117D34 00216DB4 0B008314 */  bne        $a0, $v1, .L00216DE4
    /* 117D38 00216DB8 D0174426 */   addiu     $a0, $s2, %lo(D_001517D0)
    /* 117D3C 00216DBC FFFF103C */  lui        $s0, (0xFFFFFFFF >> 16)
    /* 117D40 00216DC0 2D884000 */  daddu      $s1, $v0, $zero
    /* 117D44 00216DC4 FFFF1036 */  ori        $s0, $s0, (0xFFFFFFFF & 0xFFFF)
.align 2
  .L00216DC8:
    /* 117D48 00216DC8 70B7040C */  jal        func_0012DDC0
    /* 117D4C 00216DCC 00000000 */   nop
    /* 117D50 00216DD0 3400238E */  lw         $v1, 0x34($s1)
    /* 117D54 00216DD4 00000000 */  nop
    /* 117D58 00216DD8 00000000 */  nop
    /* 117D5C 00216DDC FAFF7010 */  beq        $v1, $s0, .L00216DC8
    /* 117D60 00216DE0 D0174426 */   addiu     $a0, $s2, %lo(D_001517D0)
.align 2
  .L00216DE4:
    /* 117D64 00216DE4 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 117D68 00216DE8 6C00838C */  lw         $v1, 0x6C($a0)
    /* 117D6C 00216DEC FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 117D70 00216DF0 0C006254 */  bnel       $v1, $v0, .L00216E24
    /* 117D74 00216DF4 D0174426 */   addiu     $a0, $s2, %lo(D_001517D0)
    /* 117D78 00216DF8 FFFF103C */  lui        $s0, (0xFFFFFFFF >> 16)
    /* 117D7C 00216DFC 2D888000 */  daddu      $s1, $a0, $zero
    /* 117D80 00216E00 FFFF1036 */  ori        $s0, $s0, (0xFFFFFFFF & 0xFFFF)
    /* 117D84 00216E04 00000000 */  nop
.align 2
  .L00216E08:
    /* 117D88 00216E08 70B7040C */  jal        func_0012DDC0
    /* 117D8C 00216E0C 00000000 */   nop
    /* 117D90 00216E10 6C00238E */  lw         $v1, 0x6C($s1)
    /* 117D94 00216E14 00000000 */  nop
    /* 117D98 00216E18 00000000 */  nop
    /* 117D9C 00216E1C FAFF7010 */  beq        $v1, $s0, .L00216E08
    /* 117DA0 00216E20 D0174426 */   addiu     $a0, $s2, %lo(D_001517D0)
.align 2
  .L00216E24:
    /* 117DA4 00216E24 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 117DA8 00216E28 5000838C */  lw         $v1, 0x50($a0)
    /* 117DAC 00216E2C FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 117DB0 00216E30 0C006214 */  bne        $v1, $v0, .L00216E64
    /* 117DB4 00216E34 00000000 */   nop
    /* 117DB8 00216E38 FFFF103C */  lui        $s0, (0xFFFFFFFF >> 16)
    /* 117DBC 00216E3C 2D888000 */  daddu      $s1, $a0, $zero
    /* 117DC0 00216E40 FFFF1036 */  ori        $s0, $s0, (0xFFFFFFFF & 0xFFFF)
    /* 117DC4 00216E44 00000000 */  nop
.align 2
  .L00216E48:
    /* 117DC8 00216E48 70B7040C */  jal        func_0012DDC0
    /* 117DCC 00216E4C 00000000 */   nop
    /* 117DD0 00216E50 5000238E */  lw         $v1, 0x50($s1)
    /* 117DD4 00216E54 00000000 */  nop
    /* 117DD8 00216E58 00000000 */  nop
    /* 117DDC 00216E5C FAFF7010 */  beq        $v1, $s0, .L00216E48
    /* 117DE0 00216E60 00000000 */   nop
.align 2
  .L00216E64:
    /* 117DE4 00216E64 44BB040C */  jal        func_0012ED10
    /* 117DE8 00216E68 00000000 */   nop
    /* 117DEC 00216E6C 00000000 */  nop
.align 2
  .L00216E70:
    /* 117DF0 00216E70 70B7040C */  jal        func_0012DDC0
    /* 117DF4 00216E74 00000000 */   nop
    /* 117DF8 00216E78 00000000 */  nop
    /* 117DFC 00216E7C 00000000 */  nop
    /* 117E00 00216E80 00000000 */  nop
    /* 117E04 00216E84 FAFF4014 */  bnez       $v0, .L00216E70
    /* 117E08 00216E88 00000000 */   nop
    /* 117E0C 00216E8C 9CBB040C */  jal        func_0012EE70
    /* 117E10 00216E90 01000424 */   addiu     $a0, $zero, 0x1
    /* 117E14 00216E94 D0174226 */  addiu      $v0, $s2, %lo(D_001517D0)
    /* 117E18 00216E98 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 117E1C 00216E9C 22004380 */  lb         $v1, 0x22($v0)
    /* 117E20 00216EA0 3E0040A4 */  sh         $zero, 0x3E($v0)
    /* 117E24 00216EA4 3C0040A4 */  sh         $zero, 0x3C($v0)
    /* 117E28 00216EA8 02006410 */  beq        $v1, $a0, .L00216EB4
    /* 117E2C 00216EAC 340040AC */   sw        $zero, 0x34($v0)
    /* 117E30 00216EB0 380043A4 */  sh         $v1, 0x38($v0)
.align 2
  .L00216EB4:
    /* 117E34 00216EB4 3000BF7B */  lq         $ra, 0x30($sp)
    /* 117E38 00216EB8 2000B27B */  lq         $s2, 0x20($sp)
    /* 117E3C 00216EBC 1000B17B */  lq         $s1, 0x10($sp)
    /* 117E40 00216EC0 0000B07B */  lq         $s0, 0x0($sp)
    /* 117E44 00216EC4 230044A0 */  sb         $a0, 0x23($v0)
    /* 117E48 00216EC8 5A0040A4 */  sh         $zero, 0x5A($v0)
    /* 117E4C 00216ECC 580040A4 */  sh         $zero, 0x58($v0)
    /* 117E50 00216ED0 500040AC */  sw         $zero, 0x50($v0)
    /* 117E54 00216ED4 760040A4 */  sh         $zero, 0x76($v0)
    /* 117E58 00216ED8 740040A4 */  sh         $zero, 0x74($v0)
    /* 117E5C 00216EDC 6C0040AC */  sw         $zero, 0x6C($v0)
    /* 117E60 00216EE0 200040A4 */  sh         $zero, 0x20($v0)
    /* 117E64 00216EE4 220044A0 */  sb         $a0, 0x22($v0)
    /* 117E68 00216EE8 0800E003 */  jr         $ra
    /* 117E6C 00216EEC 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_00216D88
