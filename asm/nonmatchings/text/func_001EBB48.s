.align 3
nonmatching func_001EBB48, 0x4E8

glabel func_001EBB48
    /* ECAC8 001EBB48 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* ECACC 001EBB4C 0010023C */  lui        $v0, (0x10000010 >> 16)
    /* ECAD0 001EBB50 4000B47F */  sq         $s4, 0x40($sp)
    /* ECAD4 001EBB54 83000324 */  addiu      $v1, $zero, 0x83
    /* ECAD8 001EBB58 3000B37F */  sq         $s3, 0x30($sp)
    /* ECADC 001EBB5C 10004234 */  ori        $v0, $v0, (0x10000010 & 0xFFFF)
    /* ECAE0 001EBB60 2000B27F */  sq         $s2, 0x20($sp)
    /* ECAE4 001EBB64 0010143C */  lui        $s4, (0x10000000 >> 16)
    /* ECAE8 001EBB68 1000B17F */  sq         $s1, 0x10($sp)
    /* ECAEC 001EBB6C FFFF133C */  lui        $s3, (0xFFFFFFF0 >> 16)
    /* ECAF0 001EBB70 0000B07F */  sq         $s0, 0x0($sp)
    /* ECAF4 001EBB74 F0FF7336 */  ori        $s3, $s3, (0xFFFFFFF0 & 0xFFFF)
    /* ECAF8 001EBB78 9000BF7F */  sq         $ra, 0x90($sp)
    /* ECAFC 001EBB7C 8000BE7F */  sq         $fp, 0x80($sp)
    /* ECB00 001EBB80 7000B77F */  sq         $s7, 0x70($sp)
    /* ECB04 001EBB84 6000B67F */  sq         $s6, 0x60($sp)
    /* ECB08 001EBB88 5000B57F */  sq         $s5, 0x50($sp)
    /* ECB0C 001EBB8C A000B4E7 */  swc1       $f20, 0xA0($sp)
    /* ECB10 001EBB90 1600013C */  lui        $at, %hi(D_0015EE84)
    /* ECB14 001EBB94 84EE20AC */  sw         $zero, %lo(D_0015EE84)($at)
    /* ECB18 001EBB98 000043AC */  sw         $v1, 0x0($v0)
    /* ECB1C 001EBB9C 000080AE */  sw         $zero, (0x10000000 & 0xFFFF)($s4)
    /* ECB20 001EBBA0 7027080C */  jal        func_00209DC0
    /* ECB24 001EBBA4 E881908F */   lw        $s0, -0x7E18($gp)
    /* ECB28 001EBBA8 FAAA070C */  jal        func_001EABE8
    /* ECB2C 001EBBAC E88190AF */   sw        $s0, -0x7E18($gp)
    /* ECB30 001EBBB0 1900023C */  lui        $v0, %hi(D_001941C8)
    /* ECB34 001EBBB4 1300123C */  lui        $s2, %hi(D_00137C80)
    /* ECB38 001EBBB8 C841508C */  lw         $s0, %lo(D_001941C8)($v0)
    /* ECB3C 001EBBBC 807C5226 */  addiu      $s2, $s2, %lo(D_00137C80)
    /* ECB40 001EBBC0 0015458E */  lw         $a1, 0x1500($s2)
    /* ECB44 001EBBC4 2D880002 */  daddu      $s1, $s0, $zero
    /* ECB48 001EBBC8 0415468E */  lw         $a2, 0x1504($s2)
    /* ECB4C 001EBBCC 60001026 */  addiu      $s0, $s0, 0x60
    /* ECB50 001EBBD0 1600013C */  lui        $at, %hi(D_0015EF4C)
    /* ECB54 001EBBD4 4CEF31AC */  sw         $s1, %lo(D_0015EF4C)($at)
    /* ECB58 001EBBD8 B25D080C */  jal        func_002176C8
    /* ECB5C 001EBBDC 2D200002 */   daddu     $a0, $s0, $zero
    /* ECB60 001EBBE0 23201102 */  subu       $a0, $s0, $s1
    /* ECB64 001EBBE4 2C0022AE */  sw         $v0, 0x2C($s1)
    /* ECB68 001EBBE8 280024AE */  sw         $a0, 0x28($s1)
    /* ECB6C 001EBBEC 0F004324 */  addiu      $v1, $v0, 0xF
    /* ECB70 001EBBF0 24187300 */  and        $v1, $v1, $s3
    /* ECB74 001EBBF4 21800302 */  addu       $s0, $s0, $v1
    /* ECB78 001EBBF8 0815458E */  lw         $a1, 0x1508($s2)
    /* ECB7C 001EBBFC 0C15468E */  lw         $a2, 0x150C($s2)
    /* ECB80 001EBC00 B25D080C */  jal        func_002176C8
    /* ECB84 001EBC04 2D200002 */   daddu     $a0, $s0, $zero
    /* ECB88 001EBC08 23201102 */  subu       $a0, $s0, $s1
    /* ECB8C 001EBC0C 340022AE */  sw         $v0, 0x34($s1)
    /* ECB90 001EBC10 300024AE */  sw         $a0, 0x30($s1)
    /* ECB94 001EBC14 0F004324 */  addiu      $v1, $v0, 0xF
    /* ECB98 001EBC18 24187300 */  and        $v1, $v1, $s3
    /* ECB9C 001EBC1C 21800302 */  addu       $s0, $s0, $v1
    /* ECBA0 001EBC20 1015458E */  lw         $a1, 0x1510($s2)
    /* ECBA4 001EBC24 1415468E */  lw         $a2, 0x1514($s2)
    /* ECBA8 001EBC28 B25D080C */  jal        func_002176C8
    /* ECBAC 001EBC2C 2D200002 */   daddu     $a0, $s0, $zero
    /* ECBB0 001EBC30 23201102 */  subu       $a0, $s0, $s1
    /* ECBB4 001EBC34 3C0022AE */  sw         $v0, 0x3C($s1)
    /* ECBB8 001EBC38 380024AE */  sw         $a0, 0x38($s1)
    /* ECBBC 001EBC3C 0F004324 */  addiu      $v1, $v0, 0xF
    /* ECBC0 001EBC40 24187300 */  and        $v1, $v1, $s3
    /* ECBC4 001EBC44 21800302 */  addu       $s0, $s0, $v1
    /* ECBC8 001EBC48 1815458E */  lw         $a1, 0x1518($s2)
    /* ECBCC 001EBC4C 1C15468E */  lw         $a2, 0x151C($s2)
    /* ECBD0 001EBC50 B25D080C */  jal        func_002176C8
    /* ECBD4 001EBC54 2D200002 */   daddu     $a0, $s0, $zero
    /* ECBD8 001EBC58 23201102 */  subu       $a0, $s0, $s1
    /* ECBDC 001EBC5C 440022AE */  sw         $v0, 0x44($s1)
    /* ECBE0 001EBC60 400024AE */  sw         $a0, 0x40($s1)
    /* ECBE4 001EBC64 0F004324 */  addiu      $v1, $v0, 0xF
    /* ECBE8 001EBC68 24187300 */  and        $v1, $v1, $s3
    /* ECBEC 001EBC6C 21800302 */  addu       $s0, $s0, $v1
    /* ECBF0 001EBC70 2015458E */  lw         $a1, 0x1520($s2)
    /* ECBF4 001EBC74 2415468E */  lw         $a2, 0x1524($s2)
    /* ECBF8 001EBC78 B25D080C */  jal        func_002176C8
    /* ECBFC 001EBC7C 2D200002 */   daddu     $a0, $s0, $zero
    /* ECC00 001EBC80 23201102 */  subu       $a0, $s0, $s1
    /* ECC04 001EBC84 4C0022AE */  sw         $v0, 0x4C($s1)
    /* ECC08 001EBC88 480024AE */  sw         $a0, 0x48($s1)
    /* ECC0C 001EBC8C 0F004324 */  addiu      $v1, $v0, 0xF
    /* ECC10 001EBC90 24187300 */  and        $v1, $v1, $s3
    /* ECC14 001EBC94 21800302 */  addu       $s0, $s0, $v1
    /* ECC18 001EBC98 FC14468E */  lw         $a2, 0x14FC($s2)
    /* ECC1C 001EBC9C F814458E */  lw         $a1, 0x14F8($s2)
    /* ECC20 001EBCA0 B25D080C */  jal        func_002176C8
    /* ECC24 001EBCA4 2D200002 */   daddu     $a0, $s0, $zero
    /* ECC28 001EBCA8 23801102 */  subu       $s0, $s0, $s1
    /* ECC2C 001EBCAC 240022AE */  sw         $v0, 0x24($s1)
    /* ECC30 001EBCB0 A4FE070C */  jal        func_001FFA90
    /* ECC34 001EBCB4 200030AE */   sw        $s0, 0x20($s1)
    /* ECC38 001EBCB8 FECF080C */  jal        func_00233FF8
    /* ECC3C 001EBCBC 00000000 */   nop
    /* ECC40 001EBCC0 06D0080C */  jal        func_00234018
    /* ECC44 001EBCC4 00000000 */   nop
    /* ECC48 001EBCC8 AEFD070C */  jal        func_001FF6B8
    /* ECC4C 001EBCCC 00000000 */   nop
    /* ECC50 001EBCD0 B40C080C */  jal        func_002032D0
    /* ECC54 001EBCD4 00000000 */   nop
    /* ECC58 001EBCD8 0000838E */  lw         $v1, (0x10000000 & 0xFFFF)($s4)
    /* ECC5C 001EBCDC 09010224 */  addiu      $v0, $zero, 0x109
    /* ECC60 001EBCE0 01004050 */  beql       $v0, $zero, .L001EBCE8
    /* ECC64 001EBCE4 CD010000 */   break     0, 7
.align 2
  .L001EBCE8:
    /* ECC68 001EBCE8 1B006200 */  divu       $zero, $v1, $v0
    /* ECC6C 001EBCEC 12180000 */  mflo       $v1
    /* ECC70 001EBCF0 03000010 */  b          .L001EBD00
    /* ECC74 001EBCF4 2D806000 */   daddu     $s0, $v1, $zero
.align 2
  .L001EBCF8:
    /* ECC78 001EBCF8 6689040C */  jal        func_00122598
    /* ECC7C 001EBCFC 01001026 */   addiu     $s0, $s0, 0x1
.align 2
  .L001EBD00:
    /* ECC80 001EBD00 30E6070C */  jal        func_001F98C0
    /* ECC84 001EBD04 B4000424 */   addiu     $a0, $zero, 0xB4
    /* ECC88 001EBD08 2A100202 */  slt        $v0, $s0, $v0
    /* ECC8C 001EBD0C FAFF4014 */  bnez       $v0, .L001EBCF8
    /* ECC90 001EBD10 2D200000 */   daddu     $a0, $zero, $zero
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
    /* ECCB4 001EBD34 FAFF4014 */  bnez       $v0, .L001EBD20
    /* ECCB8 001EBD38 00000000 */   nop
    /* ECCBC 001EBD3C 0CBB040C */  jal        func_0012EC30
    /* ECCC0 001EBD40 01001324 */   addiu     $s3, $zero, 0x1
    /* ECCC4 001EBD44 1600023C */  lui        $v0, %hi(D_0015F690)
    /* ECCC8 001EBD48 90F6428C */  lw         $v0, %lo(D_0015F690)($v0)
    /* ECCCC 001EBD4C 9F004014 */  bnez       $v0, .L001EBFCC
    /* ECCD0 001EBD50 2DA80000 */   daddu     $s5, $zero, $zero
    /* ECCD4 001EBD54 1900023C */  lui        $v0, %hi(D_0018CC20)
    /* ECCD8 001EBD58 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* ECCDC 001EBD5C 00A08144 */  mtc1       $at, $f20
    /* ECCE0 001EBD60 20CC5E24 */  addiu      $fp, $v0, %lo(D_0018CC20)
    /* ECCE4 001EBD64 FFFF1724 */  addiu      $s7, $zero, -0x1
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
    /* ECD2C 001EBDAC 8881848F */   lw        $a0, -0x7E78($gp)
    /* ECD30 001EBDB0 1800033C */  lui        $v1, %hi(D_001863B0)
    /* ECD34 001EBDB4 1600013C */  lui        $at, %hi(D_0015F6FC)
    /* ECD38 001EBDB8 FCF620AC */  sw         $zero, %lo(D_0015F6FC)($at)
    /* ECD3C 001EBDBC B063628C */  lw         $v0, %lo(D_001863B0)($v1)
    /* ECD40 001EBDC0 33005710 */  beq        $v0, $s7, .L001EBE90
    /* ECD44 001EBDC4 2D106000 */   daddu     $v0, $v1, $zero
    /* ECD48 001EBDC8 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* ECD4C 001EBDCC B0634224 */  addiu      $v0, $v0, %lo(D_001863B0)
    /* ECD50 001EBDD0 1900033C */  lui        $v1, %hi(D_0018CC20)
    /* ECD54 001EBDD4 20CC7424 */  addiu      $s4, $v1, %lo(D_0018CC20)
    /* ECD58 001EBDD8 04005624 */  addiu      $s6, $v0, 0x4
    /* ECD5C 001EBDDC 0C005024 */  addiu      $s0, $v0, 0xC
    /* ECD60 001EBDE0 2D900000 */  daddu      $s2, $zero, $zero
    /* ECD64 001EBDE4 00000000 */  nop
.align 2
  .L001EBDE8:
    /* ECD68 001EBDE8 21105602 */  addu       $v0, $s2, $s6
    /* ECD6C 001EBDEC 0000448C */  lw         $a0, 0x0($v0)
    /* ECD70 001EBDF0 0B009154 */  bnel       $a0, $s1, .L001EBE20
    /* ECD74 001EBDF4 3400838E */   lw        $v1, 0x34($s4)
    /* ECD78 001EBDF8 3400828E */  lw         $v0, 0x34($s4)
    /* ECD7C 001EBDFC F4FF038E */  lw         $v1, -0xC($s0)
    /* ECD80 001EBE00 2A104300 */  slt        $v0, $v0, $v1
    /* ECD84 001EBE04 1E004054 */  bnel       $v0, $zero, .L001EBE80
    /* ECD88 001EBE08 000011AE */   sw        $s1, 0x0($s0)
    /* ECD8C 001EBE0C 0000028E */  lw         $v0, 0x0($s0)
    /* ECD90 001EBE10 1C005154 */  bnel       $v0, $s1, .L001EBE84
    /* ECD94 001EBE14 10001026 */   addiu     $s0, $s0, 0x10
    /* ECD98 001EBE18 0D000010 */  b          .L001EBE50
    /* ECD9C 001EBE1C FCFF048E */   lw        $a0, -0x4($s0)
.align 2
  .L001EBE20:
    /* ECDA0 001EBE20 F4FF028E */  lw         $v0, -0xC($s0)
    /* ECDA4 001EBE24 2A106200 */  slt        $v0, $v1, $v0
    /* ECDA8 001EBE28 0E004054 */  bnel       $v0, $zero, .L001EBE64
    /* ECDAC 001EBE2C 0000048E */   lw        $a0, 0x0($s0)
    /* ECDB0 001EBE30 2A108300 */  slt        $v0, $a0, $v1
    /* ECDB4 001EBE34 0B004014 */  bnez       $v0, .L001EBE64
    /* ECDB8 001EBE38 0000048E */   lw        $a0, 0x0($s0)
    /* ECDBC 001EBE3C BCAE070C */  jal        func_001EBAF0
    /* ECDC0 001EBE40 FCFF058E */   lw        $a1, -0x4($s0)
    /* ECDC4 001EBE44 0F004054 */  bnel       $v0, $zero, .L001EBE84
    /* ECDC8 001EBE48 10001026 */   addiu     $s0, $s0, 0x10
    /* ECDCC 001EBE4C FCFF048E */  lw         $a0, -0x4($s0)
.align 2
  .L001EBE50:
    /* ECDD0 001EBE50 2D280000 */  daddu      $a1, $zero, $zero
    /* ECDD4 001EBE54 AEBB080C */  jal        func_0022EEB8
    /* ECDD8 001EBE58 2D300000 */   daddu     $a2, $zero, $zero
    /* ECDDC 001EBE5C 08000010 */  b          .L001EBE80
    /* ECDE0 001EBE60 000002AE */   sw        $v0, 0x0($s0)
.align 2
  .L001EBE64:
    /* ECDE4 001EBE64 BCAE070C */  jal        func_001EBAF0
    /* ECDE8 001EBE68 FCFF058E */   lw        $a1, -0x4($s0)
    /* ECDEC 001EBE6C 04004050 */  beql       $v0, $zero, .L001EBE80
    /* ECDF0 001EBE70 000011AE */   sw        $s1, 0x0($s0)
    /* ECDF4 001EBE74 ACBA080C */  jal        func_0022EAB0
    /* ECDF8 001EBE78 0000048E */   lw        $a0, 0x0($s0)
    /* ECDFC 001EBE7C 000011AE */  sw         $s1, 0x0($s0)
.align 2
  .L001EBE80:
    /* ECE00 001EBE80 10001026 */  addiu      $s0, $s0, 0x10
.align 2
  .L001EBE84:
    /* ECE04 001EBE84 F4FF028E */  lw         $v0, -0xC($s0)
    /* ECE08 001EBE88 D7FF5114 */  bne        $v0, $s1, .L001EBDE8
    /* ECE0C 001EBE8C 10005226 */   addiu     $s2, $s2, 0x10
.align 2
  .L001EBE90:
    /* ECE10 001EBE90 16AD070C */  jal        func_001EB458
    /* ECE14 001EBE94 00000000 */   nop
    /* ECE18 001EBE98 F0AD070C */  jal        func_001EB7C0
    /* ECE1C 001EBE9C 00000000 */   nop
    /* ECE20 001EBEA0 1600023C */  lui        $v0, %hi(D_0015F6E8)
    /* ECE24 001EBEA4 E8F6428C */  lw         $v0, %lo(D_0015F6E8)($v0)
    /* ECE28 001EBEA8 21004054 */  bnel       $v0, $zero, .L001EBF30
    /* ECE2C 001EBEAC 2DA80000 */   daddu     $s5, $zero, $zero
    /* ECE30 001EBEB0 DC050424 */  addiu      $a0, $zero, 0x5DC
    /* ECE34 001EBEB4 30E6070C */  jal        func_001F98C0
    /* ECE38 001EBEB8 0100B526 */   addiu     $s5, $s5, 0x1
    /* ECE3C 001EBEBC 2A10A202 */  slt        $v0, $s5, $v0
    /* ECE40 001EBEC0 1D004014 */  bnez       $v0, .L001EBF38
    /* ECE44 001EBEC4 4C978293 */   lbu       $v0, -0x68B4($gp)
    /* ECE48 001EBEC8 2D206002 */  daddu      $a0, $s3, $zero
    /* ECE4C 001EBECC 02A6070C */  jal        func_001E9808
    /* ECE50 001EBED0 2DA80000 */   daddu     $s5, $zero, $zero
    /* ECE54 001EBED4 01006526 */  addiu      $a1, $s3, 0x1
    /* ECE58 001EBED8 04006226 */  addiu      $v0, $s3, 0x4
    /* ECE5C 001EBEDC 2A18E502 */  slt        $v1, $s7, $a1
    /* ECE60 001EBEE0 1600013C */  lui        $at, %hi(D_0015F53C)
    /* ECE64 001EBEE4 3CF534E4 */  swc1       $f20, %lo(D_0015F53C)($at)
    /* ECE68 001EBEE8 0B10A300 */  movn       $v0, $a1, $v1
    /* ECE6C 001EBEEC 3400C0AF */  sw         $zero, 0x34($fp)
    /* ECE70 001EBEF0 83980200 */  sra        $s3, $v0, 2
    /* ECE74 001EBEF4 3C00C0AF */  sw         $zero, 0x3C($fp)
    /* ECE78 001EBEF8 80181300 */  sll        $v1, $s3, 2
    /* ECE7C 001EBEFC 2D200000 */  daddu      $a0, $zero, $zero
    /* ECE80 001EBF00 2398A300 */  subu       $s3, $a1, $v1
    /* ECE84 001EBF04 01006226 */  addiu      $v0, $s3, 0x1
    /* ECE88 001EBF08 8814080C */  jal        func_00205220
    /* ECE8C 001EBF0C 0A985300 */   movz      $s3, $v0, $s3
    /* ECE90 001EBF10 1600013C */  lui        $at, %hi(D_0015F050)
    /* ECE94 001EBF14 50F020AC */  sw         $zero, %lo(D_0015F050)($at)
    /* ECE98 001EBF18 1600013C */  lui        $at, %hi(D_0015F054)
    /* ECE9C 001EBF1C 54F020AC */  sw         $zero, %lo(D_0015F054)($at)
    /* ECEA0 001EBF20 3AD2080C */  jal        func_002348E8
    /* ECEA4 001EBF24 588380AF */   sw        $zero, -0x7CA8($gp)
    /* ECEA8 001EBF28 26000010 */  b          .L001EBFC4
    /* ECEAC 001EBF2C 9089828F */   lw        $v0, -0x7670($gp)
.align 2
  .L001EBF30:
    /* ECEB0 001EBF30 1600023C */  lui        $v0, %hi(D_0016044C)
    /* ECEB4 001EBF34 4C044290 */  lbu        $v0, %lo(D_0016044C)($v0)
.align 2
  .L001EBF38:
    /* ECEB8 001EBF38 1600033C */  lui        $v1, %hi(D_0015EE80)
    /* ECEBC 001EBF3C 80EE638C */  lw         $v1, %lo(D_0015EE80)($v1)
    /* ECEC0 001EBF40 15004310 */  beq        $v0, $v1, .L001EBF98
    /* ECEC4 001EBF44 0100622C */   sltiu     $v0, $v1, 0x1
    /* ECEC8 001EBF48 04000424 */  addiu      $a0, $zero, 0x4
    /* ECECC 001EBF4C 82D3070C */  jal        func_001F4E08
    /* ECED0 001EBF50 808182AF */   sw        $v0, -0x7E80($gp)
    /* ECED4 001EBF54 EE81040C */  jal        func_001207B8
    /* ECED8 001EBF58 00000000 */   nop
    /* ECEDC 001EBF5C 1600033C */  lui        $v1, %hi(D_0015EE80)
    /* ECEE0 001EBF60 80EE638C */  lw         $v1, %lo(D_0015EE80)($v1)
    /* ECEE4 001EBF64 02000224 */  addiu      $v0, $zero, 0x2
    /* ECEE8 001EBF68 03000624 */  addiu      $a2, $zero, 0x3
    /* ECEEC 001EBF6C 2D380000 */  daddu      $a3, $zero, $zero
    /* ECEF0 001EBF70 0A304300 */  movz       $a2, $v0, $v1
    /* ECEF4 001EBF74 2D200000 */  daddu      $a0, $zero, $zero
    /* ECEF8 001EBF78 DE86040C */  jal        func_00121B78
    /* ECEFC 001EBF7C 01000524 */   addiu     $a1, $zero, 0x1
    /* ECF00 001EBF80 1600103C */  lui        $s0, %hi(D_0015EF78)
    /* ECF04 001EBF84 78EF108E */  lw         $s0, %lo(D_0015EF78)($s0)
    /* ECF08 001EBF88 24CE070C */  jal        func_001F3890
    /* ECF0C 001EBF8C 3C8894E7 */   swc1      $f20, -0x77C4($gp)
    /* ECF10 001EBF90 1600013C */  lui        $at, %hi(D_0015EF78)
    /* ECF14 001EBF94 78EF30AC */  sw         $s0, %lo(D_0015EF78)($at)
.align 2
  .L001EBF98:
    /* ECF18 001EBF98 B2D2080C */  jal        func_00234AC8
    /* ECF1C 001EBF9C 01000424 */   addiu     $a0, $zero, 0x1
    /* ECF20 001EBFA0 6689040C */  jal        func_00122598
    /* ECF24 001EBFA4 2D200000 */   daddu     $a0, $zero, $zero
    /* ECF28 001EBFA8 1600033C */  lui        $v1, %hi(D_0015F538)
    /* ECF2C 001EBFAC 38F5638C */  lw         $v1, %lo(D_0015F538)($v1)
    /* ECF30 001EBFB0 01006324 */  addiu      $v1, $v1, 0x1
    /* ECF34 001EBFB4 1600013C */  lui        $at, %hi(D_0015F538)
    /* ECF38 001EBFB8 38F523AC */  sw         $v1, %lo(D_0015F538)($at)
    /* ECF3C 001EBFBC 1600023C */  lui        $v0, %hi(D_0015F690)
    /* ECF40 001EBFC0 90F6428C */  lw         $v0, %lo(D_0015F690)($v0)
.align 2
  .L001EBFC4:
    /* ECF44 001EBFC4 68FF4010 */  beqz       $v0, .L001EBD68
    /* ECF48 001EBFC8 00000000 */   nop
.align 2
  .L001EBFCC:
    /* ECF4C 001EBFCC 1600023C */  lui        $v0, %hi(D_0015EE80)
    /* ECF50 001EBFD0 80EE428C */  lw         $v0, %lo(D_0015EE80)($v0)
    /* ECF54 001EBFD4 03004014 */  bnez       $v0, .L001EBFE4
    /* ECF58 001EBFD8 2800023C */   lui       $v0, (0x280000 >> 16)
    /* ECF5C 001EBFDC 1600013C */  lui        $at, %hi(D_0015EF8C)
    /* ECF60 001EBFE0 8CEF22AC */  sw         $v0, %lo(D_0015EF8C)($at)
.align 2
  .L001EBFE4:
    /* ECF64 001EBFE4 1600023C */  lui        $v0, %hi(D_0015EF8C)
    /* ECF68 001EBFE8 8CEF428C */  lw         $v0, %lo(D_0015EF8C)($v0)
    /* ECF6C 001EBFEC 9000BF7B */  lq         $ra, 0x90($sp)
    /* ECF70 001EBFF0 8000BE7B */  lq         $fp, 0x80($sp)
    /* ECF74 001EBFF4 7000B77B */  lq         $s7, 0x70($sp)
    /* ECF78 001EBFF8 6000B67B */  lq         $s6, 0x60($sp)
    /* ECF7C 001EBFFC 5000B57B */  lq         $s5, 0x50($sp)
    /* ECF80 001EC000 4000B47B */  lq         $s4, 0x40($sp)
    /* ECF84 001EC004 3000B37B */  lq         $s3, 0x30($sp)
    /* ECF88 001EC008 2000B27B */  lq         $s2, 0x20($sp)
    /* ECF8C 001EC00C 1000B17B */  lq         $s1, 0x10($sp)
    /* ECF90 001EC010 0000B07B */  lq         $s0, 0x0($sp)
    /* ECF94 001EC014 A000B4C7 */  lwc1       $f20, 0xA0($sp)
    /* ECF98 001EC018 1600013C */  lui        $at, %hi(D_0015EF74)
    /* ECF9C 001EC01C 74EF22AC */  sw         $v0, %lo(D_0015EF74)($at)
    /* ECFA0 001EC020 1600013C */  lui        $at, %hi(D_0015EF78)
    /* ECFA4 001EC024 78EF22AC */  sw         $v0, %lo(D_0015EF78)($at)
    /* ECFA8 001EC028 0800E003 */  jr         $ra
    /* ECFAC 001EC02C B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_001EBB48
