.align 3
nonmatching func_0011BCB0, 0x204

glabel func_0011BCB0
    /* 1CC30 0011BCB0 80FFBD27 */  addiu      $29, $29, -0x80
    /* 1CC34 0011BCB4 2D200000 */  daddu      $4, $0, $0
    /* 1CC38 0011BCB8 2000B0FF */  sd         $16, 0x20($29)
    /* 1CC3C 0011BCBC 1600103C */  lui        $16, %hi(D_00158100)
    /* 1CC40 0011BCC0 3000B1FF */  sd         $17, 0x30($29)
    /* 1CC44 0011BCC4 7000BFFF */  sd         $31, 0x70($29)
    /* 1CC48 0011BCC8 00811126 */  addiu      $17, $16, %lo(D_00158100)
    /* 1CC4C 0011BCCC 6000B4FF */  sd         $20, 0x60($29)
    /* 1CC50 0011BCD0 5000B3FF */  sd         $19, 0x50($29)
    /* 1CC54 0011BCD4 886B040C */  jal        func_0011AE20
    /* 1CC58 0011BCD8 4000B2FF */   sd        $18, 0x40($29)
    /* 1CC5C 0011BCDC 008100AE */  sw         $0, %lo(D_00158100)($16)
    /* 1CC60 0011BCE0 5876040C */  jal        func_0011D960
    /* 1CC64 0011BCE4 040020AE */   sw        $0, 0x4($17)
    /* 1CC68 0011BCE8 1200053C */  lui        $5, %hi(func_0011B868)
    /* 1CC6C 0011BCEC 1600063C */  lui        $6, %hi(D_001580C0)
    /* 1CC70 0011BCF0 0080043C */  lui        $4, (0x80000011 >> 16)
    /* 1CC74 0011BCF4 2D804000 */  daddu      $16, $2, $0
    /* 1CC78 0011BCF8 68B8A524 */  addiu      $5, $5, %lo(func_0011B868)
    /* 1CC7C 0011BCFC C080C624 */  addiu      $6, $6, %lo(D_001580C0)
    /* 1CC80 0011BD00 8E6A040C */  jal        func_0011AA38
    /* 1CC84 0011BD04 11008434 */   ori       $4, $4, (0x80000011 & 0xFFFF)
    /* 1CC88 0011BD08 1200053C */  lui        $5, %hi(func_0011BC80)
    /* 1CC8C 0011BD0C 0080043C */  lui        $4, (0x80000013 >> 16)
    /* 1CC90 0011BD10 80BCA524 */  addiu      $5, $5, %lo(func_0011BC80)
    /* 1CC94 0011BD14 2D302002 */  daddu      $6, $17, $0
    /* 1CC98 0011BD18 8E6A040C */  jal        func_0011AA38
    /* 1CC9C 0011BD1C 13008434 */   ori       $4, $4, (0x80000013 & 0xFFFF)
    /* 1CCA0 0011BD20 0E000012 */  beqz       $16, .L0011BD5C
    /* 1CCA4 0011BD24 1600133C */   lui       $19, %hi(D_00158080)
    /* 1CCA8 0011BD28 6A76040C */  jal        func_0011D9A8
    /* 1CCAC 0011BD2C 80807026 */   addiu     $16, $19, %lo(D_00158080)
    /* 1CCB0 0011BD30 0B000010 */  b          .L0011BD60
    /* 1CCB4 0011BD34 00000000 */   nop
.align 2
  .L0011BD38:
    /* 1CCB8 0011BD38 FFFF0324 */  addiu      $3, $0, -0x1
    /* 1CCBC 0011BD3C 00000000 */  nop
.align 2
  .L0011BD40:
    /* 1CCC0 0011BD40 FFFF4224 */  addiu      $2, $2, %lo(D_FFFFF)
    /* 1CCC4 0011BD44 00000000 */  nop
    /* 1CCC8 0011BD48 00000000 */  nop
    /* 1CCCC 0011BD4C 00000000 */  nop
    /* 1CCD0 0011BD50 00000000 */  nop
    /* 1CCD4 0011BD54 FAFF4314 */  bne        $2, $3, .L0011BD40
    /* 1CCD8 0011BD58 00000000 */   nop
.align 2
  .L0011BD5C:
    /* 1CCDC 0011BD5C 80807026 */  addiu      $16, $19, %lo(D_00158080)
.align 2
  .L0011BD60:
    /* 1CCE0 0011BD60 0080053C */  lui        $5, (0x80000001 >> 16)
    /* 1CCE4 0011BD64 2D200002 */  daddu      $4, $16, $0
    /* 1CCE8 0011BD68 0100A534 */  ori        $5, $5, (0x80000001 & 0xFFFF)
    /* 1CCEC 0011BD6C BE6C040C */  jal        func_0011B2F8
    /* 1CCF0 0011BD70 2D300000 */   daddu     $6, $0, $0
    /* 1CCF4 0011BD74 47004004 */  bltz       $2, .L0011BE94
    /* 1CCF8 0011BD78 FFFF0224 */   addiu     $2, $0, -0x1
    /* 1CCFC 0011BD7C 2400028E */  lw         $2, 0x24($16)
    /* 1CD00 0011BD80 EDFF4010 */  beqz       $2, .L0011BD38
    /* 1CD04 0011BD84 1000023C */   lui       $2, %hi(D_FFFFF)
    /* 1CD08 0011BD88 C46D040C */  jal        func_0011B710
    /* 1CD0C 0011BD8C 1300143C */   lui       $20, %hi(D_0012FDA0)
    /* 1CD10 0011BD90 2C63040C */  jal        func_00118CB0
    /* 1CD14 0011BD94 A0FD848E */   lw        $4, %lo(D_0012FDA0)($20)
    /* 1CD18 0011BD98 1500033C */  lui        $3, %hi(D_00157E80)
    /* 1CD1C 0011BD9C 807E6324 */  addiu      $3, $3, %lo(D_00157E80)
    /* 1CD20 0011BDA0 00026424 */  addiu      $4, $3, 0x200
    /* 1CD24 0011BDA4 2B106400 */  sltu       $2, $3, $4
    /* 1CD28 0011BDA8 0C004010 */  beqz       $2, .L0011BDDC
    /* 1CD2C 0011BDAC 1500123C */   lui       $18, %hi(D_00156940)
    /* 1CD30 0011BDB0 1500113C */  lui        $17, %hi(D_00157600)
    /* 1CD34 0011BDB4 1500103C */  lui        $16, %hi(D_001575C0)
.align 2
  .L0011BDB8:
    /* 1CD38 0011BDB8 040060AC */  sw         $0, 0x4($3)
    /* 1CD3C 0011BDBC 10006324 */  addiu      $3, $3, 0x10
    /* 1CD40 0011BDC0 2B106400 */  sltu       $2, $3, $4
    /* 1CD44 0011BDC4 00000000 */  nop
    /* 1CD48 0011BDC8 00000000 */  nop
    /* 1CD4C 0011BDCC FAFF4014 */  bnez       $2, .L0011BDB8
    /* 1CD50 0011BDD0 00000000 */   nop
    /* 1CD54 0011BDD4 04000010 */  b          .L0011BDE8
    /* 1CD58 0011BDD8 A0FD848E */   lw        $4, %lo(D_0012FDA0)($20)
.align 2
  .L0011BDDC:
    /* 1CD5C 0011BDDC 1500113C */  lui        $17, %hi(D_00157600)
    /* 1CD60 0011BDE0 1500103C */  lui        $16, %hi(D_001575C0)
    /* 1CD64 0011BDE4 A0FD848E */  lw         $4, %lo(D_0012FDA0)($20)
.align 2
  .L0011BDE8:
    /* 1CD68 0011BDE8 2463040C */  jal        func_00118C90
    /* 1CD6C 0011BDEC C0751026 */   addiu     $16, $16, %lo(D_001575C0)
    /* 1CD70 0011BDF0 00762326 */  addiu      $3, $17, %lo(D_00157600)
    /* 1CD74 0011BDF4 40694726 */  addiu      $7, $18, %lo(D_00156940)
    /* 1CD78 0011BDF8 406943AE */  sw         $3, %lo(D_00156940)($18)
    /* 1CD7C 0011BDFC 80806426 */  addiu      $4, $19, %lo(D_00158080)
    /* 1CD80 0011BE00 40046324 */  addiu      $3, $3, 0x440
    /* 1CD84 0011BE04 FF000524 */  addiu      $5, $0, 0xFF
    /* 1CD88 0011BE08 0400E3AC */  sw         $3, 0x4($7)
    /* 1CD8C 0011BE0C 2D300000 */  daddu      $6, $0, $0
    /* 1CD90 0011BE10 0000A0AF */  sw         $0, 0x0($29)
    /* 1CD94 0011BE14 08000824 */  addiu      $8, $0, 0x8
    /* 1CD98 0011BE18 2D480002 */  daddu      $9, $16, $0
    /* 1CD9C 0011BE1C 08000A24 */  addiu      $10, $0, 0x8
    /* 1CDA0 0011BE20 326D040C */  jal        func_0011B4C8
    /* 1CDA4 0011BE24 2D580000 */   daddu     $11, $0, $0
    /* 1CDA8 0011BE28 04004104 */  bgez       $2, .L0011BE3C
    /* 1CDAC 0011BE2C 0020043C */   lui       $4, (0x20000000 >> 16)
    /* 1CDB0 0011BE30 FEFF023C */  lui        $2, (0xFFFEFFFF >> 16)
    /* 1CDB4 0011BE34 17000010 */  b          .L0011BE94
    /* 1CDB8 0011BE38 FFFF4234 */   ori       $2, $2, (0xFFFEFFFF & 0xFFFF)
.align 2
  .L0011BE3C:
    /* 1CDBC 0011BE3C 04000226 */  addiu      $2, $16, 0x4
    /* 1CDC0 0011BE40 25180402 */  or         $3, $16, $4
    /* 1CDC4 0011BE44 25104400 */  or         $2, $2, $4
    /* 1CDC8 0011BE48 1600053C */  lui        $5, %hi(D_001580A8)
    /* 1CDCC 0011BE4C A880A824 */  addiu      $8, $5, %lo(D_001580A8)
    /* 1CDD0 0011BE50 03006488 */  lwl        $4, 0x3($3)
    /* 1CDD4 0011BE54 00006498 */  lwr        $4, 0x0($3)
    /* 1CDD8 0011BE58 030004A9 */  swl        $4, 0x3($8)
    /* 1CDDC 0011BE5C 000004B9 */  swr        $4, 0x0($8)
    /* 1CDE0 0011BE60 03004388 */  lwl        $3, (0x20000003 & 0xFFFF)($2)
    /* 1CDE4 0011BE64 00004398 */  lwr        $3, (0x20000000 & 0xFFFF)($2)
    /* 1CDE8 0011BE68 1300A3AB */  swl        $3, 0x13($29)
    /* 1CDEC 0011BE6C 1000A3BB */  swr        $3, 0x10($29)
    /* 1CDF0 0011BE70 1300063C */  lui        $6, %hi(D_0012FD98)
    /* 1CDF4 0011BE74 1300053C */  lui        $5, %hi(D_0012FD94)
    /* 1CDF8 0011BE78 1000A38F */  lw         $3, 0x10($29)
    /* 1CDFC 0011BE7C 01000424 */  addiu      $4, $0, 0x1
    /* 1CE00 0011BE80 94FDA4AC */  sw         $4, %lo(D_0012FD94)($5)
    /* 1CE04 0011BE84 2D100000 */  daddu      $2, $0, $0
    /* 1CE08 0011BE88 02006338 */  xori       $3, $3, 0x2
    /* 1CE0C 0011BE8C 0100632C */  sltiu      $3, $3, 0x1
    /* 1CE10 0011BE90 98FDC3AC */  sw         $3, %lo(D_0012FD98)($6)
.align 2
  .L0011BE94:
    /* 1CE14 0011BE94 7000BFDF */  ld         $31, 0x70($29)
    /* 1CE18 0011BE98 6000B4DF */  ld         $20, 0x60($29)
    /* 1CE1C 0011BE9C 5000B3DF */  ld         $19, 0x50($29)
    /* 1CE20 0011BEA0 4000B2DF */  ld         $18, 0x40($29)
    /* 1CE24 0011BEA4 3000B1DF */  ld         $17, 0x30($29)
    /* 1CE28 0011BEA8 2000B0DF */  ld         $16, 0x20($29)
    /* 1CE2C 0011BEAC 0800E003 */  jr         $31
    /* 1CE30 0011BEB0 8000BD27 */   addiu     $29, $29, 0x80
endlabel func_0011BCB0
    /* 1CE34 0011BEB4 00000000 */  nop
