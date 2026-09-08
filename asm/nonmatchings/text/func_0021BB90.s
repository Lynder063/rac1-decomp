.align 3
nonmatching func_0021BB90, 0x61C

glabel func_0021BB90
    /* 11CB10 0021BB90 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 11CB14 0021BB94 1D00023C */  lui        $v0, %hi(D_001D5F70)
    /* 11CB18 0021BB98 5000B57F */  sq         $s5, 0x50($sp)
    /* 11CB1C 0021BB9C 4000B47F */  sq         $s4, 0x40($sp)
    /* 11CB20 0021BBA0 2DA84000 */  daddu      $s5, $v0, $zero
    /* 11CB24 0021BBA4 3000B37F */  sq         $s3, 0x30($sp)
    /* 11CB28 0021BBA8 705F4224 */  addiu      $v0, $v0, %lo(D_001D5F70)
    /* 11CB2C 0021BBAC 1000B17F */  sq         $s1, 0x10($sp)
    /* 11CB30 0021BBB0 2DA00000 */  daddu      $s4, $zero, $zero
    /* 11CB34 0021BBB4 7000BF7F */  sq         $ra, 0x70($sp)
    /* 11CB38 0021BBB8 2D888000 */  daddu      $s1, $a0, $zero
    /* 11CB3C 0021BBBC 6000B67F */  sq         $s6, 0x60($sp)
    /* 11CB40 0021BBC0 2000B27F */  sq         $s2, 0x20($sp)
    /* 11CB44 0021BBC4 0000B07F */  sq         $s0, 0x0($sp)
    /* 11CB48 0021BBC8 0400438C */  lw         $v1, 0x4($v0)
    /* 11CB4C 0021BBCC 3400258E */  lw         $a1, 0x34($s1)
    /* 11CB50 0021BBD0 4000628C */  lw         $v0, 0x40($v1)
    /* 11CB54 0021BBD4 0000A484 */  lh         $a0, 0x0($a1)
    /* 11CB58 0021BBD8 26105100 */  xor        $v0, $v0, $s1
    /* 11CB5C 0021BBDC 30008010 */  beqz       $a0, .L0021BCA0
    /* 11CB60 0021BBE0 0100532C */   sltiu     $s3, $v0, 0x1
    /* 11CB64 0021BBE4 007D1624 */  addiu      $s6, $zero, 0x7D00
    /* 11CB68 0021BBE8 2D900000 */  daddu      $s2, $zero, $zero
    /* 11CB6C 0021BBEC 00000000 */  nop
.align 2
  .L0021BBF0:
    /* 11CB70 0021BBF0 10006052 */  beql       $s3, $zero, .L0021BC34
    /* 11CB74 0021BBF4 3400228E */   lw        $v0, 0x34($s1)
    /* 11CB78 0021BBF8 4000228E */  lw         $v0, 0x40($s1)
    /* 11CB7C 0021BBFC 0D005454 */  bnel       $v0, $s4, .L0021BC34
    /* 11CB80 0021BC00 3400228E */   lw        $v0, 0x34($s1)
    /* 11CB84 0021BC04 21204502 */  addu       $a0, $s2, $a1
    /* 11CB88 0021BC08 0A008294 */  lhu        $v0, 0xA($a0)
    /* 11CB8C 0021BC0C 01004224 */  addiu      $v0, $v0, 0x1
    /* 11CB90 0021BC10 0A0082A4 */  sh         $v0, 0xA($a0)
    /* 11CB94 0021BC14 3400238E */  lw         $v1, 0x34($s1)
    /* 11CB98 0021BC18 21184302 */  addu       $v1, $s2, $v1
    /* 11CB9C 0021BC1C 0A006284 */  lh         $v0, 0xA($v1)
    /* 11CBA0 0021BC20 017D4228 */  slti       $v0, $v0, 0x7D01
    /* 11CBA4 0021BC24 18004050 */  beql       $v0, $zero, .L0021BC88
    /* 11CBA8 0021BC28 0A0076A4 */   sh        $s6, 0xA($v1)
    /* 11CBAC 0021BC2C 17000010 */  b          .L0021BC8C
    /* 11CBB0 0021BC30 3400258E */   lw        $a1, 0x34($s1)
.align 2
  .L0021BC34:
    /* 11CBB4 0021BC34 B495848F */  lw         $a0, -0x6A4C($gp)
    /* 11CBB8 0021BC38 21104202 */  addu       $v0, $s2, $v0
    /* 11CBBC 0021BC3C 30E6070C */  jal        func_001F98C0
    /* 11CBC0 0021BC40 0A005084 */   lh        $s0, 0xA($v0)
    /* 11CBC4 0021BC44 2A105000 */  slt        $v0, $v0, $s0
    /* 11CBC8 0021BC48 07004050 */  beql       $v0, $zero, .L0021BC68
    /* 11CBCC 0021BC4C 3400228E */   lw        $v0, 0x34($s1)
    /* 11CBD0 0021BC50 30E6070C */  jal        func_001F98C0
    /* 11CBD4 0021BC54 B495848F */   lw        $a0, -0x6A4C($gp)
    /* 11CBD8 0021BC58 3400238E */  lw         $v1, 0x34($s1)
    /* 11CBDC 0021BC5C 21184302 */  addu       $v1, $s2, $v1
    /* 11CBE0 0021BC60 0A0062A4 */  sh         $v0, 0xA($v1)
    /* 11CBE4 0021BC64 3400228E */  lw         $v0, 0x34($s1)
.align 2
  .L0021BC68:
    /* 11CBE8 0021BC68 21184202 */  addu       $v1, $s2, $v0
    /* 11CBEC 0021BC6C 0A006284 */  lh         $v0, 0xA($v1)
    /* 11CBF0 0021BC70 03004018 */  blez       $v0, .L0021BC80
    /* 11CBF4 0021BC74 0A006494 */   lhu       $a0, 0xA($v1)
    /* 11CBF8 0021BC78 02000010 */  b          .L0021BC84
    /* 11CBFC 0021BC7C FFFF8224 */   addiu     $v0, $a0, -0x1
.align 2
  .L0021BC80:
    /* 11CC00 0021BC80 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0021BC84:
    /* 11CC04 0021BC84 0A0062A4 */  sh         $v0, 0xA($v1)
.align 2
  .L0021BC88:
    /* 11CC08 0021BC88 3400258E */  lw         $a1, 0x34($s1)
.align 2
  .L0021BC8C:
    /* 11CC0C 0021BC8C 0C005226 */  addiu      $s2, $s2, 0xC
    /* 11CC10 0021BC90 21104502 */  addu       $v0, $s2, $a1
    /* 11CC14 0021BC94 00004384 */  lh         $v1, 0x0($v0)
    /* 11CC18 0021BC98 D5FF6014 */  bnez       $v1, .L0021BBF0
    /* 11CC1C 0021BC9C 01009426 */   addiu     $s4, $s4, 0x1
.align 2
  .L0021BCA0:
    /* 11CC20 0021BCA0 38016012 */  beqz       $s3, .L0021C184
    /* 11CC24 0021BCA4 2D100000 */   daddu     $v0, $zero, $zero
    /* 11CC28 0021BCA8 1400023C */  lui        $v0, %hi(D_0013CA40)
    /* 11CC2C 0021BCAC 2D804000 */  daddu      $s0, $v0, $zero
    /* 11CC30 0021BCB0 40CA4224 */  addiu      $v0, $v0, %lo(D_0013CA40)
    /* 11CC34 0021BCB4 C401428C */  lw         $v0, 0x1C4($v0)
    /* 11CC38 0021BCB8 000D4330 */  andi       $v1, $v0, 0xD00
    /* 11CC3C 0021BCBC 08006010 */  beqz       $v1, .L0021BCE0
    /* 11CC40 0021BCC0 10004230 */   andi      $v0, $v0, 0x10
    /* 11CC44 0021BCC4 3000228E */  lw         $v0, 0x30($s1)
    /* 11CC48 0021BCC8 20004230 */  andi       $v0, $v0, 0x20
    /* 11CC4C 0021BCCC 15004010 */  beqz       $v0, .L0021BD24
    /* 11CC50 0021BCD0 8481838F */   lw        $v1, -0x7E7C($gp)
    /* 11CC54 0021BCD4 1A00023C */  lui        $v0, %hi(D_001A0414)
    /* 11CC58 0021BCD8 12000010 */  b          .L0021BD24
    /* 11CC5C 0021BCDC 140443AC */   sw        $v1, %lo(D_001A0414)($v0)
.align 2
  .L0021BCE0:
    /* 11CC60 0021BCE0 12004010 */  beqz       $v0, .L0021BD2C
    /* 11CC64 0021BCE4 40CA0326 */   addiu     $v1, $s0, %lo(D_0013CA40)
    /* 11CC68 0021BCE8 3000228E */  lw         $v0, 0x30($s1)
    /* 11CC6C 0021BCEC 20004230 */  andi       $v0, $v0, 0x20
    /* 11CC70 0021BCF0 03004010 */  beqz       $v0, .L0021BD00
    /* 11CC74 0021BCF4 8481838F */   lw        $v1, -0x7E7C($gp)
    /* 11CC78 0021BCF8 1A00023C */  lui        $v0, %hi(D_001A0414)
    /* 11CC7C 0021BCFC 140443AC */  sw         $v1, %lo(D_001A0414)($v0)
.align 2
  .L0021BD00:
    /* 11CC80 0021BD00 705FA326 */  addiu      $v1, $s5, %lo(D_001D5F70)
    /* 11CC84 0021BD04 0400628C */  lw         $v0, 0x4($v1)
    /* 11CC88 0021BD08 3800428C */  lw         $v0, 0x38($v0)
    /* 11CC8C 0021BD0C 03004050 */  beql       $v0, $zero, .L0021BD1C
    /* 11CC90 0021BD10 2401628C */   lw        $v0, 0x124($v1)
    /* 11CC94 0021BD14 1A010010 */  b          .L0021C180
    /* 11CC98 0021BD18 080062AC */   sw        $v0, 0x8($v1)
.align 2
  .L0021BD1C:
    /* 11CC9C 0021BD1C 03004014 */  bnez       $v0, .L0021BD2C
    /* 11CCA0 0021BD20 40CA0326 */   addiu     $v1, $s0, %lo(D_0013CA40)
.align 2
  .L0021BD24:
    /* 11CCA4 0021BD24 17010010 */  b          .L0021C184
    /* 11CCA8 0021BD28 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0021BD2C:
    /* 11CCAC 0021BD2C C401628C */  lw         $v0, 0x1C4($v1)
    /* 11CCB0 0021BD30 40004230 */  andi       $v0, $v0, 0x40
    /* 11CCB4 0021BD34 B1004010 */  beqz       $v0, .L0021BFFC
    /* 11CCB8 0021BD38 B482828F */   lw        $v0, -0x7D4C($gp)
    /* 11CCBC 0021BD3C 01004238 */  xori       $v0, $v0, 0x1
    /* 11CCC0 0021BD40 01004230 */  andi       $v0, $v0, 0x1
    /* 11CCC4 0021BD44 AD004010 */  beqz       $v0, .L0021BFFC
    /* 11CCC8 0021BD48 0C000224 */   addiu     $v0, $zero, 0xC
    /* 11CCCC 0021BD4C 4000238E */  lw         $v1, 0x40($s1)
    /* 11CCD0 0021BD50 3400248E */  lw         $a0, 0x34($s1)
    /* 11CCD4 0021BD54 18106200 */  mult       $v0, $v1, $v0
    /* 11CCD8 0021BD58 2D406000 */  daddu      $t0, $v1, $zero
    /* 11CCDC 0021BD5C 2D288000 */  daddu      $a1, $a0, $zero
    /* 11CCE0 0021BD60 21104400 */  addu       $v0, $v0, $a0
    /* 11CCE4 0021BD64 02004484 */  lh         $a0, 0x2($v0)
    /* 11CCE8 0021BD68 0C00832C */  sltiu      $v1, $a0, 0xC
    /* 11CCEC 0021BD6C A3006010 */  beqz       $v1, .L0021BFFC
    /* 11CCF0 0021BD70 1F00023C */   lui       $v0, %hi(jtbl_001E8AA0)
    /* 11CCF4 0021BD74 80180400 */  sll        $v1, $a0, 2
    /* 11CCF8 0021BD78 A08A4224 */  addiu      $v0, $v0, %lo(jtbl_001E8AA0)
    /* 11CCFC 0021BD7C 21186200 */  addu       $v1, $v1, $v0
    /* 11CD00 0021BD80 0000648C */  lw         $a0, 0x0($v1)
    /* 11CD04 0021BD84 08008000 */  jr         $a0
    /* 11CD08 0021BD88 00000000 */   nop
    /* 11CD0C 0021BD8C 4000228E */  lw         $v0, 0x40($s1)
    /* 11CD10 0021BD90 0C000324 */  addiu      $v1, $zero, 0xC
    /* 11CD14 0021BD94 3400248E */  lw         $a0, 0x34($s1)
    /* 11CD18 0021BD98 705FA526 */  addiu      $a1, $s5, 0x5F70
    /* 11CD1C 0021BD9C 18104300 */  mult       $v0, $v0, $v1
    /* 11CD20 0021BDA0 21104400 */  addu       $v0, $v0, $a0
    /* 11CD24 0021BDA4 0400438C */  lw         $v1, 0x4($v0)
    /* 11CD28 0021BDA8 94000010 */  b          .L0021BFFC
    /* 11CD2C 0021BDAC 0800A3AC */   sw        $v1, 0x8($a1)
    /* 11CD30 0021BDB0 1400268E */  lw         $a2, 0x14($s1)
    /* 11CD34 0021BDB4 11000524 */  addiu      $a1, $zero, 0x11
    /* 11CD38 0021BDB8 60BB080C */  jal        func_0022ED80
    /* 11CD3C 0021BDBC 2D200000 */   daddu     $a0, $zero, $zero
    /* 11CD40 0021BDC0 705FA326 */  addiu      $v1, $s5, 0x5F70
    /* 11CD44 0021BDC4 0C000824 */  addiu      $t0, $zero, 0xC
    /* 11CD48 0021BDC8 500160AC */  sw         $zero, 0x150($v1)
    /* 11CD4C 0021BDCC FBFF0724 */  addiu      $a3, $zero, -0x5
    /* 11CD50 0021BDD0 1600023C */  lui        $v0, %hi(D_0015EFB4)
    /* 11CD54 0021BDD4 B4EF428C */  lw         $v0, %lo(D_0015EFB4)($v0)
    /* 11CD58 0021BDD8 03000424 */  addiu      $a0, $zero, 0x3
    /* 11CD5C 0021BDDC 4000238E */  lw         $v1, 0x40($s1)
    /* 11CD60 0021BDE0 2D300000 */  daddu      $a2, $zero, $zero
    /* 11CD64 0021BDE4 3400258E */  lw         $a1, 0x34($s1)
    /* 11CD68 0021BDE8 02004234 */  ori        $v0, $v0, 0x2
    /* 11CD6C 0021BDEC 18186800 */  mult       $v1, $v1, $t0
    /* 11CD70 0021BDF0 24104700 */  and        $v0, $v0, $a3
    /* 11CD74 0021BDF4 1600013C */  lui        $at, %hi(D_0015EFB4)
    /* 11CD78 0021BDF8 B4EF22AC */  sw         $v0, %lo(D_0015EFB4)($at)
    /* 11CD7C 0021BDFC 21186500 */  addu       $v1, $v1, $a1
    /* 11CD80 0021BE00 20EF070C */  jal        func_001FBC80
    /* 11CD84 0021BE04 0400658C */   lw        $a1, 0x4($v1)
    /* 11CD88 0021BE08 7D000010 */  b          .L0021C000
    /* 11CD8C 0021BE0C 3400228E */   lw        $v0, 0x34($s1)
    /* 11CD90 0021BE10 1400268E */  lw         $a2, 0x14($s1)
    /* 11CD94 0021BE14 2D200000 */  daddu      $a0, $zero, $zero
    /* 11CD98 0021BE18 60BB080C */  jal        func_0022ED80
    /* 11CD9C 0021BE1C 11000524 */   addiu     $a1, $zero, 0x11
    /* 11CDA0 0021BE20 4000238E */  lw         $v1, 0x40($s1)
    /* 11CDA4 0021BE24 0C000424 */  addiu      $a0, $zero, 0xC
    /* 11CDA8 0021BE28 1600023C */  lui        $v0, %hi(D_0015EFB4)
    /* 11CDAC 0021BE2C B4EF428C */  lw         $v0, %lo(D_0015EFB4)($v0)
    /* 11CDB0 0021BE30 FDFF0524 */  addiu      $a1, $zero, -0x3
    /* 11CDB4 0021BE34 18186400 */  mult       $v1, $v1, $a0
    /* 11CDB8 0021BE38 3400278E */  lw         $a3, 0x34($s1)
    /* 11CDBC 0021BE3C 04004234 */  ori        $v0, $v0, 0x4
    /* 11CDC0 0021BE40 03000424 */  addiu      $a0, $zero, 0x3
    /* 11CDC4 0021BE44 24104500 */  and        $v0, $v0, $a1
    /* 11CDC8 0021BE48 2D300000 */  daddu      $a2, $zero, $zero
    /* 11CDCC 0021BE4C 1600013C */  lui        $at, %hi(D_0015EFB4)
    /* 11CDD0 0021BE50 B4EF22AC */  sw         $v0, %lo(D_0015EFB4)($at)
    /* 11CDD4 0021BE54 21186700 */  addu       $v1, $v1, $a3
    /* 11CDD8 0021BE58 20EF070C */  jal        func_001FBC80
    /* 11CDDC 0021BE5C 0400658C */   lw        $a1, 0x4($v1)
    /* 11CDE0 0021BE60 705FA326 */  addiu      $v1, $s5, 0x5F70
    /* 11CDE4 0021BE64 01000224 */  addiu      $v0, $zero, 0x1
    /* 11CDE8 0021BE68 64000010 */  b          .L0021BFFC
    /* 11CDEC 0021BE6C 500162AC */   sw        $v0, 0x150($v1)
    /* 11CDF0 0021BE70 0C000924 */  addiu      $t1, $zero, 0xC
    /* 11CDF4 0021BE74 18180901 */  mult       $v1, $t0, $t1
    /* 11CDF8 0021BE78 21106500 */  addu       $v0, $v1, $a1
    /* 11CDFC 0021BE7C 06004384 */  lh         $v1, 0x6($v0)
    /* 11CE00 0021BE80 07006010 */  beqz       $v1, .L0021BEA0
    /* 11CE04 0021BE84 1A00023C */   lui       $v0, %hi(D_00199578)
    /* 11CE08 0021BE88 80180300 */  sll        $v1, $v1, 2
    /* 11CE0C 0021BE8C 78954224 */  addiu      $v0, $v0, %lo(D_00199578)
    /* 11CE10 0021BE90 705FA526 */  addiu      $a1, $s5, 0x5F70
    /* 11CE14 0021BE94 21186200 */  addu       $v1, $v1, $v0
    /* 11CE18 0021BE98 0000648C */  lw         $a0, 0x0($v1)
    /* 11CE1C 0021BE9C EC00A4AC */  sw         $a0, 0xEC($a1)
.align 2
  .L0021BEA0:
    /* 11CE20 0021BEA0 705FA726 */  addiu      $a3, $s5, 0x5F70
    /* 11CE24 0021BEA4 05000224 */  addiu      $v0, $zero, 0x5
    /* 11CE28 0021BEA8 0400E38C */  lw         $v1, 0x4($a3)
    /* 11CE2C 0021BEAC 2D200000 */  daddu      $a0, $zero, $zero
    /* 11CE30 0021BEB0 0C00E2AC */  sw         $v0, 0xC($a3)
    /* 11CE34 0021BEB4 11000524 */  addiu      $a1, $zero, 0x11
    /* 11CE38 0021BEB8 F000E3AC */  sw         $v1, 0xF0($a3)
    /* 11CE3C 0021BEBC F400E0AC */  sw         $zero, 0xF4($a3)
    /* 11CE40 0021BEC0 4000228E */  lw         $v0, 0x40($s1)
    /* 11CE44 0021BEC4 3400268E */  lw         $a2, 0x34($s1)
    /* 11CE48 0021BEC8 18104900 */  mult       $v0, $v0, $t1
    /* 11CE4C 0021BECC 21104600 */  addu       $v0, $v0, $a2
    /* 11CE50 0021BED0 04004394 */  lhu        $v1, 0x4($v0)
.align 2
  .L0021BED4:
    /* 11CE54 0021BED4 E400E3AC */  sw         $v1, 0xE4($a3)
.align 2
  .L0021BED8:
    /* 11CE58 0021BED8 60BB080C */  jal        func_0022ED80
    /* 11CE5C 0021BEDC 1400268E */   lw        $a2, 0x14($s1)
    /* 11CE60 0021BEE0 A8000010 */  b          .L0021C184
    /* 11CE64 0021BEE4 2D100000 */   daddu     $v0, $zero, $zero
    /* 11CE68 0021BEE8 705FA726 */  addiu      $a3, $s5, 0x5F70
    /* 11CE6C 0021BEEC 02000224 */  addiu      $v0, $zero, 0x2
    /* 11CE70 0021BEF0 0400E38C */  lw         $v1, 0x4($a3)
    /* 11CE74 0021BEF4 03000524 */  addiu      $a1, $zero, 0x3
    /* 11CE78 0021BEF8 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 11CE7C 0021BEFC 0C000824 */  addiu      $t0, $zero, 0xC
    /* 11CE80 0021BF00 F400E2AC */  sw         $v0, 0xF4($a3)
    /* 11CE84 0021BF04 2D200000 */  daddu      $a0, $zero, $zero
    /* 11CE88 0021BF08 F000E3AC */  sw         $v1, 0xF0($a3)
    /* 11CE8C 0021BF0C 11000524 */  addiu      $a1, $zero, 0x11
    /* 11CE90 0021BF10 4000228E */  lw         $v0, 0x40($s1)
    /* 11CE94 0021BF14 3400268E */  lw         $a2, 0x34($s1)
    /* 11CE98 0021BF18 18104800 */  mult       $v0, $v0, $t0
    /* 11CE9C 0021BF1C 21104600 */  addu       $v0, $v0, $a2
    /* 11CEA0 0021BF20 ECFF0010 */  b          .L0021BED4
    /* 11CEA4 0021BF24 0400438C */   lw        $v1, 0x4($v0)
    /* 11CEA8 0021BF28 705FA726 */  addiu      $a3, $s5, 0x5F70
    /* 11CEAC 0021BF2C 02000224 */  addiu      $v0, $zero, 0x2
    /* 11CEB0 0021BF30 0400E38C */  lw         $v1, 0x4($a3)
    /* 11CEB4 0021BF34 04000524 */  addiu      $a1, $zero, 0x4
    /* 11CEB8 0021BF38 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 11CEBC 0021BF3C 0C000824 */  addiu      $t0, $zero, 0xC
    /* 11CEC0 0021BF40 F400E2AC */  sw         $v0, 0xF4($a3)
    /* 11CEC4 0021BF44 2D200000 */  daddu      $a0, $zero, $zero
    /* 11CEC8 0021BF48 F000E3AC */  sw         $v1, 0xF0($a3)
    /* 11CECC 0021BF4C 11000524 */  addiu      $a1, $zero, 0x11
    /* 11CED0 0021BF50 4000228E */  lw         $v0, 0x40($s1)
    /* 11CED4 0021BF54 3400268E */  lw         $a2, 0x34($s1)
    /* 11CED8 0021BF58 18104800 */  mult       $v0, $v0, $t0
    /* 11CEDC 0021BF5C 21104600 */  addu       $v0, $v0, $a2
    /* 11CEE0 0021BF60 DCFF0010 */  b          .L0021BED4
    /* 11CEE4 0021BF64 0400438C */   lw        $v1, 0x4($v0)
    /* 11CEE8 0021BF68 705FA726 */  addiu      $a3, $s5, 0x5F70
    /* 11CEEC 0021BF6C 02000224 */  addiu      $v0, $zero, 0x2
    /* 11CEF0 0021BF70 0400E38C */  lw         $v1, 0x4($a3)
    /* 11CEF4 0021BF74 06000524 */  addiu      $a1, $zero, 0x6
    /* 11CEF8 0021BF78 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 11CEFC 0021BF7C 0C000824 */  addiu      $t0, $zero, 0xC
    /* 11CF00 0021BF80 F400E2AC */  sw         $v0, 0xF4($a3)
    /* 11CF04 0021BF84 2D200000 */  daddu      $a0, $zero, $zero
    /* 11CF08 0021BF88 F000E3AC */  sw         $v1, 0xF0($a3)
    /* 11CF0C 0021BF8C 11000524 */  addiu      $a1, $zero, 0x11
    /* 11CF10 0021BF90 4000228E */  lw         $v0, 0x40($s1)
    /* 11CF14 0021BF94 3400268E */  lw         $a2, 0x34($s1)
    /* 11CF18 0021BF98 18104800 */  mult       $v0, $v0, $t0
    /* 11CF1C 0021BF9C 21104600 */  addu       $v0, $v0, $a2
    /* 11CF20 0021BFA0 CCFF0010 */  b          .L0021BED4
    /* 11CF24 0021BFA4 0400438C */   lw        $v1, 0x4($v0)
    /* 11CF28 0021BFA8 705FA326 */  addiu      $v1, $s5, 0x5F70
    /* 11CF2C 0021BFAC 02000624 */  addiu      $a2, $zero, 0x2
    /* 11CF30 0021BFB0 0400658C */  lw         $a1, 0x4($v1)
    /* 11CF34 0021BFB4 07000224 */  addiu      $v0, $zero, 0x7
    /* 11CF38 0021BFB8 0C0062AC */  sw         $v0, 0xC($v1)
    /* 11CF3C 0021BFBC 2D200000 */  daddu      $a0, $zero, $zero
    /* 11CF40 0021BFC0 F00065AC */  sw         $a1, 0xF0($v1)
    /* 11CF44 0021BFC4 F40066AC */  sw         $a2, 0xF4($v1)
    /* 11CF48 0021BFC8 C3FF0010 */  b          .L0021BED8
    /* 11CF4C 0021BFCC 11000524 */   addiu     $a1, $zero, 0x11
    /* 11CF50 0021BFD0 0C000324 */  addiu      $v1, $zero, 0xC
    /* 11CF54 0021BFD4 2D100000 */  daddu      $v0, $zero, $zero
    /* 11CF58 0021BFD8 18200301 */  mult       $a0, $t0, $v1
    /* 11CF5C 0021BFDC 21188500 */  addu       $v1, $a0, $a1
    /* 11CF60 0021BFE0 0400648C */  lw         $a0, 0x4($v1)
    /* 11CF64 0021BFE4 67000010 */  b          .L0021C184
    /* 11CF68 0021BFE8 888184AF */   sw        $a0, -0x7E78($gp)
    /* 11CF6C 0021BFEC 1400268E */  lw         $a2, 0x14($s1)
    /* 11CF70 0021BFF0 02000424 */  addiu      $a0, $zero, 0x2
    /* 11CF74 0021BFF4 60BB080C */  jal        func_0022ED80
    /* 11CF78 0021BFF8 11000524 */   addiu     $a1, $zero, 0x11
.align 2
  .L0021BFFC:
    /* 11CF7C 0021BFFC 3400228E */  lw         $v0, 0x34($s1)
.align 2
  .L0021C000:
    /* 11CF80 0021C000 2D380000 */  daddu      $a3, $zero, $zero
    /* 11CF84 0021C004 4000288E */  lw         $t0, 0x40($s1)
    /* 11CF88 0021C008 00004384 */  lh         $v1, 0x0($v0)
    /* 11CF8C 0021C00C 2D284000 */  daddu      $a1, $v0, $zero
    /* 11CF90 0021C010 0A006010 */  beqz       $v1, .L0021C03C
    /* 11CF94 0021C014 3000268E */   lw        $a2, 0x30($s1)
    /* 11CF98 0021C018 2D20A000 */  daddu      $a0, $a1, $zero
    /* 11CF9C 0021C01C 00000000 */  nop
.align 2
  .L0021C020:
    /* 11CFA0 0021C020 0C008424 */  addiu      $a0, $a0, 0xC
    /* 11CFA4 0021C024 00008284 */  lh         $v0, 0x0($a0)
    /* 11CFA8 0021C028 00000000 */  nop
    /* 11CFAC 0021C02C 00000000 */  nop
    /* 11CFB0 0021C030 00000000 */  nop
    /* 11CFB4 0021C034 FAFF4014 */  bnez       $v0, .L0021C020
    /* 11CFB8 0021C038 0100E724 */   addiu     $a3, $a3, 0x1
.align 2
  .L0021C03C:
    /* 11CFBC 0021C03C 0100C230 */  andi       $v0, $a2, 0x1
    /* 11CFC0 0021C040 03004010 */  beqz       $v0, .L0021C050
    /* 11CFC4 0021C044 40CA0226 */   addiu     $v0, $s0, %lo(D_0013CA40)
    /* 11CFC8 0021C048 02000010 */  b          .L0021C054
    /* 11CFCC 0021C04C B401458C */   lw        $a1, 0x1B4($v0)
.align 2
  .L0021C050:
    /* 11CFD0 0021C050 C401458C */  lw         $a1, 0x1C4($v0)
.align 2
  .L0021C054:
    /* 11CFD4 0021C054 0010A230 */  andi       $v0, $a1, 0x1000
    /* 11CFD8 0021C058 07004054 */  bnel       $v0, $zero, .L0021C078
    /* 11CFDC 0021C05C 4000228E */   lw        $v0, 0x40($s1)
    /* 11CFE0 0021C060 0001C230 */  andi       $v0, $a2, 0x100
    /* 11CFE4 0021C064 11004010 */  beqz       $v0, .L0021C0AC
    /* 11CFE8 0021C068 0400A230 */   andi      $v0, $a1, 0x4
    /* 11CFEC 0021C06C 10004010 */  beqz       $v0, .L0021C0B0
    /* 11CFF0 0021C070 0040A230 */   andi      $v0, $a1, 0x4000
    /* 11CFF4 0021C074 4000228E */  lw         $v0, 0x40($s1)
.align 2
  .L0021C078:
    /* 11CFF8 0021C078 03004010 */  beqz       $v0, .L0021C088
    /* 11CFFC 0021C07C FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 11D000 0021C080 0A000010 */  b          .L0021C0AC
    /* 11D004 0021C084 400022AE */   sw        $v0, 0x40($s1)
.align 2
  .L0021C088:
    /* 11D008 0021C088 0010C230 */  andi       $v0, $a2, 0x1000
    /* 11D00C 0021C08C 03004010 */  beqz       $v0, .L0021C09C
    /* 11D010 0021C090 FFFFE224 */   addiu     $v0, $a3, -0x1
    /* 11D014 0021C094 05000010 */  b          .L0021C0AC
    /* 11D018 0021C098 400022AE */   sw        $v0, 0x40($s1)
.align 2
  .L0021C09C:
    /* 11D01C 0021C09C 705FA226 */  addiu      $v0, $s5, %lo(D_001D5F70)
    /* 11D020 0021C0A0 3800248E */  lw         $a0, 0x38($s1)
    /* 11D024 0021C0A4 0400438C */  lw         $v1, 0x4($v0)
    /* 11D028 0021C0A8 800064AC */  sw         $a0, 0x80($v1)
.align 2
  .L0021C0AC:
    /* 11D02C 0021C0AC 0040A230 */  andi       $v0, $a1, 0x4000
.align 2
  .L0021C0B0:
    /* 11D030 0021C0B0 08004054 */  bnel       $v0, $zero, .L0021C0D4
    /* 11D034 0021C0B4 4000258E */   lw        $a1, 0x40($s1)
    /* 11D038 0021C0B8 3000228E */  lw         $v0, 0x30($s1)
    /* 11D03C 0021C0BC 00014230 */  andi       $v0, $v0, 0x100
    /* 11D040 0021C0C0 19004010 */  beqz       $v0, .L0021C128
    /* 11D044 0021C0C4 0800A230 */   andi      $v0, $a1, 0x8
    /* 11D048 0021C0C8 18004050 */  beql       $v0, $zero, .L0021C12C
    /* 11D04C 0021C0CC 4000228E */   lw        $v0, 0x40($s1)
    /* 11D050 0021C0D0 4000258E */  lw         $a1, 0x40($s1)
.align 2
  .L0021C0D4:
    /* 11D054 0021C0D4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 11D058 0021C0D8 3400238E */  lw         $v1, 0x34($s1)
    /* 11D05C 0021C0DC 1810A200 */  mult       $v0, $a1, $v0
    /* 11D060 0021C0E0 21104300 */  addu       $v0, $v0, $v1
    /* 11D064 0021C0E4 0C004384 */  lh         $v1, 0xC($v0)
    /* 11D068 0021C0E8 06006010 */  beqz       $v1, .L0021C104
    /* 11D06C 0021C0EC 0C004424 */   addiu     $a0, $v0, 0xC
    /* 11D070 0021C0F0 02008284 */  lh         $v0, 0x2($a0)
    /* 11D074 0021C0F4 03004010 */  beqz       $v0, .L0021C104
    /* 11D078 0021C0F8 0100A224 */   addiu     $v0, $a1, 0x1
    /* 11D07C 0021C0FC 0A000010 */  b          .L0021C128
    /* 11D080 0021C100 400022AE */   sw        $v0, 0x40($s1)
.align 2
  .L0021C104:
    /* 11D084 0021C104 3000228E */  lw         $v0, 0x30($s1)
    /* 11D088 0021C108 00104230 */  andi       $v0, $v0, 0x1000
    /* 11D08C 0021C10C 03004010 */  beqz       $v0, .L0021C11C
    /* 11D090 0021C110 705FA226 */   addiu     $v0, $s5, %lo(D_001D5F70)
    /* 11D094 0021C114 04000010 */  b          .L0021C128
    /* 11D098 0021C118 400020AE */   sw        $zero, 0x40($s1)
.align 2
  .L0021C11C:
    /* 11D09C 0021C11C 3C00248E */  lw         $a0, 0x3C($s1)
    /* 11D0A0 0021C120 0400438C */  lw         $v1, 0x4($v0)
    /* 11D0A4 0021C124 800064AC */  sw         $a0, 0x80($v1)
.align 2
  .L0021C128:
    /* 11D0A8 0021C128 4000228E */  lw         $v0, 0x40($s1)
.align 2
  .L0021C12C:
    /* 11D0AC 0021C12C 07004854 */  bnel       $v0, $t0, .L0021C14C
    /* 11D0B0 0021C130 1400268E */   lw        $a2, 0x14($s1)
    /* 11D0B4 0021C134 705FA226 */  addiu      $v0, $s5, %lo(D_001D5F70)
    /* 11D0B8 0021C138 0400438C */  lw         $v1, 0x4($v0)
    /* 11D0BC 0021C13C 8000648C */  lw         $a0, 0x80($v1)
    /* 11D0C0 0021C140 10008010 */  beqz       $a0, .L0021C184
    /* 11D0C4 0021C144 2D100000 */   daddu     $v0, $zero, $zero
    /* 11D0C8 0021C148 1400268E */  lw         $a2, 0x14($s1)
.align 2
  .L0021C14C:
    /* 11D0CC 0021C14C 01000424 */  addiu      $a0, $zero, 0x1
    /* 11D0D0 0021C150 60BB080C */  jal        func_0022ED80
    /* 11D0D4 0021C154 11000524 */   addiu     $a1, $zero, 0x11
    /* 11D0D8 0021C158 3000238E */  lw         $v1, 0x30($s1)
    /* 11D0DC 0021C15C 20006330 */  andi       $v1, $v1, 0x20
    /* 11D0E0 0021C160 07006010 */  beqz       $v1, .L0021C180
    /* 11D0E4 0021C164 1A00053C */   lui       $a1, %hi(D_001A0414)
    /* 11D0E8 0021C168 4000228E */  lw         $v0, 0x40($s1)
    /* 11D0EC 0021C16C E095848F */  lw         $a0, -0x6A20($gp)
    /* 11D0F0 0021C170 80100200 */  sll        $v0, $v0, 2
    /* 11D0F4 0021C174 21104400 */  addu       $v0, $v0, $a0
    /* 11D0F8 0021C178 0000438C */  lw         $v1, 0x0($v0)
    /* 11D0FC 0021C17C 1404A3AC */  sw         $v1, %lo(D_001A0414)($a1)
.align 2
  .L0021C180:
    /* 11D100 0021C180 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0021C184:
    /* 11D104 0021C184 7000BF7B */  lq         $ra, 0x70($sp)
    /* 11D108 0021C188 6000B67B */  lq         $s6, 0x60($sp)
    /* 11D10C 0021C18C 5000B57B */  lq         $s5, 0x50($sp)
    /* 11D110 0021C190 4000B47B */  lq         $s4, 0x40($sp)
    /* 11D114 0021C194 3000B37B */  lq         $s3, 0x30($sp)
    /* 11D118 0021C198 2000B27B */  lq         $s2, 0x20($sp)
    /* 11D11C 0021C19C 1000B17B */  lq         $s1, 0x10($sp)
    /* 11D120 0021C1A0 0000B07B */  lq         $s0, 0x0($sp)
    /* 11D124 0021C1A4 0800E003 */  jr         $ra
    /* 11D128 0021C1A8 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_0021BB90
    /* 11D12C 0021C1AC 00000000 */  nop
