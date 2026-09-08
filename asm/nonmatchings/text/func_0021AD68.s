.align 3
nonmatching func_0021AD68, 0x190

glabel func_0021AD68
    /* 11BCE8 0021AD68 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 11BCEC 0021AD6C 1400033C */  lui        $3, %hi(D_0013CA40)
    /* 11BCF0 0021AD70 0000B07F */  sq         $16, 0x0($29)
    /* 11BCF4 0021AD74 2D808000 */  daddu      $16, $4, $0
    /* 11BCF8 0021AD78 1000BF7F */  sq         $31, 0x10($29)
    /* 11BCFC 0021AD7C 2D206000 */  daddu      $4, $3, $0
    /* 11BD00 0021AD80 40CA6324 */  addiu      $3, $3, %lo(D_0013CA40)
    /* 11BD04 0021AD84 C401628C */  lw         $2, 0x1C4($3)
    /* 11BD08 0021AD88 000D4230 */  andi       $2, $2, 0xD00
    /* 11BD0C 0021AD8C 06004010 */  beqz       $2, .L0021ADA8
    /* 11BD10 0021AD90 1D00023C */   lui       $2, %hi(D_001D6094)
    /* 11BD14 0021AD94 9460438C */  lw         $3, %lo(D_001D6094)($2)
    /* 11BD18 0021AD98 04006014 */  bnez       $3, .L0021ADAC
    /* 11BD1C 0021AD9C 40CA8324 */   addiu     $3, $4, %lo(D_0013CA40)
    /* 11BD20 0021ADA0 51000010 */  b          .L0021AEE8
    /* 11BD24 0021ADA4 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L0021ADA8:
    /* 11BD28 0021ADA8 40CA8324 */  addiu      $3, $4, %lo(D_0013CA40)
.align 2
  .L0021ADAC:
    /* 11BD2C 0021ADAC C401628C */  lw         $2, 0x1C4($3)
    /* 11BD30 0021ADB0 10004230 */  andi       $2, $2, 0x10
    /* 11BD34 0021ADB4 0C004010 */  beqz       $2, .L0021ADE8
    /* 11BD38 0021ADB8 1D00023C */   lui       $2, %hi(D_001D5F70)
    /* 11BD3C 0021ADBC 705F4224 */  addiu      $2, $2, %lo(D_001D5F70)
    /* 11BD40 0021ADC0 0400438C */  lw         $3, 0x4($2)
    /* 11BD44 0021ADC4 3800638C */  lw         $3, 0x38($3)
    /* 11BD48 0021ADC8 03006050 */  beql       $3, $0, .L0021ADD8
    /* 11BD4C 0021ADCC 2401428C */   lw        $2, 0x124($2)
    /* 11BD50 0021ADD0 44000010 */  b          .L0021AEE4
    /* 11BD54 0021ADD4 080043AC */   sw        $3, 0x8($2)
.align 2
  .L0021ADD8:
    /* 11BD58 0021ADD8 04004014 */  bnez       $2, .L0021ADEC
    /* 11BD5C 0021ADDC 40CA8324 */   addiu     $3, $4, %lo(D_0013CA40)
    /* 11BD60 0021ADE0 41000010 */  b          .L0021AEE8
    /* 11BD64 0021ADE4 FFFF0224 */   addiu     $2, $0, -0x1
.align 2
  .L0021ADE8:
    /* 11BD68 0021ADE8 40CA8324 */  addiu      $3, $4, %lo(D_0013CA40)
.align 2
  .L0021ADEC:
    /* 11BD6C 0021ADEC C401638C */  lw         $3, 0x1C4($3)
    /* 11BD70 0021ADF0 00106230 */  andi       $2, $3, 0x1000
    /* 11BD74 0021ADF4 04004010 */  beqz       $2, .L0021AE08
    /* 11BD78 0021ADF8 3C00048E */   lw        $4, 0x3C($16)
    /* 11BD7C 0021ADFC 02008010 */  beqz       $4, .L0021AE08
    /* 11BD80 0021AE00 FFFF8224 */   addiu     $2, $4, -0x1
    /* 11BD84 0021AE04 3C0002AE */  sw         $2, 0x3C($16)
.align 2
  .L0021AE08:
    /* 11BD88 0021AE08 00406230 */  andi       $2, $3, 0x4000
    /* 11BD8C 0021AE0C 08004050 */  beql       $2, $0, .L0021AE30
    /* 11BD90 0021AE10 3C00028E */   lw        $2, 0x3C($16)
    /* 11BD94 0021AE14 3C00038E */  lw         $3, 0x3C($16)
    /* 11BD98 0021AE18 4000028E */  lw         $2, 0x40($16)
    /* 11BD9C 0021AE1C 01006324 */  addiu      $3, $3, 0x1
    /* 11BDA0 0021AE20 2A106200 */  slt        $2, $3, $2
    /* 11BDA4 0021AE24 01004054 */  bnel       $2, $0, .L0021AE2C
    /* 11BDA8 0021AE28 3C0003AE */   sw        $3, 0x3C($16)
.align 2
  .L0021AE2C:
    /* 11BDAC 0021AE2C 3C00028E */  lw         $2, 0x3C($16)
.align 2
  .L0021AE30:
    /* 11BDB0 0021AE30 04004410 */  beq        $2, $4, .L0021AE44
    /* 11BDB4 0021AE34 01000424 */   addiu     $4, $0, 0x1
    /* 11BDB8 0021AE38 1400068E */  lw         $6, 0x14($16)
    /* 11BDBC 0021AE3C 60BB080C */  jal        func_0022ED80
    /* 11BDC0 0021AE40 11000524 */   addiu     $5, $0, 0x11
.align 2
  .L0021AE44:
    /* 11BDC4 0021AE44 2400028E */  lw         $2, 0x24($16)
    /* 11BDC8 0021AE48 52020524 */  addiu      $5, $0, 0x252
    /* 11BDCC 0021AE4C 0100A050 */  beql       $5, $0, .L0021AE54
    /* 11BDD0 0021AE50 CD010000 */   break     0, 7
.align 2
  .L0021AE54:
    /* 11BDD4 0021AE54 00210200 */  sll        $4, $2, 4
    /* 11BDD8 0021AE58 4000038E */  lw         $3, 0x40($16)
    /* 11BDDC 0021AE5C 1A008500 */  div        $0, $4, $5
    /* 11BDE0 0021AE60 12100000 */  mflo       $2
    /* 11BDE4 0021AE64 2A104300 */  slt        $2, $2, $3
    /* 11BDE8 0021AE68 03004014 */  bnez       $2, .L0021AE78
    /* 11BDEC 0021AE6C D8FF8224 */   addiu     $2, $4, -0x28
    /* 11BDF0 0021AE70 1B000010 */  b          .L0021AEE0
    /* 11BDF4 0021AE74 52000224 */   addiu     $2, $0, 0x52
.align 2
  .L0021AE78:
    /* 11BDF8 0021AE78 52020324 */  addiu      $3, $0, 0x252
    /* 11BDFC 0021AE7C 1A004500 */  div        $0, $2, $5
    /* 11BE00 0021AE80 01006050 */  beql       $3, $0, .L0021AE88
    /* 11BE04 0021AE84 CD010000 */   break     0, 7
.align 2
  .L0021AE88:
    /* 11BE08 0021AE88 3C00048E */  lw         $4, 0x3C($16)
    /* 11BE0C 0021AE8C 6000028E */  lw         $2, 0x60($16)
    /* 11BE10 0021AE90 2A104400 */  slt        $2, $2, $4
    /* 11BE14 0021AE94 12180000 */  mflo       $3
    /* 11BE18 0021AE98 07004054 */  bnel       $2, $0, .L0021AEB8
    /* 11BE1C 0021AE9C FEFF6324 */   addiu     $3, $3, -0x2
    /* 11BE20 0021AEA0 FFFF8224 */  addiu      $2, $4, -0x1
    /* 11BE24 0021AEA4 02004104 */  bgez       $2, .L0021AEB0
    /* 11BE28 0021AEA8 600002AE */   sw        $2, 0x60($16)
    /* 11BE2C 0021AEAC 600000AE */  sw         $0, 0x60($16)
.align 2
  .L0021AEB0:
    /* 11BE30 0021AEB0 3C00048E */  lw         $4, 0x3C($16)
    /* 11BE34 0021AEB4 FEFF6324 */  addiu      $3, $3, -0x2
.align 2
  .L0021AEB8:
    /* 11BE38 0021AEB8 6000028E */  lw         $2, 0x60($16)
    /* 11BE3C 0021AEBC 23188300 */  subu       $3, $4, $3
    /* 11BE40 0021AEC0 2A104300 */  slt        $2, $2, $3
    /* 11BE44 0021AEC4 01004054 */  bnel       $2, $0, .L0021AECC
    /* 11BE48 0021AEC8 600003AE */   sw        $3, 0x60($16)
.align 2
  .L0021AECC:
    /* 11BE4C 0021AECC 6000038E */  lw         $3, 0x60($16)
    /* 11BE50 0021AED0 52020424 */  addiu      $4, $0, 0x252
    /* 11BE54 0021AED4 82010224 */  addiu      $2, $0, 0x182
    /* 11BE58 0021AED8 18186400 */  mult       $3, $3, $4
    /* 11BE5C 0021AEDC 23104300 */  subu       $2, $2, $3
.align 2
  .L0021AEE0:
    /* 11BE60 0021AEE0 5C0002AE */  sw         $2, 0x5C($16)
.align 2
  .L0021AEE4:
    /* 11BE64 0021AEE4 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0021AEE8:
    /* 11BE68 0021AEE8 1000BF7B */  lq         $31, 0x10($29)
    /* 11BE6C 0021AEEC 0000B07B */  lq         $16, 0x0($29)
    /* 11BE70 0021AEF0 0800E003 */  jr         $31
    /* 11BE74 0021AEF4 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0021AD68
