.align 3
nonmatching func_00215CA8, 0x278

glabel func_00215CA8
    /* 116C28 00215CA8 00FFBD27 */  addiu      $sp, $sp, -0x100
    /* 116C2C 00215CAC D000B4E7 */  swc1       $f20, 0xD0($sp)
    /* 116C30 00215CB0 B000B77F */  sq         $s7, 0xB0($sp)
    /* 116C34 00215CB4 06650046 */  mov.s      $f20, $f12
    /* 116C38 00215CB8 A000B67F */  sq         $s6, 0xA0($sp)
    /* 116C3C 00215CBC 2DB80001 */  daddu      $s7, $t0, $zero
    /* 116C40 00215CC0 8000B47F */  sq         $s4, 0x80($sp)
    /* 116C44 00215CC4 2DB0C000 */  daddu      $s6, $a2, $zero
    /* 116C48 00215CC8 7000B37F */  sq         $s3, 0x70($sp)
    /* 116C4C 00215CCC 2DA0E000 */  daddu      $s4, $a3, $zero
    /* 116C50 00215CD0 4000B07F */  sq         $s0, 0x40($sp)
    /* 116C54 00215CD4 2D988000 */  daddu      $s3, $a0, $zero
    /* 116C58 00215CD8 9000B57F */  sq         $s5, 0x90($sp)
    /* 116C5C 00215CDC 2D80A000 */  daddu      $s0, $a1, $zero
    /* 116C60 00215CE0 C000BF7F */  sq         $ra, 0xC0($sp)
    /* 116C64 00215CE4 6000B27F */  sq         $s2, 0x60($sp)
    /* 116C68 00215CE8 2DA80000 */  daddu      $s5, $zero, $zero
    /* 116C6C 00215CEC 5000B17F */  sq         $s1, 0x50($sp)
    /* 116C70 00215CF0 F800B9E7 */  swc1       $f25, 0xF8($sp)
    /* 116C74 00215CF4 F000B8E7 */  swc1       $f24, 0xF0($sp)
    /* 116C78 00215CF8 E800B7E7 */  swc1       $f23, 0xE8($sp)
    /* 116C7C 00215CFC E000B6E7 */  swc1       $f22, 0xE0($sp)
    /* 116C80 00215D00 26EA070C */  jal        func_001FA898
    /* 116C84 00215D04 D800B5E7 */   swc1      $f21, 0xD8($sp)
    /* 116C88 00215D08 08000016 */  bnez       $s0, .L00215D2C
    /* 116C8C 00215D0C 2D304000 */   daddu     $a2, $v0, $zero
    /* 116C90 00215D10 0000628E */  lw         $v0, 0x0($s3)
    /* 116C94 00215D14 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 116C98 00215D18 2A18C200 */  slt        $v1, $a2, $v0
    /* 116C9C 00215D1C 03006014 */  bnez       $v1, .L00215D2C
    /* 116CA0 00215D20 00000000 */   nop
    /* 116CA4 00215D24 2D304000 */  daddu      $a2, $v0, $zero
    /* 116CA8 00215D28 01001524 */  addiu      $s5, $zero, 0x1
.align 2
  .L00215D2C:
    /* 116CAC 00215D2C 00008644 */  mtc1       $a2, $f0
    /* 116CB0 00215D30 00000000 */  nop
    /* 116CB4 00215D34 20008046 */  cvt.s.w    $f0, $f0
    /* 116CB8 00215D38 0800A012 */  beqz       $s5, .L00215D5C
    /* 116CBC 00215D3C 01A60046 */   sub.s     $f24, $f20, $f0
    /* 116CC0 00215D40 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 116CC4 00215D44 00008144 */  mtc1       $at, $f0
    /* 116CC8 00215D48 00000000 */  nop
    /* 116CCC 00215D4C 34001846 */  c.lt.s     $f0, $f24
    /* 116CD0 00215D50 00000000 */  nop
    /* 116CD4 00215D54 01000345 */  bc1tl      .L00215D5C
    /* 116CD8 00215D58 06060046 */   mov.s     $f24, $f0
.align 2
  .L00215D5C:
    /* 116CDC 00215D5C 0000648E */  lw         $a0, 0x0($s3)
    /* 116CE0 00215D60 0200D124 */  addiu      $s1, $a2, 0x2
    /* 116CE4 00215D64 2A102402 */  slt        $v0, $s1, $a0
    /* 116CE8 00215D68 09004014 */  bnez       $v0, .L00215D90
    /* 116CEC 00215D6C 0100C524 */   addiu     $a1, $a2, 0x1
    /* 116CF0 00215D70 1A00A400 */  div        $zero, $a1, $a0
    /* 116CF4 00215D74 01008050 */  beql       $a0, $zero, .L00215D7C
    /* 116CF8 00215D78 CD010000 */   break     0, 7
.align 2
  .L00215D7C:
    /* 116CFC 00215D7C 10100000 */  mfhi       $v0
    /* 116D00 00215D80 1A002402 */  div        $zero, $s1, $a0
    /* 116D04 00215D84 2D284000 */  daddu      $a1, $v0, $zero
    /* 116D08 00215D88 10180000 */  mfhi       $v1
    /* 116D0C 00215D8C 2D886000 */  daddu      $s1, $v1, $zero
.align 2
  .L00215D90:
    /* 116D10 00215D90 00190600 */  sll        $v1, $a2, 4
    /* 116D14 00215D94 00C88044 */  mtc1       $zero, $f25
    /* 116D18 00215D98 21187300 */  addu       $v1, $v1, $s3
    /* 116D1C 00215D9C 10006324 */  addiu      $v1, $v1, 0x10
    /* 116D20 00215DA0 00006278 */  lq         $v0, 0x0($v1)
    /* 116D24 00215DA4 0000A27F */  sq         $v0, 0x0($sp)
    /* 116D28 00215DA8 00190500 */  sll        $v1, $a1, 4
    /* 116D2C 00215DAC 1000B227 */  addiu      $s2, $sp, 0x10
    /* 116D30 00215DB0 21187300 */  addu       $v1, $v1, $s3
    /* 116D34 00215DB4 10006324 */  addiu      $v1, $v1, 0x10
    /* 116D38 00215DB8 00006278 */  lq         $v0, 0x0($v1)
    /* 116D3C 00215DBC 0000427E */  sq         $v0, 0x0($s2)
    /* 116D40 00215DC0 2D20C002 */  daddu      $a0, $s6, $zero
    /* 116D44 00215DC4 2D28A003 */  daddu      $a1, $sp, $zero
    /* 116D48 00215DC8 2D304002 */  daddu      $a2, $s2, $zero
    /* 116D4C 00215DCC 02E7070C */  jal        func_001F9C08
    /* 116D50 00215DD0 06C30046 */   mov.s     $f12, $f24
    /* 116D54 00215DD4 0100E232 */  andi       $v0, $s7, 0x1
    /* 116D58 00215DD8 41004014 */  bnez       $v0, .L00215EE0
    /* 116D5C 00215DDC C000BF7B */   lq        $ra, 0xC0($sp)
    /* 116D60 00215DE0 3000B027 */  addiu      $s0, $sp, 0x30
    /* 116D64 00215DE4 2D284002 */  daddu      $a1, $s2, $zero
    /* 116D68 00215DE8 2D30A003 */  daddu      $a2, $sp, $zero
    /* 116D6C 00215DEC FCE6070C */  jal        func_001F9BF0
    /* 116D70 00215DF0 2D200002 */   daddu     $a0, $s0, $zero
    /* 116D74 00215DF4 3000ACC7 */  lwc1       $f12, 0x30($sp)
    /* 116D78 00215DF8 16E8070C */  jal        func_001FA058
    /* 116D7C 00215DFC 3400ADC7 */   lwc1      $f13, 0x34($sp)
    /* 116D80 00215E00 2D200002 */  daddu      $a0, $s0, $zero
    /* 116D84 00215E04 3AE7070C */  jal        func_001F9CE8
    /* 116D88 00215E08 86050046 */   mov.s     $f22, $f0
    /* 116D8C 00215E0C 3800ADC7 */  lwc1       $f13, 0x38($sp)
    /* 116D90 00215E10 16E8070C */  jal        func_001FA058
    /* 116D94 00215E14 06030046 */   mov.s     $f12, $f0
    /* 116D98 00215E18 06050046 */  mov.s      $f20, $f0
    /* 116D9C 00215E1C 0400A012 */  beqz       $s5, .L00215E30
    /* 116DA0 00215E20 0C00B5C7 */   lwc1      $f21, 0xC($sp)
    /* 116DA4 00215E24 C6B50046 */  mov.s      $f23, $f22
    /* 116DA8 00215E28 14000010 */  b          .L00215E7C
    /* 116DAC 00215E2C 46CD0046 */   mov.s     $f21, $f25
.align 2
  .L00215E30:
    /* 116DB0 00215E30 00191100 */  sll        $v1, $s1, 4
    /* 116DB4 00215E34 2000A527 */  addiu      $a1, $sp, 0x20
    /* 116DB8 00215E38 21187300 */  addu       $v1, $v1, $s3
    /* 116DBC 00215E3C 10006324 */  addiu      $v1, $v1, 0x10
    /* 116DC0 00215E40 00006278 */  lq         $v0, 0x0($v1)
    /* 116DC4 00215E44 0000A27C */  sq         $v0, 0x0($a1)
    /* 116DC8 00215E48 2D304002 */  daddu      $a2, $s2, $zero
    /* 116DCC 00215E4C FCE6070C */  jal        func_001F9BF0
    /* 116DD0 00215E50 2D200002 */   daddu     $a0, $s0, $zero
    /* 116DD4 00215E54 3000ACC7 */  lwc1       $f12, 0x30($sp)
    /* 116DD8 00215E58 16E8070C */  jal        func_001FA058
    /* 116DDC 00215E5C 3400ADC7 */   lwc1      $f13, 0x34($sp)
    /* 116DE0 00215E60 2D200002 */  daddu      $a0, $s0, $zero
    /* 116DE4 00215E64 3AE7070C */  jal        func_001F9CE8
    /* 116DE8 00215E68 C6050046 */   mov.s     $f23, $f0
    /* 116DEC 00215E6C 3800ADC7 */  lwc1       $f13, 0x38($sp)
    /* 116DF0 00215E70 16E8070C */  jal        func_001FA058
    /* 116DF4 00215E74 06030046 */   mov.s     $f12, $f0
    /* 116DF8 00215E78 1C00B9C7 */  lwc1       $f25, 0x1C($sp)
.align 2
  .L00215E7C:
    /* 116DFC 00215E7C 000080AE */  sw         $zero, 0x0($s4)
    /* 116E00 00215E80 06030046 */  mov.s      $f12, $f0
    /* 116E04 00215E84 E4E9070C */  jal        func_001FA790
    /* 116E08 00215E88 46A30046 */   mov.s     $f13, $f20
    /* 116E0C 00215E8C 02031846 */  mul.s      $f12, $f0, $f24
    /* 116E10 00215E90 D2E9070C */  jal        func_001FA748
    /* 116E14 00215E94 46A30046 */   mov.s     $f13, $f20
    /* 116E18 00215E98 07000046 */  neg.s      $f0, $f0
    /* 116E1C 00215E9C 06BB0046 */  mov.s      $f12, $f23
    /* 116E20 00215EA0 46B30046 */  mov.s      $f13, $f22
    /* 116E24 00215EA4 E4E9070C */  jal        func_001FA790
    /* 116E28 00215EA8 040080E6 */   swc1      $f0, 0x4($s4)
    /* 116E2C 00215EAC 02031846 */  mul.s      $f12, $f0, $f24
    /* 116E30 00215EB0 D2E9070C */  jal        func_001FA748
    /* 116E34 00215EB4 46B30046 */   mov.s     $f13, $f22
    /* 116E38 00215EB8 06CB0046 */  mov.s      $f12, $f25
    /* 116E3C 00215EBC 46AB0046 */  mov.s      $f13, $f21
    /* 116E40 00215EC0 E4E9070C */  jal        func_001FA790
    /* 116E44 00215EC4 080080E6 */   swc1      $f0, 0x8($s4)
    /* 116E48 00215EC8 02031846 */  mul.s      $f12, $f0, $f24
    /* 116E4C 00215ECC D2E9070C */  jal        func_001FA748
    /* 116E50 00215ED0 46AB0046 */   mov.s     $f13, $f21
    /* 116E54 00215ED4 07000046 */  neg.s      $f0, $f0
    /* 116E58 00215ED8 0C0080E6 */  swc1       $f0, 0xC($s4)
    /* 116E5C 00215EDC C000BF7B */  lq         $ra, 0xC0($sp)
.align 2
  .L00215EE0:
    /* 116E60 00215EE0 B000B77B */  lq         $s7, 0xB0($sp)
    /* 116E64 00215EE4 A000B67B */  lq         $s6, 0xA0($sp)
    /* 116E68 00215EE8 9000B57B */  lq         $s5, 0x90($sp)
    /* 116E6C 00215EEC 8000B47B */  lq         $s4, 0x80($sp)
    /* 116E70 00215EF0 7000B37B */  lq         $s3, 0x70($sp)
    /* 116E74 00215EF4 6000B27B */  lq         $s2, 0x60($sp)
    /* 116E78 00215EF8 5000B17B */  lq         $s1, 0x50($sp)
    /* 116E7C 00215EFC 4000B07B */  lq         $s0, 0x40($sp)
    /* 116E80 00215F00 F800B9C7 */  lwc1       $f25, 0xF8($sp)
    /* 116E84 00215F04 F000B8C7 */  lwc1       $f24, 0xF0($sp)
    /* 116E88 00215F08 E800B7C7 */  lwc1       $f23, 0xE8($sp)
    /* 116E8C 00215F0C E000B6C7 */  lwc1       $f22, 0xE0($sp)
    /* 116E90 00215F10 D800B5C7 */  lwc1       $f21, 0xD8($sp)
    /* 116E94 00215F14 D000B4C7 */  lwc1       $f20, 0xD0($sp)
    /* 116E98 00215F18 0800E003 */  jr         $ra
    /* 116E9C 00215F1C 0001BD27 */   addiu     $sp, $sp, 0x100
endlabel func_00215CA8
