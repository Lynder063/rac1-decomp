.align 3
nonmatching func_0023DCF0, 0x1A4

glabel func_0023DCF0
    /* 13EC70 0023DCF0 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 13EC74 0023DCF4 0010023C */  lui        $v0, (0x1000B410 >> 16)
    /* 13EC78 0023DCF8 5000B57F */  sq         $s5, 0x50($sp)
    /* 13EC7C 0023DCFC 10B44234 */  ori        $v0, $v0, (0x1000B410 & 0xFFFF)
    /* 13EC80 0023DD00 4000B47F */  sq         $s4, 0x40($sp)
    /* 13EC84 0023DD04 0010033C */  lui        $v1, (0x10002020 >> 16)
    /* 13EC88 0023DD08 3000B37F */  sq         $s3, 0x30($sp)
    /* 13EC8C 0023DD0C 20206334 */  ori        $v1, $v1, (0x10002020 & 0xFFFF)
    /* 13EC90 0023DD10 2000B27F */  sq         $s2, 0x20($sp)
    /* 13EC94 0023DD14 2DA8A000 */  daddu      $s5, $a1, $zero
    /* 13EC98 0023DD18 6000BF7F */  sq         $ra, 0x60($sp)
    /* 13EC9C 0023DD1C 2D908000 */  daddu      $s2, $a0, $zero
    /* 13ECA0 0023DD20 1000B17F */  sq         $s1, 0x10($sp)
    /* 13ECA4 0023DD24 2DA00000 */  daddu      $s4, $zero, $zero
    /* 13ECA8 0023DD28 0000B07F */  sq         $s0, 0x0($sp)
    /* 13ECAC 0023DD2C 0000508C */  lw         $s0, 0x0($v0)
    /* 13ECB0 0023DD30 0000628C */  lw         $v0, 0x0($v1)
    /* 13ECB4 0023DD34 3800518E */  lw         $s1, 0x38($s2)
    /* 13ECB8 0023DD38 021A0200 */  srl        $v1, $v0, 8
    /* 13ECBC 0023DD3C 0800458E */  lw         $a1, 0x8($s2)
    /* 13ECC0 0023DD40 02140200 */  srl        $v0, $v0, 16
    /* 13ECC4 0023DD44 0F006330 */  andi       $v1, $v1, 0xF
    /* 13ECC8 0023DD48 03004230 */  andi       $v0, $v0, 0x3
    /* 13ECCC 0023DD4C 4000448E */  lw         $a0, 0x40($s2)
    /* 13ECD0 0023DD50 21104300 */  addu       $v0, $v0, $v1
    /* 13ECD4 0023DD54 C09A0500 */  sll        $s3, $a1, 11
    /* 13ECD8 0023DD58 00110200 */  sll        $v0, $v0, 4
    /* 13ECDC 0023DD5C 7F003132 */  andi       $s1, $s1, 0x7F
    /* 13ECE0 0023DD60 2C63040C */  jal        func_00118CB0
    /* 13ECE4 0023DD64 23800202 */   subu      $s0, $s0, $v0
    /* 13ECE8 0023DD68 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 13ECEC 0023DD6C C3881100 */  sra        $s1, $s1, 3
    /* 13ECF0 0023DD70 0800A3FE */  sd         $v1, 0x8($s5)
    /* 13ECF4 0023DD74 21801102 */  addu       $s0, $s0, $s1
    /* 13ECF8 0023DD78 0000A3FE */  sd         $v1, 0x0($s5)
    /* 13ECFC 0023DD7C 21801302 */  addu       $s0, $s0, $s3
    /* 13ED00 0023DD80 01006052 */  beql       $s3, $zero, .L0023DD88
    /* 13ED04 0023DD84 CD010000 */   break     0, 7
.align 2
  .L0023DD88:
    /* 13ED08 0023DD88 2D380000 */  daddu      $a3, $zero, $zero
    /* 13ED0C 0023DD8C 0000428E */  lw         $v0, 0x0($s2)
    /* 13ED10 0023DD90 5800488E */  lw         $t0, 0x58($s2)
    /* 13ED14 0023DD94 23800202 */  subu       $s0, $s0, $v0
    /* 13ED18 0023DD98 1B001302 */  divu       $zero, $s0, $s3
    /* 13ED1C 0023DD9C 10180000 */  mfhi       $v1
    /* 13ED20 0023DDA0 30000019 */  blez       $t0, .L0023DE64
    /* 13ED24 0023DDA4 5C00448E */   lw        $a0, 0x5C($s2)
    /* 13ED28 0023DDA8 23508800 */  subu       $t2, $a0, $t0
    /* 13ED2C 0023DDAC 21807300 */  addu       $s0, $v1, $s3
    /* 13ED30 0023DDB0 2D600000 */  daddu      $t4, $zero, $zero
    /* 13ED34 0023DDB4 18000B24 */  addiu      $t3, $zero, 0x18
    /* 13ED38 0023DDB8 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* 13ED3C 0023DDBC 5400438E */  lw         $v1, 0x54($s2)
.align 2
  .L0023DDC0:
    /* 13ED40 0023DDC0 21104301 */  addu       $v0, $t2, $v1
    /* 13ED44 0023DDC4 01006C50 */  beql       $v1, $t4, .L0023DDCC
    /* 13ED48 0023DDC8 CD010000 */   break     0, 7
.align 2
  .L0023DDCC:
    /* 13ED4C 0023DDCC 21104700 */  addu       $v0, $v0, $a3
    /* 13ED50 0023DDD0 5000458E */  lw         $a1, 0x50($s2)
    /* 13ED54 0023DDD4 1A004300 */  div        $zero, $v0, $v1
    /* 13ED58 0023DDD8 10200000 */  mfhi       $a0
    /* 13ED5C 0023DDDC 18308B00 */  mult       $a2, $a0, $t3
    /* 13ED60 0023DDE0 2128C500 */  addu       $a1, $a2, $a1
    /* 13ED64 0023DDE4 1000A38C */  lw         $v1, 0x10($a1)
    /* 13ED68 0023DDE8 1400A48C */  lw         $a0, 0x14($a1)
    /* 13ED6C 0023DDEC 23180302 */  subu       $v1, $s0, $v1
    /* 13ED70 0023DDF0 1A007300 */  div        $zero, $v1, $s3
    /* 13ED74 0023DDF4 10100000 */  mfhi       $v0
    /* 13ED78 0023DDF8 2A104400 */  slt        $v0, $v0, $a0
    /* 13ED7C 0023DDFC 14004010 */  beqz       $v0, .L0023DE50
    /* 13ED80 0023DE00 0100E724 */   addiu     $a3, $a3, 0x1
    /* 13ED84 0023DE04 0000A3DC */  ld         $v1, 0x0($a1)
    /* 13ED88 0023DE08 01001424 */  addiu      $s4, $zero, 0x1
    /* 13ED8C 0023DE0C 0000A3FE */  sd         $v1, 0x0($s5)
    /* 13ED90 0023DE10 5000428E */  lw         $v0, 0x50($s2)
    /* 13ED94 0023DE14 2110C200 */  addu       $v0, $a2, $v0
    /* 13ED98 0023DE18 080043DC */  ld         $v1, 0x8($v0)
    /* 13ED9C 0023DE1C 0800A3FE */  sd         $v1, 0x8($s5)
    /* 13EDA0 0023DE20 5000428E */  lw         $v0, 0x50($s2)
    /* 13EDA4 0023DE24 2110C200 */  addu       $v0, $a2, $v0
    /* 13EDA8 0023DE28 000049FC */  sd         $t1, 0x0($v0)
    /* 13EDAC 0023DE2C 5000438E */  lw         $v1, 0x50($s2)
    /* 13EDB0 0023DE30 2118C300 */  addu       $v1, $a2, $v1
    /* 13EDB4 0023DE34 080069FC */  sd         $t1, 0x8($v1)
    /* 13EDB8 0023DE38 5800428E */  lw         $v0, 0x58($s2)
    /* 13EDBC 0023DE3C 2D204000 */  daddu      $a0, $v0, $zero
    /* 13EDC0 0023DE40 02004328 */  slti       $v1, $v0, 0x2
    /* 13EDC4 0023DE44 0A108302 */  movz       $v0, $s4, $v1
    /* 13EDC8 0023DE48 23208200 */  subu       $a0, $a0, $v0
    /* 13EDCC 0023DE4C 580044AE */  sw         $a0, 0x58($s2)
.align 2
  .L0023DE50:
    /* 13EDD0 0023DE50 2A10E800 */  slt        $v0, $a3, $t0
    /* 13EDD4 0023DE54 03004010 */  beqz       $v0, .L0023DE64
    /* 13EDD8 0023DE58 00000000 */   nop
    /* 13EDDC 0023DE5C D8FF8052 */  beql       $s4, $zero, .L0023DDC0
    /* 13EDE0 0023DE60 5400438E */   lw        $v1, 0x54($s2)
.align 2
  .L0023DE64:
    /* 13EDE4 0023DE64 2463040C */  jal        func_00118C90
    /* 13EDE8 0023DE68 4000448E */   lw        $a0, 0x40($s2)
    /* 13EDEC 0023DE6C 6000BF7B */  lq         $ra, 0x60($sp)
    /* 13EDF0 0023DE70 01000224 */  addiu      $v0, $zero, 0x1
    /* 13EDF4 0023DE74 5000B57B */  lq         $s5, 0x50($sp)
    /* 13EDF8 0023DE78 4000B47B */  lq         $s4, 0x40($sp)
    /* 13EDFC 0023DE7C 3000B37B */  lq         $s3, 0x30($sp)
    /* 13EE00 0023DE80 2000B27B */  lq         $s2, 0x20($sp)
    /* 13EE04 0023DE84 1000B17B */  lq         $s1, 0x10($sp)
    /* 13EE08 0023DE88 0000B07B */  lq         $s0, 0x0($sp)
    /* 13EE0C 0023DE8C 0800E003 */  jr         $ra
    /* 13EE10 0023DE90 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_0023DCF0
    /* 13EE14 0023DE94 00000000 */  nop
