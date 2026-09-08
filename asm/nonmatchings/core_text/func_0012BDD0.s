.align 3
nonmatching func_0012BDD0, 0x170

glabel func_0012BDD0
    /* 2CD50 0012BDD0 B0FFBD27 */  addiu      $29, $29, -0x50
    /* 2CD54 0012BDD4 3000B3FF */  sd         $19, 0x30($29)
    /* 2CD58 0012BDD8 2000B2FF */  sd         $18, 0x20($29)
    /* 2CD5C 0012BDDC 01001324 */  addiu      $19, $0, 0x1
    /* 2CD60 0012BDE0 1000B1FF */  sd         $17, 0x10($29)
    /* 2CD64 0012BDE4 2D900000 */  daddu      $18, $0, $0
    /* 2CD68 0012BDE8 4000BFFF */  sd         $31, 0x40($29)
    /* 2CD6C 0012BDEC 2D888000 */  daddu      $17, $4, $0
    /* 2CD70 0012BDF0 0000B0FF */  sd         $16, 0x0($29)
    /* 2CD74 0012BDF4 4000308E */  lw         $16, 0x40($17)
    /* 2CD78 0012BDF8 D800068E */  lw         $6, 0xD8($16)
    /* 2CD7C 0012BDFC 3F00C230 */  andi       $2, $6, 0x3F
    /* 2CD80 0012BE00 07004010 */  beqz       $2, .L0012BE20
    /* 2CD84 0012BE04 000000AE */   sw        $0, 0x0($16)
    /* 2CD88 0012BE08 1500053C */  lui        $5, %hi(D_00153B58)
    /* 2CD8C 0012BE0C 2D200002 */  daddu      $4, $16, $0
    /* 2CD90 0012BE10 0CB1040C */  jal        func_0012C430
    /* 2CD94 0012BE14 583BA524 */   addiu     $5, $5, %lo(D_00153B58)
    /* 2CD98 0012BE18 42000010 */  b          .L0012BF24
    /* 2CD9C 0012BE1C FFFF0224 */   addiu     $2, $0, -0x1
.align 2
  .L0012BE20:
    /* 2CDA0 0012BE20 200800AE */  sw         $0, 0x820($16)
    /* 2CDA4 0012BE24 FFFF0224 */  addiu      $2, $0, -0x1
.align 2
  .L0012BE28:
    /* 2CDA8 0012BE28 0D004212 */  beq        $18, $2, .L0012BE60
    /* 2CDAC 0012BE2C 0500622E */   sltiu     $2, $19, 0x5
.align 2
  .L0012BE30:
    /* 2CDB0 0012BE30 24A3040C */  jal        func_00128C90
    /* 2CDB4 0012BE34 2D200002 */   daddu     $4, $16, $0
    /* 2CDB8 0012BE38 2D984000 */  daddu      $19, $2, $0
    /* 2CDBC 0012BE3C 08006012 */  beqz       $19, .L0012BE60
    /* 2CDC0 0012BE40 0500622E */   sltiu     $2, $19, 0x5
    /* 2CDC4 0012BE44 7401038E */  lw         $3, 0x174($16)
    /* 2CDC8 0012BE48 D400028E */  lw         $2, 0xD4($16)
    /* 2CDCC 0012BE4C 04006210 */  beq        $3, $2, .L0012BE60
    /* 2CDD0 0012BE50 0500622E */   sltiu     $2, $19, 0x5
    /* 2CDD4 0012BE54 4808028E */  lw         $2, 0x848($16)
    /* 2CDD8 0012BE58 F5FF4014 */  bnez       $2, .L0012BE30
    /* 2CDDC 0012BE5C 0500622E */   sltiu     $2, $19, 0x5
.align 2
  .L0012BE60:
    /* 2CDE0 0012BE60 29004010 */  beqz       $2, .L0012BF08
    /* 2CDE4 0012BE64 1500023C */   lui       $2, %hi(jtbl_00153BA0)
    /* 2CDE8 0012BE68 80181300 */  sll        $3, $19, 2
    /* 2CDEC 0012BE6C A03B4224 */  addiu      $2, $2, %lo(jtbl_00153BA0)
    /* 2CDF0 0012BE70 21186200 */  addu       $3, $3, $2
    /* 2CDF4 0012BE74 0000648C */  lw         $4, 0x0($3)
    /* 2CDF8 0012BE78 08008000 */  jr         $4
    /* 2CDFC 0012BE7C 00000000 */   nop
.align 2
  jlabel .L0012BE80
    /* 2CE00 0012BE80 80B0040C */  jal        func_0012C200
    /* 2CE04 0012BE84 2D202002 */   daddu     $4, $17, $0
    /* 2CE08 0012BE88 01000324 */  addiu      $3, $0, 0x1
    /* 2CE0C 0012BE8C 1E000010 */  b          .L0012BF08
    /* 2CE10 0012BE90 000003AE */   sw        $3, 0x0($16)
.align 2
  jlabel .L0012BE94
    /* 2CE14 0012BE94 A80000AE */  sw         $0, 0xA8($16)
    /* 2CE18 0012BE98 2D202002 */  daddu      $4, $17, $0
    /* 2CE1C 0012BE9C A40000AE */  sw         $0, 0xA4($16)
    /* 2CE20 0012BEA0 2D280000 */  daddu      $5, $0, $0
    /* 2CE24 0012BEA4 A00000AE */  sw         $0, 0xA0($16)
    /* 2CE28 0012BEA8 16B0040C */  jal        func_0012C058
    /* 2CE2C 0012BEAC 9400068E */   lw        $6, 0x94($16)
    /* 2CE30 0012BEB0 A000038E */  lw         $3, 0xA0($16)
    /* 2CE34 0012BEB4 2D904000 */  daddu      $18, $2, $0
    /* 2CE38 0012BEB8 01006324 */  addiu      $3, $3, 0x1
    /* 2CE3C 0012BEBC 12000010 */  b          .L0012BF08
    /* 2CE40 0012BEC0 A00003AE */   sw        $3, 0xA0($16)
.align 2
  jlabel .L0012BEC4
    /* 2CE44 0012BEC4 A400058E */  lw         $5, 0xA4($16)
    /* 2CE48 0012BEC8 2D202002 */  daddu      $4, $17, $0
    /* 2CE4C 0012BECC 16B0040C */  jal        func_0012C058
    /* 2CE50 0012BED0 9800068E */   lw        $6, 0x98($16)
    /* 2CE54 0012BED4 A400038E */  lw         $3, 0xA4($16)
    /* 2CE58 0012BED8 2D904000 */  daddu      $18, $2, $0
    /* 2CE5C 0012BEDC 01006324 */  addiu      $3, $3, 0x1
    /* 2CE60 0012BEE0 09000010 */  b          .L0012BF08
    /* 2CE64 0012BEE4 A40003AE */   sw        $3, 0xA4($16)
.align 2
  jlabel .L0012BEE8
    /* 2CE68 0012BEE8 A800058E */  lw         $5, 0xA8($16)
    /* 2CE6C 0012BEEC 2D202002 */  daddu      $4, $17, $0
    /* 2CE70 0012BEF0 16B0040C */  jal        func_0012C058
    /* 2CE74 0012BEF4 9C00068E */   lw        $6, 0x9C($16)
    /* 2CE78 0012BEF8 A800038E */  lw         $3, 0xA8($16)
    /* 2CE7C 0012BEFC 2D904000 */  daddu      $18, $2, $0
    /* 2CE80 0012BF00 01006324 */  addiu      $3, $3, 0x1
    /* 2CE84 0012BF04 A80003AE */  sw         $3, 0xA8($16)
.align 2
  .L0012BF08:
    /* 2CE88 0012BF08 2008028E */  lw         $2, 0x820($16)
    /* 2CE8C 0012BF0C 05004014 */  bnez       $2, .L0012BF24
    /* 2CE90 0012BF10 01000224 */   addiu     $2, $0, 0x1
    /* 2CE94 0012BF14 0000028E */  lw         $2, 0x0($16)
    /* 2CE98 0012BF18 C3FF4010 */  beqz       $2, .L0012BE28
    /* 2CE9C 0012BF1C FFFF0224 */   addiu     $2, $0, -0x1
    /* 2CEA0 0012BF20 01000224 */  addiu      $2, $0, 0x1
.align 2
  .L0012BF24:
    /* 2CEA4 0012BF24 4000BFDF */  ld         $31, 0x40($29)
    /* 2CEA8 0012BF28 3000B3DF */  ld         $19, 0x30($29)
    /* 2CEAC 0012BF2C 2000B2DF */  ld         $18, 0x20($29)
    /* 2CEB0 0012BF30 1000B1DF */  ld         $17, 0x10($29)
    /* 2CEB4 0012BF34 0000B0DF */  ld         $16, 0x0($29)
    /* 2CEB8 0012BF38 0800E003 */  jr         $31
    /* 2CEBC 0012BF3C 5000BD27 */   addiu     $29, $29, 0x50
endlabel func_0012BDD0
