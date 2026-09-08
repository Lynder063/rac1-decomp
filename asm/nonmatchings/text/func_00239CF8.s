.align 3
nonmatching func_00239CF8, 0x524

glabel func_00239CF8
    /* 13AC78 00239CF8 80FEBD27 */  addiu      $sp, $sp, -0x180
    /* 13AC7C 00239CFC 00020624 */  addiu      $a2, $zero, 0x200
    /* 13AC80 00239D00 3001B37F */  sq         $s3, 0x130($sp)
    /* 13AC84 00239D04 80000724 */  addiu      $a3, $zero, 0x80
    /* 13AC88 00239D08 1001B17F */  sq         $s1, 0x110($sp)
    /* 13AC8C 00239D0C 00020824 */  addiu      $t0, $zero, 0x200
    /* 13AC90 00239D10 7001BF7F */  sq         $ra, 0x170($sp)
    /* 13AC94 00239D14 80000924 */  addiu      $t1, $zero, 0x80
    /* 13AC98 00239D18 6001B67F */  sq         $s6, 0x160($sp)
    /* 13AC9C 00239D1C 2D500000 */  daddu      $t2, $zero, $zero
    /* 13ACA0 00239D20 5001B57F */  sq         $s5, 0x150($sp)
    /* 13ACA4 00239D24 2D200000 */  daddu      $a0, $zero, $zero
    /* 13ACA8 00239D28 4001B47F */  sq         $s4, 0x140($sp)
    /* 13ACAC 00239D2C 2D280000 */  daddu      $a1, $zero, $zero
    /* 13ACB0 00239D30 2001B27F */  sq         $s2, 0x120($sp)
    /* 13ACB4 00239D34 14001324 */  addiu      $s3, $zero, 0x14
    /* 13ACB8 00239D38 AEEE070C */  jal        func_001FBAB8
    /* 13ACBC 00239D3C 0001B07F */   sq        $s0, 0x100($sp)
    /* 13ACC0 00239D40 1E00023C */  lui        $v0, %hi(D_001E66C0)
    /* 13ACC4 00239D44 01000524 */  addiu      $a1, $zero, 0x1
    /* 13ACC8 00239D48 C0665124 */  addiu      $s1, $v0, %lo(D_001E66C0)
    /* 13ACCC 00239D4C 2000248E */  lw         $a0, 0x20($s1)
    /* 13ACD0 00239D50 6038080C */  jal        func_0020E180
    /* 13ACD4 00239D54 00018424 */   addiu     $a0, $a0, 0x100
    /* 13ACD8 00239D58 2000248E */  lw         $a0, 0x20($s1)
    /* 13ACDC 00239D5C 6038080C */  jal        func_0020E180
    /* 13ACE0 00239D60 01000524 */   addiu     $a1, $zero, 0x1
    /* 13ACE4 00239D64 5800238E */  lw         $v1, 0x58($s1)
    /* 13ACE8 00239D68 01000424 */  addiu      $a0, $zero, 0x1
    /* 13ACEC 00239D6C 18307300 */  mult       $a2, $v1, $s3
    /* 13ACF0 00239D70 21102602 */  addu       $v0, $s1, $a2
    /* 13ACF4 00239D74 D400438C */  lw         $v1, 0xD4($v0)
    /* 13ACF8 00239D78 92006414 */  bne        $v1, $a0, .L00239FC4
    /* 13ACFC 00239D7C D0003426 */   addiu     $s4, $s1, 0xD0
    /* 13AD00 00239D80 4C000524 */  addiu      $a1, $zero, 0x4C
    /* 13AD04 00239D84 2120D400 */  addu       $a0, $a2, $s4
    /* 13AD08 00239D88 1800033C */  lui        $v1, %hi(D_001864D0)
    /* 13AD0C 00239D8C 0000828C */  lw         $v0, 0x0($a0)
    /* 13AD10 00239D90 D0646324 */  addiu      $v1, $v1, %lo(D_001864D0)
    /* 13AD14 00239D94 18001524 */  addiu      $s5, $zero, 0x18
    /* 13AD18 00239D98 18104500 */  mult       $v0, $v0, $a1
    /* 13AD1C 00239D9C 21104300 */  addu       $v0, $v0, $v1
    /* 13AD20 00239DA0 50F9070C */  jal        func_001FE540
    /* 13AD24 00239DA4 0000448C */   lw        $a0, 0x0($v0)
    /* 13AD28 00239DA8 2D384000 */  daddu      $a3, $v0, $zero
    /* 13AD2C 00239DAC 08000524 */  addiu      $a1, $zero, 0x8
    /* 13AD30 00239DB0 F0800634 */  ori        $a2, $zero, 0x80F0
    /* 13AD34 00239DB4 38340600 */  dsll       $a2, $a2, 16
    /* 13AD38 00239DB8 F0F0C634 */  ori        $a2, $a2, 0xF0F0
    /* 13AD3C 00239DBC FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 13AD40 00239DC0 5ADA070C */  jal        func_001F6968
    /* 13AD44 00239DC4 06000424 */   addiu     $a0, $zero, 0x6
    /* 13AD48 00239DC8 50F9070C */  jal        func_001FE540
    /* 13AD4C 00239DCC 5D4F0424 */   addiu     $a0, $zero, 0x4F5D
    /* 13AD50 00239DD0 2D384000 */  daddu      $a3, $v0, $zero
    /* 13AD54 00239DD4 F0800634 */  ori        $a2, $zero, 0x80F0
    /* 13AD58 00239DD8 38340600 */  dsll       $a2, $a2, 16
    /* 13AD5C 00239DDC F0F0C634 */  ori        $a2, $a2, 0xF0F0
    /* 13AD60 00239DE0 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 13AD64 00239DE4 18000424 */  addiu      $a0, $zero, 0x18
    /* 13AD68 00239DE8 5ADA070C */  jal        func_001F6968
    /* 13AD6C 00239DEC 18000524 */   addiu     $a1, $zero, 0x18
    /* 13AD70 00239DF0 5800238E */  lw         $v1, 0x58($s1)
    /* 13AD74 00239DF4 1E00023C */  lui        $v0, %hi(D_001E02B0)
    /* 13AD78 00239DF8 B0025224 */  addiu      $s2, $v0, %lo(D_001E02B0)
    /* 13AD7C 00239DFC 2D20A003 */  daddu      $a0, $sp, $zero
    /* 13AD80 00239E00 18107300 */  mult       $v0, $v1, $s3
    /* 13AD84 00239E04 21185400 */  addu       $v1, $v0, $s4
    /* 13AD88 00239E08 0000628C */  lw         $v0, 0x0($v1)
    /* 13AD8C 00239E0C 18105500 */  mult       $v0, $v0, $s5
    /* 13AD90 00239E10 21105200 */  addu       $v0, $v0, $s2
    /* 13AD94 00239E14 68E6080C */  jal        func_002399A0
    /* 13AD98 00239E18 08004594 */   lhu       $a1, 0x8($v0)
    /* 13AD9C 00239E1C 76000424 */  addiu      $a0, $zero, 0x76
    /* 13ADA0 00239E20 65000524 */  addiu      $a1, $zero, 0x65
    /* 13ADA4 00239E24 F0800634 */  ori        $a2, $zero, 0x80F0
    /* 13ADA8 00239E28 38340600 */  dsll       $a2, $a2, 16
    /* 13ADAC 00239E2C F0F0C634 */  ori        $a2, $a2, 0xF0F0
    /* 13ADB0 00239E30 2D38A003 */  daddu      $a3, $sp, $zero
    /* 13ADB4 00239E34 62DB070C */  jal        func_001F6D88
    /* 13ADB8 00239E38 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 13ADBC 00239E3C 4000228E */  lw         $v0, 0x40($s1)
    /* 13ADC0 00239E40 EC004010 */  beqz       $v0, .L0023A1F4
    /* 13ADC4 00239E44 2D20A003 */   daddu     $a0, $sp, $zero
    /* 13ADC8 00239E48 80D9070C */  jal        func_001F6600
    /* 13ADCC 00239E4C FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 13ADD0 00239E50 2D804000 */  daddu      $s0, $v0, $zero
    /* 13ADD4 00239E54 75000424 */  addiu      $a0, $zero, 0x75
    /* 13ADD8 00239E58 23209000 */  subu       $a0, $a0, $s0
    /* 13ADDC 00239E5C 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13ADE0 00239E60 7B000624 */  addiu      $a2, $zero, 0x7B
    /* 13ADE4 00239E64 70000724 */  addiu      $a3, $zero, 0x70
    /* 13ADE8 00239E68 9520083C */  lui        $t0, (0x20959544 >> 16)
    /* 13ADEC 00239E6C 44950835 */  ori        $t0, $t0, (0x20959544 & 0xFFFF)
    /* 13ADF0 00239E70 9005080C */  jal        func_00201640
    /* 13ADF4 00239E74 2D480000 */   daddu     $t1, $zero, $zero
    /* 13ADF8 00239E78 76000424 */  addiu      $a0, $zero, 0x76
    /* 13ADFC 00239E7C 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13AE00 00239E80 23209000 */  subu       $a0, $a0, $s0
    /* 13AE04 00239E84 7A000624 */  addiu      $a2, $zero, 0x7A
    /* 13AE08 00239E88 70000724 */  addiu      $a3, $zero, 0x70
    /* 13AE0C 00239E8C 9530083C */  lui        $t0, (0x30959544 >> 16)
    /* 13AE10 00239E90 44950835 */  ori        $t0, $t0, (0x30959544 & 0xFFFF)
    /* 13AE14 00239E94 9005080C */  jal        func_00201640
    /* 13AE18 00239E98 2D480000 */   daddu     $t1, $zero, $zero
    /* 13AE1C 00239E9C 77000424 */  addiu      $a0, $zero, 0x77
    /* 13AE20 00239EA0 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13AE24 00239EA4 23209000 */  subu       $a0, $a0, $s0
    /* 13AE28 00239EA8 79000624 */  addiu      $a2, $zero, 0x79
    /* 13AE2C 00239EAC 70000724 */  addiu      $a3, $zero, 0x70
    /* 13AE30 00239EB0 9540083C */  lui        $t0, (0x40959544 >> 16)
    /* 13AE34 00239EB4 44950835 */  ori        $t0, $t0, (0x40959544 & 0xFFFF)
    /* 13AE38 00239EB8 9005080C */  jal        func_00201640
    /* 13AE3C 00239EBC 2D480000 */   daddu     $t1, $zero, $zero
    /* 13AE40 00239EC0 78000424 */  addiu      $a0, $zero, 0x78
    /* 13AE44 00239EC4 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13AE48 00239EC8 23209000 */  subu       $a0, $a0, $s0
    /* 13AE4C 00239ECC 78000624 */  addiu      $a2, $zero, 0x78
    /* 13AE50 00239ED0 70000724 */  addiu      $a3, $zero, 0x70
    /* 13AE54 00239ED4 9550083C */  lui        $t0, (0x50959544 >> 16)
    /* 13AE58 00239ED8 44950835 */  ori        $t0, $t0, (0x50959544 & 0xFFFF)
    /* 13AE5C 00239EDC 9005080C */  jal        func_00201640
    /* 13AE60 00239EE0 2D480000 */   daddu     $t1, $zero, $zero
    /* 13AE64 00239EE4 79000424 */  addiu      $a0, $zero, 0x79
    /* 13AE68 00239EE8 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13AE6C 00239EEC 23209000 */  subu       $a0, $a0, $s0
    /* 13AE70 00239EF0 77000624 */  addiu      $a2, $zero, 0x77
    /* 13AE74 00239EF4 70000724 */  addiu      $a3, $zero, 0x70
    /* 13AE78 00239EF8 9560083C */  lui        $t0, (0x60959544 >> 16)
    /* 13AE7C 00239EFC 44950835 */  ori        $t0, $t0, (0x60959544 & 0xFFFF)
    /* 13AE80 00239F00 9005080C */  jal        func_00201640
    /* 13AE84 00239F04 2D480000 */   daddu     $t1, $zero, $zero
    /* 13AE88 00239F08 7A000424 */  addiu      $a0, $zero, 0x7A
    /* 13AE8C 00239F0C 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13AE90 00239F10 23209000 */  subu       $a0, $a0, $s0
    /* 13AE94 00239F14 76000624 */  addiu      $a2, $zero, 0x76
    /* 13AE98 00239F18 70000724 */  addiu      $a3, $zero, 0x70
    /* 13AE9C 00239F1C 9570083C */  lui        $t0, (0x70959544 >> 16)
    /* 13AEA0 00239F20 44950835 */  ori        $t0, $t0, (0x70959544 & 0xFFFF)
    /* 13AEA4 00239F24 9005080C */  jal        func_00201640
    /* 13AEA8 00239F28 2D480000 */   daddu     $t1, $zero, $zero
    /* 13AEAC 00239F2C 7B000424 */  addiu      $a0, $zero, 0x7B
    /* 13AEB0 00239F30 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13AEB4 00239F34 23209000 */  subu       $a0, $a0, $s0
    /* 13AEB8 00239F38 75000624 */  addiu      $a2, $zero, 0x75
    /* 13AEBC 00239F3C 70000724 */  addiu      $a3, $zero, 0x70
    /* 13AEC0 00239F40 95800834 */  ori        $t0, $zero, 0x8095
    /* 13AEC4 00239F44 38440800 */  dsll       $t0, $t0, 16
    /* 13AEC8 00239F48 44950835 */  ori        $t0, $t0, 0x9544
    /* 13AECC 00239F4C 9005080C */  jal        func_00201640
    /* 13AED0 00239F50 2D480000 */   daddu     $t1, $zero, $zero
    /* 13AED4 00239F54 4000228E */  lw         $v0, 0x40($s1)
    /* 13AED8 00239F58 08004010 */  beqz       $v0, .L00239F7C
    /* 13AEDC 00239F5C 5800228E */   lw        $v0, 0x58($s1)
    /* 13AEE0 00239F60 18185300 */  mult       $v1, $v0, $s3
    /* 13AEE4 00239F64 21107400 */  addu       $v0, $v1, $s4
    /* 13AEE8 00239F68 0000438C */  lw         $v1, 0x0($v0)
    /* 13AEEC 00239F6C 18107500 */  mult       $v0, $v1, $s5
    /* 13AEF0 00239F70 21185200 */  addu       $v1, $v0, $s2
    /* 13AEF4 00239F74 07000010 */  b          .L00239F94
    /* 13AEF8 00239F78 0A006594 */   lhu       $a1, 0xA($v1)
.align 2
  .L00239F7C:
    /* 13AEFC 00239F7C 18185300 */  mult       $v1, $v0, $s3
    /* 13AF00 00239F80 21107400 */  addu       $v0, $v1, $s4
    /* 13AF04 00239F84 0000438C */  lw         $v1, 0x0($v0)
    /* 13AF08 00239F88 18107500 */  mult       $v0, $v1, $s5
    /* 13AF0C 00239F8C 21185200 */  addu       $v1, $v0, $s2
    /* 13AF10 00239F90 08006594 */  lhu        $a1, 0x8($v1)
.align 2
  .L00239F94:
    /* 13AF14 00239F94 68E6080C */  jal        func_002399A0
    /* 13AF18 00239F98 2D20A003 */   daddu     $a0, $sp, $zero
    /* 13AF1C 00239F9C 76000424 */  addiu      $a0, $zero, 0x76
    /* 13AF20 00239FA0 55000524 */  addiu      $a1, $zero, 0x55
    /* 13AF24 00239FA4 F0800634 */  ori        $a2, $zero, 0x80F0
    /* 13AF28 00239FA8 38340600 */  dsll       $a2, $a2, 16
    /* 13AF2C 00239FAC F0F0C634 */  ori        $a2, $a2, 0xF0F0
    /* 13AF30 00239FB0 2D38A003 */  daddu      $a3, $sp, $zero
    /* 13AF34 00239FB4 62DB070C */  jal        func_001F6D88
    /* 13AF38 00239FB8 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 13AF3C 00239FBC 8E000010 */  b          .L0023A1F8
    /* 13AF40 00239FC0 7001BF7B */   lq        $ra, 0x170($sp)
.align 2
  .L00239FC4:
    /* 13AF44 00239FC4 4C000524 */  addiu      $a1, $zero, 0x4C
    /* 13AF48 00239FC8 2120D400 */  addu       $a0, $a2, $s4
    /* 13AF4C 00239FCC 1800033C */  lui        $v1, %hi(D_001864D0)
    /* 13AF50 00239FD0 0000828C */  lw         $v0, 0x0($a0)
    /* 13AF54 00239FD4 D0646324 */  addiu      $v1, $v1, %lo(D_001864D0)
    /* 13AF58 00239FD8 18001624 */  addiu      $s6, $zero, 0x18
    /* 13AF5C 00239FDC 18104500 */  mult       $v0, $v0, $a1
    /* 13AF60 00239FE0 21104300 */  addu       $v0, $v0, $v1
    /* 13AF64 00239FE4 50F9070C */  jal        func_001FE540
    /* 13AF68 00239FE8 0000448C */   lw        $a0, 0x0($v0)
    /* 13AF6C 00239FEC 2D384000 */  daddu      $a3, $v0, $zero
    /* 13AF70 00239FF0 F0800634 */  ori        $a2, $zero, 0x80F0
    /* 13AF74 00239FF4 38340600 */  dsll       $a2, $a2, 16
    /* 13AF78 00239FF8 F0F0C634 */  ori        $a2, $a2, 0xF0F0
    /* 13AF7C 00239FFC FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 13AF80 0023A000 06000424 */  addiu      $a0, $zero, 0x6
    /* 13AF84 0023A004 5ADA070C */  jal        func_001F6968
    /* 13AF88 0023A008 08000524 */   addiu     $a1, $zero, 0x8
    /* 13AF8C 0023A00C 5800238E */  lw         $v1, 0x58($s1)
    /* 13AF90 0023A010 1E00023C */  lui        $v0, %hi(D_001E02B0)
    /* 13AF94 0023A014 B0025524 */  addiu      $s5, $v0, %lo(D_001E02B0)
    /* 13AF98 0023A018 2D20A003 */  daddu      $a0, $sp, $zero
    /* 13AF9C 0023A01C 18107300 */  mult       $v0, $v1, $s3
    /* 13AFA0 0023A020 21185400 */  addu       $v1, $v0, $s4
    /* 13AFA4 0023A024 0000628C */  lw         $v0, 0x0($v1)
    /* 13AFA8 0023A028 18105600 */  mult       $v0, $v0, $s6
    /* 13AFAC 0023A02C 21105500 */  addu       $v0, $v0, $s5
    /* 13AFB0 0023A030 68E6080C */  jal        func_002399A0
    /* 13AFB4 0023A034 0000458C */   lw        $a1, 0x0($v0)
    /* 13AFB8 0023A038 1400023C */  lui        $v0, %hi(D_0013D5C8)
    /* 13AFBC 0023A03C F0800334 */  ori        $v1, $zero, 0x80F0
    /* 13AFC0 0023A040 381C0300 */  dsll       $v1, $v1, 16
    /* 13AFC4 0023A044 F0F06334 */  ori        $v1, $v1, 0xF0F0
    /* 13AFC8 0023A048 C8D55224 */  addiu      $s2, $v0, %lo(D_0013D5C8)
    /* 13AFCC 0023A04C 80800634 */  ori        $a2, $zero, 0x8080
    /* 13AFD0 0023A050 38340600 */  dsll       $a2, $a2, 16
    /* 13AFD4 0023A054 8080C634 */  ori        $a2, $a2, 0x8080
    /* 13AFD8 0023A058 23004292 */  lbu        $v0, 0x23($s2)
    /* 13AFDC 0023A05C 76000424 */  addiu      $a0, $zero, 0x76
    /* 13AFE0 0023A060 65000524 */  addiu      $a1, $zero, 0x65
    /* 13AFE4 0023A064 2D38A003 */  daddu      $a3, $sp, $zero
    /* 13AFE8 0023A068 0A306200 */  movz       $a2, $v1, $v0
    /* 13AFEC 0023A06C 62DB070C */  jal        func_001F6D88
    /* 13AFF0 0023A070 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 13AFF4 0023A074 23004292 */  lbu        $v0, 0x23($s2)
    /* 13AFF8 0023A078 5E004010 */  beqz       $v0, .L0023A1F4
    /* 13AFFC 0023A07C 2D20A003 */   daddu     $a0, $sp, $zero
    /* 13B000 0023A080 80D9070C */  jal        func_001F6600
    /* 13B004 0023A084 FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 13B008 0023A088 2D804000 */  daddu      $s0, $v0, $zero
    /* 13B00C 0023A08C 75000424 */  addiu      $a0, $zero, 0x75
    /* 13B010 0023A090 23209000 */  subu       $a0, $a0, $s0
    /* 13B014 0023A094 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13B018 0023A098 7B000624 */  addiu      $a2, $zero, 0x7B
    /* 13B01C 0023A09C 70000724 */  addiu      $a3, $zero, 0x70
    /* 13B020 0023A0A0 9520083C */  lui        $t0, (0x20959544 >> 16)
    /* 13B024 0023A0A4 44950835 */  ori        $t0, $t0, (0x20959544 & 0xFFFF)
    /* 13B028 0023A0A8 9005080C */  jal        func_00201640
    /* 13B02C 0023A0AC 2D480000 */   daddu     $t1, $zero, $zero
    /* 13B030 0023A0B0 76000424 */  addiu      $a0, $zero, 0x76
    /* 13B034 0023A0B4 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13B038 0023A0B8 23209000 */  subu       $a0, $a0, $s0
    /* 13B03C 0023A0BC 7A000624 */  addiu      $a2, $zero, 0x7A
    /* 13B040 0023A0C0 70000724 */  addiu      $a3, $zero, 0x70
    /* 13B044 0023A0C4 9530083C */  lui        $t0, (0x30959544 >> 16)
    /* 13B048 0023A0C8 44950835 */  ori        $t0, $t0, (0x30959544 & 0xFFFF)
    /* 13B04C 0023A0CC 9005080C */  jal        func_00201640
    /* 13B050 0023A0D0 2D480000 */   daddu     $t1, $zero, $zero
    /* 13B054 0023A0D4 77000424 */  addiu      $a0, $zero, 0x77
    /* 13B058 0023A0D8 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13B05C 0023A0DC 23209000 */  subu       $a0, $a0, $s0
    /* 13B060 0023A0E0 79000624 */  addiu      $a2, $zero, 0x79
    /* 13B064 0023A0E4 70000724 */  addiu      $a3, $zero, 0x70
    /* 13B068 0023A0E8 9540083C */  lui        $t0, (0x40959544 >> 16)
    /* 13B06C 0023A0EC 44950835 */  ori        $t0, $t0, (0x40959544 & 0xFFFF)
    /* 13B070 0023A0F0 9005080C */  jal        func_00201640
    /* 13B074 0023A0F4 2D480000 */   daddu     $t1, $zero, $zero
    /* 13B078 0023A0F8 78000424 */  addiu      $a0, $zero, 0x78
    /* 13B07C 0023A0FC 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13B080 0023A100 23209000 */  subu       $a0, $a0, $s0
    /* 13B084 0023A104 78000624 */  addiu      $a2, $zero, 0x78
    /* 13B088 0023A108 70000724 */  addiu      $a3, $zero, 0x70
    /* 13B08C 0023A10C 9550083C */  lui        $t0, (0x50959544 >> 16)
    /* 13B090 0023A110 44950835 */  ori        $t0, $t0, (0x50959544 & 0xFFFF)
    /* 13B094 0023A114 9005080C */  jal        func_00201640
    /* 13B098 0023A118 2D480000 */   daddu     $t1, $zero, $zero
    /* 13B09C 0023A11C 79000424 */  addiu      $a0, $zero, 0x79
    /* 13B0A0 0023A120 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13B0A4 0023A124 23209000 */  subu       $a0, $a0, $s0
    /* 13B0A8 0023A128 77000624 */  addiu      $a2, $zero, 0x77
    /* 13B0AC 0023A12C 70000724 */  addiu      $a3, $zero, 0x70
    /* 13B0B0 0023A130 9560083C */  lui        $t0, (0x60959544 >> 16)
    /* 13B0B4 0023A134 44950835 */  ori        $t0, $t0, (0x60959544 & 0xFFFF)
    /* 13B0B8 0023A138 9005080C */  jal        func_00201640
    /* 13B0BC 0023A13C 2D480000 */   daddu     $t1, $zero, $zero
    /* 13B0C0 0023A140 7A000424 */  addiu      $a0, $zero, 0x7A
    /* 13B0C4 0023A144 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13B0C8 0023A148 23209000 */  subu       $a0, $a0, $s0
    /* 13B0CC 0023A14C 76000624 */  addiu      $a2, $zero, 0x76
    /* 13B0D0 0023A150 70000724 */  addiu      $a3, $zero, 0x70
    /* 13B0D4 0023A154 9570083C */  lui        $t0, (0x70959544 >> 16)
    /* 13B0D8 0023A158 44950835 */  ori        $t0, $t0, (0x70959544 & 0xFFFF)
    /* 13B0DC 0023A15C 9005080C */  jal        func_00201640
    /* 13B0E0 0023A160 2D480000 */   daddu     $t1, $zero, $zero
    /* 13B0E4 0023A164 7B000424 */  addiu      $a0, $zero, 0x7B
    /* 13B0E8 0023A168 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 13B0EC 0023A16C 23209000 */  subu       $a0, $a0, $s0
    /* 13B0F0 0023A170 75000624 */  addiu      $a2, $zero, 0x75
    /* 13B0F4 0023A174 70000724 */  addiu      $a3, $zero, 0x70
    /* 13B0F8 0023A178 95800834 */  ori        $t0, $zero, 0x8095
    /* 13B0FC 0023A17C 38440800 */  dsll       $t0, $t0, 16
    /* 13B100 0023A180 44950835 */  ori        $t0, $t0, 0x9544
    /* 13B104 0023A184 9005080C */  jal        func_00201640
    /* 13B108 0023A188 2D480000 */   daddu     $t1, $zero, $zero
    /* 13B10C 0023A18C 23004292 */  lbu        $v0, 0x23($s2)
    /* 13B110 0023A190 08004010 */  beqz       $v0, .L0023A1B4
    /* 13B114 0023A194 5800228E */   lw        $v0, 0x58($s1)
    /* 13B118 0023A198 18185300 */  mult       $v1, $v0, $s3
    /* 13B11C 0023A19C 21107400 */  addu       $v0, $v1, $s4
    /* 13B120 0023A1A0 0000438C */  lw         $v1, 0x0($v0)
    /* 13B124 0023A1A4 18107600 */  mult       $v0, $v1, $s6
    /* 13B128 0023A1A8 21185500 */  addu       $v1, $v0, $s5
    /* 13B12C 0023A1AC 07000010 */  b          .L0023A1CC
    /* 13B130 0023A1B0 0400658C */   lw        $a1, 0x4($v1)
.align 2
  .L0023A1B4:
    /* 13B134 0023A1B4 18185300 */  mult       $v1, $v0, $s3
    /* 13B138 0023A1B8 21107400 */  addu       $v0, $v1, $s4
    /* 13B13C 0023A1BC 0000438C */  lw         $v1, 0x0($v0)
    /* 13B140 0023A1C0 18107600 */  mult       $v0, $v1, $s6
    /* 13B144 0023A1C4 21185500 */  addu       $v1, $v0, $s5
    /* 13B148 0023A1C8 0000658C */  lw         $a1, 0x0($v1)
.align 2
  .L0023A1CC:
    /* 13B14C 0023A1CC 68E6080C */  jal        func_002399A0
    /* 13B150 0023A1D0 2D20A003 */   daddu     $a0, $sp, $zero
    /* 13B154 0023A1D4 76000424 */  addiu      $a0, $zero, 0x76
    /* 13B158 0023A1D8 55000524 */  addiu      $a1, $zero, 0x55
    /* 13B15C 0023A1DC F0800634 */  ori        $a2, $zero, 0x80F0
    /* 13B160 0023A1E0 38340600 */  dsll       $a2, $a2, 16
    /* 13B164 0023A1E4 F0F0C634 */  ori        $a2, $a2, 0xF0F0
    /* 13B168 0023A1E8 2D38A003 */  daddu      $a3, $sp, $zero
    /* 13B16C 0023A1EC 62DB070C */  jal        func_001F6D88
    /* 13B170 0023A1F0 FFFF0824 */   addiu     $t0, $zero, -0x1
.align 2
  .L0023A1F4:
    /* 13B174 0023A1F4 7001BF7B */  lq         $ra, 0x170($sp)
.align 2
  .L0023A1F8:
    /* 13B178 0023A1F8 6001B67B */  lq         $s6, 0x160($sp)
    /* 13B17C 0023A1FC 5001B57B */  lq         $s5, 0x150($sp)
    /* 13B180 0023A200 4001B47B */  lq         $s4, 0x140($sp)
    /* 13B184 0023A204 3001B37B */  lq         $s3, 0x130($sp)
    /* 13B188 0023A208 2001B27B */  lq         $s2, 0x120($sp)
    /* 13B18C 0023A20C 1001B17B */  lq         $s1, 0x110($sp)
    /* 13B190 0023A210 0001B07B */  lq         $s0, 0x100($sp)
    /* 13B194 0023A214 0800E003 */  jr         $ra
    /* 13B198 0023A218 8001BD27 */   addiu     $sp, $sp, 0x180
endlabel func_00239CF8
    /* 13B19C 0023A21C 00000000 */  nop
