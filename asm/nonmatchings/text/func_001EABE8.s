.align 3
nonmatching func_001EABE8, 0x714

glabel func_001EABE8
    /* EBB68 001EABE8 00FFBD27 */  addiu      $sp, $sp, -0x100
    /* EBB6C 001EABEC 1600013C */  lui        $at, %hi(D_0015F058)
    /* EBB70 001EABF0 58F020AC */  sw         $zero, %lo(D_0015F058)($at)
    /* EBB74 001EABF4 E000BE7F */  sq         $fp, 0xE0($sp)
    /* EBB78 001EABF8 D000B77F */  sq         $s7, 0xD0($sp)
    /* EBB7C 001EABFC C000B67F */  sq         $s6, 0xC0($sp)
    /* EBB80 001EAC00 B000B57F */  sq         $s5, 0xB0($sp)
    /* EBB84 001EAC04 A000B47F */  sq         $s4, 0xA0($sp)
    /* EBB88 001EAC08 9000B37F */  sq         $s3, 0x90($sp)
    /* EBB8C 001EAC0C 8000B27F */  sq         $s2, 0x80($sp)
    /* EBB90 001EAC10 2D980000 */  daddu      $s3, $zero, $zero
    /* EBB94 001EAC14 7000B17F */  sq         $s1, 0x70($sp)
    /* EBB98 001EAC18 1B00123C */  lui        $s2, %hi(D_001B3E40)
    /* EBB9C 001EAC1C 6000B07F */  sq         $s0, 0x60($sp)
    /* EBBA0 001EAC20 1300113C */  lui        $s1, %hi(D_00137C80)
    /* EBBA4 001EAC24 F000BF7F */  sq         $ra, 0xF0($sp)
    /* EBBA8 001EAC28 2ED2080C */  jal        func_002348B8
    /* EBBAC 001EAC2C 2DF02002 */   daddu     $fp, $s1, $zero
    /* EBBB0 001EAC30 8407080C */  jal        func_00201E10
    /* EBBB4 001EAC34 1900103C */   lui       $s0, %hi(D_001941C0)
    /* EBBB8 001EAC38 2DB80002 */  daddu      $s7, $s0, $zero
    /* EBBBC 001EAC3C 1000033C */  lui        $v1, (0x100000 >> 16)
    /* EBBC0 001EAC40 2C00023C */  lui        $v0, (0x2C0000 >> 16)
    /* EBBC4 001EAC44 1900043C */  lui        $a0, %hi(D_00194280)
    /* EBBC8 001EAC48 6587053C */  lui        $a1, (0x87654321 >> 16)
    /* EBBCC 001EAC4C 1600013C */  lui        $at, %hi(D_0016100C)
    /* EBBD0 001EAC50 0C1023AC */  sw         $v1, %lo(D_0016100C)($at)
    /* EBBD4 001EAC54 80428424 */  addiu      $a0, $a0, %lo(D_00194280)
    /* EBBD8 001EAC58 1600013C */  lui        $at, %hi(D_0015EF74)
    /* EBBDC 001EAC5C 74EF22AC */  sw         $v0, %lo(D_0015EF74)($at)
    /* EBBE0 001EAC60 2143A534 */  ori        $a1, $a1, (0x87654321 & 0xFFFF)
    /* EBBE4 001EAC64 1600013C */  lui        $at, %hi(D_0015EF8C)
    /* EBBE8 001EAC68 8CEF22AC */  sw         $v0, %lo(D_0015EF8C)($at)
    /* EBBEC 001EAC6C 10000624 */  addiu      $a2, $zero, 0x10
    /* EBBF0 001EAC70 1600013C */  lui        $at, %hi(D_0015EF78)
    /* EBBF4 001EAC74 78EF22AC */  sw         $v0, %lo(D_0015EF78)($at)
    /* EBBF8 001EAC78 6CE6070C */  jal        func_001F99B0
    /* EBBFC 001EAC7C C0411026 */   addiu     $s0, $s0, %lo(D_001941C0)
    /* EBC00 001EAC80 403E4426 */  addiu      $a0, $s2, %lo(D_001B3E40)
    /* EBC04 001EAC84 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* EBC08 001EAC88 6CE6070C */  jal        func_001F99B0
    /* EBC0C 001EAC8C 00080624 */   addiu     $a2, $zero, 0x800
    /* EBC10 001EAC90 1B00043C */  lui        $a0, %hi(D_001B6C00)
    /* EBC14 001EAC94 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* EBC18 001EAC98 006C8424 */  addiu      $a0, $a0, %lo(D_001B6C00)
    /* EBC1C 001EAC9C 6CE6070C */  jal        func_001F99B0
    /* EBC20 001EACA0 000E0624 */   addiu     $a2, $zero, 0xE00
    /* EBC24 001EACA4 1B00043C */  lui        $a0, %hi(D_001B6500)
    /* EBC28 001EACA8 2D280000 */  daddu      $a1, $zero, $zero
    /* EBC2C 001EACAC 00658424 */  addiu      $a0, $a0, %lo(D_001B6500)
    /* EBC30 001EACB0 6CE6070C */  jal        func_001F99B0
    /* EBC34 001EACB4 E0000624 */   addiu     $a2, $zero, 0xE0
    /* EBC38 001EACB8 02CC070C */  jal        func_001F3008
    /* EBC3C 001EACBC 807C3126 */   addiu     $s1, $s1, %lo(D_00137C80)
    /* EBC40 001EACC0 50CC070C */  jal        func_001F3140
    /* EBC44 001EACC4 00000000 */   nop
    /* EBC48 001EACC8 3AD2080C */  jal        func_002348E8
    /* EBC4C 001EACCC 00000000 */   nop
    /* EBC50 001EACD0 4001043C */  lui        $a0, (0x1400000 >> 16)
    /* EBC54 001EACD4 EC14268E */  lw         $a2, 0x14EC($s1)
    /* EBC58 001EACD8 8A5D080C */  jal        func_00217628
    /* EBC5C 001EACDC E814258E */   lw        $a1, 0x14E8($s1)
    /* EBC60 001EACE0 D25D080C */  jal        func_00217748
    /* EBC64 001EACE4 01000424 */   addiu     $a0, $zero, 0x1
    /* EBC68 001EACE8 6063040C */  jal        func_00118D80
    /* EBC6C 001EACEC 2D200000 */   daddu     $a0, $zero, $zero
    /* EBC70 001EACF0 1400058E */  lw         $a1, 0x14($s0)
    /* EBC74 001EACF4 1A31080C */  jal        func_0020C468
    /* EBC78 001EACF8 4001043C */   lui       $a0, (0x1400000 >> 16)
    /* EBC7C 001EACFC 2DB04000 */  daddu      $s6, $v0, $zero
    /* EBC80 001EAD00 6063040C */  jal        func_00118D80
    /* EBC84 001EAD04 2D200000 */   daddu     $a0, $zero, $zero
    /* EBC88 001EAD08 1400118E */  lw         $s1, 0x14($s0)
    /* EBC8C 001EAD0C 0000248E */  lw         $a0, 0x0($s1)
    /* EBC90 001EAD10 0C00268E */  lw         $a2, 0xC($s1)
    /* EBC94 001EAD14 0800258E */  lw         $a1, 0x8($s1)
    /* EBC98 001EAD18 21202402 */  addu       $a0, $s1, $a0
    /* EBC9C 001EAD1C 560E080C */  jal        func_00203958
    /* EBCA0 001EAD20 21302602 */   addu      $a2, $s1, $a2
    /* EBCA4 001EAD24 7400228E */  lw         $v0, 0x74($s1)
    /* EBCA8 001EAD28 301D033C */  lui        $v1, (0x1D308000 >> 16)
    /* EBCAC 001EAD2C 1600043C */  lui        $a0, %hi(D_0015EF8C)
    /* EBCB0 001EAD30 8CEF848C */  lw         $a0, %lo(D_0015EF8C)($a0)
    /* EBCB4 001EAD34 00806334 */  ori        $v1, $v1, (0x1D308000 & 0xFFFF)
    /* EBCB8 001EAD38 7000258E */  lw         $a1, 0x70($s1)
    /* EBCBC 001EAD3C 00B80634 */  ori        $a2, $zero, 0xB800
    /* EBCC0 001EAD40 F8340600 */  dsll       $a2, $a2, 19
    /* EBCC4 001EAD44 21108200 */  addu       $v0, $a0, $v0
    /* EBCC8 001EAD48 1A00073C */  lui        $a3, %hi(D_0019E7C0)
    /* EBCCC 001EAD4C 21208500 */  addu       $a0, $a0, $a1
    /* EBCD0 001EAD50 03120200 */  sra        $v0, $v0, 8
    /* EBCD4 001EAD54 03220400 */  sra        $a0, $a0, 8
    /* EBCD8 001EAD58 7C110200 */  dsll32     $v0, $v0, 5
    /* EBCDC 001EAD5C 25104600 */  or         $v0, $v0, $a2
    /* EBCE0 001EAD60 25208300 */  or         $a0, $a0, $v1
    /* EBCE4 001EAD64 25208200 */  or         $a0, $a0, $v0
    /* EBCE8 001EAD68 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* EBCEC 001EAD6C FC1F0300 */  dsll32     $v1, $v1, 31
    /* EBCF0 001EAD70 0400228E */  lw         $v0, 0x4($s1)
    /* EBCF4 001EAD74 25208300 */  or         $a0, $a0, $v1
    /* EBCF8 001EAD78 6000238E */  lw         $v1, 0x60($s1)
    /* EBCFC 001EAD7C C0E7E524 */  addiu      $a1, $a3, %lo(D_0019E7C0)
    /* EBD00 001EAD80 21A82202 */  addu       $s5, $s1, $v0
    /* EBD04 001EAD84 C0E7E4FC */  sd         $a0, %lo(D_0019E7C0)($a3)
    /* EBD08 001EAD88 00800234 */  ori        $v0, $zero, 0x8000
    /* EBD0C 001EAD8C 38150200 */  dsll       $v0, $v0, 20
    /* EBD10 001EAD90 00804234 */  ori        $v0, $v0, 0x8000
    /* EBD14 001EAD94 F8140200 */  dsll       $v0, $v0, 19
    /* EBD18 001EAD98 00404234 */  ori        $v0, $v0, 0x4000
    /* EBD1C 001EAD9C A0FF0634 */  ori        $a2, $zero, 0xFFA0
    /* EBD20 001EADA0 3C300600 */  dsll32     $a2, $a2, 0
    /* EBD24 001EADA4 E000C634 */  ori        $a2, $a2, 0xE0
    /* EBD28 001EADA8 1000A2FC */  sd         $v0, 0x10($a1)
    /* EBD2C 001EADAC 21A0A302 */  addu       $s4, $s5, $v1
    /* EBD30 001EADB0 0800A6FC */  sd         $a2, 0x8($a1)
    /* EBD34 001EADB4 3400228E */  lw         $v0, 0x34($s1)
    /* EBD38 001EADB8 3000238E */  lw         $v1, 0x30($s1)
    /* EBD3C 001EADBC 21202202 */  addu       $a0, $s1, $v0
    /* EBD40 001EADC0 13006018 */  blez       $v1, .L001EAE10
    /* EBD44 001EADC4 94A283AF */   sw        $v1, -0x5D6C($gp)
    /* EBD48 001EADC8 1E00023C */  lui        $v0, %hi(D_001E0C00)
    /* EBD4C 001EADCC 2D808000 */  daddu      $s0, $a0, $zero
    /* EBD50 001EADD0 000C5224 */  addiu      $s2, $v0, %lo(D_001E0C00)
    /* EBD54 001EADD4 00000000 */  nop
.align 2
  .L001EADD8:
    /* EBD58 001EADD8 04000496 */  lhu        $a0, 0x4($s0)
    /* EBD5C 001EADDC 5AE6070C */  jal        func_001F9968
    /* EBD60 001EADE0 01007326 */   addiu     $s3, $s3, 0x1
    /* EBD64 001EADE4 0000038E */  lw         $v1, 0x0($s0)
    /* EBD68 001EADE8 00170200 */  sll        $v0, $v0, 28
    /* EBD6C 001EADEC 1600043C */  lui        $a0, %hi(D_00160F94)
    /* EBD70 001EADF0 940F848C */  lw         $a0, %lo(D_00160F94)($a0)
    /* EBD74 001EADF4 10001026 */  addiu      $s0, $s0, 0x10
    /* EBD78 001EADF8 21188302 */  addu       $v1, $s4, $v1
    /* EBD7C 001EADFC 21186200 */  addu       $v1, $v1, $v0
    /* EBD80 001EAE00 2A206402 */  slt        $a0, $s3, $a0
    /* EBD84 001EAE04 000043AE */  sw         $v1, 0x0($s2)
    /* EBD88 001EAE08 F3FF8014 */  bnez       $a0, .L001EADD8
    /* EBD8C 001EAE0C 04005226 */   addiu     $s2, $s2, 0x4
.align 2
  .L001EAE10:
    /* EBD90 001EAE10 3C00238E */  lw         $v1, 0x3C($s1)
    /* EBD94 001EAE14 2D900000 */  daddu      $s2, $zero, $zero
    /* EBD98 001EAE18 3800228E */  lw         $v0, 0x38($s1)
    /* EBD9C 001EAE1C 21182302 */  addu       $v1, $s1, $v1
    /* EBDA0 001EAE20 13004018 */  blez       $v0, .L001EAE70
    /* EBDA4 001EAE24 089382AF */   sw        $v0, -0x6CF8($gp)
    /* EBDA8 001EAE28 1B00023C */  lui        $v0, %hi(D_001B5D00)
    /* EBDAC 001EAE2C 2D806000 */  daddu      $s0, $v1, $zero
    /* EBDB0 001EAE30 005D5324 */  addiu      $s3, $v0, %lo(D_001B5D00)
    /* EBDB4 001EAE34 00000000 */  nop
.align 2
  .L001EAE38:
    /* EBDB8 001EAE38 04000496 */  lhu        $a0, 0x4($s0)
    /* EBDBC 001EAE3C 5AE6070C */  jal        func_001F9968
    /* EBDC0 001EAE40 01005226 */   addiu     $s2, $s2, 0x1
    /* EBDC4 001EAE44 0000038E */  lw         $v1, 0x0($s0)
    /* EBDC8 001EAE48 00170200 */  sll        $v0, $v0, 28
    /* EBDCC 001EAE4C 1600043C */  lui        $a0, %hi(D_00160008)
    /* EBDD0 001EAE50 0800848C */  lw         $a0, %lo(D_00160008)($a0)
    /* EBDD4 001EAE54 10001026 */  addiu      $s0, $s0, 0x10
    /* EBDD8 001EAE58 21188302 */  addu       $v1, $s4, $v1
    /* EBDDC 001EAE5C 21186200 */  addu       $v1, $v1, $v0
    /* EBDE0 001EAE60 2A204402 */  slt        $a0, $s2, $a0
    /* EBDE4 001EAE64 000063AE */  sw         $v1, 0x0($s3)
    /* EBDE8 001EAE68 F3FF8014 */  bnez       $a0, .L001EAE38
    /* EBDEC 001EAE6C 04007326 */   addiu     $s3, $s3, 0x4
.align 2
  .L001EAE70:
    /* EBDF0 001EAE70 4400238E */  lw         $v1, 0x44($s1)
    /* EBDF4 001EAE74 2D900000 */  daddu      $s2, $zero, $zero
    /* EBDF8 001EAE78 4000228E */  lw         $v0, 0x40($s1)
    /* EBDFC 001EAE7C 21182302 */  addu       $v1, $s1, $v1
    /* EBE00 001EAE80 13004018 */  blez       $v0, .L001EAED0
    /* EBE04 001EAE84 64A382AF */   sw        $v0, -0x5C9C($gp)
    /* EBE08 001EAE88 1E00023C */  lui        $v0, %hi(D_001E2900)
    /* EBE0C 001EAE8C 2D806000 */  daddu      $s0, $v1, $zero
    /* EBE10 001EAE90 00295324 */  addiu      $s3, $v0, %lo(D_001E2900)
    /* EBE14 001EAE94 00000000 */  nop
.align 2
  .L001EAE98:
    /* EBE18 001EAE98 04000496 */  lhu        $a0, 0x4($s0)
    /* EBE1C 001EAE9C 5AE6070C */  jal        func_001F9968
    /* EBE20 001EAEA0 01005226 */   addiu     $s2, $s2, 0x1
    /* EBE24 001EAEA4 0000038E */  lw         $v1, 0x0($s0)
    /* EBE28 001EAEA8 00170200 */  sll        $v0, $v0, 28
    /* EBE2C 001EAEAC 1600043C */  lui        $a0, %hi(D_00161064)
    /* EBE30 001EAEB0 6410848C */  lw         $a0, %lo(D_00161064)($a0)
    /* EBE34 001EAEB4 10001026 */  addiu      $s0, $s0, 0x10
    /* EBE38 001EAEB8 21188302 */  addu       $v1, $s4, $v1
    /* EBE3C 001EAEBC 21186200 */  addu       $v1, $v1, $v0
    /* EBE40 001EAEC0 2A204402 */  slt        $a0, $s2, $a0
    /* EBE44 001EAEC4 000063AE */  sw         $v1, 0x0($s3)
    /* EBE48 001EAEC8 F3FF8014 */  bnez       $a0, .L001EAE98
    /* EBE4C 001EAECC 04007326 */   addiu     $s3, $s3, 0x4
.align 2
  .L001EAED0:
    /* EBE50 001EAED0 4C00238E */  lw         $v1, 0x4C($s1)
    /* EBE54 001EAED4 2D900000 */  daddu      $s2, $zero, $zero
    /* EBE58 001EAED8 4800228E */  lw         $v0, 0x48($s1)
    /* EBE5C 001EAEDC 21182302 */  addu       $v1, $s1, $v1
    /* EBE60 001EAEE0 13004018 */  blez       $v0, .L001EAF30
    /* EBE64 001EAEE4 EC9782AF */   sw        $v0, -0x6814($gp)
    /* EBE68 001EAEE8 1E00023C */  lui        $v0, %hi(D_001D8840)
    /* EBE6C 001EAEEC 2D806000 */  daddu      $s0, $v1, $zero
    /* EBE70 001EAEF0 40885324 */  addiu      $s3, $v0, %lo(D_001D8840)
    /* EBE74 001EAEF4 00000000 */  nop
.align 2
  .L001EAEF8:
    /* EBE78 001EAEF8 04000496 */  lhu        $a0, 0x4($s0)
    /* EBE7C 001EAEFC 5AE6070C */  jal        func_001F9968
    /* EBE80 001EAF00 01005226 */   addiu     $s2, $s2, 0x1
    /* EBE84 001EAF04 0000038E */  lw         $v1, 0x0($s0)
    /* EBE88 001EAF08 00170200 */  sll        $v0, $v0, 28
    /* EBE8C 001EAF0C 1600043C */  lui        $a0, %hi(D_001604EC)
    /* EBE90 001EAF10 EC04848C */  lw         $a0, %lo(D_001604EC)($a0)
    /* EBE94 001EAF14 10001026 */  addiu      $s0, $s0, 0x10
    /* EBE98 001EAF18 21188302 */  addu       $v1, $s4, $v1
    /* EBE9C 001EAF1C 21186200 */  addu       $v1, $v1, $v0
    /* EBEA0 001EAF20 2A204402 */  slt        $a0, $s2, $a0
    /* EBEA4 001EAF24 000063AE */  sw         $v1, 0x0($s3)
    /* EBEA8 001EAF28 F3FF8014 */  bnez       $a0, .L001EAEF8
    /* EBEAC 001EAF2C 04007326 */   addiu     $s3, $s3, 0x4
.align 2
  .L001EAF30:
    /* EBEB0 001EAF30 1000248E */  lw         $a0, 0x10($s1)
    /* EBEB4 001EAF34 2D900000 */  daddu      $s2, $zero, $zero
    /* EBEB8 001EAF38 3400258E */  lw         $a1, 0x34($s1)
    /* EBEBC 001EAF3C 2120A402 */  addu       $a0, $s5, $a0
    /* EBEC0 001EAF40 4612080C */  jal        func_00204918
    /* EBEC4 001EAF44 21282502 */   addu      $a1, $s1, $a1
    /* EBEC8 001EAF48 1400248E */  lw         $a0, 0x14($s1)
    /* EBECC 001EAF4C 460C080C */  jal        func_00203118
    /* EBED0 001EAF50 2120A402 */   addu      $a0, $s5, $a0
    /* EBED4 001EAF54 1C00228E */  lw         $v0, 0x1C($s1)
    /* EBED8 001EAF58 1800238E */  lw         $v1, 0x18($s1)
    /* EBEDC 001EAF5C 21802202 */  addu       $s0, $s1, $v0
    /* EBEE0 001EAF60 1600013C */  lui        $at, %hi(D_00160000)
    /* EBEE4 001EAF64 000020AC */  sw         $zero, %lo(D_00160000)($at)
    /* EBEE8 001EAF68 1600013C */  lui        $at, %hi(D_0016104C)
    /* EBEEC 001EAF6C 4C1020AC */  sw         $zero, %lo(D_0016104C)($at)
    /* EBEF0 001EAF70 0E006018 */  blez       $v1, .L001EAFAC
    /* EBEF4 001EAF74 CC9780AF */   sw        $zero, -0x6834($gp)
.align 2
  .L001EAF78:
    /* EBEF8 001EAF78 0000028E */  lw         $v0, 0x0($s0)
    /* EBEFC 001EAF7C 10000626 */  addiu      $a2, $s0, 0x10
    /* EBF00 001EAF80 3C00258E */  lw         $a1, 0x3C($s1)
    /* EBF04 001EAF84 01005226 */  addiu      $s2, $s2, 0x1
    /* EBF08 001EAF88 2120A202 */  addu       $a0, $s5, $v0
    /* EBF0C 001EAF8C 0400078E */  lw         $a3, 0x4($s0)
    /* EBF10 001EAF90 0A200200 */  movz       $a0, $zero, $v0
    /* EBF14 001EAF94 9E0F080C */  jal        func_00203E78
    /* EBF18 001EAF98 21282502 */   addu      $a1, $s1, $a1
    /* EBF1C 001EAF9C 1800228E */  lw         $v0, 0x18($s1)
    /* EBF20 001EAFA0 2A104202 */  slt        $v0, $s2, $v0
    /* EBF24 001EAFA4 F4FF4014 */  bnez       $v0, .L001EAF78
    /* EBF28 001EAFA8 20001026 */   addiu     $s0, $s0, 0x20
.align 2
  .L001EAFAC:
    /* EBF2C 001EAFAC 2400238E */  lw         $v1, 0x24($s1)
    /* EBF30 001EAFB0 2D900000 */  daddu      $s2, $zero, $zero
    /* EBF34 001EAFB4 2000228E */  lw         $v0, 0x20($s1)
    /* EBF38 001EAFB8 0F004018 */  blez       $v0, .L001EAFF8
    /* EBF3C 001EAFBC 21802302 */   addu      $s0, $s1, $v1
    /* EBF40 001EAFC0 0000048E */  lw         $a0, 0x0($s0)
    /* EBF44 001EAFC4 00000000 */  nop
.align 2
  .L001EAFC8:
    /* EBF48 001EAFC8 10000626 */  addiu      $a2, $s0, 0x10
    /* EBF4C 001EAFCC 4400258E */  lw         $a1, 0x44($s1)
    /* EBF50 001EAFD0 01005226 */  addiu      $s2, $s2, 0x1
    /* EBF54 001EAFD4 0400078E */  lw         $a3, 0x4($s0)
    /* EBF58 001EAFD8 2120A402 */  addu       $a0, $s5, $a0
    /* EBF5C 001EAFDC 21282502 */  addu       $a1, $s1, $a1
    /* EBF60 001EAFE0 DA0F080C */  jal        func_00203F68
    /* EBF64 001EAFE4 20001026 */   addiu     $s0, $s0, 0x20
    /* EBF68 001EAFE8 2000228E */  lw         $v0, 0x20($s1)
    /* EBF6C 001EAFEC 2A104202 */  slt        $v0, $s2, $v0
    /* EBF70 001EAFF0 F5FF4054 */  bnel       $v0, $zero, .L001EAFC8
    /* EBF74 001EAFF4 0000048E */   lw        $a0, 0x0($s0)
.align 2
  .L001EAFF8:
    /* EBF78 001EAFF8 2C00238E */  lw         $v1, 0x2C($s1)
    /* EBF7C 001EAFFC 2D900000 */  daddu      $s2, $zero, $zero
    /* EBF80 001EB000 2800228E */  lw         $v0, 0x28($s1)
    /* EBF84 001EB004 0F004018 */  blez       $v0, .L001EB044
    /* EBF88 001EB008 21802302 */   addu      $s0, $s1, $v1
    /* EBF8C 001EB00C 00000000 */  nop
.align 2
  .L001EB010:
    /* EBF90 001EB010 0000048E */  lw         $a0, 0x0($s0)
    /* EBF94 001EB014 10000626 */  addiu      $a2, $s0, 0x10
    /* EBF98 001EB018 4C00258E */  lw         $a1, 0x4C($s1)
    /* EBF9C 001EB01C 20000726 */  addiu      $a3, $s0, 0x20
    /* EBFA0 001EB020 0400088E */  lw         $t0, 0x4($s0)
    /* EBFA4 001EB024 2120A402 */  addu       $a0, $s5, $a0
    /* EBFA8 001EB028 21282502 */  addu       $a1, $s1, $a1
    /* EBFAC 001EB02C D010080C */  jal        func_00204340
    /* EBFB0 001EB030 01005226 */   addiu     $s2, $s2, 0x1
    /* EBFB4 001EB034 2800228E */  lw         $v0, 0x28($s1)
    /* EBFB8 001EB038 2A104202 */  slt        $v0, $s2, $v0
    /* EBFBC 001EB03C F4FF4014 */  bnez       $v0, .L001EB010
    /* EBFC0 001EB040 30001026 */   addiu     $s0, $s0, 0x30
.align 2
  .L001EB044:
    /* EBFC4 001EB044 6800238E */  lw         $v1, 0x68($s1)
    /* EBFC8 001EB048 1900023C */  lui        $v0, %hi(D_0018CC20)
    /* EBFCC 001EB04C 5C00248E */  lw         $a0, 0x5C($s1)
    /* EBFD0 001EB050 20CC5224 */  addiu      $s2, $v0, %lo(D_0018CC20)
    /* EBFD4 001EB054 2118A302 */  addu       $v1, $s5, $v1
    /* EBFD8 001EB058 5800258E */  lw         $a1, 0x58($s1)
    /* EBFDC 001EB05C 1600013C */  lui        $at, %hi(D_0015F560)
    /* EBFE0 001EB060 60F523AC */  sw         $v1, %lo(D_0015F560)($at)
    /* EBFE4 001EB064 0E0C080C */  jal        func_00203038
    /* EBFE8 001EB068 21202402 */   addu      $a0, $s1, $a0
    /* EBFEC 001EB06C C041F026 */  addiu      $s0, $s7, %lo(D_001941C0)
    /* EBFF0 001EB070 6400258E */  lw         $a1, 0x64($s1)
    /* EBFF4 001EB074 5400268E */  lw         $a2, 0x54($s1)
    /* EBFF8 001EB078 6C00248E */  lw         $a0, 0x6C($s1)
    /* EBFFC 001EB07C 2128A502 */  addu       $a1, $s5, $a1
    /* EC000 001EB080 5000278E */  lw         $a3, 0x50($s1)
    /* EC004 001EB084 21302602 */  addu       $a2, $s1, $a2
    /* EC008 001EB088 C00B080C */  jal        func_00202F00
    /* EC00C 001EB08C 21202402 */   addu      $a0, $s1, $a0
    /* EC010 001EB090 1600053C */  lui        $a1, %hi(D_0015EF74)
    /* EC014 001EB094 74EFA58C */  lw         $a1, %lo(D_0015EF74)($a1)
    /* EC018 001EB098 2D20A003 */  daddu      $a0, $sp, $zero
    /* EC01C 001EB09C 2D380000 */  daddu      $a3, $zero, $zero
    /* EC020 001EB0A0 2D480000 */  daddu      $t1, $zero, $zero
    /* EC024 001EB0A4 002A0500 */  sll        $a1, $a1, 8
    /* EC028 001EB0A8 00010A24 */  addiu      $t2, $zero, 0x100
    /* EC02C 001EB0AC 80000B24 */  addiu      $t3, $zero, 0x80
    /* EC030 001EB0B0 2D400000 */  daddu      $t0, $zero, $zero
    /* EC034 001EB0B4 04000624 */  addiu      $a2, $zero, 0x4
    /* EC038 001EB0B8 8C89040C */  jal        func_00122630
    /* EC03C 001EB0BC 032C0500 */   sra       $a1, $a1, 16
    /* EC040 001EB0C0 6063040C */  jal        func_00118D80
    /* EC044 001EB0C4 2D200000 */   daddu     $a0, $zero, $zero
    /* EC048 001EB0C8 8400258E */  lw         $a1, 0x84($s1)
    /* EC04C 001EB0CC 2D20A003 */  daddu      $a0, $sp, $zero
    /* EC050 001EB0D0 568A040C */  jal        func_00122958
    /* EC054 001EB0D4 2128A502 */   addu      $a1, $s5, $a1
    /* EC058 001EB0D8 2D280000 */  daddu      $a1, $zero, $zero
    /* EC05C 001EB0DC 1682040C */  jal        func_00120858
    /* EC060 001EB0E0 2D200000 */   daddu     $a0, $zero, $zero
    /* EC064 001EB0E4 1400038E */  lw         $v1, 0x14($s0)
    /* EC068 001EB0E8 0200043C */  lui        $a0, (0x20000 >> 16)
    /* EC06C 001EB0EC 1600053C */  lui        $a1, %hi(D_0015EF74)
    /* EC070 001EB0F0 74EFA58C */  lw         $a1, %lo(D_0015EF74)($a1)
    /* EC074 001EB0F4 0120063C */  lui        $a2, (0x20010000 >> 16)
    /* EC078 001EB0F8 21187600 */  addu       $v1, $v1, $s6
    /* EC07C 001EB0FC 00B80734 */  ori        $a3, $zero, 0xB800
    /* EC080 001EB100 F83C0700 */  dsll       $a3, $a3, 19
    /* EC084 001EB104 180003AE */  sw         $v1, 0x18($s0)
    /* EC088 001EB108 03120500 */  sra        $v0, $a1, 8
    /* EC08C 001EB10C 2128A400 */  addu       $a1, $a1, $a0
    /* EC090 001EB110 25104600 */  or         $v0, $v0, $a2
    /* EC094 001EB114 7C00248E */  lw         $a0, 0x7C($s1)
    /* EC098 001EB118 25104700 */  or         $v0, $v0, $a3
    /* EC09C 001EB11C 1600013C */  lui        $at, %hi(D_0015EF78)
    /* EC0A0 001EB120 78EF25AC */  sw         $a1, %lo(D_0015EF78)($at)
    /* EC0A4 001EB124 2120A402 */  addu       $a0, $s5, $a0
    /* EC0A8 001EB128 1600013C */  lui        $at, %hi(D_0015EF74)
    /* EC0AC 001EB12C 74EF25AC */  sw         $a1, %lo(D_0015EF74)($at)
    /* EC0B0 001EB130 B2A7070C */  jal        func_001E9EC8
    /* EC0B4 001EB134 488382FF */   sd        $v0, -0x7CB8($gp)
    /* EC0B8 001EB138 1C0002AE */  sw         $v0, 0x1C($s0)
    /* EC0BC 001EB13C 2D204002 */  daddu      $a0, $s2, $zero
    /* EC0C0 001EB140 2D280000 */  daddu      $a1, $zero, $zero
    /* EC0C4 001EB144 6CE6070C */  jal        func_001F99B0
    /* EC0C8 001EB148 C0010624 */   addiu     $a2, $zero, 0x1C0
    /* EC0CC 001EB14C 1800043C */  lui        $a0, %hi(D_00186410)
    /* EC0D0 001EB150 2D280000 */  daddu      $a1, $zero, $zero
    /* EC0D4 001EB154 10648424 */  addiu      $a0, $a0, %lo(D_00186410)
    /* EC0D8 001EB158 6CE6070C */  jal        func_001F99B0
    /* EC0DC 001EB15C 40000624 */   addiu     $a2, $zero, 0x40
    /* EC0E0 001EB160 1C00048E */  lw         $a0, 0x1C($s0)
    /* EC0E4 001EB164 0400033C */  lui        $v1, (0x40000 >> 16)
    /* EC0E8 001EB168 21108300 */  addu       $v0, $a0, $v1
    /* EC0EC 001EB16C 580044AE */  sw         $a0, 0x58($s2)
    /* EC0F0 001EB170 21184300 */  addu       $v1, $v0, $v1
    /* EC0F4 001EB174 5C0042AE */  sw         $v0, 0x5C($s2)
    /* EC0F8 001EB178 1C0003AE */  sw         $v1, 0x1C($s0)
    /* EC0FC 001EB17C 8000228E */  lw         $v0, 0x80($s1)
    /* EC100 001EB180 2128A202 */  addu       $a1, $s5, $v0
    /* EC104 001EB184 0400A38C */  lw         $v1, 0x4($a1)
    /* EC108 001EB188 10006010 */  beqz       $v1, .L001EB1CC
    /* EC10C 001EB18C 2D380000 */   daddu     $a3, $zero, $zero
    /* EC110 001EB190 60004626 */  addiu      $a2, $s2, 0x60
    /* EC114 001EB194 0000A28C */  lw         $v0, 0x0($a1)
.align 2
  .L001EB198:
    /* EC118 001EB198 0100E724 */  addiu      $a3, $a3, 0x1
    /* EC11C 001EB19C 8000238E */  lw         $v1, 0x80($s1)
    /* EC120 001EB1A0 0800A524 */  addiu      $a1, $a1, 0x8
    /* EC124 001EB1A4 00084224 */  addiu      $v0, $v0, 0x800
    /* EC128 001EB1A8 4600E428 */  slti       $a0, $a3, 0x46
    /* EC12C 001EB1AC 2118A302 */  addu       $v1, $s5, $v1
    /* EC130 001EB1B0 21186200 */  addu       $v1, $v1, $v0
    /* EC134 001EB1B4 0000C3AC */  sw         $v1, 0x0($a2)
    /* EC138 001EB1B8 04008010 */  beqz       $a0, .L001EB1CC
    /* EC13C 001EB1BC 0400C624 */   addiu     $a2, $a2, 0x4
    /* EC140 001EB1C0 0400A28C */  lw         $v0, 0x4($a1)
    /* EC144 001EB1C4 F4FF4054 */  bnel       $v0, $zero, .L001EB198
    /* EC148 001EB1C8 0000A28C */   lw        $v0, 0x0($a1)
.align 2
  .L001EB1CC:
    /* EC14C 001EB1CC 2D200000 */  daddu      $a0, $zero, $zero
    /* EC150 001EB1D0 8814080C */  jal        func_00205220
    /* EC154 001EB1D4 C041F126 */   addiu     $s1, $s7, %lo(D_001941C0)
    /* EC158 001EB1D8 807CD027 */  addiu      $s0, $fp, %lo(D_00137C80)
    /* EC15C 001EB1DC 1C00228E */  lw         $v0, 0x1C($s1)
    /* EC160 001EB1E0 2D900000 */  daddu      $s2, $zero, $zero
    /* EC164 001EB1E4 2815058E */  lw         $a1, 0x1528($s0)
    /* EC168 001EB1E8 2C15068E */  lw         $a2, 0x152C($s0)
    /* EC16C 001EB1EC 2D204000 */  daddu      $a0, $v0, $zero
    /* EC170 001EB1F0 B25D080C */  jal        func_002176C8
    /* EC174 001EB1F4 608382AF */   sw        $v0, -0x7CA0($gp)
    /* EC178 001EB1F8 2C15038E */  lw         $v1, 0x152C($s0)
    /* EC17C 001EB1FC 1A00023C */  lui        $v0, %hi(D_001997D0)
    /* EC180 001EB200 1600043C */  lui        $a0, %hi(D_0015F060)
    /* EC184 001EB204 60F0848C */  lw         $a0, %lo(D_0015F060)($a0)
    /* EC188 001EB208 2D984000 */  daddu      $s3, $v0, $zero
    /* EC18C 001EB20C C01A0300 */  sll        $v1, $v1, 11
    /* EC190 001EB210 D0975024 */  addiu      $s0, $v0, %lo(D_001997D0)
    /* EC194 001EB214 21188300 */  addu       $v1, $a0, $v1
    /* EC198 001EB218 1600013C */  lui        $at, %hi(D_0015F064)
    /* EC19C 001EB21C 64F024AC */  sw         $a0, %lo(D_0015F064)($at)
    /* EC1A0 001EB220 1C0023AE */  sw         $v1, 0x1C($s1)
    /* EC1A4 001EB224 00000000 */  nop
.align 2
  .L001EB228:
    /* EC1A8 001EB228 C0AC070C */  jal        func_001EB300
    /* EC1AC 001EB22C 2D204002 */   daddu     $a0, $s2, $zero
    /* EC1B0 001EB230 2C00028E */  lw         $v0, 0x2C($s0)
    /* EC1B4 001EB234 01004426 */  addiu      $a0, $s2, 0x1
    /* EC1B8 001EB238 0F004018 */  blez       $v0, .L001EB278
    /* EC1BC 001EB23C 2D280000 */   daddu     $a1, $zero, $zero
    /* EC1C0 001EB240 1600023C */  lui        $v0, %hi(D_0015F780)
    /* EC1C4 001EB244 80F7428C */  lw         $v0, %lo(D_0015F780)($v0)
    /* EC1C8 001EB248 D0976726 */  addiu      $a3, $s3, %lo(D_001997D0)
    /* EC1CC 001EB24C F8FF4624 */  addiu      $a2, $v0, -0x8
    /* EC1D0 001EB250 2D184000 */  daddu      $v1, $v0, $zero
    /* EC1D4 001EB254 00000000 */  nop
.align 2
  .L001EB258:
    /* EC1D8 001EB258 0000628C */  lw         $v0, 0x0($v1)
    /* EC1DC 001EB25C 0100A524 */  addiu      $a1, $a1, 0x1
    /* EC1E0 001EB260 21104600 */  addu       $v0, $v0, $a2
    /* EC1E4 001EB264 000062AC */  sw         $v0, 0x0($v1)
    /* EC1E8 001EB268 2C00E28C */  lw         $v0, 0x2C($a3)
    /* EC1EC 001EB26C 2A10A200 */  slt        $v0, $a1, $v0
    /* EC1F0 001EB270 F9FF4014 */  bnez       $v0, .L001EB258
    /* EC1F4 001EB274 10006324 */   addiu     $v1, $v1, 0x10
.align 2
  .L001EB278:
    /* EC1F8 001EB278 2D908000 */  daddu      $s2, $a0, $zero
    /* EC1FC 001EB27C 0800422A */  slti       $v0, $s2, 0x8
    /* EC200 001EB280 E9FF4014 */  bnez       $v0, .L001EB228
    /* EC204 001EB284 00000000 */   nop
    /* EC208 001EB288 C0AC070C */  jal        func_001EB300
    /* EC20C 001EB28C 2D200000 */   daddu     $a0, $zero, $zero
    /* EC210 001EB290 1B00033C */  lui        $v1, %hi(D_001B3E40)
    /* EC214 001EB294 403E6224 */  addiu      $v0, $v1, %lo(D_001B3E40)
    /* EC218 001EB298 72044490 */  lbu        $a0, 0x472($v0)
    /* EC21C 001EB29C 0B008004 */  bltz       $a0, .L001EB2CC
    /* EC220 001EB2A0 1B00023C */   lui       $v0, %hi(D_001B3580)
    /* EC224 001EB2A4 80200400 */  sll        $a0, $a0, 2
    /* EC228 001EB2A8 80354224 */  addiu      $v0, $v0, %lo(D_001B3580)
    /* EC22C 001EB2AC 1800033C */  lui        $v1, %hi(D_001862E0)
    /* EC230 001EB2B0 21208200 */  addu       $a0, $a0, $v0
    /* EC234 001EB2B4 E0626324 */  addiu      $v1, $v1, %lo(D_001862E0)
    /* EC238 001EB2B8 0000858C */  lw         $a1, 0x0($a0)
    /* EC23C 001EB2BC 05000624 */  addiu      $a2, $zero, 0x5
    /* EC240 001EB2C0 2800A3AC */  sw         $v1, 0x28($a1)
    /* EC244 001EB2C4 0000828C */  lw         $v0, 0x0($a0)
    /* EC248 001EB2C8 0D0046A0 */  sb         $a2, 0xD($v0)
.align 2
  .L001EB2CC:
    /* EC24C 001EB2CC F000BF7B */  lq         $ra, 0xF0($sp)
    /* EC250 001EB2D0 E000BE7B */  lq         $fp, 0xE0($sp)
    /* EC254 001EB2D4 D000B77B */  lq         $s7, 0xD0($sp)
    /* EC258 001EB2D8 C000B67B */  lq         $s6, 0xC0($sp)
    /* EC25C 001EB2DC B000B57B */  lq         $s5, 0xB0($sp)
    /* EC260 001EB2E0 A000B47B */  lq         $s4, 0xA0($sp)
    /* EC264 001EB2E4 9000B37B */  lq         $s3, 0x90($sp)
    /* EC268 001EB2E8 8000B27B */  lq         $s2, 0x80($sp)
    /* EC26C 001EB2EC 7000B17B */  lq         $s1, 0x70($sp)
    /* EC270 001EB2F0 6000B07B */  lq         $s0, 0x60($sp)
    /* EC274 001EB2F4 0800E003 */  jr         $ra
    /* EC278 001EB2F8 0001BD27 */   addiu     $sp, $sp, 0x100
endlabel func_001EABE8
    /* EC27C 001EB2FC 00000000 */  nop
