.align 3
nonmatching func_0012DA38, 0xDC

glabel func_0012DA38
    /* 2E9B8 0012DA38 1600033C */  lui        $3, %hi(D_0015EF4C)
    /* 2E9BC 0012DA3C 4CEF638C */  lw         $3, %lo(D_0015EF4C)($3)
    /* 2E9C0 0012DA40 2D480000 */  daddu      $9, $0, $0
    /* 2E9C4 0012DA44 0000628C */  lw         $2, 0x0($3)
    /* 2E9C8 0012DA48 26000010 */  b          .L0012DAE4
    /* 2E9CC 0012DA4C 21404300 */   addu      $8, $2, $3
.align 2
  .L0012DA50:
    /* 2E9D0 0012DA50 0400E28C */  lw         $2, 0x4($7)
.align 2
  .L0012DA54:
    /* 2E9D4 0012DA54 2D184000 */  daddu      $3, $2, $0
    /* 2E9D8 0012DA58 07004230 */  andi       $2, $2, 0x7
    /* 2E9DC 0012DA5C 15004054 */  bnel       $2, $0, .L0012DAB4
    /* 2E9E0 0012DA60 2118A300 */   addu      $3, $5, $3
    /* 2E9E4 0012DA64 07000231 */  andi       $2, $8, 0x7
    /* 2E9E8 0012DA68 12004054 */  bnel       $2, $0, .L0012DAB4
    /* 2E9EC 0012DA6C 2118A300 */   addu      $3, $5, $3
    /* 2E9F0 0012DA70 0700A230 */  andi       $2, $5, 0x7
    /* 2E9F4 0012DA74 0F004054 */  bnel       $2, $0, .L0012DAB4
    /* 2E9F8 0012DA78 2118A300 */   addu      $3, $5, $3
    /* 2E9FC 0012DA7C 2130A300 */  addu       $6, $5, $3
    /* 2EA00 0012DA80 2D200001 */  daddu      $4, $8, $0
    /* 2EA04 0012DA84 1500A610 */  beq        $5, $6, .L0012DADC
    /* 2EA08 0012DA88 2D18A000 */   daddu     $3, $5, $0
    /* 2EA0C 0012DA8C 00000000 */  nop
.align 2
  .L0012DA90:
    /* 2EA10 0012DA90 000082DC */  ld         $2, 0x0($4)
    /* 2EA14 0012DA94 000062FC */  sd         $2, 0x0($3)
    /* 2EA18 0012DA98 08006324 */  addiu      $3, $3, 0x8
    /* 2EA1C 0012DA9C 00000000 */  nop
    /* 2EA20 0012DAA0 00000000 */  nop
    /* 2EA24 0012DAA4 FAFF6614 */  bne        $3, $6, .L0012DA90
    /* 2EA28 0012DAA8 08008424 */   addiu     $4, $4, 0x8
    /* 2EA2C 0012DAAC 0C000010 */  b          .L0012DAE0
    /* 2EA30 0012DAB0 0400E28C */   lw        $2, 0x4($7)
.align 2
  .L0012DAB4:
    /* 2EA34 0012DAB4 0A00A350 */  beql       $5, $3, .L0012DAE0
    /* 2EA38 0012DAB8 0400E28C */   lw        $2, 0x4($7)
    /* 2EA3C 0012DABC 00000000 */  nop
.align 2
  .L0012DAC0:
    /* 2EA40 0012DAC0 0000828C */  lw         $2, 0x0($4)
    /* 2EA44 0012DAC4 0000A2AC */  sw         $2, 0x0($5)
    /* 2EA48 0012DAC8 0400A524 */  addiu      $5, $5, 0x4
    /* 2EA4C 0012DACC 00000000 */  nop
    /* 2EA50 0012DAD0 00000000 */  nop
    /* 2EA54 0012DAD4 FAFFA314 */  bne        $5, $3, .L0012DAC0
    /* 2EA58 0012DAD8 04008424 */   addiu     $4, $4, 0x4
.align 2
  .L0012DADC:
    /* 2EA5C 0012DADC 0400E28C */  lw         $2, 0x4($7)
.align 2
  .L0012DAE0:
    /* 2EA60 0012DAE0 21400201 */  addu       $8, $8, $2
.align 2
  .L0012DAE4:
    /* 2EA64 0012DAE4 2D380001 */  daddu      $7, $8, $0
    /* 2EA68 0012DAE8 1000E824 */  addiu      $8, $7, 0x10
    /* 2EA6C 0012DAEC 0000E58C */  lw         $5, 0x0($7)
    /* 2EA70 0012DAF0 03002015 */  bnez       $9, .L0012DB00
    /* 2EA74 0012DAF4 2D200001 */   daddu     $4, $8, $0
    /* 2EA78 0012DAF8 D5FF0010 */  b          .L0012DA50
    /* 2EA7C 0012DAFC 0C00E98C */   lw        $9, 0xC($7)
.align 2
  .L0012DB00:
    /* 2EA80 0012DB00 0C00E28C */  lw         $2, 0xC($7)
    /* 2EA84 0012DB04 D3FF2251 */  beql       $9, $2, .L0012DA54
    /* 2EA88 0012DB08 0400E28C */   lw        $2, 0x4($7)
    /* 2EA8C 0012DB0C 0800E003 */  jr         $31
    /* 2EA90 0012DB10 2D102001 */   daddu     $2, $9, $0
endlabel func_0012DA38
    /* 2EA94 0012DB14 00000000 */  nop
