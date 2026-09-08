.align 3
nonmatching func_001EBB48, 0x4E8

glabel func_001EBB48
    /* ECAC8 001EBB48 50FFBD27 */  addiu      $29, $29, -0xB0
    /* ECACC 001EBB4C 0010023C */  lui        $2, (0x10000010 >> 16)
    /* ECAD0 001EBB50 4000B47F */  sq         $20, 0x40($29)
    /* ECAD4 001EBB54 83000324 */  addiu      $3, $0, 0x83
    /* ECAD8 001EBB58 3000B37F */  sq         $19, 0x30($29)
    /* ECADC 001EBB5C 10004234 */  ori        $2, $2, (0x10000010 & 0xFFFF)
    /* ECAE0 001EBB60 2000B27F */  sq         $18, 0x20($29)
    /* ECAE4 001EBB64 0010143C */  lui        $20, (0x10000000 >> 16)
    /* ECAE8 001EBB68 1000B17F */  sq         $17, 0x10($29)
    /* ECAEC 001EBB6C FFFF133C */  lui        $19, (0xFFFFFFF0 >> 16)
    /* ECAF0 001EBB70 0000B07F */  sq         $16, 0x0($29)
    /* ECAF4 001EBB74 F0FF7336 */  ori        $19, $19, (0xFFFFFFF0 & 0xFFFF)
    /* ECAF8 001EBB78 9000BF7F */  sq         $31, 0x90($29)
    /* ECAFC 001EBB7C 8000BE7F */  sq         $30, 0x80($29)
    /* ECB00 001EBB80 7000B77F */  sq         $23, 0x70($29)
    /* ECB04 001EBB84 6000B67F */  sq         $22, 0x60($29)
    /* ECB08 001EBB88 5000B57F */  sq         $21, 0x50($29)
    /* ECB0C 001EBB8C A000B4E7 */  swc1       $f20, 0xA0($29)
    /* ECB10 001EBB90 1600013C */  lui        $1, %hi(D_0015EE84)
    /* ECB14 001EBB94 84EE20AC */  sw         $0, %lo(D_0015EE84)($1)
    /* ECB18 001EBB98 000043AC */  sw         $3, 0x0($2)
    /* ECB1C 001EBB9C 000080AE */  sw         $0, (0x10000000 & 0xFFFF)($20)
    /* ECB20 001EBBA0 7027080C */  jal        func_00209DC0
    /* ECB24 001EBBA4 E881908F */   lw        $16, -0x7E18($28)
    /* ECB28 001EBBA8 FAAA070C */  jal        func_001EABE8
    /* ECB2C 001EBBAC E88190AF */   sw        $16, -0x7E18($28)
    /* ECB30 001EBBB0 1900023C */  lui        $2, %hi(D_001941C8)
    /* ECB34 001EBBB4 1300123C */  lui        $18, %hi(D_00137C80)
    /* ECB38 001EBBB8 C841508C */  lw         $16, %lo(D_001941C8)($2)
    /* ECB3C 001EBBBC 807C5226 */  addiu      $18, $18, %lo(D_00137C80)
    /* ECB40 001EBBC0 0015458E */  lw         $5, 0x1500($18)
    /* ECB44 001EBBC4 2D880002 */  daddu      $17, $16, $0
    /* ECB48 001EBBC8 0415468E */  lw         $6, 0x1504($18)
    /* ECB4C 001EBBCC 60001026 */  addiu      $16, $16, 0x60
    /* ECB50 001EBBD0 1600013C */  lui        $1, %hi(D_0015EF4C)
    /* ECB54 001EBBD4 4CEF31AC */  sw         $17, %lo(D_0015EF4C)($1)
    /* ECB58 001EBBD8 B25D080C */  jal        func_002176C8
    /* ECB5C 001EBBDC 2D200002 */   daddu     $4, $16, $0
    /* ECB60 001EBBE0 23201102 */  subu       $4, $16, $17
    /* ECB64 001EBBE4 2C0022AE */  sw         $2, 0x2C($17)
    /* ECB68 001EBBE8 280024AE */  sw         $4, 0x28($17)
    /* ECB6C 001EBBEC 0F004324 */  addiu      $3, $2, 0xF
    /* ECB70 001EBBF0 24187300 */  and        $3, $3, $19
    /* ECB74 001EBBF4 21800302 */  addu       $16, $16, $3
    /* ECB78 001EBBF8 0815458E */  lw         $5, 0x1508($18)
    /* ECB7C 001EBBFC 0C15468E */  lw         $6, 0x150C($18)
    /* ECB80 001EBC00 B25D080C */  jal        func_002176C8
    /* ECB84 001EBC04 2D200002 */   daddu     $4, $16, $0
    /* ECB88 001EBC08 23201102 */  subu       $4, $16, $17
    /* ECB8C 001EBC0C 340022AE */  sw         $2, 0x34($17)
    /* ECB90 001EBC10 300024AE */  sw         $4, 0x30($17)
    /* ECB94 001EBC14 0F004324 */  addiu      $3, $2, 0xF
    /* ECB98 001EBC18 24187300 */  and        $3, $3, $19
    /* ECB9C 001EBC1C 21800302 */  addu       $16, $16, $3
    /* ECBA0 001EBC20 1015458E */  lw         $5, 0x1510($18)
    /* ECBA4 001EBC24 1415468E */  lw         $6, 0x1514($18)
    /* ECBA8 001EBC28 B25D080C */  jal        func_002176C8
    /* ECBAC 001EBC2C 2D200002 */   daddu     $4, $16, $0
    /* ECBB0 001EBC30 23201102 */  subu       $4, $16, $17
    /* ECBB4 001EBC34 3C0022AE */  sw         $2, 0x3C($17)
    /* ECBB8 001EBC38 380024AE */  sw         $4, 0x38($17)
    /* ECBBC 001EBC3C 0F004324 */  addiu      $3, $2, 0xF
    /* ECBC0 001EBC40 24187300 */  and        $3, $3, $19
    /* ECBC4 001EBC44 21800302 */  addu       $16, $16, $3
    /* ECBC8 001EBC48 1815458E */  lw         $5, 0x1518($18)
    /* ECBCC 001EBC4C 1C15468E */  lw         $6, 0x151C($18)
    /* ECBD0 001EBC50 B25D080C */  jal        func_002176C8
    /* ECBD4 001EBC54 2D200002 */   daddu     $4, $16, $0
    /* ECBD8 001EBC58 23201102 */  subu       $4, $16, $17
    /* ECBDC 001EBC5C 440022AE */  sw         $2, 0x44($17)
    /* ECBE0 001EBC60 400024AE */  sw         $4, 0x40($17)
    /* ECBE4 001EBC64 0F004324 */  addiu      $3, $2, 0xF
    /* ECBE8 001EBC68 24187300 */  and        $3, $3, $19
    /* ECBEC 001EBC6C 21800302 */  addu       $16, $16, $3
    /* ECBF0 001EBC70 2015458E */  lw         $5, 0x1520($18)
    /* ECBF4 001EBC74 2415468E */  lw         $6, 0x1524($18)
    /* ECBF8 001EBC78 B25D080C */  jal        func_002176C8
    /* ECBFC 001EBC7C 2D200002 */   daddu     $4, $16, $0
    /* ECC00 001EBC80 23201102 */  subu       $4, $16, $17
    /* ECC04 001EBC84 4C0022AE */  sw         $2, 0x4C($17)
    /* ECC08 001EBC88 480024AE */  sw         $4, 0x48($17)
    /* ECC0C 001EBC8C 0F004324 */  addiu      $3, $2, 0xF
    /* ECC10 001EBC90 24187300 */  and        $3, $3, $19
    /* ECC14 001EBC94 21800302 */  addu       $16, $16, $3
    /* ECC18 001EBC98 FC14468E */  lw         $6, 0x14FC($18)
    /* ECC1C 001EBC9C F814458E */  lw         $5, 0x14F8($18)
    /* ECC20 001EBCA0 B25D080C */  jal        func_002176C8
    /* ECC24 001EBCA4 2D200002 */   daddu     $4, $16, $0
    /* ECC28 001EBCA8 23801102 */  subu       $16, $16, $17
    /* ECC2C 001EBCAC 240022AE */  sw         $2, 0x24($17)
    /* ECC30 001EBCB0 A4FE070C */  jal        func_001FFA90
    /* ECC34 001EBCB4 200030AE */   sw        $16, 0x20($17)
    /* ECC38 001EBCB8 FECF080C */  jal        func_00233FF8
    /* ECC3C 001EBCBC 00000000 */   nop
    /* ECC40 001EBCC0 06D0080C */  jal        func_00234018
    /* ECC44 001EBCC4 00000000 */   nop
    /* ECC48 001EBCC8 AEFD070C */  jal        func_001FF6B8
    /* ECC4C 001EBCCC 00000000 */   nop
    /* ECC50 001EBCD0 B40C080C */  jal        func_002032D0
    /* ECC54 001EBCD4 00000000 */   nop
    /* ECC58 001EBCD8 0000838E */  lw         $3, (0x10000000 & 0xFFFF)($20)
    /* ECC5C 001EBCDC 09010224 */  addiu      $2, $0, 0x109
    /* ECC60 001EBCE0 01004050 */  beql       $2, $0, .L001EBCE8
    /* ECC64 001EBCE4 CD010000 */   break     0, 7
.align 2
  .L001EBCE8:
    /* ECC68 001EBCE8 1B006200 */  divu       $0, $3, $2
    /* ECC6C 001EBCEC 12180000 */  mflo       $3
    /* ECC70 001EBCF0 03000010 */  b          .L001EBD00
    /* ECC74 001EBCF4 2D806000 */   daddu     $16, $3, $0
.align 2
  .L001EBCF8:
    /* ECC78 001EBCF8 6689040C */  jal        func_00122598
    /* ECC7C 001EBCFC 01001026 */   addiu     $16, $16, 0x1
.align 2
  .L001EBD00:
    /* ECC80 001EBD00 30E6070C */  jal        func_001F98C0
    /* ECC84 001EBD04 B4000424 */   addiu     $4, $0, 0xB4
    /* ECC88 001EBD08 2A100202 */  slt        $2, $16, $2
    /* ECC8C 001EBD0C FAFF4014 */  bnez       $2, .L001EBCF8
    /* ECC90 001EBD10 2D200000 */   daddu     $4, $0, $0
    /* ECC94 001EBD14 10BB040C */  jal        func_0012EC40
    /* ECC98 001EBD18 00000000 */   nop
    /* ECC9C 001EBD1C 00000000 */  nop
.align 2
  .L001EBD20:
    /* ECCA0 001EBD20 70B7040C */  jal        func_0012DDC0
    /* ECCA4 001EBD24 00000000 */   nop
    /* ECCA8 001EBD28 00000000 */  nop
    /* ECCAC 001EBD2C 00000000 */  nop
    /* ECCB0 001EBD30 00000000 */  nop
    /* ECCB4 001EBD34 FAFF4014 */  bnez       $2, .L001EBD20
    /* ECCB8 001EBD38 00000000 */   nop
    /* ECCBC 001EBD3C 0CBB040C */  jal        func_0012EC30
    /* ECCC0 001EBD40 01001324 */   addiu     $19, $0, 0x1
    /* ECCC4 001EBD44 1600023C */  lui        $2, %hi(D_0015F690)
    /* ECCC8 001EBD48 90F6428C */  lw         $2, %lo(D_0015F690)($2)
    /* ECCCC 001EBD4C 9F004014 */  bnez       $2, .L001EBFCC
    /* ECCD0 001EBD50 2DA80000 */   daddu     $21, $0, $0
    /* ECCD4 001EBD54 1900023C */  lui        $2, %hi(D_0018CC20)
    /* ECCD8 001EBD58 803F013C */  lui        $1, (0x3F800000 >> 16)
    /* ECCDC 001EBD5C 00A08144 */  mtc1       $1, $f20
    /* ECCE0 001EBD60 20CC5E24 */  addiu      $30, $2, %lo(D_0018CC20)
    /* ECCE4 001EBD64 FFFF1724 */  addiu      $23, $0, -0x1
.align 2
  .L001EBD68:
    /* ECCE8 001EBD68 6ED2080C */  jal        func_002349B8
    /* ECCEC 001EBD6C 00000000 */   nop
    /* ECCF0 001EBD70 52D2080C */  jal        func_00234948
    /* ECCF4 001EBD74 00000000 */   nop
    /* ECCF8 001EBD78 66ED070C */  jal        func_001FB598
    /* ECCFC 001EBD7C 00000000 */   nop
    /* ECD00 001EBD80 2AEE070C */  jal        func_001FB8A8
    /* ECD04 001EBD84 00000000 */   nop
    /* ECD08 001EBD88 26ED070C */  jal        func_001FB498
    /* ECD0C 001EBD8C 00000000 */   nop
    /* ECD10 001EBD90 9A27080C */  jal        func_00209E68
    /* ECD14 001EBD94 00000000 */   nop
    /* ECD18 001EBD98 1C24080C */  jal        func_00209070
    /* ECD1C 001EBD9C 00000000 */   nop
    /* ECD20 001EBDA0 4262080C */  jal        func_00218908
    /* ECD24 001EBDA4 00000000 */   nop
    /* ECD28 001EBDA8 C0AC070C */  jal        func_001EB300
    /* ECD2C 001EBDAC 8881848F */   lw        $4, -0x7E78($28)
    /* ECD30 001EBDB0 1800033C */  lui        $3, %hi(D_001863B0)
    /* ECD34 001EBDB4 1600013C */  lui        $1, %hi(D_0015F6FC)
    /* ECD38 001EBDB8 FCF620AC */  sw         $0, %lo(D_0015F6FC)($1)
    /* ECD3C 001EBDBC B063628C */  lw         $2, %lo(D_001863B0)($3)
    /* ECD40 001EBDC0 33005710 */  beq        $2, $23, .L001EBE90
    /* ECD44 001EBDC4 2D106000 */   daddu     $2, $3, $0
    /* ECD48 001EBDC8 FFFF1124 */  addiu      $17, $0, -0x1
    /* ECD4C 001EBDCC B0634224 */  addiu      $2, $2, %lo(D_001863B0)
    /* ECD50 001EBDD0 1900033C */  lui        $3, %hi(D_0018CC20)
    /* ECD54 001EBDD4 20CC7424 */  addiu      $20, $3, %lo(D_0018CC20)
    /* ECD58 001EBDD8 04005624 */  addiu      $22, $2, 0x4
    /* ECD5C 001EBDDC 0C005024 */  addiu      $16, $2, 0xC
    /* ECD60 001EBDE0 2D900000 */  daddu      $18, $0, $0
    /* ECD64 001EBDE4 00000000 */  nop
.align 2
  .L001EBDE8:
    /* ECD68 001EBDE8 21105602 */  addu       $2, $18, $22
    /* ECD6C 001EBDEC 0000448C */  lw         $4, 0x0($2)
    /* ECD70 001EBDF0 0B009154 */  bnel       $4, $17, .L001EBE20
    /* ECD74 001EBDF4 3400838E */   lw        $3, 0x34($20)
    /* ECD78 001EBDF8 3400828E */  lw         $2, 0x34($20)
    /* ECD7C 001EBDFC F4FF038E */  lw         $3, -0xC($16)
    /* ECD80 001EBE00 2A104300 */  slt        $2, $2, $3
    /* ECD84 001EBE04 1E004054 */  bnel       $2, $0, .L001EBE80
    /* ECD88 001EBE08 000011AE */   sw        $17, 0x0($16)
    /* ECD8C 001EBE0C 0000028E */  lw         $2, 0x0($16)
    /* ECD90 001EBE10 1C005154 */  bnel       $2, $17, .L001EBE84
    /* ECD94 001EBE14 10001026 */   addiu     $16, $16, 0x10
    /* ECD98 001EBE18 0D000010 */  b          .L001EBE50
    /* ECD9C 001EBE1C FCFF048E */   lw        $4, -0x4($16)
.align 2
  .L001EBE20:
    /* ECDA0 001EBE20 F4FF028E */  lw         $2, -0xC($16)
    /* ECDA4 001EBE24 2A106200 */  slt        $2, $3, $2
    /* ECDA8 001EBE28 0E004054 */  bnel       $2, $0, .L001EBE64
    /* ECDAC 001EBE2C 0000048E */   lw        $4, 0x0($16)
    /* ECDB0 001EBE30 2A108300 */  slt        $2, $4, $3
    /* ECDB4 001EBE34 0B004014 */  bnez       $2, .L001EBE64
    /* ECDB8 001EBE38 0000048E */   lw        $4, 0x0($16)
    /* ECDBC 001EBE3C BCAE070C */  jal        func_001EBAF0
    /* ECDC0 001EBE40 FCFF058E */   lw        $5, -0x4($16)
    /* ECDC4 001EBE44 0F004054 */  bnel       $2, $0, .L001EBE84
    /* ECDC8 001EBE48 10001026 */   addiu     $16, $16, 0x10
    /* ECDCC 001EBE4C FCFF048E */  lw         $4, -0x4($16)
.align 2
  .L001EBE50:
    /* ECDD0 001EBE50 2D280000 */  daddu      $5, $0, $0
    /* ECDD4 001EBE54 AEBB080C */  jal        func_0022EEB8
    /* ECDD8 001EBE58 2D300000 */   daddu     $6, $0, $0
    /* ECDDC 001EBE5C 08000010 */  b          .L001EBE80
    /* ECDE0 001EBE60 000002AE */   sw        $2, 0x0($16)
.align 2
  .L001EBE64:
    /* ECDE4 001EBE64 BCAE070C */  jal        func_001EBAF0
    /* ECDE8 001EBE68 FCFF058E */   lw        $5, -0x4($16)
    /* ECDEC 001EBE6C 04004050 */  beql       $2, $0, .L001EBE80
    /* ECDF0 001EBE70 000011AE */   sw        $17, 0x0($16)
    /* ECDF4 001EBE74 ACBA080C */  jal        func_0022EAB0
    /* ECDF8 001EBE78 0000048E */   lw        $4, 0x0($16)
    /* ECDFC 001EBE7C 000011AE */  sw         $17, 0x0($16)
.align 2
  .L001EBE80:
    /* ECE00 001EBE80 10001026 */  addiu      $16, $16, 0x10
.align 2
  .L001EBE84:
    /* ECE04 001EBE84 F4FF028E */  lw         $2, -0xC($16)
    /* ECE08 001EBE88 D7FF5114 */  bne        $2, $17, .L001EBDE8
    /* ECE0C 001EBE8C 10005226 */   addiu     $18, $18, 0x10
.align 2
  .L001EBE90:
    /* ECE10 001EBE90 16AD070C */  jal        func_001EB458
    /* ECE14 001EBE94 00000000 */   nop
    /* ECE18 001EBE98 F0AD070C */  jal        func_001EB7C0
    /* ECE1C 001EBE9C 00000000 */   nop
    /* ECE20 001EBEA0 1600023C */  lui        $2, %hi(D_0015F6E8)
    /* ECE24 001EBEA4 E8F6428C */  lw         $2, %lo(D_0015F6E8)($2)
    /* ECE28 001EBEA8 21004054 */  bnel       $2, $0, .L001EBF30
    /* ECE2C 001EBEAC 2DA80000 */   daddu     $21, $0, $0
    /* ECE30 001EBEB0 DC050424 */  addiu      $4, $0, 0x5DC
    /* ECE34 001EBEB4 30E6070C */  jal        func_001F98C0
    /* ECE38 001EBEB8 0100B526 */   addiu     $21, $21, 0x1
    /* ECE3C 001EBEBC 2A10A202 */  slt        $2, $21, $2
    /* ECE40 001EBEC0 1D004014 */  bnez       $2, .L001EBF38
    /* ECE44 001EBEC4 4C978293 */   lbu       $2, -0x68B4($28)
    /* ECE48 001EBEC8 2D206002 */  daddu      $4, $19, $0
    /* ECE4C 001EBECC 02A6070C */  jal        func_001E9808
    /* ECE50 001EBED0 2DA80000 */   daddu     $21, $0, $0
    /* ECE54 001EBED4 01006526 */  addiu      $5, $19, 0x1
    /* ECE58 001EBED8 04006226 */  addiu      $2, $19, 0x4
    /* ECE5C 001EBEDC 2A18E502 */  slt        $3, $23, $5
    /* ECE60 001EBEE0 1600013C */  lui        $1, %hi(D_0015F53C)
    /* ECE64 001EBEE4 3CF534E4 */  swc1       $f20, %lo(D_0015F53C)($1)
    /* ECE68 001EBEE8 0B10A300 */  movn       $2, $5, $3
    /* ECE6C 001EBEEC 3400C0AF */  sw         $0, 0x34($30)
    /* ECE70 001EBEF0 83980200 */  sra        $19, $2, 2
    /* ECE74 001EBEF4 3C00C0AF */  sw         $0, 0x3C($30)
    /* ECE78 001EBEF8 80181300 */  sll        $3, $19, 2
    /* ECE7C 001EBEFC 2D200000 */  daddu      $4, $0, $0
    /* ECE80 001EBF00 2398A300 */  subu       $19, $5, $3
    /* ECE84 001EBF04 01006226 */  addiu      $2, $19, 0x1
    /* ECE88 001EBF08 8814080C */  jal        func_00205220
    /* ECE8C 001EBF0C 0A985300 */   movz      $19, $2, $19
    /* ECE90 001EBF10 1600013C */  lui        $1, %hi(D_0015F050)
    /* ECE94 001EBF14 50F020AC */  sw         $0, %lo(D_0015F050)($1)
    /* ECE98 001EBF18 1600013C */  lui        $1, %hi(D_0015F054)
    /* ECE9C 001EBF1C 54F020AC */  sw         $0, %lo(D_0015F054)($1)
    /* ECEA0 001EBF20 3AD2080C */  jal        func_002348E8
    /* ECEA4 001EBF24 588380AF */   sw        $0, -0x7CA8($28)
    /* ECEA8 001EBF28 26000010 */  b          .L001EBFC4
    /* ECEAC 001EBF2C 9089828F */   lw        $2, -0x7670($28)
.align 2
  .L001EBF30:
    /* ECEB0 001EBF30 1600023C */  lui        $2, %hi(D_0016044C)
    /* ECEB4 001EBF34 4C044290 */  lbu        $2, %lo(D_0016044C)($2)
.align 2
  .L001EBF38:
    /* ECEB8 001EBF38 1600033C */  lui        $3, %hi(D_0015EE80)
    /* ECEBC 001EBF3C 80EE638C */  lw         $3, %lo(D_0015EE80)($3)
    /* ECEC0 001EBF40 15004310 */  beq        $2, $3, .L001EBF98
    /* ECEC4 001EBF44 0100622C */   sltiu     $2, $3, 0x1
    /* ECEC8 001EBF48 04000424 */  addiu      $4, $0, 0x4
    /* ECECC 001EBF4C 82D3070C */  jal        func_001F4E08
    /* ECED0 001EBF50 808182AF */   sw        $2, -0x7E80($28)
    /* ECED4 001EBF54 EE81040C */  jal        func_001207B8
    /* ECED8 001EBF58 00000000 */   nop
    /* ECEDC 001EBF5C 1600033C */  lui        $3, %hi(D_0015EE80)
    /* ECEE0 001EBF60 80EE638C */  lw         $3, %lo(D_0015EE80)($3)
    /* ECEE4 001EBF64 02000224 */  addiu      $2, $0, 0x2
    /* ECEE8 001EBF68 03000624 */  addiu      $6, $0, 0x3
    /* ECEEC 001EBF6C 2D380000 */  daddu      $7, $0, $0
    /* ECEF0 001EBF70 0A304300 */  movz       $6, $2, $3
    /* ECEF4 001EBF74 2D200000 */  daddu      $4, $0, $0
    /* ECEF8 001EBF78 DE86040C */  jal        func_00121B78
    /* ECEFC 001EBF7C 01000524 */   addiu     $5, $0, 0x1
    /* ECF00 001EBF80 1600103C */  lui        $16, %hi(D_0015EF78)
    /* ECF04 001EBF84 78EF108E */  lw         $16, %lo(D_0015EF78)($16)
    /* ECF08 001EBF88 24CE070C */  jal        func_001F3890
    /* ECF0C 001EBF8C 3C8894E7 */   swc1      $f20, -0x77C4($28)
    /* ECF10 001EBF90 1600013C */  lui        $1, %hi(D_0015EF78)
    /* ECF14 001EBF94 78EF30AC */  sw         $16, %lo(D_0015EF78)($1)
.align 2
  .L001EBF98:
    /* ECF18 001EBF98 B2D2080C */  jal        func_00234AC8
    /* ECF1C 001EBF9C 01000424 */   addiu     $4, $0, 0x1
    /* ECF20 001EBFA0 6689040C */  jal        func_00122598
    /* ECF24 001EBFA4 2D200000 */   daddu     $4, $0, $0
    /* ECF28 001EBFA8 1600033C */  lui        $3, %hi(D_0015F538)
    /* ECF2C 001EBFAC 38F5638C */  lw         $3, %lo(D_0015F538)($3)
    /* ECF30 001EBFB0 01006324 */  addiu      $3, $3, 0x1
    /* ECF34 001EBFB4 1600013C */  lui        $1, %hi(D_0015F538)
    /* ECF38 001EBFB8 38F523AC */  sw         $3, %lo(D_0015F538)($1)
    /* ECF3C 001EBFBC 1600023C */  lui        $2, %hi(D_0015F690)
    /* ECF40 001EBFC0 90F6428C */  lw         $2, %lo(D_0015F690)($2)
.align 2
  .L001EBFC4:
    /* ECF44 001EBFC4 68FF4010 */  beqz       $2, .L001EBD68
    /* ECF48 001EBFC8 00000000 */   nop
.align 2
  .L001EBFCC:
    /* ECF4C 001EBFCC 1600023C */  lui        $2, %hi(D_0015EE80)
    /* ECF50 001EBFD0 80EE428C */  lw         $2, %lo(D_0015EE80)($2)
    /* ECF54 001EBFD4 03004014 */  bnez       $2, .L001EBFE4
    /* ECF58 001EBFD8 2800023C */   lui       $2, (0x280000 >> 16)
    /* ECF5C 001EBFDC 1600013C */  lui        $1, %hi(D_0015EF8C)
    /* ECF60 001EBFE0 8CEF22AC */  sw         $2, %lo(D_0015EF8C)($1)
.align 2
  .L001EBFE4:
    /* ECF64 001EBFE4 1600023C */  lui        $2, %hi(D_0015EF8C)
    /* ECF68 001EBFE8 8CEF428C */  lw         $2, %lo(D_0015EF8C)($2)
    /* ECF6C 001EBFEC 9000BF7B */  lq         $31, 0x90($29)
    /* ECF70 001EBFF0 8000BE7B */  lq         $30, 0x80($29)
    /* ECF74 001EBFF4 7000B77B */  lq         $23, 0x70($29)
    /* ECF78 001EBFF8 6000B67B */  lq         $22, 0x60($29)
    /* ECF7C 001EBFFC 5000B57B */  lq         $21, 0x50($29)
    /* ECF80 001EC000 4000B47B */  lq         $20, 0x40($29)
    /* ECF84 001EC004 3000B37B */  lq         $19, 0x30($29)
    /* ECF88 001EC008 2000B27B */  lq         $18, 0x20($29)
    /* ECF8C 001EC00C 1000B17B */  lq         $17, 0x10($29)
    /* ECF90 001EC010 0000B07B */  lq         $16, 0x0($29)
    /* ECF94 001EC014 A000B4C7 */  lwc1       $f20, 0xA0($29)
    /* ECF98 001EC018 1600013C */  lui        $1, %hi(D_0015EF74)
    /* ECF9C 001EC01C 74EF22AC */  sw         $2, %lo(D_0015EF74)($1)
    /* ECFA0 001EC020 1600013C */  lui        $1, %hi(D_0015EF78)
    /* ECFA4 001EC024 78EF22AC */  sw         $2, %lo(D_0015EF78)($1)
    /* ECFA8 001EC028 0800E003 */  jr         $31
    /* ECFAC 001EC02C B000BD27 */   addiu     $29, $29, 0xB0
endlabel func_001EBB48
