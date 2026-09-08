.align 3
nonmatching func_00129CA0, 0x18C

glabel func_00129CA0
    /* 2AC20 00129CA0 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 2AC24 00129CA4 9000BEFF */  sd         $fp, 0x90($sp)
    /* 2AC28 00129CA8 6000B5FF */  sd         $s5, 0x60($sp)
    /* 2AC2C 00129CAC 2DF0E000 */  daddu      $fp, $a3, $zero
    /* 2AC30 00129CB0 5000B4FF */  sd         $s4, 0x50($sp)
    /* 2AC34 00129CB4 2DA8C000 */  daddu      $s5, $a2, $zero
    /* 2AC38 00129CB8 4000B3FF */  sd         $s3, 0x40($sp)
    /* 2AC3C 00129CBC 2DA0A000 */  daddu      $s4, $a1, $zero
    /* 2AC40 00129CC0 A000BFFF */  sd         $ra, 0xA0($sp)
    /* 2AC44 00129CC4 2D988000 */  daddu      $s3, $a0, $zero
    /* 2AC48 00129CC8 8000B7FF */  sd         $s7, 0x80($sp)
    /* 2AC4C 00129CCC 7000B6FF */  sd         $s6, 0x70($sp)
    /* 2AC50 00129CD0 3000B2FF */  sd         $s2, 0x30($sp)
    /* 2AC54 00129CD4 2000B1FF */  sd         $s1, 0x20($sp)
    /* 2AC58 00129CD8 1000B0FF */  sd         $s0, 0x10($sp)
    /* 2AC5C 00129CDC 7000628E */  lw         $v0, 0x70($s3)
    /* 2AC60 00129CE0 25004010 */  beqz       $v0, .L00129D78
    /* 2AC64 00129CE4 0000A8AF */   sw        $t0, 0x0($sp)
    /* 2AC68 00129CE8 180082DE */  ld         $v0, 0x18($s4)
    /* 2AC6C 00129CEC 24004304 */  bgezl      $v0, .L00129D80
    /* 2AC70 00129CF0 0000A2FE */   sd        $v0, 0x0($s5)
    /* 2AC74 00129CF4 8000778E */  lw         $s7, 0x80($s3)
    /* 2AC78 00129CF8 2100E206 */  bltzl      $s7, .L00129D80
    /* 2AC7C 00129CFC 0000A2FE */   sd        $v0, 0x0($s5)
    /* 2AC80 00129D00 880070DE */  ld         $s0, 0x88($s3)
    /* 2AC84 00129D04 780065DE */  ld         $a1, 0x78($s3)
    /* 2AC88 00129D08 3C801000 */  dsll32     $s0, $s0, 0
    /* 2AC8C 00129D0C 3F801000 */  dsra32     $s0, $s0, 0
    /* 2AC90 00129D10 01001232 */  andi       $s2, $s0, 0x1
    /* 2AC94 00129D14 0100A530 */  andi       $a1, $a1, 0x1
    /* 2AC98 00129D18 B27B040C */  jal        func_0011EEC8
    /* 2AC9C 00129D1C 2D204002 */   daddu     $a0, $s2, $zero
    /* 2ACA0 00129D20 9000768E */  lw         $s6, 0x90($s3)
    /* 2ACA4 00129D24 2D204000 */  daddu      $a0, $v0, $zero
    /* 2ACA8 00129D28 B27B040C */  jal        func_0011EEC8
    /* 2ACAC 00129D2C 0100C532 */   andi      $a1, $s6, 0x1
    /* 2ACB0 00129D30 780064DE */  ld         $a0, 0x78($s3)
    /* 2ACB4 00129D34 3C880200 */  dsll32     $s1, $v0, 0
    /* 2ACB8 00129D38 3F881100 */  dsra32     $s1, $s1, 0
    /* 2ACBC 00129D3C B27B040C */  jal        func_0011EEC8
    /* 2ACC0 00129D40 2D280002 */   daddu     $a1, $s0, $zero
    /* 2ACC4 00129D44 F8170200 */  dsll       $v0, $v0, 31
    /* 2ACC8 00129D48 3F100200 */  dsra32     $v0, $v0, 0
    /* 2ACCC 00129D4C 2D204002 */  daddu      $a0, $s2, $zero
    /* 2ACD0 00129D50 21105100 */  addu       $v0, $v0, $s1
    /* 2ACD4 00129D54 2110E202 */  addu       $v0, $s7, $v0
    /* 2ACD8 00129D58 0000A2FE */  sd         $v0, 0x0($s5)
    /* 2ACDC 00129D5C 780065DE */  ld         $a1, 0x78($s3)
    /* 2ACE0 00129D60 B27B040C */  jal        func_0011EEC8
    /* 2ACE4 00129D64 0100A530 */   andi      $a1, $a1, 0x1
    /* 2ACE8 00129D68 05004010 */  beqz       $v0, .L00129D80
    /* 2ACEC 00129D6C 0100C226 */   addiu     $v0, $s6, 0x1
    /* 2ACF0 00129D70 03000010 */  b          .L00129D80
    /* 2ACF4 00129D74 900062AE */   sw        $v0, 0x90($s3)
.align 2
  .L00129D78:
    /* 2ACF8 00129D78 180082DE */  ld         $v0, 0x18($s4)
    /* 2ACFC 00129D7C 0000A2FE */  sd         $v0, 0x0($s5)
.align 2
  .L00129D80:
    /* 2AD00 00129D80 F800638E */  lw         $v1, 0xF8($s3)
    /* 2AD04 00129D84 02000224 */  addiu      $v0, $zero, 0x2
    /* 2AD08 00129D88 09006254 */  bnel       $v1, $v0, .L00129DB0
    /* 2AD0C 00129D8C 4000858E */   lw        $a1, 0x40($s4)
    /* 2AD10 00129D90 F00062DE */  ld         $v0, 0xF0($s3)
    /* 2AD14 00129D94 06004204 */  bltzl      $v0, .L00129DB0
    /* 2AD18 00129D98 4000858E */   lw        $a1, 0x40($s4)
    /* 2AD1C 00129D9C 0000A2FE */  sd         $v0, 0x0($s5)
    /* 2AD20 00129DA0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2AD24 00129DA4 F80060AE */  sw         $zero, 0xF8($s3)
    /* 2AD28 00129DA8 F00062FE */  sd         $v0, 0xF0($s3)
    /* 2AD2C 00129DAC 4000858E */  lw         $a1, 0x40($s4)
.align 2
  .L00129DB0:
    /* 2AD30 00129DB0 3C00848E */  lw         $a0, 0x3C($s4)
    /* 2AD34 00129DB4 3400828E */  lw         $v0, 0x34($s4)
    /* 2AD38 00129DB8 78290500 */  dsll       $a1, $a1, 5
    /* 2AD3C 00129DBC B8210400 */  dsll       $a0, $a0, 6
    /* 2AD40 00129DC0 3000868E */  lw         $a2, 0x30($s4)
    /* 2AD44 00129DC4 2C00878E */  lw         $a3, 0x2C($s4)
    /* 2AD48 00129DC8 2528A400 */  or         $a1, $a1, $a0
    /* 2AD4C 00129DCC 3800838E */  lw         $v1, 0x38($s4)
    /* 2AD50 00129DD0 38120200 */  dsll       $v0, $v0, 8
    /* 2AD54 00129DD4 200084DE */  ld         $a0, 0x20($s4)
    /* 2AD58 00129DD8 25104700 */  or         $v0, $v0, $a3
    /* 2AD5C 00129DDC F8300600 */  dsll       $a2, $a2, 3
    /* 2AD60 00129DE0 F8190300 */  dsll       $v1, $v1, 7
    /* 2AD64 00129DE4 0000C4FF */  sd         $a0, 0x0($fp)
    /* 2AD68 00129DE8 25186600 */  or         $v1, $v1, $a2
    /* 2AD6C 00129DEC 25104500 */  or         $v0, $v0, $a1
    /* 2AD70 00129DF0 A000BFDF */  ld         $ra, 0xA0($sp)
    /* 2AD74 00129DF4 25104300 */  or         $v0, $v0, $v1
    /* 2AD78 00129DF8 9000BEDF */  ld         $fp, 0x90($sp)
    /* 2AD7C 00129DFC 0000A38F */  lw         $v1, 0x0($sp)
    /* 2AD80 00129E00 8000B7DF */  ld         $s7, 0x80($sp)
    /* 2AD84 00129E04 7000B6DF */  ld         $s6, 0x70($sp)
    /* 2AD88 00129E08 6000B5DF */  ld         $s5, 0x60($sp)
    /* 2AD8C 00129E0C 5000B4DF */  ld         $s4, 0x50($sp)
    /* 2AD90 00129E10 4000B3DF */  ld         $s3, 0x40($sp)
    /* 2AD94 00129E14 3000B2DF */  ld         $s2, 0x30($sp)
    /* 2AD98 00129E18 2000B1DF */  ld         $s1, 0x20($sp)
    /* 2AD9C 00129E1C 1000B0DF */  ld         $s0, 0x10($sp)
    /* 2ADA0 00129E20 000062FC */  sd         $v0, 0x0($v1)
    /* 2ADA4 00129E24 0800E003 */  jr         $ra
    /* 2ADA8 00129E28 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_00129CA0
    /* 2ADAC 00129E2C 00000000 */  nop
