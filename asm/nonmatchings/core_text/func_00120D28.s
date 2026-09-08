.align 3
nonmatching func_00120D28, 0x170

glabel func_00120D28
    /* 21CA8 00120D28 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 21CAC 00120D2C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 21CB0 00120D30 0000B0FF */  sd         $s0, 0x0($sp)
    /* 21CB4 00120D34 2D888000 */  daddu      $s1, $a0, $zero
    /* 21CB8 00120D38 3000BFFF */  sd         $ra, 0x30($sp)
    /* 21CBC 00120D3C 1300103C */  lui        $s0, %hi(D_001313E8)
    /* 21CC0 00120D40 CA82040C */  jal        func_00120B28
    /* 21CC4 00120D44 2000B2FF */   sd        $s2, 0x20($sp)
    /* 21CC8 00120D48 E813048E */  lw         $a0, %lo(D_001313E8)($s0)
    /* 21CCC 00120D4C 3063040C */  jal        func_00118CC0
    /* 21CD0 00120D50 00000000 */   nop
    /* 21CD4 00120D54 E813038E */  lw         $v1, %lo(D_001313E8)($s0)
    /* 21CD8 00120D58 0B006210 */  beq        $v1, $v0, .L00120D88
    /* 21CDC 00120D5C 1300023C */   lui       $v0, %hi(D_001313D0)
    /* 21CE0 00120D60 D013438C */  lw         $v1, %lo(D_001313D0)($v0)
    /* 21CE4 00120D64 16006018 */  blez       $v1, .L00120DC0
    /* 21CE8 00120D68 1300023C */   lui       $v0, %hi(D_001313DC)
    /* 21CEC 00120D6C 1500043C */  lui        $a0, %hi(D_00152FB0)
    /* 21CF0 00120D70 DC13468C */  lw         $a2, %lo(D_001313DC)($v0)
    /* 21CF4 00120D74 B02F8424 */  addiu      $a0, $a0, %lo(D_00152FB0)
    /* 21CF8 00120D78 B269040C */  jal        func_0011A6C8
    /* 21CFC 00120D7C 2D282002 */   daddu     $a1, $s1, $zero
    /* 21D00 00120D80 3F000010 */  b          .L00120E80
    /* 21D04 00120D84 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00120D88:
    /* 21D08 00120D88 1600023C */  lui        $v0, %hi(D_00159850)
    /* 21D0C 00120D8C 1300033C */  lui        $v1, %hi(D_001313DC)
    /* 21D10 00120D90 5098448C */  lw         $a0, %lo(D_00159850)($v0)
    /* 21D14 00120D94 1600053C */  lui        $a1, %hi(D_00159858)
    /* 21D18 00120D98 DC1371AC */  sw         $s1, %lo(D_001313DC)($v1)
    /* 21D1C 00120D9C FC62040C */  jal        func_00118BF0
    /* 21D20 00120DA0 5898A524 */   addiu     $a1, $a1, %lo(D_00159858)
    /* 21D24 00120DA4 CC83040C */  jal        func_00120F30
    /* 21D28 00120DA8 01000424 */   addiu     $a0, $zero, 0x1
    /* 21D2C 00120DAC 06004010 */  beqz       $v0, .L00120DC8
    /* 21D30 00120DB0 2D200000 */   daddu     $a0, $zero, $zero
    /* 21D34 00120DB4 E813048E */  lw         $a0, %lo(D_001313E8)($s0)
    /* 21D38 00120DB8 2463040C */  jal        func_00118C90
    /* 21D3C 00120DBC 00000000 */   nop
.align 2
  .L00120DC0:
    /* 21D40 00120DC0 2F000010 */  b          .L00120E80
    /* 21D44 00120DC4 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00120DC8:
    /* 21D48 00120DC8 886B040C */  jal        func_0011AE20
    /* 21D4C 00120DCC 1300123C */   lui       $s2, %hi(D_001313F8)
    /* 21D50 00120DD0 F813428E */  lw         $v0, %lo(D_001313F8)($s2)
    /* 21D54 00120DD4 2A004104 */  bgez       $v0, .L00120E80
    /* 21D58 00120DD8 01000224 */   addiu     $v0, $zero, 0x1
    /* 21D5C 00120DDC 0B000010 */  b          .L00120E0C
    /* 21D60 00120DE0 1300113C */   lui       $s1, %hi(D_00132590)
    /* 21D64 00120DE4 00000000 */  nop
.align 2
  .L00120DE8:
    /* 21D68 00120DE8 1000023C */  lui        $v0, %hi(D_FFFFF)
    /* 21D6C 00120DEC FFFF0324 */  addiu      $v1, $zero, -0x1
.align 2
  .L00120DF0:
    /* 21D70 00120DF0 FFFF4224 */  addiu      $v0, $v0, %lo(D_FFFFF)
    /* 21D74 00120DF4 00000000 */  nop
    /* 21D78 00120DF8 00000000 */  nop
    /* 21D7C 00120DFC 00000000 */  nop
    /* 21D80 00120E00 00000000 */  nop
    /* 21D84 00120E04 FAFF4314 */  bne        $v0, $v1, .L00120DF0
    /* 21D88 00120E08 00000000 */   nop
.align 2
  .L00120E0C:
    /* 21D8C 00120E0C 90253026 */  addiu      $s0, $s1, %lo(D_00132590)
.align 2
  .L00120E10:
    /* 21D90 00120E10 0080053C */  lui        $a1, (0x80000595 >> 16)
    /* 21D94 00120E14 2D200002 */  daddu      $a0, $s0, $zero
    /* 21D98 00120E18 9505A534 */  ori        $a1, $a1, (0x80000595 & 0xFFFF)
    /* 21D9C 00120E1C BE6C040C */  jal        func_0011B2F8
    /* 21DA0 00120E20 2D300000 */   daddu     $a2, $zero, $zero
    /* 21DA4 00120E24 13004304 */  bgezl      $v0, .L00120E74
    /* 21DA8 00120E28 2400028E */   lw        $v0, 0x24($s0)
    /* 21DAC 00120E2C 1300023C */  lui        $v0, %hi(D_001313D0)
    /* 21DB0 00120E30 D013438C */  lw         $v1, %lo(D_001313D0)($v0)
    /* 21DB4 00120E34 05006018 */  blez       $v1, .L00120E4C
    /* 21DB8 00120E38 1000023C */   lui       $v0, %hi(D_FFFFF)
    /* 21DBC 00120E3C 1500043C */  lui        $a0, %hi(D_00152FD8)
    /* 21DC0 00120E40 B269040C */  jal        func_0011A6C8
    /* 21DC4 00120E44 D82F8424 */   addiu     $a0, $a0, %lo(D_00152FD8)
    /* 21DC8 00120E48 1000023C */  lui        $v0, (0x100000 >> 16)
.align 2
  .L00120E4C:
    /* 21DCC 00120E4C FFFF0324 */  addiu      $v1, $zero, -0x1
.align 2
  .L00120E50:
    /* 21DD0 00120E50 FFFF4224 */  addiu      $v0, $v0, %lo(D_FFFFF)
    /* 21DD4 00120E54 00000000 */  nop
    /* 21DD8 00120E58 00000000 */  nop
    /* 21DDC 00120E5C 00000000 */  nop
    /* 21DE0 00120E60 00000000 */  nop
    /* 21DE4 00120E64 FAFF4314 */  bne        $v0, $v1, .L00120E50
    /* 21DE8 00120E68 00000000 */   nop
    /* 21DEC 00120E6C E8FF0010 */  b          .L00120E10
    /* 21DF0 00120E70 90253026 */   addiu     $s0, $s1, %lo(D_00132590)
.align 2
  .L00120E74:
    /* 21DF4 00120E74 DCFF4010 */  beqz       $v0, .L00120DE8
    /* 21DF8 00120E78 01000224 */   addiu     $v0, $zero, 0x1
    /* 21DFC 00120E7C F81340AE */  sw         $zero, %lo(D_001313F8)($s2)
.align 2
  .L00120E80:
    /* 21E00 00120E80 3000BFDF */  ld         $ra, 0x30($sp)
    /* 21E04 00120E84 2000B2DF */  ld         $s2, 0x20($sp)
    /* 21E08 00120E88 1000B1DF */  ld         $s1, 0x10($sp)
    /* 21E0C 00120E8C 0000B0DF */  ld         $s0, 0x0($sp)
    /* 21E10 00120E90 0800E003 */  jr         $ra
    /* 21E14 00120E94 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_00120D28
