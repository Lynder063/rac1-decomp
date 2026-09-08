.align 3
nonmatching func_0012BDD0, 0x170

glabel func_0012BDD0
    /* 2CD50 0012BDD0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2CD54 0012BDD4 3000B3FF */  sd         $s3, 0x30($sp)
    /* 2CD58 0012BDD8 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2CD5C 0012BDDC 01001324 */  addiu      $s3, $zero, 0x1
    /* 2CD60 0012BDE0 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2CD64 0012BDE4 2D900000 */  daddu      $s2, $zero, $zero
    /* 2CD68 0012BDE8 4000BFFF */  sd         $ra, 0x40($sp)
    /* 2CD6C 0012BDEC 2D888000 */  daddu      $s1, $a0, $zero
    /* 2CD70 0012BDF0 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2CD74 0012BDF4 4000308E */  lw         $s0, 0x40($s1)
    /* 2CD78 0012BDF8 D800068E */  lw         $a2, 0xD8($s0)
    /* 2CD7C 0012BDFC 3F00C230 */  andi       $v0, $a2, 0x3F
    /* 2CD80 0012BE00 07004010 */  beqz       $v0, .L0012BE20
    /* 2CD84 0012BE04 000000AE */   sw        $zero, 0x0($s0)
    /* 2CD88 0012BE08 1500053C */  lui        $a1, %hi(D_00153B58)
    /* 2CD8C 0012BE0C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2CD90 0012BE10 0CB1040C */  jal        func_0012C430
    /* 2CD94 0012BE14 583BA524 */   addiu     $a1, $a1, %lo(D_00153B58)
    /* 2CD98 0012BE18 42000010 */  b          .L0012BF24
    /* 2CD9C 0012BE1C FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0012BE20:
    /* 2CDA0 0012BE20 200800AE */  sw         $zero, 0x820($s0)
    /* 2CDA4 0012BE24 FFFF0224 */  addiu      $v0, $zero, -0x1
.align 2
  .L0012BE28:
    /* 2CDA8 0012BE28 0D004212 */  beq        $s2, $v0, .L0012BE60
    /* 2CDAC 0012BE2C 0500622E */   sltiu     $v0, $s3, 0x5
.align 2
  .L0012BE30:
    /* 2CDB0 0012BE30 24A3040C */  jal        func_00128C90
    /* 2CDB4 0012BE34 2D200002 */   daddu     $a0, $s0, $zero
    /* 2CDB8 0012BE38 2D984000 */  daddu      $s3, $v0, $zero
    /* 2CDBC 0012BE3C 08006012 */  beqz       $s3, .L0012BE60
    /* 2CDC0 0012BE40 0500622E */   sltiu     $v0, $s3, 0x5
    /* 2CDC4 0012BE44 7401038E */  lw         $v1, 0x174($s0)
    /* 2CDC8 0012BE48 D400028E */  lw         $v0, 0xD4($s0)
    /* 2CDCC 0012BE4C 04006210 */  beq        $v1, $v0, .L0012BE60
    /* 2CDD0 0012BE50 0500622E */   sltiu     $v0, $s3, 0x5
    /* 2CDD4 0012BE54 4808028E */  lw         $v0, 0x848($s0)
    /* 2CDD8 0012BE58 F5FF4014 */  bnez       $v0, .L0012BE30
    /* 2CDDC 0012BE5C 0500622E */   sltiu     $v0, $s3, 0x5
.align 2
  .L0012BE60:
    /* 2CDE0 0012BE60 29004010 */  beqz       $v0, .L0012BF08
    /* 2CDE4 0012BE64 1500023C */   lui       $v0, %hi(jtbl_00153BA0)
    /* 2CDE8 0012BE68 80181300 */  sll        $v1, $s3, 2
    /* 2CDEC 0012BE6C A03B4224 */  addiu      $v0, $v0, %lo(jtbl_00153BA0)
    /* 2CDF0 0012BE70 21186200 */  addu       $v1, $v1, $v0
    /* 2CDF4 0012BE74 0000648C */  lw         $a0, 0x0($v1)
    /* 2CDF8 0012BE78 08008000 */  jr         $a0
    /* 2CDFC 0012BE7C 00000000 */   nop
.align 2
  jlabel .L0012BE80
    /* 2CE00 0012BE80 80B0040C */  jal        func_0012C200
    /* 2CE04 0012BE84 2D202002 */   daddu     $a0, $s1, $zero
    /* 2CE08 0012BE88 01000324 */  addiu      $v1, $zero, 0x1
    /* 2CE0C 0012BE8C 1E000010 */  b          .L0012BF08
    /* 2CE10 0012BE90 000003AE */   sw        $v1, 0x0($s0)
.align 2
  jlabel .L0012BE94
    /* 2CE14 0012BE94 A80000AE */  sw         $zero, 0xA8($s0)
    /* 2CE18 0012BE98 2D202002 */  daddu      $a0, $s1, $zero
    /* 2CE1C 0012BE9C A40000AE */  sw         $zero, 0xA4($s0)
    /* 2CE20 0012BEA0 2D280000 */  daddu      $a1, $zero, $zero
    /* 2CE24 0012BEA4 A00000AE */  sw         $zero, 0xA0($s0)
    /* 2CE28 0012BEA8 16B0040C */  jal        func_0012C058
    /* 2CE2C 0012BEAC 9400068E */   lw        $a2, 0x94($s0)
    /* 2CE30 0012BEB0 A000038E */  lw         $v1, 0xA0($s0)
    /* 2CE34 0012BEB4 2D904000 */  daddu      $s2, $v0, $zero
    /* 2CE38 0012BEB8 01006324 */  addiu      $v1, $v1, 0x1
    /* 2CE3C 0012BEBC 12000010 */  b          .L0012BF08
    /* 2CE40 0012BEC0 A00003AE */   sw        $v1, 0xA0($s0)
.align 2
  jlabel .L0012BEC4
    /* 2CE44 0012BEC4 A400058E */  lw         $a1, 0xA4($s0)
    /* 2CE48 0012BEC8 2D202002 */  daddu      $a0, $s1, $zero
    /* 2CE4C 0012BECC 16B0040C */  jal        func_0012C058
    /* 2CE50 0012BED0 9800068E */   lw        $a2, 0x98($s0)
    /* 2CE54 0012BED4 A400038E */  lw         $v1, 0xA4($s0)
    /* 2CE58 0012BED8 2D904000 */  daddu      $s2, $v0, $zero
    /* 2CE5C 0012BEDC 01006324 */  addiu      $v1, $v1, 0x1
    /* 2CE60 0012BEE0 09000010 */  b          .L0012BF08
    /* 2CE64 0012BEE4 A40003AE */   sw        $v1, 0xA4($s0)
.align 2
  jlabel .L0012BEE8
    /* 2CE68 0012BEE8 A800058E */  lw         $a1, 0xA8($s0)
    /* 2CE6C 0012BEEC 2D202002 */  daddu      $a0, $s1, $zero
    /* 2CE70 0012BEF0 16B0040C */  jal        func_0012C058
    /* 2CE74 0012BEF4 9C00068E */   lw        $a2, 0x9C($s0)
    /* 2CE78 0012BEF8 A800038E */  lw         $v1, 0xA8($s0)
    /* 2CE7C 0012BEFC 2D904000 */  daddu      $s2, $v0, $zero
    /* 2CE80 0012BF00 01006324 */  addiu      $v1, $v1, 0x1
    /* 2CE84 0012BF04 A80003AE */  sw         $v1, 0xA8($s0)
.align 2
  .L0012BF08:
    /* 2CE88 0012BF08 2008028E */  lw         $v0, 0x820($s0)
    /* 2CE8C 0012BF0C 05004014 */  bnez       $v0, .L0012BF24
    /* 2CE90 0012BF10 01000224 */   addiu     $v0, $zero, 0x1
    /* 2CE94 0012BF14 0000028E */  lw         $v0, 0x0($s0)
    /* 2CE98 0012BF18 C3FF4010 */  beqz       $v0, .L0012BE28
    /* 2CE9C 0012BF1C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 2CEA0 0012BF20 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L0012BF24:
    /* 2CEA4 0012BF24 4000BFDF */  ld         $ra, 0x40($sp)
    /* 2CEA8 0012BF28 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2CEAC 0012BF2C 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2CEB0 0012BF30 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2CEB4 0012BF34 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2CEB8 0012BF38 0800E003 */  jr         $ra
    /* 2CEBC 0012BF3C 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0012BDD0
