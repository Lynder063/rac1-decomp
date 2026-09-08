.align 3
nonmatching func_0011DA98, 0xFC

glabel func_0011DA98
    /* 1EA18 0011DA98 80FFBD27 */  addiu      $29, $29, -0x80
    /* 1EA1C 0011DA9C 1300023C */  lui        $2, %hi(D_00130410)
    /* 1EA20 0011DAA0 5000B5FF */  sd         $21, 0x50($29)
    /* 1EA24 0011DAA4 4000B4FF */  sd         $20, 0x40($29)
    /* 1EA28 0011DAA8 1200153C */  lui        $21, %hi(func_0011DA40)
    /* 1EA2C 0011DAAC 3000B3FF */  sd         $19, 0x30($29)
    /* 1EA30 0011DAB0 1200143C */  lui        $20, %hi(func_0011DA08)
    /* 1EA34 0011DAB4 2000B2FF */  sd         $18, 0x20($29)
    /* 1EA38 0011DAB8 1000B1FF */  sd         $17, 0x10($29)
    /* 1EA3C 0011DABC 0000B0FF */  sd         $16, 0x0($29)
    /* 1EA40 0011DAC0 7000BFFF */  sd         $31, 0x70($29)
    /* 1EA44 0011DAC4 10045024 */  addiu      $16, $2, %lo(D_00130410)
    /* 1EA48 0011DAC8 6000B6FF */  sd         $22, 0x60($29)
    /* 1EA4C 0011DACC 1004448C */  lw         $4, %lo(D_00130410)($2)
    /* 1EA50 0011DAD0 E676040C */  jal        func_0011DB98
    /* 1EA54 0011DAD4 0400058E */   lw        $5, 0x4($16)
    /* 1EA58 0011DAD8 0C00058E */  lw         $5, 0xC($16)
    /* 1EA5C 0011DADC E676040C */  jal        func_0011DB98
    /* 1EA60 0011DAE0 0800048E */   lw        $4, 0x8($16)
    /* 1EA64 0011DAE4 0080043C */  lui        $4, (0x80000000 >> 16)
    /* 1EA68 0011DAE8 0880053C */  lui        $5, (0x80080000 >> 16)
    /* 1EA6C 0011DAEC A076040C */  jal        func_0011DA80
    /* 1EA70 0011DAF0 40DAA626 */   addiu     $6, $21, %lo(func_0011DA40)
    /* 1EA74 0011DAF4 2D984000 */  daddu      $19, $2, $0
    /* 1EA78 0011DAF8 0080043C */  lui        $4, (0x80000000 >> 16)
    /* 1EA7C 0011DAFC 0880053C */  lui        $5, (0x80080000 >> 16)
    /* 1EA80 0011DB00 A076040C */  jal        func_0011DA80
    /* 1EA84 0011DB04 08DA8626 */   addiu     $6, $20, %lo(func_0011DA08)
    /* 1EA88 0011DB08 F4FD7126 */  addiu      $17, $19, -0x20C
    /* 1EA8C 0011DB0C 2D904000 */  daddu      $18, $2, $0
    /* 1EA90 0011DB10 98FE5026 */  addiu      $16, $18, -0x168
    /* 1EA94 0011DB14 14003012 */  beq        $17, $16, .L0011DB68
    /* 1EA98 0011DB18 1300163C */   lui       $22, %hi(D_00130408)
    /* 1EA9C 0011DB1C 2B103002 */  sltu       $2, $17, $16
.align 2
  .L0011DB20:
    /* 1EAA0 0011DB20 07004010 */  beqz       $2, .L0011DB40
    /* 1EAA4 0011DB24 04006426 */   addiu     $4, $19, 0x4
    /* 1EAA8 0011DB28 0880053C */  lui        $5, (0x80080000 >> 16)
    /* 1EAAC 0011DB2C A076040C */  jal        func_0011DA80
    /* 1EAB0 0011DB30 40DAA626 */   addiu     $6, $21, %lo(func_0011DA40)
    /* 1EAB4 0011DB34 2D984000 */  daddu      $19, $2, $0
    /* 1EAB8 0011DB38 07000010 */  b          .L0011DB58
    /* 1EABC 0011DB3C F4FD7126 */   addiu     $17, $19, -0x20C
.align 2
  .L0011DB40:
    /* 1EAC0 0011DB40 04004426 */  addiu      $4, $18, 0x4
    /* 1EAC4 0011DB44 0880053C */  lui        $5, (0x80080000 >> 16)
    /* 1EAC8 0011DB48 A076040C */  jal        func_0011DA80
    /* 1EACC 0011DB4C 08DA8626 */   addiu     $6, $20, %lo(func_0011DA08)
    /* 1EAD0 0011DB50 2D904000 */  daddu      $18, $2, $0
    /* 1EAD4 0011DB54 98FE5026 */  addiu      $16, $18, -0x168
.align 2
  .L0011DB58:
    /* 1EAD8 0011DB58 F1FF3016 */  bne        $17, $16, .L0011DB20
    /* 1EADC 0011DB5C 2B103002 */   sltu      $2, $17, $16
    /* 1EAE0 0011DB60 02000010 */  b          .L0011DB6C
    /* 1EAE4 0011DB64 0804D1AE */   sw        $17, %lo(D_00130408)($22)
.align 2
  .L0011DB68:
    /* 1EAE8 0011DB68 0804D1AE */  sw         $17, %lo(D_00130408)($22)
.align 2
  .L0011DB6C:
    /* 1EAEC 0011DB6C 7000BFDF */  ld         $31, 0x70($29)
    /* 1EAF0 0011DB70 6000B6DF */  ld         $22, 0x60($29)
    /* 1EAF4 0011DB74 5000B5DF */  ld         $21, 0x50($29)
    /* 1EAF8 0011DB78 4000B4DF */  ld         $20, 0x40($29)
    /* 1EAFC 0011DB7C 3000B3DF */  ld         $19, 0x30($29)
    /* 1EB00 0011DB80 2000B2DF */  ld         $18, 0x20($29)
    /* 1EB04 0011DB84 1000B1DF */  ld         $17, 0x10($29)
    /* 1EB08 0011DB88 0000B0DF */  ld         $16, 0x0($29)
    /* 1EB0C 0011DB8C 0800E003 */  jr         $31
    /* 1EB10 0011DB90 8000BD27 */   addiu     $29, $29, 0x80
endlabel func_0011DA98
    /* 1EB14 0011DB94 00000000 */  nop
