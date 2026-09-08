.align 3
nonmatching func_0011CAE0, 0xE8

glabel func_0011CAE0
    /* 1DA60 0011CAE0 C000BD27 */  addiu      $29, $29, 0xC0
    /* 1DA64 0011CAE4 00000000 */  nop
    /* 1DA68 0011CAE8 D000BD27 */  addiu      $29, $29, 0xD0
    /* 1DA6C 0011CAEC 00000000 */  nop
    /* 1DA70 0011CAF0 D000BD27 */  addiu      $29, $29, 0xD0
    /* 1DA74 0011CAF4 00000000 */  nop
    /* 1DA78 0011CAF8 1000BD27 */  addiu      $29, $29, 0x10
    /* 1DA7C 0011CAFC 00000000 */  nop
    /* 1DA80 0011CB00 D000BD27 */  addiu      $29, $29, 0xD0
    /* 1DA84 0011CB04 00000000 */  nop
    /* 1DA88 0011CB08 1000BD27 */  addiu      $29, $29, 0x10
    /* 1DA8C 0011CB0C 00000000 */  nop
    /* 1DA90 0011CB10 D000BD27 */  addiu      $29, $29, 0xD0
    /* 1DA94 0011CB14 00000000 */  nop
    /* 1DA98 0011CB18 1000BD27 */  addiu      $29, $29, 0x10
    /* 1DA9C 0011CB1C 00000000 */  nop
    /* 1DAA0 0011CB20 E000BD27 */  addiu      $29, $29, 0xE0
    /* 1DAA4 0011CB24 00000000 */  nop
    /* 1DAA8 0011CB28 1000BD27 */  addiu      $29, $29, 0x10
    /* 1DAAC 0011CB2C 00000000 */  nop
    /* 1DAB0 0011CB30 E000BD27 */  addiu      $29, $29, 0xE0
    /* 1DAB4 0011CB34 00000000 */  nop
    /* 1DAB8 0011CB38 1000BD27 */  addiu      $29, $29, 0x10
    /* 1DABC 0011CB3C 00000000 */  nop
.align 2
  alabel func_0011CB40
    /* 1DAC0 0011CB40 D0FFBD27 */  addiu      $29, $29, -0x30
    /* 1DAC4 0011CB44 1000B1FF */  sd         $17, 0x10($29)
    /* 1DAC8 0011CB48 2000BFFF */  sd         $31, 0x20($29)
    /* 1DACC 0011CB4C 1600113C */  lui        $17, %hi(D_00158140)
    /* 1DAD0 0011CB50 0A000010 */  b          .L0011CB7C
    /* 1DAD4 0011CB54 0000B0FF */   sd        $16, 0x0($29)
.align 2
  .L0011CB58:
    /* 1DAD8 0011CB58 1000023C */  lui        $2, %hi(D_FFFFF)
    /* 1DADC 0011CB5C FFFF0324 */  addiu      $3, $0, -0x1
.align 2
  .L0011CB60:
    /* 1DAE0 0011CB60 FFFF4224 */  addiu      $2, $2, %lo(D_FFFFF)
    /* 1DAE4 0011CB64 00000000 */  nop
    /* 1DAE8 0011CB68 00000000 */  nop
    /* 1DAEC 0011CB6C 00000000 */  nop
    /* 1DAF0 0011CB70 00000000 */  nop
    /* 1DAF4 0011CB74 FAFF4314 */  bne        $2, $3, .L0011CB60
    /* 1DAF8 0011CB78 00000000 */   nop
.align 2
  .L0011CB7C:
    /* 1DAFC 0011CB7C 40813026 */  addiu      $16, $17, %lo(D_00158140)
    /* 1DB00 0011CB80 0080053C */  lui        $5, (0x80000003 >> 16)
    /* 1DB04 0011CB84 2D200002 */  daddu      $4, $16, $0
    /* 1DB08 0011CB88 0300A534 */  ori        $5, $5, (0x80000003 & 0xFFFF)
    /* 1DB0C 0011CB8C BE6C040C */  jal        func_0011B2F8
    /* 1DB10 0011CB90 2D300000 */   daddu     $6, $0, $0
    /* 1DB14 0011CB94 03004304 */  bgezl      $2, .L0011CBA4
    /* 1DB18 0011CB98 2400028E */   lw        $2, 0x24($16)
    /* 1DB1C 0011CB9C 05000010 */  b          .L0011CBB4
    /* 1DB20 0011CBA0 FFFF0224 */   addiu     $2, $0, -0x1
.align 2
  .L0011CBA4:
    /* 1DB24 0011CBA4 ECFF4010 */  beqz       $2, .L0011CB58
    /* 1DB28 0011CBA8 1300023C */   lui       $2, %hi(D_0012FDAC)
    /* 1DB2C 0011CBAC ACFD40AC */  sw         $0, %lo(D_0012FDAC)($2)
    /* 1DB30 0011CBB0 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0011CBB4:
    /* 1DB34 0011CBB4 2000BFDF */  ld         $31, 0x20($29)
    /* 1DB38 0011CBB8 1000B1DF */  ld         $17, 0x10($29)
    /* 1DB3C 0011CBBC 0000B0DF */  ld         $16, 0x0($29)
    /* 1DB40 0011CBC0 0800E003 */  jr         $31
    /* 1DB44 0011CBC4 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0011CAE0
