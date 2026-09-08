.align 3
nonmatching func_00229D48, 0x104

glabel func_00229D48
    /* 12ACC8 00229D48 1E00023C */  lui        $v0, %hi(D_001D9140)
    /* 12ACCC 00229D4C 4091438C */  lw         $v1, %lo(D_001D9140)($v0)
    /* 12ACD0 00229D50 3C006004 */  bltz       $v1, .L00229E44
    /* 12ACD4 00229D54 40914424 */   addiu     $a0, $v0, %lo(D_001D9140)
    /* 12ACD8 00229D58 1E00023C */  lui        $v0, %hi(D_001D82C0)
    /* 12ACDC 00229D5C C0824F24 */  addiu      $t7, $v0, %lo(D_001D82C0)
    /* 12ACE0 00229D60 0000838C */  lw         $v1, 0x0($a0)
    /* 12ACE4 00229D64 00000000 */  nop
.align 2
  .L00229D68:
    /* 12ACE8 00229D68 04008D24 */  addiu      $t5, $a0, 0x4
    /* 12ACEC 00229D6C 80180300 */  sll        $v1, $v1, 2
    /* 12ACF0 00229D70 21186F00 */  addu       $v1, $v1, $t7
    /* 12ACF4 00229D74 0000698C */  lw         $t1, 0x0($v1)
    /* 12ACF8 00229D78 28002285 */  lh         $v0, 0x28($t1)
    /* 12ACFC 00229D7C 2D004018 */  blez       $v0, .L00229E34
    /* 12AD00 00229D80 2D200000 */   daddu     $a0, $zero, $zero
    /* 12AD04 00229D84 40002C25 */  addiu      $t4, $t1, 0x40
    /* 12AD08 00229D88 1E000E3C */  lui        $t6, %hi(D_001D8C40)
    /* 12AD0C 00229D8C C0100400 */  sll        $v0, $a0, 3
.align 2
  .L00229D90:
    /* 12AD10 00229D90 01008A24 */  addiu      $t2, $a0, 0x1
    /* 12AD14 00229D94 21108201 */  addu       $v0, $t4, $v0
    /* 12AD18 00229D98 2D380000 */  daddu      $a3, $zero, $zero
    /* 12AD1C 00229D9C 0000438C */  lw         $v1, 0x0($v0)
    /* 12AD20 00229DA0 10006824 */  addiu      $t0, $v1, 0x10
    /* 12AD24 00229DA4 1000648C */  lw         $a0, 0x10($v1)
    /* 12AD28 00229DA8 0400028D */  lw         $v0, 0x4($t0)
    /* 12AD2C 00229DAC 00110200 */  sll        $v0, $v0, 4
    /* 12AD30 00229DB0 21100201 */  addu       $v0, $t0, $v0
    /* 12AD34 00229DB4 1A008018 */  blez       $a0, .L00229E20
    /* 12AD38 00229DB8 10004524 */   addiu     $a1, $v0, 0x10
    /* 12AD3C 00229DBC FFFF063C */  lui        $a2, (0xFFFFC000 >> 16)
    /* 12AD40 00229DC0 408CCB25 */  addiu      $t3, $t6, %lo(D_001D8C40)
    /* 12AD44 00229DC4 00C0C634 */  ori        $a2, $a2, (0xFFFFC000 & 0xFFFF)
.align 2
  .L00229DC8:
    /* 12AD48 00229DC8 1300A290 */  lbu        $v0, 0x13($a1)
    /* 12AD4C 00229DCC 80100200 */  sll        $v0, $v0, 2
    /* 12AD50 00229DD0 21204B00 */  addu       $a0, $v0, $t3
    /* 12AD54 00229DD4 00008384 */  lh         $v1, 0x0($a0)
    /* 12AD58 00229DD8 06006050 */  beql       $v1, $zero, .L00229DF4
    /* 12AD5C 00229DDC 02008384 */   lh        $v1, 0x2($a0)
    /* 12AD60 00229DE0 3000A28C */  lw         $v0, 0x30($a1)
    /* 12AD64 00229DE4 24104600 */  and        $v0, $v0, $a2
    /* 12AD68 00229DE8 25104300 */  or         $v0, $v0, $v1
    /* 12AD6C 00229DEC 3000A2AC */  sw         $v0, 0x30($a1)
    /* 12AD70 00229DF0 02008384 */  lh         $v1, 0x2($a0)
.align 2
  .L00229DF4:
    /* 12AD74 00229DF4 06006050 */  beql       $v1, $zero, .L00229E10
    /* 12AD78 00229DF8 0000028D */   lw        $v0, 0x0($t0)
    /* 12AD7C 00229DFC 2000A28C */  lw         $v0, 0x20($a1)
    /* 12AD80 00229E00 24104600 */  and        $v0, $v0, $a2
    /* 12AD84 00229E04 25104300 */  or         $v0, $v0, $v1
    /* 12AD88 00229E08 2000A2AC */  sw         $v0, 0x20($a1)
    /* 12AD8C 00229E0C 0000028D */  lw         $v0, 0x0($t0)
.align 2
  .L00229E10:
    /* 12AD90 00229E10 0100E724 */  addiu      $a3, $a3, 0x1
    /* 12AD94 00229E14 2A10E200 */  slt        $v0, $a3, $v0
    /* 12AD98 00229E18 EBFF4014 */  bnez       $v0, .L00229DC8
    /* 12AD9C 00229E1C 4000A524 */   addiu     $a1, $a1, 0x40
.align 2
  .L00229E20:
    /* 12ADA0 00229E20 28002285 */  lh         $v0, 0x28($t1)
    /* 12ADA4 00229E24 2D204001 */  daddu      $a0, $t2, $zero
    /* 12ADA8 00229E28 2A108200 */  slt        $v0, $a0, $v0
    /* 12ADAC 00229E2C D8FF4014 */  bnez       $v0, .L00229D90
    /* 12ADB0 00229E30 C0100400 */   sll       $v0, $a0, 3
.align 2
  .L00229E34:
    /* 12ADB4 00229E34 2D20A001 */  daddu      $a0, $t5, $zero
    /* 12ADB8 00229E38 0000828C */  lw         $v0, 0x0($a0)
    /* 12ADBC 00229E3C CAFF4304 */  bgezl      $v0, .L00229D68
    /* 12ADC0 00229E40 0000838C */   lw        $v1, 0x0($a0)
.align 2
  .L00229E44:
    /* 12ADC4 00229E44 0800E003 */  jr         $ra
    /* 12ADC8 00229E48 00000000 */   nop
endlabel func_00229D48
    /* 12ADCC 00229E4C 00000000 */  nop
