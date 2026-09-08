.align 3
nonmatching func_00119DC0, 0xB0

glabel func_00119DC0
    /* 1AD40 00119DC0 C0FFBD27 */  addiu      $29, $29, -0x40
    /* 1AD44 00119DC4 1000B1FF */  sd         $17, 0x10($29)
    /* 1AD48 00119DC8 1300113C */  lui        $17, %hi(D_0012FCFC)
    /* 1AD4C 00119DCC 0000B0FF */  sd         $16, 0x0($29)
    /* 1AD50 00119DD0 FCFC258E */  lw         $5, %lo(D_0012FCFC)($17)
    /* 1AD54 00119DD4 2D808000 */  daddu      $16, $4, $0
    /* 1AD58 00119DD8 3000BFFF */  sd         $31, 0x30($29)
    /* 1AD5C 00119DDC 7E00A228 */  slti       $2, $5, 0x7E
    /* 1AD60 00119DE0 09004014 */  bnez       $2, .L00119E08
    /* 1AD64 00119DE4 2000B2FF */   sd        $18, 0x20($29)
    /* 1AD68 00119DE8 1500123C */  lui        $18, %hi(D_00154E00)
    /* 1AD6C 00119DEC FCFC20AE */  sw         $0, %lo(D_0012FCFC)($17)
    /* 1AD70 00119DF0 004E4226 */  addiu      $2, $18, %lo(D_00154E00)
    /* 1AD74 00119DF4 2D204000 */  daddu      $4, $2, $0
    /* 1AD78 00119DF8 1066040C */  jal        func_00119840
    /* 1AD7C 00119DFC 7F0040A0 */   sb        $0, 0x7F($2)
    /* 1AD80 00119E00 02000010 */  b          .L00119E0C
    /* 1AD84 00119E04 FCFC258E */   lw        $5, %lo(D_0012FCFC)($17)
.align 2
  .L00119E08:
    /* 1AD88 00119E08 1500123C */  lui        $18, %hi(D_00154E00)
.align 2
  .L00119E0C:
    /* 1AD8C 00119E0C 0A000224 */  addiu      $2, $0, 0xA
    /* 1AD90 00119E10 0D000216 */  bne        $16, $2, .L00119E48
    /* 1AD94 00119E14 004E4226 */   addiu     $2, $18, %lo(D_00154E00)
    /* 1AD98 00119E18 004E4426 */  addiu      $4, $18, %lo(D_00154E00)
    /* 1AD9C 00119E1C FCFC20AE */  sw         $0, %lo(D_0012FCFC)($17)
    /* 1ADA0 00119E20 2110A400 */  addu       $2, $5, $4
    /* 1ADA4 00119E24 3000BFDF */  ld         $31, 0x30($29)
    /* 1ADA8 00119E28 000050A0 */  sb         $16, 0x0($2)
    /* 1ADAC 00119E2C 2D184000 */  daddu      $3, $2, $0
    /* 1ADB0 00119E30 2000B2DF */  ld         $18, 0x20($29)
    /* 1ADB4 00119E34 1000B1DF */  ld         $17, 0x10($29)
    /* 1ADB8 00119E38 0000B0DF */  ld         $16, 0x0($29)
    /* 1ADBC 00119E3C 010060A0 */  sb         $0, 0x1($3)
    /* 1ADC0 00119E40 10660408 */  j          func_00119840
    /* 1ADC4 00119E44 4000BD27 */   addiu     $29, $29, 0x40
.align 2
  .L00119E48:
    /* 1ADC8 00119E48 0100A324 */  addiu      $3, $5, 0x1
    /* 1ADCC 00119E4C FCFC23AE */  sw         $3, %lo(D_0012FCFC)($17)
    /* 1ADD0 00119E50 2110A200 */  addu       $2, $5, $2
    /* 1ADD4 00119E54 000050A0 */  sb         $16, 0x0($2)
    /* 1ADD8 00119E58 3000BFDF */  ld         $31, 0x30($29)
    /* 1ADDC 00119E5C 2000B2DF */  ld         $18, 0x20($29)
    /* 1ADE0 00119E60 1000B1DF */  ld         $17, 0x10($29)
    /* 1ADE4 00119E64 0000B0DF */  ld         $16, 0x0($29)
    /* 1ADE8 00119E68 0800E003 */  jr         $31
    /* 1ADEC 00119E6C 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_00119DC0
