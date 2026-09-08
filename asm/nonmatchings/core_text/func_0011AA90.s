.align 3
nonmatching func_0011AA90, 0x134

glabel func_0011AA90
    /* 1BA10 0011AA90 80FFBD27 */  addiu      $29, $29, -0x80
    /* 1BA14 0011AA94 3000B1FF */  sd         $17, 0x30($29)
    /* 1BA18 0011AA98 6000B4FF */  sd         $20, 0x60($29)
    /* 1BA1C 0011AA9C 2D88E000 */  daddu      $17, $7, $0
    /* 1BA20 0011AAA0 5000B3FF */  sd         $19, 0x50($29)
    /* 1BA24 0011AAA4 2DA08000 */  daddu      $20, $4, $0
    /* 1BA28 0011AAA8 2000B0FF */  sd         $16, 0x20($29)
    /* 1BA2C 0011AAAC F0FF2226 */  addiu      $2, $17, -0x10
    /* 1BA30 0011AAB0 2D98A000 */  daddu      $19, $5, $0
    /* 1BA34 0011AAB4 7000BFFF */  sd         $31, 0x70($29)
    /* 1BA38 0011AAB8 4000B2FF */  sd         $18, 0x40($29)
    /* 1BA3C 0011AABC 2D80C000 */  daddu      $16, $6, $0
    /* 1BA40 0011AAC0 2D200001 */  daddu      $4, $8, $0
    /* 1BA44 0011AAC4 6100422C */  sltiu      $2, $2, 0x61
    /* 1BA48 0011AAC8 03004014 */  bnez       $2, .L0011AAD8
    /* 1BA4C 0011AACC 2D284001 */   daddu     $5, $10, $0
    /* 1BA50 0011AAD0 34000010 */  b          .L0011ABA4
    /* 1BA54 0011AAD4 2D100000 */   daddu     $2, $0, $0
.align 2
  .L0011AAD8:
    /* 1BA58 0011AAD8 1100A018 */  blez       $5, .L0011AB20
    /* 1BA5C 0011AADC 2D900000 */   daddu     $18, $0, $0
    /* 1BA60 0011AAE0 00000292 */  lbu        $2, 0x0($16)
    /* 1BA64 0011AAE4 001A0500 */  sll        $3, $5, 8
    /* 1BA68 0011AAE8 040009AE */  sw         $9, 0x4($16)
    /* 1BA6C 0011AAEC 01001224 */  addiu      $18, $0, 0x1
    /* 1BA70 0011AAF0 25104300 */  or         $2, $2, $3
    /* 1BA74 0011AAF4 0000A4AF */  sw         $4, 0x0($29)
    /* 1BA78 0011AAF8 000002AE */  sw         $2, 0x0($16)
    /* 1BA7C 0011AAFC 04006332 */  andi       $3, $19, 0x4
    /* 1BA80 0011AB00 0400A9AF */  sw         $9, 0x4($29)
    /* 1BA84 0011AB04 0800A5AF */  sw         $5, 0x8($29)
    /* 1BA88 0011AB08 08006010 */  beqz       $3, .L0011AB2C
    /* 1BA8C 0011AB0C 0C00A0AF */   sw        $0, 0xC($29)
    /* 1BA90 0011AB10 5C6B040C */  jal        func_0011AD70
    /* 1BA94 0011AB14 00000000 */   nop
    /* 1BA98 0011AB18 05000010 */  b          .L0011AB30
    /* 1BA9C 0011AB1C 00291200 */   sll       $5, $18, 4
.align 2
  .L0011AB20:
    /* 1BAA0 0011AB20 00000292 */  lbu        $2, 0x0($16)
    /* 1BAA4 0011AB24 040000AE */  sw         $0, 0x4($16)
    /* 1BAA8 0011AB28 000002AE */  sw         $2, 0x0($16)
.align 2
  .L0011AB2C:
    /* 1BAAC 0011AB2C 00291200 */  sll        $5, $18, 4
.align 2
  .L0011AB30:
    /* 1BAB0 0011AB30 1500023C */  lui        $2, %hi(D_00154F60)
    /* 1BAB4 0011AB34 604F448C */  lw         $4, %lo(D_00154F60)($2)
    /* 1BAB8 0011AB38 2118A503 */  addu       $3, $29, $5
    /* 1BABC 0011AB3C 000070AC */  sw         $16, 0x0($3)
    /* 1BAC0 0011AB40 0400A227 */  addiu      $2, $29, 0x4
    /* 1BAC4 0011AB44 21104500 */  addu       $2, $2, $5
    /* 1BAC8 0011AB48 0800A327 */  addiu      $3, $29, 0x8
    /* 1BACC 0011AB4C 000044AC */  sw         $4, 0x0($2)
    /* 1BAD0 0011AB50 21186500 */  addu       $3, $3, $5
    /* 1BAD4 0011AB54 000071AC */  sw         $17, 0x0($3)
    /* 1BAD8 0011AB58 0C00A427 */  addiu      $4, $29, 0xC
    /* 1BADC 0011AB5C 21208500 */  addu       $4, $4, $5
    /* 1BAE0 0011AB60 080014AE */  sw         $20, 0x8($16)
    /* 1BAE4 0011AB64 000011A2 */  sb         $17, 0x0($16)
    /* 1BAE8 0011AB68 44000224 */  addiu      $2, $0, 0x44
    /* 1BAEC 0011AB6C 000082AC */  sw         $2, 0x0($4)
    /* 1BAF0 0011AB70 2D282002 */  daddu      $5, $17, $0
    /* 1BAF4 0011AB74 2D200002 */  daddu      $4, $16, $0
    /* 1BAF8 0011AB78 5C6B040C */  jal        func_0011AD70
    /* 1BAFC 0011AB7C 01005226 */   addiu     $18, $18, 0x1
    /* 1BB00 0011AB80 01006232 */  andi       $2, $19, 0x1
    /* 1BB04 0011AB84 05004010 */  beqz       $2, .L0011AB9C
    /* 1BB08 0011AB88 2D284002 */   daddu     $5, $18, $0
    /* 1BB0C 0011AB8C 8C63040C */  jal        func_00118E30
    /* 1BB10 0011AB90 2D20A003 */   daddu     $4, $29, $0
    /* 1BB14 0011AB94 04000010 */  b          .L0011ABA8
    /* 1BB18 0011AB98 7000BFDF */   ld        $31, 0x70($29)
.align 2
  .L0011AB9C:
    /* 1BB1C 0011AB9C 8863040C */  jal        func_00118E20
    /* 1BB20 0011ABA0 2D20A003 */   daddu     $4, $29, $0
.align 2
  .L0011ABA4:
    /* 1BB24 0011ABA4 7000BFDF */  ld         $31, 0x70($29)
.align 2
  .L0011ABA8:
    /* 1BB28 0011ABA8 6000B4DF */  ld         $20, 0x60($29)
    /* 1BB2C 0011ABAC 5000B3DF */  ld         $19, 0x50($29)
    /* 1BB30 0011ABB0 4000B2DF */  ld         $18, 0x40($29)
    /* 1BB34 0011ABB4 3000B1DF */  ld         $17, 0x30($29)
    /* 1BB38 0011ABB8 2000B0DF */  ld         $16, 0x20($29)
    /* 1BB3C 0011ABBC 0800E003 */  jr         $31
    /* 1BB40 0011ABC0 8000BD27 */   addiu     $29, $29, 0x80
endlabel func_0011AA90
    /* 1BB44 0011ABC4 00000000 */  nop
