.align 3
nonmatching func_001ECEA0, 0x1E0

glabel func_001ECEA0
    /* EDE20 001ECEA0 40FFBD27 */  addiu      $29, $29, -0xC0
    /* EDE24 001ECEA4 803F013C */  lui        $1, (0x3F800000 >> 16)
    /* EDE28 001ECEA8 00088144 */  mtc1       $1, $f1
    /* EDE2C 001ECEAC 6000B17F */  sq         $17, 0x60($29)
    /* EDE30 001ECEB0 5000B07F */  sq         $16, 0x50($29)
    /* EDE34 001ECEB4 2D88A000 */  daddu      $17, $5, $0
    /* EDE38 001ECEB8 9000BF7F */  sq         $31, 0x90($29)
    /* EDE3C 001ECEBC 8000B37F */  sq         $19, 0x80($29)
    /* EDE40 001ECEC0 7000B27F */  sq         $18, 0x70($29)
    /* EDE44 001ECEC4 B000B6E7 */  swc1       $f22, 0xB0($29)
    /* EDE48 001ECEC8 A800B5E7 */  swc1       $f21, 0xA8($29)
    /* EDE4C 001ECECC A000B4E7 */  swc1       $f20, 0xA0($29)
    /* EDE50 001ECED0 0C0020C6 */  lwc1       $f0, 0xC($17)
    /* EDE54 001ECED4 32000146 */  c.eq.s     $f0, $f1
    /* EDE58 001ECED8 00000000 */  nop
    /* EDE5C 001ECEDC 06000045 */  bc1f       .L001ECEF8
    /* EDE60 001ECEE0 2D808000 */   daddu     $16, $4, $0
    /* EDE64 001ECEE4 000020C6 */  lwc1       $f0, 0x0($17)
    /* EDE68 001ECEE8 32000146 */  c.eq.s     $f0, $f1
    /* EDE6C 001ECEEC 00000000 */  nop
    /* EDE70 001ECEF0 59000145 */  bc1t       .L001ED058
    /* EDE74 001ECEF4 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L001ECEF8:
    /* EDE78 001ECEF8 00B08044 */  mtc1       $0, $f22
    /* EDE7C 001ECEFC 803F013C */  lui        $1, (0x3F800000 >> 16)
    /* EDE80 001ECF00 00A88144 */  mtc1       $1, $f21
    /* EDE84 001ECF04 0C002EC6 */  lwc1       $f14, 0xC($17)
    /* EDE88 001ECF08 06B30046 */  mov.s      $f12, $f22
    /* EDE8C 001ECF0C 8850080C */  jal        func_00214220
    /* EDE90 001ECF10 46AB0046 */   mov.s     $f13, $f21
    /* EDE94 001ECF14 30002426 */  addiu      $4, $17, 0x30
    /* EDE98 001ECF18 1400053C */  lui        $5, %hi(D_0013F590)
    /* EDE9C 001ECF1C 06050046 */  mov.s      $f20, $f0
    /* EDEA0 001ECF20 90F5A524 */  addiu      $5, $5, %lo(D_0013F590)
    /* EDEA4 001ECF24 F6E6070C */  jal        func_001F9BD8
    /* EDEA8 001ECF28 2D308000 */   daddu     $6, $4, $0
    /* EDEAC 001ECF2C 300000C6 */  lwc1       $f0, 0x30($16)
    /* EDEB0 001ECF30 1900023C */  lui        $2, %hi(D_0018C418)
    /* EDEB4 001ECF34 300021C6 */  lwc1       $f1, 0x30($17)
    /* EDEB8 001ECF38 18C45324 */  addiu      $19, $2, %lo(D_0018C418)
    /* EDEBC 001ECF3C 340022C6 */  lwc1       $f2, 0x34($17)
    /* EDEC0 001ECF40 01000146 */  sub.s      $f0, $f0, $f1
    /* EDEC4 001ECF44 380023C6 */  lwc1       $f3, 0x38($17)
    /* EDEC8 001ECF48 02001446 */  mul.s      $f0, $f0, $f20
    /* EDECC 001ECF4C 40080046 */  add.s      $f1, $f1, $f0
    /* EDED0 001ECF50 400021E6 */  swc1       $f1, 0x40($17)
    /* EDED4 001ECF54 340000C6 */  lwc1       $f0, 0x34($16)
    /* EDED8 001ECF58 01000246 */  sub.s      $f0, $f0, $f2
    /* EDEDC 001ECF5C 02001446 */  mul.s      $f0, $f0, $f20
    /* EDEE0 001ECF60 80100046 */  add.s      $f2, $f2, $f0
    /* EDEE4 001ECF64 440022E6 */  swc1       $f2, 0x44($17)
    /* EDEE8 001ECF68 380000C6 */  lwc1       $f0, 0x38($16)
    /* EDEEC 001ECF6C 01000346 */  sub.s      $f0, $f0, $f3
    /* EDEF0 001ECF70 02001446 */  mul.s      $f0, $f0, $f20
    /* EDEF4 001ECF74 C0180046 */  add.s      $f3, $f3, $f0
    /* EDEF8 001ECF78 480023E6 */  swc1       $f3, 0x48($17)
    /* EDEFC 001ECF7C 1400628E */  lw         $2, 0x14($19)
    /* EDF00 001ECF80 07004014 */  bnez       $2, .L001ECFA0
    /* EDF04 001ECF84 2D20A003 */   daddu     $4, $29, $0
    /* EDF08 001ECF88 1800033C */  lui        $3, %hi(D_00187180)
    /* EDF0C 001ECF8C 40002426 */  addiu      $4, $17, 0x40
    /* EDF10 001ECF90 80716324 */  addiu      $3, $3, %lo(D_00187180)
    /* EDF14 001ECF94 00008278 */  lq         $2, 0x0($4)
    /* EDF18 001ECF98 0000627C */  sq         $2, 0x0($3)
    /* EDF1C 001ECF9C 2D20A003 */  daddu      $4, $29, $0
.align 2
  .L001ECFA0:
    /* EDF20 001ECFA0 CA54080C */  jal        func_00215328
    /* EDF24 001ECFA4 2D280002 */   daddu     $5, $16, $0
    /* EDF28 001ECFA8 50003026 */  addiu      $16, $17, 0x50
    /* EDF2C 001ECFAC 00002EC6 */  lwc1       $f14, 0x0($17)
    /* EDF30 001ECFB0 46AB0046 */  mov.s      $f13, $f21
    /* EDF34 001ECFB4 8850080C */  jal        func_00214220
    /* EDF38 001ECFB8 06B30046 */   mov.s     $f12, $f22
    /* EDF3C 001ECFBC 06030046 */  mov.s      $f12, $f0
    /* EDF40 001ECFC0 2D200002 */  daddu      $4, $16, $0
    /* EDF44 001ECFC4 20002526 */  addiu      $5, $17, 0x20
    /* EDF48 001ECFC8 72E9070C */  jal        func_001FA5C8
    /* EDF4C 001ECFCC 2D30A003 */   daddu     $6, $29, $0
    /* EDF50 001ECFD0 1000B227 */  addiu      $18, $29, 0x10
    /* EDF54 001ECFD4 2D200002 */  daddu      $4, $16, $0
    /* EDF58 001ECFD8 B0E9070C */  jal        func_001FA6C0
    /* EDF5C 001ECFDC 2D284002 */   daddu     $5, $18, $0
    /* EDF60 001ECFE0 1400628E */  lw         $2, 0x14($19)
    /* EDF64 001ECFE4 07004014 */  bnez       $2, .L001ED004
    /* EDF68 001ECFE8 608180C7 */   lwc1      $f0, -0x7EA0($28)
    /* EDF6C 001ECFEC 1800043C */  lui        $4, %hi(D_00187390)
    /* EDF70 001ECFF0 2D284002 */  daddu      $5, $18, $0
    /* EDF74 001ECFF4 20E9070C */  jal        func_001FA480
    /* EDF78 001ECFF8 90738424 */   addiu     $4, $4, %lo(D_00187390)
    /* EDF7C 001ECFFC 1600013C */  lui        $1, %hi(D_0015EE60)
    /* EDF80 001ED000 60EE20C4 */  lwc1       $f0, %lo(D_0015EE60)($1)
.align 2
  .L001ED004:
    /* EDF84 001ED004 100021C6 */  lwc1       $f1, 0x10($17)
    /* EDF88 001ED008 0C0022C6 */  lwc1       $f2, 0xC($17)
    /* EDF8C 001ED00C 42080046 */  mul.s      $f1, $f1, $f0
    /* EDF90 001ED010 80100146 */  add.s      $f2, $f2, $f1
    /* EDF94 001ED014 34A80246 */  c.lt.s     $f21, $f2
    /* EDF98 001ED018 00000000 */  nop
    /* EDF9C 001ED01C 02000045 */  bc1f       .L001ED028
    /* EDFA0 001ED020 0C0022E6 */   swc1      $f2, 0xC($17)
    /* EDFA4 001ED024 0C0035E6 */  swc1       $f21, 0xC($17)
.align 2
  .L001ED028:
    /* EDFA8 001ED028 1600013C */  lui        $1, %hi(D_0015EE60)
    /* EDFAC 001ED02C 60EE20C4 */  lwc1       $f0, %lo(D_0015EE60)($1)
    /* EDFB0 001ED030 040021C6 */  lwc1       $f1, 0x4($17)
    /* EDFB4 001ED034 000022C6 */  lwc1       $f2, 0x0($17)
    /* EDFB8 001ED038 42080046 */  mul.s      $f1, $f1, $f0
    /* EDFBC 001ED03C 80100146 */  add.s      $f2, $f2, $f1
    /* EDFC0 001ED040 34A80246 */  c.lt.s     $f21, $f2
    /* EDFC4 001ED044 00000000 */  nop
    /* EDFC8 001ED048 02000045 */  bc1f       .L001ED054
    /* EDFCC 001ED04C 000022E6 */   swc1      $f2, 0x0($17)
    /* EDFD0 001ED050 000035E6 */  swc1       $f21, 0x0($17)
.align 2
  .L001ED054:
    /* EDFD4 001ED054 2D100000 */  daddu      $2, $0, $0
.align 2
  .L001ED058:
    /* EDFD8 001ED058 9000BF7B */  lq         $31, 0x90($29)
    /* EDFDC 001ED05C 8000B37B */  lq         $19, 0x80($29)
    /* EDFE0 001ED060 7000B27B */  lq         $18, 0x70($29)
    /* EDFE4 001ED064 6000B17B */  lq         $17, 0x60($29)
    /* EDFE8 001ED068 5000B07B */  lq         $16, 0x50($29)
    /* EDFEC 001ED06C B000B6C7 */  lwc1       $f22, 0xB0($29)
    /* EDFF0 001ED070 A800B5C7 */  lwc1       $f21, 0xA8($29)
    /* EDFF4 001ED074 A000B4C7 */  lwc1       $f20, 0xA0($29)
    /* EDFF8 001ED078 0800E003 */  jr         $31
    /* EDFFC 001ED07C C000BD27 */   addiu     $29, $29, 0xC0
endlabel func_001ECEA0
