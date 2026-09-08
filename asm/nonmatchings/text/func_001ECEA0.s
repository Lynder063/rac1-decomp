.align 3
nonmatching func_001ECEA0, 0x1E0

glabel func_001ECEA0
    /* EDE20 001ECEA0 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* EDE24 001ECEA4 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EDE28 001ECEA8 00088144 */  mtc1       $at, $f1
    /* EDE2C 001ECEAC 6000B17F */  sq         $s1, 0x60($sp)
    /* EDE30 001ECEB0 5000B07F */  sq         $s0, 0x50($sp)
    /* EDE34 001ECEB4 2D88A000 */  daddu      $s1, $a1, $zero
    /* EDE38 001ECEB8 9000BF7F */  sq         $ra, 0x90($sp)
    /* EDE3C 001ECEBC 8000B37F */  sq         $s3, 0x80($sp)
    /* EDE40 001ECEC0 7000B27F */  sq         $s2, 0x70($sp)
    /* EDE44 001ECEC4 B000B6E7 */  swc1       $f22, 0xB0($sp)
    /* EDE48 001ECEC8 A800B5E7 */  swc1       $f21, 0xA8($sp)
    /* EDE4C 001ECECC A000B4E7 */  swc1       $f20, 0xA0($sp)
    /* EDE50 001ECED0 0C0020C6 */  lwc1       $f0, 0xC($s1)
    /* EDE54 001ECED4 32000146 */  c.eq.s     $f0, $f1
    /* EDE58 001ECED8 00000000 */  nop
    /* EDE5C 001ECEDC 06000045 */  bc1f       .L001ECEF8
    /* EDE60 001ECEE0 2D808000 */   daddu     $s0, $a0, $zero
    /* EDE64 001ECEE4 000020C6 */  lwc1       $f0, 0x0($s1)
    /* EDE68 001ECEE8 32000146 */  c.eq.s     $f0, $f1
    /* EDE6C 001ECEEC 00000000 */  nop
    /* EDE70 001ECEF0 59000145 */  bc1t       .L001ED058
    /* EDE74 001ECEF4 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L001ECEF8:
    /* EDE78 001ECEF8 00B08044 */  mtc1       $zero, $f22
    /* EDE7C 001ECEFC 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EDE80 001ECF00 00A88144 */  mtc1       $at, $f21
    /* EDE84 001ECF04 0C002EC6 */  lwc1       $f14, 0xC($s1)
    /* EDE88 001ECF08 06B30046 */  mov.s      $f12, $f22
    /* EDE8C 001ECF0C 8850080C */  jal        func_00214220
    /* EDE90 001ECF10 46AB0046 */   mov.s     $f13, $f21
    /* EDE94 001ECF14 30002426 */  addiu      $a0, $s1, 0x30
    /* EDE98 001ECF18 1400053C */  lui        $a1, %hi(D_0013F590)
    /* EDE9C 001ECF1C 06050046 */  mov.s      $f20, $f0
    /* EDEA0 001ECF20 90F5A524 */  addiu      $a1, $a1, %lo(D_0013F590)
    /* EDEA4 001ECF24 F6E6070C */  jal        func_001F9BD8
    /* EDEA8 001ECF28 2D308000 */   daddu     $a2, $a0, $zero
    /* EDEAC 001ECF2C 300000C6 */  lwc1       $f0, 0x30($s0)
    /* EDEB0 001ECF30 1900023C */  lui        $v0, %hi(D_0018C418)
    /* EDEB4 001ECF34 300021C6 */  lwc1       $f1, 0x30($s1)
    /* EDEB8 001ECF38 18C45324 */  addiu      $s3, $v0, %lo(D_0018C418)
    /* EDEBC 001ECF3C 340022C6 */  lwc1       $f2, 0x34($s1)
    /* EDEC0 001ECF40 01000146 */  sub.s      $f0, $f0, $f1
    /* EDEC4 001ECF44 380023C6 */  lwc1       $f3, 0x38($s1)
    /* EDEC8 001ECF48 02001446 */  mul.s      $f0, $f0, $f20
    /* EDECC 001ECF4C 40080046 */  add.s      $f1, $f1, $f0
    /* EDED0 001ECF50 400021E6 */  swc1       $f1, 0x40($s1)
    /* EDED4 001ECF54 340000C6 */  lwc1       $f0, 0x34($s0)
    /* EDED8 001ECF58 01000246 */  sub.s      $f0, $f0, $f2
    /* EDEDC 001ECF5C 02001446 */  mul.s      $f0, $f0, $f20
    /* EDEE0 001ECF60 80100046 */  add.s      $f2, $f2, $f0
    /* EDEE4 001ECF64 440022E6 */  swc1       $f2, 0x44($s1)
    /* EDEE8 001ECF68 380000C6 */  lwc1       $f0, 0x38($s0)
    /* EDEEC 001ECF6C 01000346 */  sub.s      $f0, $f0, $f3
    /* EDEF0 001ECF70 02001446 */  mul.s      $f0, $f0, $f20
    /* EDEF4 001ECF74 C0180046 */  add.s      $f3, $f3, $f0
    /* EDEF8 001ECF78 480023E6 */  swc1       $f3, 0x48($s1)
    /* EDEFC 001ECF7C 1400628E */  lw         $v0, 0x14($s3)
    /* EDF00 001ECF80 07004014 */  bnez       $v0, .L001ECFA0
    /* EDF04 001ECF84 2D20A003 */   daddu     $a0, $sp, $zero
    /* EDF08 001ECF88 1800033C */  lui        $v1, %hi(D_00187180)
    /* EDF0C 001ECF8C 40002426 */  addiu      $a0, $s1, 0x40
    /* EDF10 001ECF90 80716324 */  addiu      $v1, $v1, %lo(D_00187180)
    /* EDF14 001ECF94 00008278 */  lq         $v0, 0x0($a0)
    /* EDF18 001ECF98 0000627C */  sq         $v0, 0x0($v1)
    /* EDF1C 001ECF9C 2D20A003 */  daddu      $a0, $sp, $zero
.align 2
  .L001ECFA0:
    /* EDF20 001ECFA0 CA54080C */  jal        func_00215328
    /* EDF24 001ECFA4 2D280002 */   daddu     $a1, $s0, $zero
    /* EDF28 001ECFA8 50003026 */  addiu      $s0, $s1, 0x50
    /* EDF2C 001ECFAC 00002EC6 */  lwc1       $f14, 0x0($s1)
    /* EDF30 001ECFB0 46AB0046 */  mov.s      $f13, $f21
    /* EDF34 001ECFB4 8850080C */  jal        func_00214220
    /* EDF38 001ECFB8 06B30046 */   mov.s     $f12, $f22
    /* EDF3C 001ECFBC 06030046 */  mov.s      $f12, $f0
    /* EDF40 001ECFC0 2D200002 */  daddu      $a0, $s0, $zero
    /* EDF44 001ECFC4 20002526 */  addiu      $a1, $s1, 0x20
    /* EDF48 001ECFC8 72E9070C */  jal        func_001FA5C8
    /* EDF4C 001ECFCC 2D30A003 */   daddu     $a2, $sp, $zero
    /* EDF50 001ECFD0 1000B227 */  addiu      $s2, $sp, 0x10
    /* EDF54 001ECFD4 2D200002 */  daddu      $a0, $s0, $zero
    /* EDF58 001ECFD8 B0E9070C */  jal        func_001FA6C0
    /* EDF5C 001ECFDC 2D284002 */   daddu     $a1, $s2, $zero
    /* EDF60 001ECFE0 1400628E */  lw         $v0, 0x14($s3)
    /* EDF64 001ECFE4 07004014 */  bnez       $v0, .L001ED004
    /* EDF68 001ECFE8 608180C7 */   lwc1      $f0, -0x7EA0($gp)
    /* EDF6C 001ECFEC 1800043C */  lui        $a0, %hi(D_00187390)
    /* EDF70 001ECFF0 2D284002 */  daddu      $a1, $s2, $zero
    /* EDF74 001ECFF4 20E9070C */  jal        func_001FA480
    /* EDF78 001ECFF8 90738424 */   addiu     $a0, $a0, %lo(D_00187390)
    /* EDF7C 001ECFFC 1600013C */  lui        $at, %hi(D_0015EE60)
    /* EDF80 001ED000 60EE20C4 */  lwc1       $f0, %lo(D_0015EE60)($at)
.align 2
  .L001ED004:
    /* EDF84 001ED004 100021C6 */  lwc1       $f1, 0x10($s1)
    /* EDF88 001ED008 0C0022C6 */  lwc1       $f2, 0xC($s1)
    /* EDF8C 001ED00C 42080046 */  mul.s      $f1, $f1, $f0
    /* EDF90 001ED010 80100146 */  add.s      $f2, $f2, $f1
    /* EDF94 001ED014 34A80246 */  c.lt.s     $f21, $f2
    /* EDF98 001ED018 00000000 */  nop
    /* EDF9C 001ED01C 02000045 */  bc1f       .L001ED028
    /* EDFA0 001ED020 0C0022E6 */   swc1      $f2, 0xC($s1)
    /* EDFA4 001ED024 0C0035E6 */  swc1       $f21, 0xC($s1)
.align 2
  .L001ED028:
    /* EDFA8 001ED028 1600013C */  lui        $at, %hi(D_0015EE60)
    /* EDFAC 001ED02C 60EE20C4 */  lwc1       $f0, %lo(D_0015EE60)($at)
    /* EDFB0 001ED030 040021C6 */  lwc1       $f1, 0x4($s1)
    /* EDFB4 001ED034 000022C6 */  lwc1       $f2, 0x0($s1)
    /* EDFB8 001ED038 42080046 */  mul.s      $f1, $f1, $f0
    /* EDFBC 001ED03C 80100146 */  add.s      $f2, $f2, $f1
    /* EDFC0 001ED040 34A80246 */  c.lt.s     $f21, $f2
    /* EDFC4 001ED044 00000000 */  nop
    /* EDFC8 001ED048 02000045 */  bc1f       .L001ED054
    /* EDFCC 001ED04C 000022E6 */   swc1      $f2, 0x0($s1)
    /* EDFD0 001ED050 000035E6 */  swc1       $f21, 0x0($s1)
.align 2
  .L001ED054:
    /* EDFD4 001ED054 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L001ED058:
    /* EDFD8 001ED058 9000BF7B */  lq         $ra, 0x90($sp)
    /* EDFDC 001ED05C 8000B37B */  lq         $s3, 0x80($sp)
    /* EDFE0 001ED060 7000B27B */  lq         $s2, 0x70($sp)
    /* EDFE4 001ED064 6000B17B */  lq         $s1, 0x60($sp)
    /* EDFE8 001ED068 5000B07B */  lq         $s0, 0x50($sp)
    /* EDFEC 001ED06C B000B6C7 */  lwc1       $f22, 0xB0($sp)
    /* EDFF0 001ED070 A800B5C7 */  lwc1       $f21, 0xA8($sp)
    /* EDFF4 001ED074 A000B4C7 */  lwc1       $f20, 0xA0($sp)
    /* EDFF8 001ED078 0800E003 */  jr         $ra
    /* EDFFC 001ED07C C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_001ECEA0
