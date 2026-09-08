.align 3
nonmatching func_00116D30, 0x238

glabel func_00116D30
    /* 17CB0 00116D30 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 17CB4 00116D34 1500023C */  lui        $v0, %hi(D_00152301)
    /* 17CB8 00116D38 0400A5AF */  sw         $a1, 0x4($sp)
    /* 17CBC 00116D3C 3000B2FF */  sd         $s2, 0x30($sp)
    /* 17CC0 00116D40 01234524 */  addiu      $a1, $v0, %lo(D_00152301)
    /* 17CC4 00116D44 9000BEFF */  sd         $fp, 0x90($sp)
    /* 17CC8 00116D48 4000B3FF */  sd         $s3, 0x40($sp)
    /* 17CCC 00116D4C 2DF00000 */  daddu      $fp, $zero, $zero
    /* 17CD0 00116D50 A000BFFF */  sd         $ra, 0xA0($sp)
    /* 17CD4 00116D54 2D98E000 */  daddu      $s3, $a3, $zero
    /* 17CD8 00116D58 8000B7FF */  sd         $s7, 0x80($sp)
    /* 17CDC 00116D5C 7000B6FF */  sd         $s6, 0x70($sp)
    /* 17CE0 00116D60 6000B5FF */  sd         $s5, 0x60($sp)
    /* 17CE4 00116D64 5000B4FF */  sd         $s4, 0x50($sp)
    /* 17CE8 00116D68 2000B1FF */  sd         $s1, 0x20($sp)
    /* 17CEC 00116D6C 1000B0FF */  sd         $s0, 0x10($sp)
    /* 17CF0 00116D70 0000A4AF */  sw         $a0, 0x0($sp)
    /* 17CF4 00116D74 0800A6AF */  sw         $a2, 0x8($sp)
    /* 17CF8 00116D78 0400B28F */  lw         $s2, 0x4($sp)
    /* 17CFC 00116D7C 00000000 */  nop
.align 2
  .L00116D80:
    /* 17D00 00116D80 00005182 */  lb         $s1, 0x0($s2)
    /* 17D04 00116D84 01005226 */  addiu      $s2, $s2, 0x1
    /* 17D08 00116D88 21182502 */  addu       $v1, $s1, $a1
    /* 17D0C 00116D8C 00006290 */  lbu        $v0, 0x0($v1)
    /* 17D10 00116D90 08004230 */  andi       $v0, $v0, 0x8
    /* 17D14 00116D94 FAFF4014 */  bnez       $v0, .L00116D80
    /* 17D18 00116D98 00000000 */   nop
    /* 17D1C 00116D9C 2D000224 */  addiu      $v0, $zero, 0x2D
    /* 17D20 00116DA0 04002216 */  bne        $s1, $v0, .L00116DB4
    /* 17D24 00116DA4 2B000224 */   addiu     $v0, $zero, 0x2B
    /* 17D28 00116DA8 00005182 */  lb         $s1, 0x0($s2)
    /* 17D2C 00116DAC 04000010 */  b          .L00116DC0
    /* 17D30 00116DB0 01001E24 */   addiu     $fp, $zero, 0x1
.align 2
  .L00116DB4:
    /* 17D34 00116DB4 03002216 */  bne        $s1, $v0, .L00116DC4
    /* 17D38 00116DB8 00000000 */   nop
    /* 17D3C 00116DBC 00005182 */  lb         $s1, 0x0($s2)
.align 2
  .L00116DC0:
    /* 17D40 00116DC0 01005226 */  addiu      $s2, $s2, 0x1
.align 2
  .L00116DC4:
    /* 17D44 00116DC4 03006012 */  beqz       $s3, .L00116DD4
    /* 17D48 00116DC8 10000224 */   addiu     $v0, $zero, 0x10
    /* 17D4C 00116DCC 0C006216 */  bne        $s3, $v0, .L00116E00
    /* 17D50 00116DD0 00000000 */   nop
.align 2
  .L00116DD4:
    /* 17D54 00116DD4 30000224 */  addiu      $v0, $zero, 0x30
    /* 17D58 00116DD8 09002216 */  bne        $s1, $v0, .L00116E00
    /* 17D5C 00116DDC 78000224 */   addiu     $v0, $zero, 0x78
    /* 17D60 00116DE0 00004382 */  lb         $v1, 0x0($s2)
    /* 17D64 00116DE4 03006210 */  beq        $v1, $v0, .L00116DF4
    /* 17D68 00116DE8 58000224 */   addiu     $v0, $zero, 0x58
    /* 17D6C 00116DEC 04006214 */  bne        $v1, $v0, .L00116E00
    /* 17D70 00116DF0 00000000 */   nop
.align 2
  .L00116DF4:
    /* 17D74 00116DF4 01005182 */  lb         $s1, 0x1($s2)
    /* 17D78 00116DF8 10001324 */  addiu      $s3, $zero, 0x10
    /* 17D7C 00116DFC 02005226 */  addiu      $s2, $s2, 0x2
.align 2
  .L00116E00:
    /* 17D80 00116E00 04006016 */  bnez       $s3, .L00116E14
    /* 17D84 00116E04 08000324 */   addiu     $v1, $zero, 0x8
    /* 17D88 00116E08 0A001324 */  addiu      $s3, $zero, 0xA
    /* 17D8C 00116E0C 3000223A */  xori       $v0, $s1, 0x30
    /* 17D90 00116E10 0A986200 */  movz       $s3, $v1, $v0
.align 2
  .L00116E14:
    /* 17D94 00116E14 00800234 */  ori        $v0, $zero, 0x8000
    /* 17D98 00116E18 3C140200 */  dsll32     $v0, $v0, 16
    /* 17D9C 00116E1C FFFF1424 */  addiu      $s4, $zero, -0x1
    /* 17DA0 00116E20 7AA01400 */  dsrl       $s4, $s4, 1
    /* 17DA4 00116E24 0BA05E00 */  movn       $s4, $v0, $fp
    /* 17DA8 00116E28 2D806002 */  daddu      $s0, $s3, $zero
    /* 17DAC 00116E2C 2D208002 */  daddu      $a0, $s4, $zero
    /* 17DB0 00116E30 3E7D040C */  jal        func_0011F4F8
    /* 17DB4 00116E34 2D280002 */   daddu     $a1, $s0, $zero
    /* 17DB8 00116E38 2DB80002 */  daddu      $s7, $s0, $zero
    /* 17DBC 00116E3C 2D208002 */  daddu      $a0, $s4, $zero
    /* 17DC0 00116E40 2D280002 */  daddu      $a1, $s0, $zero
    /* 17DC4 00116E44 3CB00200 */  dsll32     $s6, $v0, 0
    /* 17DC8 00116E48 3FB01600 */  dsra32     $s6, $s6, 0
    /* 17DCC 00116E4C CA7B040C */  jal        func_0011EF28
    /* 17DD0 00116E50 2DA80000 */   daddu     $s5, $zero, $zero
    /* 17DD4 00116E54 1500033C */  lui        $v1, %hi(D_00152301)
    /* 17DD8 00116E58 2DA04000 */  daddu      $s4, $v0, $zero
    /* 17DDC 00116E5C 01237024 */  addiu      $s0, $v1, %lo(D_00152301)
    /* 17DE0 00116E60 14000010 */  b          .L00116EB4
    /* 17DE4 00116E64 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L00116E68:
    /* 17DE8 00116E68 2A103302 */  slt        $v0, $s1, $s3
    /* 17DEC 00116E6C 1E004010 */  beqz       $v0, .L00116EE8
    /* 17DF0 00116E70 00000000 */   nop
    /* 17DF4 00116E74 0800A006 */  bltz       $s5, .L00116E98
    /* 17DF8 00116E78 2B108402 */   sltu      $v0, $s4, $a0
    /* 17DFC 00116E7C 0B004054 */  bnel       $v0, $zero, .L00116EAC
    /* 17E00 00116E80 FFFF1524 */   addiu     $s5, $zero, -0x1
    /* 17E04 00116E84 06009414 */  bne        $a0, $s4, .L00116EA0
    /* 17E08 00116E88 2D28E002 */   daddu     $a1, $s7, $zero
    /* 17E0C 00116E8C 2A10D102 */  slt        $v0, $s6, $s1
    /* 17E10 00116E90 03004010 */  beqz       $v0, .L00116EA0
    /* 17E14 00116E94 00000000 */   nop
.align 2
  .L00116E98:
    /* 17E18 00116E98 04000010 */  b          .L00116EAC
    /* 17E1C 00116E9C FFFF1524 */   addiu     $s5, $zero, -0x1
.align 2
  .L00116EA0:
    /* 17E20 00116EA0 B27B040C */  jal        func_0011EEC8
    /* 17E24 00116EA4 01001524 */   addiu     $s5, $zero, 0x1
    /* 17E28 00116EA8 2D202202 */  daddu      $a0, $s1, $v0
.align 2
  .L00116EAC:
    /* 17E2C 00116EAC 00005182 */  lb         $s1, 0x0($s2)
    /* 17E30 00116EB0 01005226 */  addiu      $s2, $s2, 0x1
.align 2
  .L00116EB4:
    /* 17E34 00116EB4 21103002 */  addu       $v0, $s1, $s0
    /* 17E38 00116EB8 00004590 */  lbu        $a1, 0x0($v0)
    /* 17E3C 00116EBC 0400A330 */  andi       $v1, $a1, 0x4
    /* 17E40 00116EC0 03006010 */  beqz       $v1, .L00116ED0
    /* 17E44 00116EC4 0300A230 */   andi      $v0, $a1, 0x3
    /* 17E48 00116EC8 E7FF0010 */  b          .L00116E68
    /* 17E4C 00116ECC D0FF3126 */   addiu     $s1, $s1, -0x30
.align 2
  .L00116ED0:
    /* 17E50 00116ED0 05004010 */  beqz       $v0, .L00116EE8
    /* 17E54 00116ED4 A9FF2326 */   addiu     $v1, $s1, -0x57
    /* 17E58 00116ED8 0100A230 */  andi       $v0, $a1, 0x1
    /* 17E5C 00116EDC C9FF3126 */  addiu      $s1, $s1, -0x37
    /* 17E60 00116EE0 E1FF0010 */  b          .L00116E68
    /* 17E64 00116EE4 0A886200 */   movz      $s1, $v1, $v0
.align 2
  .L00116EE8:
    /* 17E68 00116EE8 0A00A106 */  bgez       $s5, .L00116F14
    /* 17E6C 00116EEC 2F100400 */   dsubu     $v0, $zero, $a0
    /* 17E70 00116EF0 00800234 */  ori        $v0, $zero, 0x8000
    /* 17E74 00116EF4 3C140200 */  dsll32     $v0, $v0, 16
    /* 17E78 00116EF8 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 17E7C 00116EFC 7A200400 */  dsrl       $a0, $a0, 1
    /* 17E80 00116F00 0B205E00 */  movn       $a0, $v0, $fp
    /* 17E84 00116F04 22000324 */  addiu      $v1, $zero, 0x22
    /* 17E88 00116F08 0000A28F */  lw         $v0, 0x0($sp)
    /* 17E8C 00116F0C 02000010 */  b          .L00116F18
    /* 17E90 00116F10 000043AC */   sw        $v1, 0x0($v0)
.align 2
  .L00116F14:
    /* 17E94 00116F14 0B205E00 */  movn       $a0, $v0, $fp
.align 2
  .L00116F18:
    /* 17E98 00116F18 0800A38F */  lw         $v1, 0x8($sp)
    /* 17E9C 00116F1C 05006010 */  beqz       $v1, .L00116F34
    /* 17EA0 00116F20 0400A38F */   lw        $v1, 0x4($sp)
    /* 17EA4 00116F24 FFFF4226 */  addiu      $v0, $s2, -0x1
    /* 17EA8 00116F28 0A107500 */  movz       $v0, $v1, $s5
    /* 17EAC 00116F2C 0800A38F */  lw         $v1, 0x8($sp)
    /* 17EB0 00116F30 000062AC */  sw         $v0, 0x0($v1)
.align 2
  .L00116F34:
    /* 17EB4 00116F34 A000BFDF */  ld         $ra, 0xA0($sp)
    /* 17EB8 00116F38 2D108000 */  daddu      $v0, $a0, $zero
    /* 17EBC 00116F3C 9000BEDF */  ld         $fp, 0x90($sp)
    /* 17EC0 00116F40 8000B7DF */  ld         $s7, 0x80($sp)
    /* 17EC4 00116F44 7000B6DF */  ld         $s6, 0x70($sp)
    /* 17EC8 00116F48 6000B5DF */  ld         $s5, 0x60($sp)
    /* 17ECC 00116F4C 5000B4DF */  ld         $s4, 0x50($sp)
    /* 17ED0 00116F50 4000B3DF */  ld         $s3, 0x40($sp)
    /* 17ED4 00116F54 3000B2DF */  ld         $s2, 0x30($sp)
    /* 17ED8 00116F58 2000B1DF */  ld         $s1, 0x20($sp)
    /* 17EDC 00116F5C 1000B0DF */  ld         $s0, 0x10($sp)
    /* 17EE0 00116F60 0800E003 */  jr         $ra
    /* 17EE4 00116F64 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_00116D30
