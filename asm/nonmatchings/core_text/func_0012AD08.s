.align 3
nonmatching func_0012AD08, 0x300

glabel func_0012AD08
    /* 2BC88 0012AD08 8000BD27 */  addiu      $29, $29, 0x80
    /* 2BC8C 0012AD0C 00000000 */  nop
.align 2
  alabel func_0012AD10
    /* 2BC90 0012AD10 B0FEBD27 */  addiu      $29, $29, -0x150
    /* 2BC94 0012AD14 2001B7FF */  sd         $23, 0x120($29)
    /* 2BC98 0012AD18 0001B5FF */  sd         $21, 0x100($29)
    /* 2BC9C 0012AD1C 2DB88000 */  daddu      $23, $4, $0
    /* 2BCA0 0012AD20 E000B3FF */  sd         $19, 0xE0($29)
    /* 2BCA4 0012AD24 2D20A003 */  daddu      $4, $29, $0
    /* 2BCA8 0012AD28 D000B2FF */  sd         $18, 0xD0($29)
    /* 2BCAC 0012AD2C 01001524 */  addiu      $21, $0, 0x1
    /* 2BCB0 0012AD30 C000B1FF */  sd         $17, 0xC0($29)
    /* 2BCB4 0012AD34 3000B227 */  addiu      $18, $29, 0x30
    /* 2BCB8 0012AD38 B000B0FF */  sd         $16, 0xB0($29)
    /* 2BCBC 0012AD3C 2D980000 */  daddu      $19, $0, $0
    /* 2BCC0 0012AD40 4001BFFF */  sd         $31, 0x140($29)
    /* 2BCC4 0012AD44 2D80C000 */  daddu      $16, $6, $0
    /* 2BCC8 0012AD48 3001BEFF */  sd         $30, 0x130($29)
    /* 2BCCC 0012AD4C 2D30E000 */  daddu      $6, $7, $0
    /* 2BCD0 0012AD50 1001B6FF */  sd         $22, 0x110($29)
    /* 2BCD4 0012AD54 2D380001 */  daddu      $7, $8, $0
    /* 2BCD8 0012AD58 F000B4FF */  sd         $20, 0xF0($29)
    /* 2BCDC 0012AD5C 4000F48E */  lw         $20, 0x40($23)
    /* 2BCE0 0012AD60 4400828E */  lw         $2, 0x44($20)
    /* 2BCE4 0012AD64 A000A0AF */  sw         $0, 0xA0($29)
    /* 2BCE8 0012AD68 9CAA040C */  jal        func_0012AA70
    /* 2BCEC 0012AD6C A800A2AF */   sw        $2, 0xA8($29)
    /* 2BCF0 0012AD70 A400A0AF */  sw         $0, 0xA4($29)
    /* 2BCF4 0012AD74 2D88A003 */  daddu      $17, $29, $0
    /* 2BCF8 0012AD78 4800848E */  lw         $4, 0x48($20)
    /* 2BCFC 0012AD7C AC00A0AF */  sw         $0, 0xAC($29)
    /* 2BD00 0012AD80 17008018 */  blez       $4, .L0012ADE0
    /* 2BD04 0012AD84 2D288000 */   daddu     $5, $4, $0
    /* 2BD08 0012AD88 C0B01000 */  sll        $22, $16, 3
    /* 2BD0C 0012AD8C A800A38F */  lw         $3, 0xA8($29)
.align 2
  .L0012AD90:
    /* 2BD10 0012AD90 18000224 */  addiu      $2, $0, 0x18
    /* 2BD14 0012AD94 FFBD0434 */  ori        $4, $0, 0xBDFF
    /* 2BD18 0012AD98 38260400 */  dsll       $4, $4, 24
    /* 2BD1C 0012AD9C 13006000 */  mtlo       $3
    /* 2BD20 0012ADA0 00106272 */  madd       $2, $19, $2
    /* 2BD24 0012ADA4 000043DC */  ld         $3, 0x0($2)
    /* 2BD28 0012ADA8 06006454 */  bnel       $3, $4, .L0012ADC4
    /* 2BD2C 0012ADAC A000A28F */   lw        $2, 0xA0($29)
    /* 2BD30 0012ADB0 1400438C */  lw         $3, 0x14($2)
    /* 2BD34 0012ADB4 A400A3AF */  sw         $3, 0xA4($29)
    /* 2BD38 0012ADB8 1000428C */  lw         $2, 0x10($2)
    /* 2BD3C 0012ADBC A000A2AF */  sw         $2, 0xA0($29)
    /* 2BD40 0012ADC0 A000A28F */  lw         $2, 0xA0($29)
.align 2
  .L0012ADC4:
    /* 2BD44 0012ADC4 08004014 */  bnez       $2, .L0012ADE8
    /* 2BD48 0012ADC8 01007326 */   addiu     $19, $19, 0x1
    /* 2BD4C 0012ADCC 2A106502 */  slt        $2, $19, $5
    /* 2BD50 0012ADD0 EFFF4014 */  bnez       $2, .L0012AD90
    /* 2BD54 0012ADD4 A800A38F */   lw        $3, 0xA8($29)
    /* 2BD58 0012ADD8 04000010 */  b          .L0012ADEC
    /* 2BD5C 0012ADDC 2D202002 */   daddu     $4, $17, $0
.align 2
  .L0012ADE0:
    /* 2BD60 0012ADE0 C0B01000 */  sll        $22, $16, 3
    /* 2BD64 0012ADE4 00000000 */  nop
.align 2
  .L0012ADE8:
    /* 2BD68 0012ADE8 2D202002 */  daddu      $4, $17, $0
.align 2
  .L0012ADEC:
    /* 2BD6C 0012ADEC AAAA040C */  jal        func_0012AAA8
    /* 2BD70 0012ADF0 20000524 */   addiu     $5, $0, 0x20
    /* 2BD74 0012ADF4 BA010324 */  addiu      $3, $0, 0x1BA
    /* 2BD78 0012ADF8 55004314 */  bne        $2, $3, .L0012AF50
    /* 2BD7C 0012ADFC 06001E24 */   addiu     $30, $0, 0x6
    /* 2BD80 0012AE00 2D202002 */  daddu      $4, $17, $0
    /* 2BD84 0012AE04 40AC040C */  jal        func_0012B100
    /* 2BD88 0012AE08 2D284002 */   daddu     $5, $18, $0
    /* 2BD8C 0012AE0C 50000010 */  b          .L0012AF50
    /* 2BD90 0012AE10 06001E24 */   addiu     $30, $0, 0x6
    /* 2BD94 0012AE14 00000000 */  nop
.align 2
  .L0012AE18:
    /* 2BD98 0012AE18 2D202002 */  daddu      $4, $17, $0
    /* 2BD9C 0012AE1C 14AB040C */  jal        func_0012AC50
    /* 2BDA0 0012AE20 8000BEAF */   sw        $30, 0x80($29)
    /* 2BDA4 0012AE24 3800458E */  lw         $5, 0x38($18)
    /* 2BDA8 0012AE28 2D202002 */  daddu      $4, $17, $0
    /* 2BDAC 0012AE2C 14AB040C */  jal        func_0012AC50
    /* 2BDB0 0012AE30 8400A2AF */   sw        $2, 0x84($29)
    /* 2BDB4 0012AE34 280043DE */  ld         $3, 0x28($18)
    /* 2BDB8 0012AE38 2D20E002 */  daddu      $4, $23, $0
    /* 2BDBC 0012AE3C 3C00488E */  lw         $8, 0x3C($18)
    /* 2BDC0 0012AE40 8000A527 */  addiu      $5, $29, 0x80
    /* 2BDC4 0012AE44 9000A3FF */  sd         $3, 0x90($29)
    /* 2BDC8 0012AE48 300043DE */  ld         $3, 0x30($18)
    /* 2BDCC 0012AE4C 1400068E */  lw         $6, 0x14($16)
    /* 2BDD0 0012AE50 1000078E */  lw         $7, 0x10($16)
    /* 2BDD4 0012AE54 8800A2AF */  sw         $2, 0x88($29)
    /* 2BDD8 0012AE58 8C00A8AF */  sw         $8, 0x8C($29)
    /* 2BDDC 0012AE5C 09F8E000 */  jalr       $7
    /* 2BDE0 0012AE60 9800A3FF */   sd        $3, 0x98($29)
    /* 2BDE4 0012AE64 2DA84000 */  daddu      $21, $2, $0
    /* 2BDE8 0012AE68 1B000010 */  b          .L0012AED8
    /* 2BDEC 0012AE6C 4800848E */   lw        $4, 0x48($20)
.align 2
  .L0012AE70:
    /* 2BDF0 0012AE70 2D282002 */  daddu      $5, $17, $0
    /* 2BDF4 0012AE74 B0AC040C */  jal        func_0012B2C0
    /* 2BDF8 0012AE78 18004626 */   addiu     $6, $18, 0x18
    /* 2BDFC 0012AE7C 180023DE */  ld         $3, 0x18($17)
    /* 2BE00 0012AE80 2B180302 */  sltu       $3, $16, $3
    /* 2BE04 0012AE84 33006014 */  bnez       $3, .L0012AF54
    /* 2BE08 0012AE88 2D202002 */   daddu     $4, $17, $0
    /* 2BE0C 0012AE8C 4800848E */  lw         $4, 0x48($20)
    /* 2BE10 0012AE90 2D980000 */  daddu      $19, $0, $0
    /* 2BE14 0012AE94 10008018 */  blez       $4, .L0012AED8
    /* 2BE18 0012AE98 2D308000 */   daddu     $6, $4, $0
    /* 2BE1C 0012AE9C 180045DE */  ld         $5, 0x18($18)
    /* 2BE20 0012AEA0 A800A38F */  lw         $3, 0xA8($29)
    /* 2BE24 0012AEA4 00000000 */  nop
.align 2
  .L0012AEA8:
    /* 2BE28 0012AEA8 18000224 */  addiu      $2, $0, 0x18
    /* 2BE2C 0012AEAC 13006000 */  mtlo       $3
    /* 2BE30 0012AEB0 00806272 */  madd       $16, $19, $2
    /* 2BE34 0012AEB4 080003DE */  ld         $3, 0x8($16)
    /* 2BE38 0012AEB8 000002DE */  ld         $2, 0x0($16)
    /* 2BE3C 0012AEBC 2418A300 */  and        $3, $5, $3
    /* 2BE40 0012AEC0 D5FF4350 */  beql       $2, $3, .L0012AE18
    /* 2BE44 0012AEC4 4000458E */   lw        $5, 0x40($18)
    /* 2BE48 0012AEC8 01007326 */  addiu      $19, $19, 0x1
    /* 2BE4C 0012AECC 2A106602 */  slt        $2, $19, $6
    /* 2BE50 0012AED0 F5FF4014 */  bnez       $2, .L0012AEA8
    /* 2BE54 0012AED4 A800A38F */   lw        $3, 0xA8($29)
.align 2
  .L0012AED8:
    /* 2BE58 0012AED8 17006416 */  bne        $19, $4, .L0012AF38
    /* 2BE5C 0012AEDC A000A28F */   lw        $2, 0xA0($29)
    /* 2BE60 0012AEE0 15004010 */  beqz       $2, .L0012AF38
    /* 2BE64 0012AEE4 2D202002 */   daddu     $4, $17, $0
    /* 2BE68 0012AEE8 4000458E */  lw         $5, 0x40($18)
    /* 2BE6C 0012AEEC 14AB040C */  jal        func_0012AC50
    /* 2BE70 0012AEF0 8000BEAF */   sw        $30, 0x80($29)
    /* 2BE74 0012AEF4 3800458E */  lw         $5, 0x38($18)
    /* 2BE78 0012AEF8 2D202002 */  daddu      $4, $17, $0
    /* 2BE7C 0012AEFC 14AB040C */  jal        func_0012AC50
    /* 2BE80 0012AF00 8400A2AF */   sw        $2, 0x84($29)
    /* 2BE84 0012AF04 280043DE */  ld         $3, 0x28($18)
    /* 2BE88 0012AF08 2D20E002 */  daddu      $4, $23, $0
    /* 2BE8C 0012AF0C 3C00478E */  lw         $7, 0x3C($18)
    /* 2BE90 0012AF10 8000A527 */  addiu      $5, $29, 0x80
    /* 2BE94 0012AF14 9000A3FF */  sd         $3, 0x90($29)
    /* 2BE98 0012AF18 8800A2AF */  sw         $2, 0x88($29)
    /* 2BE9C 0012AF1C 300042DE */  ld         $2, 0x30($18)
    /* 2BEA0 0012AF20 A400A68F */  lw         $6, 0xA4($29)
    /* 2BEA4 0012AF24 A000A38F */  lw         $3, 0xA0($29)
    /* 2BEA8 0012AF28 8C00A7AF */  sw         $7, 0x8C($29)
    /* 2BEAC 0012AF2C 09F86000 */  jalr       $3
    /* 2BEB0 0012AF30 9800A2FF */   sd        $2, 0x98($29)
    /* 2BEB4 0012AF34 2DA84000 */  daddu      $21, $2, $0
.align 2
  .L0012AF38:
    /* 2BEB8 0012AF38 0600A012 */  beqz       $21, .L0012AF54
    /* 2BEBC 0012AF3C 2D202002 */   daddu     $4, $17, $0
    /* 2BEC0 0012AF40 180022DE */  ld         $2, 0x18($17)
    /* 2BEC4 0012AF44 78170200 */  dsll       $2, $2, 29
    /* 2BEC8 0012AF48 3F100200 */  dsra32     $2, $2, 0
    /* 2BECC 0012AF4C AC00A2AF */  sw         $2, 0xAC($29)
.align 2
  .L0012AF50:
    /* 2BED0 0012AF50 2D202002 */  daddu      $4, $17, $0
.align 2
  .L0012AF54:
    /* 2BED4 0012AF54 AAAA040C */  jal        func_0012AAA8
    /* 2BED8 0012AF58 18000524 */   addiu     $5, $0, 0x18
    /* 2BEDC 0012AF5C 01000324 */  addiu      $3, $0, 0x1
    /* 2BEE0 0012AF60 13004314 */  bne        $2, $3, .L0012AFB0
    /* 2BEE4 0012AF64 2D202002 */   daddu     $4, $17, $0
    /* 2BEE8 0012AF68 AAAA040C */  jal        func_0012AAA8
    /* 2BEEC 0012AF6C 20000524 */   addiu     $5, $0, 0x20
    /* 2BEF0 0012AF70 BA010324 */  addiu      $3, $0, 0x1BA
    /* 2BEF4 0012AF74 0E004310 */  beq        $2, $3, .L0012AFB0
    /* 2BEF8 0012AF78 2D202002 */   daddu     $4, $17, $0
    /* 2BEFC 0012AF7C AAAA040C */  jal        func_0012AAA8
    /* 2BF00 0012AF80 20000524 */   addiu     $5, $0, 0x20
    /* 2BF04 0012AF84 B9010324 */  addiu      $3, $0, 0x1B9
    /* 2BF08 0012AF88 09004310 */  beq        $2, $3, .L0012AFB0
    /* 2BF0C 0012AF8C 2D80C002 */   daddu     $16, $22, $0
    /* 2BF10 0012AF90 180023DE */  ld         $3, 0x18($17)
    /* 2BF14 0012AF94 2B107000 */  sltu       $2, $3, $16
    /* 2BF18 0012AF98 07004010 */  beqz       $2, .L0012AFB8
    /* 2BF1C 0012AF9C 2B10C302 */   sltu      $2, $22, $3
    /* 2BF20 0012AFA0 B3FFA016 */  bnez       $21, .L0012AE70
    /* 2BF24 0012AFA4 2D208002 */   daddu     $4, $20, $0
    /* 2BF28 0012AFA8 03000010 */  b          .L0012AFB8
    /* 2BF2C 0012AFAC 00000000 */   nop
.align 2
  .L0012AFB0:
    /* 2BF30 0012AFB0 180023DE */  ld         $3, 0x18($17)
    /* 2BF34 0012AFB4 2B10C302 */  sltu       $2, $22, $3
.align 2
  .L0012AFB8:
    /* 2BF38 0012AFB8 06004014 */  bnez       $2, .L0012AFD4
    /* 2BF3C 0012AFBC 2D202002 */   daddu     $4, $17, $0
    /* 2BF40 0012AFC0 AAAA040C */  jal        func_0012AAA8
    /* 2BF44 0012AFC4 20000524 */   addiu     $5, $0, 0x20
    /* 2BF48 0012AFC8 BA010324 */  addiu      $3, $0, 0x1BA
    /* 2BF4C 0012AFCC 87FF4310 */  beq        $2, $3, .L0012ADEC
    /* 2BF50 0012AFD0 2D202002 */   daddu     $4, $17, $0
.align 2
  .L0012AFD4:
    /* 2BF54 0012AFD4 AC00A28F */  lw         $2, 0xAC($29)
    /* 2BF58 0012AFD8 4001BFDF */  ld         $31, 0x140($29)
    /* 2BF5C 0012AFDC 3001BEDF */  ld         $30, 0x130($29)
    /* 2BF60 0012AFE0 2001B7DF */  ld         $23, 0x120($29)
    /* 2BF64 0012AFE4 1001B6DF */  ld         $22, 0x110($29)
    /* 2BF68 0012AFE8 0001B5DF */  ld         $21, 0x100($29)
    /* 2BF6C 0012AFEC F000B4DF */  ld         $20, 0xF0($29)
    /* 2BF70 0012AFF0 E000B3DF */  ld         $19, 0xE0($29)
    /* 2BF74 0012AFF4 D000B2DF */  ld         $18, 0xD0($29)
    /* 2BF78 0012AFF8 C000B1DF */  ld         $17, 0xC0($29)
    /* 2BF7C 0012AFFC B000B0DF */  ld         $16, 0xB0($29)
    /* 2BF80 0012B000 0800E003 */  jr         $31
    /* 2BF84 0012B004 5001BD27 */   addiu     $29, $29, 0x150
endlabel func_0012AD08
