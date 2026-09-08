.align 3
nonmatching func_0021C840, 0x558

glabel func_0021C840
    /* 11D7C0 0021C840 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 11D7C4 0021C844 1D00023C */  lui        $v0, %hi(D_001D5F70)
    /* 11D7C8 0021C848 0000B07F */  sq         $s0, 0x0($sp)
    /* 11D7CC 0021C84C 4000B47F */  sq         $s4, 0x40($sp)
    /* 11D7D0 0021C850 2D808000 */  daddu      $s0, $a0, $zero
    /* 11D7D4 0021C854 5000BF7F */  sq         $ra, 0x50($sp)
    /* 11D7D8 0021C858 705F4424 */  addiu      $a0, $v0, %lo(D_001D5F70)
    /* 11D7DC 0021C85C 3000B37F */  sq         $s3, 0x30($sp)
    /* 11D7E0 0021C860 2DA04000 */  daddu      $s4, $v0, $zero
    /* 11D7E4 0021C864 2000B27F */  sq         $s2, 0x20($sp)
    /* 11D7E8 0021C868 1000B17F */  sq         $s1, 0x10($sp)
    /* 11D7EC 0021C86C 0400838C */  lw         $v1, 0x4($a0)
    /* 11D7F0 0021C870 4000628C */  lw         $v0, 0x40($v1)
    /* 11D7F4 0021C874 40015014 */  bne        $v0, $s0, .L0021CD78
    /* 11D7F8 0021C878 2D100000 */   daddu     $v0, $zero, $zero
    /* 11D7FC 0021C87C 1400033C */  lui        $v1, %hi(D_0013CA40)
    /* 11D800 0021C880 2D886000 */  daddu      $s1, $v1, $zero
    /* 11D804 0021C884 40CA6324 */  addiu      $v1, $v1, %lo(D_0013CA40)
    /* 11D808 0021C888 C401628C */  lw         $v0, 0x1C4($v1)
    /* 11D80C 0021C88C 000D4230 */  andi       $v0, $v0, 0xD00
    /* 11D810 0021C890 06004010 */  beqz       $v0, .L0021C8AC
    /* 11D814 0021C894 40CA2326 */   addiu     $v1, $s1, %lo(D_0013CA40)
    /* 11D818 0021C898 2401828C */  lw         $v0, 0x124($a0)
    /* 11D81C 0021C89C 04004054 */  bnel       $v0, $zero, .L0021C8B0
    /* 11D820 0021C8A0 C401628C */   lw        $v0, 0x1C4($v1)
    /* 11D824 0021C8A4 34010010 */  b          .L0021CD78
    /* 11D828 0021C8A8 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0021C8AC:
    /* 11D82C 0021C8AC C401628C */  lw         $v0, 0x1C4($v1)
.align 2
  .L0021C8B0:
    /* 11D830 0021C8B0 10004230 */  andi       $v0, $v0, 0x10
    /* 11D834 0021C8B4 0B004010 */  beqz       $v0, .L0021C8E4
    /* 11D838 0021C8B8 705F8326 */   addiu     $v1, $s4, %lo(D_001D5F70)
    /* 11D83C 0021C8BC 0400628C */  lw         $v0, 0x4($v1)
    /* 11D840 0021C8C0 3800428C */  lw         $v0, 0x38($v0)
    /* 11D844 0021C8C4 03004050 */  beql       $v0, $zero, .L0021C8D4
    /* 11D848 0021C8C8 2401628C */   lw        $v0, 0x124($v1)
    /* 11D84C 0021C8CC 29010010 */  b          .L0021CD74
    /* 11D850 0021C8D0 080062AC */   sw        $v0, 0x8($v1)
.align 2
  .L0021C8D4:
    /* 11D854 0021C8D4 04004054 */  bnel       $v0, $zero, .L0021C8E8
    /* 11D858 0021C8D8 44000B8E */   lw        $t3, 0x44($s0)
    /* 11D85C 0021C8DC 26010010 */  b          .L0021CD78
    /* 11D860 0021C8E0 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0021C8E4:
    /* 11D864 0021C8E4 44000B8E */  lw         $t3, 0x44($s0)
.align 2
  .L0021C8E8:
    /* 11D868 0021C8E8 40CA2326 */  addiu      $v1, $s1, %lo(D_0013CA40)
    /* 11D86C 0021C8EC 3C000D8E */  lw         $t5, 0x3C($s0)
    /* 11D870 0021C8F0 01006051 */  beql       $t3, $zero, .L0021C8F8
    /* 11D874 0021C8F4 CD010000 */   break     0, 7
.align 2
  .L0021C8F8:
    /* 11D878 0021C8F8 1A00AB01 */  div        $zero, $t5, $t3
    /* 11D87C 0021C8FC C401628C */  lw         $v0, 0x1C4($v1)
    /* 11D880 0021C900 40000F8E */  lw         $t7, 0x40($s0)
    /* 11D884 0021C904 00104230 */  andi       $v0, $v0, 0x1000
    /* 11D888 0021C908 10480000 */  mfhi       $t1
    /* 11D88C 0021C90C 12700000 */  mflo       $t6
    /* 11D890 0021C910 42004010 */  beqz       $v0, .L0021CA1C
    /* 11D894 0021C914 2D302001 */   daddu     $a2, $t1, $zero
    /* 11D898 0021C918 3F00C015 */  bnez       $t6, .L0021CA18
    /* 11D89C 0021C91C 2310AB01 */   subu      $v0, $t5, $t3
    /* 11D8A0 0021C920 4C00028E */  lw         $v0, 0x4C($s0)
    /* 11D8A4 0021C924 35004010 */  beqz       $v0, .L0021C9FC
    /* 11D8A8 0021C928 1D00023C */   lui       $v0, %hi(D_001D5F70)
    /* 11D8AC 0021C92C 2D280002 */  daddu      $a1, $s0, $zero
    /* 11D8B0 0021C930 705F4824 */  addiu      $t0, $v0, %lo(D_001D5F70)
    /* 11D8B4 0021C934 01000724 */  addiu      $a3, $zero, 0x1
    /* 11D8B8 0021C938 34010A8D */  lw         $t2, 0x134($t0)
    /* 11D8BC 0021C93C 4C00A58C */  lw         $a1, 0x4C($a1)
.align 2
  .L0021C940:
    /* 11D8C0 0021C940 2D180000 */  daddu      $v1, $zero, $zero
    /* 11D8C4 0021C944 4000AC8C */  lw         $t4, 0x40($a1)
    /* 11D8C8 0021C948 05004011 */  beqz       $t2, .L0021C960
    /* 11D8CC 0021C94C 4400A48C */   lw        $a0, 0x44($a1)
    /* 11D8D0 0021C950 3000A28C */  lw         $v0, 0x30($a1)
    /* 11D8D4 0021C954 2D18E000 */  daddu      $v1, $a3, $zero
    /* 11D8D8 0021C958 08004230 */  andi       $v0, $v0, 0x8
    /* 11D8DC 0021C95C 0A180200 */  movz       $v1, $zero, $v0
.align 2
  .L0021C960:
    /* 11D8E0 0021C960 3801028D */  lw         $v0, 0x138($t0)
    /* 11D8E4 0021C964 04004010 */  beqz       $v0, .L0021C978
    /* 11D8E8 0021C968 00000000 */   nop
    /* 11D8EC 0021C96C 3000A28C */  lw         $v0, 0x30($a1)
    /* 11D8F0 0021C970 04004230 */  andi       $v0, $v0, 0x4
    /* 11D8F4 0021C974 0B18E200 */  movn       $v1, $a3, $v0
.align 2
  .L0021C978:
    /* 11D8F8 0021C978 F1FF6054 */  bnel       $v1, $zero, .L0021C940
    /* 11D8FC 0021C97C 4C00A58C */   lw        $a1, 0x4C($a1)
    /* 11D900 0021C980 705F8326 */  addiu      $v1, $s4, %lo(D_001D5F70)
    /* 11D904 0021C984 05000724 */  addiu      $a3, $zero, 0x5
    /* 11D908 0021C988 0400628C */  lw         $v0, 0x4($v1)
    /* 11D90C 0021C98C 05008714 */  bne        $a0, $a3, .L0021C9A4
    /* 11D910 0021C990 800045AC */   sw        $a1, 0x80($v0)
    /* 11D914 0021C994 4400028E */  lw         $v0, 0x44($s0)
    /* 11D918 0021C998 01002625 */  addiu      $a2, $t1, 0x1
    /* 11D91C 0021C99C 03004238 */  xori       $v0, $v0, 0x3
    /* 11D920 0021C9A0 0B302201 */  movn       $a2, $t1, $v0
.align 2
  .L0021C9A4:
    /* 11D924 0021C9A4 03000224 */  addiu      $v0, $zero, 0x3
    /* 11D928 0021C9A8 0D008214 */  bne        $a0, $v0, .L0021C9E0
    /* 11D92C 0021C9AC FFFF8325 */   addiu     $v1, $t4, -0x1
    /* 11D930 0021C9B0 4400028E */  lw         $v0, 0x44($s0)
    /* 11D934 0021C9B4 0B004714 */  bne        $v0, $a3, .L0021C9E4
    /* 11D938 0021C9B8 FFFF8224 */   addiu     $v0, $a0, -0x1
    /* 11D93C 0021C9BC FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 11D940 0021C9C0 0300C228 */  slti       $v0, $a2, 0x3
    /* 11D944 0021C9C4 03004014 */  bnez       $v0, .L0021C9D4
    /* 11D948 0021C9C8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 11D94C 0021C9CC 04000010 */  b          .L0021C9E0
    /* 11D950 0021C9D0 02000624 */   addiu     $a2, $zero, 0x2
.align 2
  .L0021C9D4:
    /* 11D954 0021C9D4 2A104600 */  slt        $v0, $v0, $a2
    /* 11D958 0021C9D8 0A300200 */  movz       $a2, $zero, $v0
    /* 11D95C 0021C9DC FFFF8325 */  addiu      $v1, $t4, -0x1
.align 2
  .L0021C9E0:
    /* 11D960 0021C9E0 FFFF8224 */  addiu      $v0, $a0, -0x1
.align 2
  .L0021C9E4:
    /* 11D964 0021C9E4 18186400 */  mult       $v1, $v1, $a0
    /* 11D968 0021C9E8 2A20C200 */  slt        $a0, $a2, $v0
    /* 11D96C 0021C9EC 0B10C400 */  movn       $v0, $a2, $a0
    /* 11D970 0021C9F0 21186200 */  addu       $v1, $v1, $v0
    /* 11D974 0021C9F4 09000010 */  b          .L0021CA1C
    /* 11D978 0021C9F8 3C00A3AC */   sw        $v1, 0x3C($a1)
.align 2
  .L0021C9FC:
    /* 11D97C 0021C9FC 3000028E */  lw         $v0, 0x30($s0)
    /* 11D980 0021CA00 00804230 */  andi       $v0, $v0, 0x8000
    /* 11D984 0021CA04 06004014 */  bnez       $v0, .L0021CA20
    /* 11D988 0021CA08 40CA2326 */   addiu     $v1, $s1, %lo(D_0013CA40)
    /* 11D98C 0021CA0C FFFFE225 */  addiu      $v0, $t7, -0x1
    /* 11D990 0021CA10 18186201 */  mult       $v1, $t3, $v0
    /* 11D994 0021CA14 21106D00 */  addu       $v0, $v1, $t5
.align 2
  .L0021CA18:
    /* 11D998 0021CA18 3C0002AE */  sw         $v0, 0x3C($s0)
.align 2
  .L0021CA1C:
    /* 11D99C 0021CA1C 40CA2326 */  addiu      $v1, $s1, %lo(D_0013CA40)
.align 2
  .L0021CA20:
    /* 11D9A0 0021CA20 C401628C */  lw         $v0, 0x1C4($v1)
    /* 11D9A4 0021CA24 00404230 */  andi       $v0, $v0, 0x4000
    /* 11D9A8 0021CA28 46004010 */  beqz       $v0, .L0021CB44
    /* 11D9AC 0021CA2C 0100C225 */   addiu     $v0, $t6, 0x1
    /* 11D9B0 0021CA30 2A104F00 */  slt        $v0, $v0, $t7
    /* 11D9B4 0021CA34 04004050 */  beql       $v0, $zero, .L0021CA48
    /* 11D9B8 0021CA38 5000028E */   lw        $v0, 0x50($s0)
    /* 11D9BC 0021CA3C 3C00028E */  lw         $v0, 0x3C($s0)
    /* 11D9C0 0021CA40 3F000010 */  b          .L0021CB40
    /* 11D9C4 0021CA44 21104B00 */   addu      $v0, $v0, $t3
.align 2
  .L0021CA48:
    /* 11D9C8 0021CA48 33004010 */  beqz       $v0, .L0021CB18
    /* 11D9CC 0021CA4C 1D00023C */   lui       $v0, %hi(D_001D5F70)
    /* 11D9D0 0021CA50 2D280002 */  daddu      $a1, $s0, $zero
    /* 11D9D4 0021CA54 705F4824 */  addiu      $t0, $v0, %lo(D_001D5F70)
    /* 11D9D8 0021CA58 01000424 */  addiu      $a0, $zero, 0x1
    /* 11D9DC 0021CA5C 3401098D */  lw         $t1, 0x134($t0)
    /* 11D9E0 0021CA60 5000A58C */  lw         $a1, 0x50($a1)
    /* 11D9E4 0021CA64 00000000 */  nop
.align 2
  .L0021CA68:
    /* 11D9E8 0021CA68 2D180000 */  daddu      $v1, $zero, $zero
    /* 11D9EC 0021CA6C 05002011 */  beqz       $t1, .L0021CA84
    /* 11D9F0 0021CA70 4400A78C */   lw        $a3, 0x44($a1)
    /* 11D9F4 0021CA74 3000A28C */  lw         $v0, 0x30($a1)
    /* 11D9F8 0021CA78 2D188000 */  daddu      $v1, $a0, $zero
    /* 11D9FC 0021CA7C 08004230 */  andi       $v0, $v0, 0x8
    /* 11DA00 0021CA80 0A180200 */  movz       $v1, $zero, $v0
.align 2
  .L0021CA84:
    /* 11DA04 0021CA84 3801028D */  lw         $v0, 0x138($t0)
    /* 11DA08 0021CA88 04004010 */  beqz       $v0, .L0021CA9C
    /* 11DA0C 0021CA8C 00000000 */   nop
    /* 11DA10 0021CA90 3000A28C */  lw         $v0, 0x30($a1)
    /* 11DA14 0021CA94 04004230 */  andi       $v0, $v0, 0x4
    /* 11DA18 0021CA98 0B188200 */  movn       $v1, $a0, $v0
.align 2
  .L0021CA9C:
    /* 11DA1C 0021CA9C F2FF6054 */  bnel       $v1, $zero, .L0021CA68
    /* 11DA20 0021CAA0 5000A58C */   lw        $a1, 0x50($a1)
    /* 11DA24 0021CAA4 705F8326 */  addiu      $v1, $s4, %lo(D_001D5F70)
    /* 11DA28 0021CAA8 05000424 */  addiu      $a0, $zero, 0x5
    /* 11DA2C 0021CAAC 0400628C */  lw         $v0, 0x4($v1)
    /* 11DA30 0021CAB0 0500E414 */  bne        $a3, $a0, .L0021CAC8
    /* 11DA34 0021CAB4 800045AC */   sw        $a1, 0x80($v0)
    /* 11DA38 0021CAB8 4400028E */  lw         $v0, 0x44($s0)
    /* 11DA3C 0021CABC 0100C324 */  addiu      $v1, $a2, 0x1
    /* 11DA40 0021CAC0 03004238 */  xori       $v0, $v0, 0x3
    /* 11DA44 0021CAC4 0A306200 */  movz       $a2, $v1, $v0
.align 2
  .L0021CAC8:
    /* 11DA48 0021CAC8 03000224 */  addiu      $v0, $zero, 0x3
    /* 11DA4C 0021CACC 0D00E214 */  bne        $a3, $v0, .L0021CB04
    /* 11DA50 0021CAD0 FFFFE224 */   addiu     $v0, $a3, -0x1
    /* 11DA54 0021CAD4 4400028E */  lw         $v0, 0x44($s0)
    /* 11DA58 0021CAD8 0A004414 */  bne        $v0, $a0, .L0021CB04
    /* 11DA5C 0021CADC FFFFE224 */   addiu     $v0, $a3, -0x1
    /* 11DA60 0021CAE0 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 11DA64 0021CAE4 0300C228 */  slti       $v0, $a2, 0x3
    /* 11DA68 0021CAE8 03004014 */  bnez       $v0, .L0021CAF8
    /* 11DA6C 0021CAEC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 11DA70 0021CAF0 03000010 */  b          .L0021CB00
    /* 11DA74 0021CAF4 02000624 */   addiu     $a2, $zero, 0x2
.align 2
  .L0021CAF8:
    /* 11DA78 0021CAF8 2A104600 */  slt        $v0, $v0, $a2
    /* 11DA7C 0021CAFC 0A300200 */  movz       $a2, $zero, $v0
.align 2
  .L0021CB00:
    /* 11DA80 0021CB00 FFFFE224 */  addiu      $v0, $a3, -0x1
.align 2
  .L0021CB04:
    /* 11DA84 0021CB04 2D18C000 */  daddu      $v1, $a2, $zero
    /* 11DA88 0021CB08 2A20C200 */  slt        $a0, $a2, $v0
    /* 11DA8C 0021CB0C 0A184400 */  movz       $v1, $v0, $a0
    /* 11DA90 0021CB10 0C000010 */  b          .L0021CB44
    /* 11DA94 0021CB14 3C00A3AC */   sw        $v1, 0x3C($a1)
.align 2
  .L0021CB18:
    /* 11DA98 0021CB18 3000028E */  lw         $v0, 0x30($s0)
    /* 11DA9C 0021CB1C 00804230 */  andi       $v0, $v0, 0x8000
    /* 11DAA0 0021CB20 09004014 */  bnez       $v0, .L0021CB48
    /* 11DAA4 0021CB24 40CA2326 */   addiu     $v1, $s1, %lo(D_0013CA40)
    /* 11DAA8 0021CB28 4000038E */  lw         $v1, 0x40($s0)
    /* 11DAAC 0021CB2C 4400048E */  lw         $a0, 0x44($s0)
    /* 11DAB0 0021CB30 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 11DAB4 0021CB34 3C00028E */  lw         $v0, 0x3C($s0)
    /* 11DAB8 0021CB38 18208300 */  mult       $a0, $a0, $v1
    /* 11DABC 0021CB3C 23104400 */  subu       $v0, $v0, $a0
.align 2
  .L0021CB40:
    /* 11DAC0 0021CB40 3C0002AE */  sw         $v0, 0x3C($s0)
.align 2
  .L0021CB44:
    /* 11DAC4 0021CB44 40CA2326 */  addiu      $v1, $s1, %lo(D_0013CA40)
.align 2
  .L0021CB48:
    /* 11DAC8 0021CB48 C401628C */  lw         $v0, 0x1C4($v1)
    /* 11DACC 0021CB4C 00804230 */  andi       $v0, $v0, 0x8000
    /* 11DAD0 0021CB50 15004010 */  beqz       $v0, .L0021CBA8
    /* 11DAD4 0021CB54 40CA2326 */   addiu     $v1, $s1, %lo(D_0013CA40)
    /* 11DAD8 0021CB58 0400C050 */  beql       $a2, $zero, .L0021CB6C
    /* 11DADC 0021CB5C 5400048E */   lw        $a0, 0x54($s0)
    /* 11DAE0 0021CB60 3C00028E */  lw         $v0, 0x3C($s0)
    /* 11DAE4 0021CB64 0E000010 */  b          .L0021CBA0
    /* 11DAE8 0021CB68 FFFF4224 */   addiu     $v0, $v0, -0x1
.align 2
  .L0021CB6C:
    /* 11DAEC 0021CB6C 04008010 */  beqz       $a0, .L0021CB80
    /* 11DAF0 0021CB70 705F8226 */   addiu     $v0, $s4, %lo(D_001D5F70)
    /* 11DAF4 0021CB74 0400438C */  lw         $v1, 0x4($v0)
    /* 11DAF8 0021CB78 0A000010 */  b          .L0021CBA4
    /* 11DAFC 0021CB7C 800064AC */   sw        $a0, 0x80($v1)
.align 2
  .L0021CB80:
    /* 11DB00 0021CB80 3000028E */  lw         $v0, 0x30($s0)
    /* 11DB04 0021CB84 00804230 */  andi       $v0, $v0, 0x8000
    /* 11DB08 0021CB88 07004014 */  bnez       $v0, .L0021CBA8
    /* 11DB0C 0021CB8C 40CA2326 */   addiu     $v1, $s1, %lo(D_0013CA40)
    /* 11DB10 0021CB90 3C00028E */  lw         $v0, 0x3C($s0)
    /* 11DB14 0021CB94 4400038E */  lw         $v1, 0x44($s0)
    /* 11DB18 0021CB98 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 11DB1C 0021CB9C 21104300 */  addu       $v0, $v0, $v1
.align 2
  .L0021CBA0:
    /* 11DB20 0021CBA0 3C0002AE */  sw         $v0, 0x3C($s0)
.align 2
  .L0021CBA4:
    /* 11DB24 0021CBA4 40CA2326 */  addiu      $v1, $s1, %lo(D_0013CA40)
.align 2
  .L0021CBA8:
    /* 11DB28 0021CBA8 C401628C */  lw         $v0, 0x1C4($v1)
    /* 11DB2C 0021CBAC 00204230 */  andi       $v0, $v0, 0x2000
    /* 11DB30 0021CBB0 14004010 */  beqz       $v0, .L0021CC04
    /* 11DB34 0021CBB4 0100C224 */   addiu     $v0, $a2, 0x1
    /* 11DB38 0021CBB8 2A104B00 */  slt        $v0, $v0, $t3
    /* 11DB3C 0021CBBC 04004050 */  beql       $v0, $zero, .L0021CBD0
    /* 11DB40 0021CBC0 5800048E */   lw        $a0, 0x58($s0)
    /* 11DB44 0021CBC4 3C00028E */  lw         $v0, 0x3C($s0)
    /* 11DB48 0021CBC8 0D000010 */  b          .L0021CC00
    /* 11DB4C 0021CBCC 01004224 */   addiu     $v0, $v0, 0x1
.align 2
  .L0021CBD0:
    /* 11DB50 0021CBD0 04008010 */  beqz       $a0, .L0021CBE4
    /* 11DB54 0021CBD4 705F8226 */   addiu     $v0, $s4, %lo(D_001D5F70)
    /* 11DB58 0021CBD8 0400438C */  lw         $v1, 0x4($v0)
    /* 11DB5C 0021CBDC 09000010 */  b          .L0021CC04
    /* 11DB60 0021CBE0 800064AC */   sw        $a0, 0x80($v1)
.align 2
  .L0021CBE4:
    /* 11DB64 0021CBE4 3000028E */  lw         $v0, 0x30($s0)
    /* 11DB68 0021CBE8 00804230 */  andi       $v0, $v0, 0x8000
    /* 11DB6C 0021CBEC 06004014 */  bnez       $v0, .L0021CC08
    /* 11DB70 0021CBF0 3C00028E */   lw        $v0, 0x3C($s0)
    /* 11DB74 0021CBF4 4400038E */  lw         $v1, 0x44($s0)
    /* 11DB78 0021CBF8 01004224 */  addiu      $v0, $v0, 0x1
    /* 11DB7C 0021CBFC 23104300 */  subu       $v0, $v0, $v1
.align 2
  .L0021CC00:
    /* 11DB80 0021CC00 3C0002AE */  sw         $v0, 0x3C($s0)
.align 2
  .L0021CC04:
    /* 11DB84 0021CC04 3C00028E */  lw         $v0, 0x3C($s0)
.align 2
  .L0021CC08:
    /* 11DB88 0021CC08 07004D54 */  bnel       $v0, $t5, .L0021CC28
    /* 11DB8C 0021CC0C 1400068E */   lw        $a2, 0x14($s0)
    /* 11DB90 0021CC10 705F8226 */  addiu      $v0, $s4, %lo(D_001D5F70)
    /* 11DB94 0021CC14 0400438C */  lw         $v1, 0x4($v0)
    /* 11DB98 0021CC18 8000648C */  lw         $a0, 0x80($v1)
    /* 11DB9C 0021CC1C 06008010 */  beqz       $a0, .L0021CC38
    /* 11DBA0 0021CC20 40CA2326 */   addiu     $v1, $s1, %lo(D_0013CA40)
    /* 11DBA4 0021CC24 1400068E */  lw         $a2, 0x14($s0)
.align 2
  .L0021CC28:
    /* 11DBA8 0021CC28 01000424 */  addiu      $a0, $zero, 0x1
    /* 11DBAC 0021CC2C 60BB080C */  jal        func_0022ED80
    /* 11DBB0 0021CC30 11000524 */   addiu     $a1, $zero, 0x11
    /* 11DBB4 0021CC34 40CA2326 */  addiu      $v1, $s1, %lo(D_0013CA40)
.align 2
  .L0021CC38:
    /* 11DBB8 0021CC38 C401628C */  lw         $v0, 0x1C4($v1)
    /* 11DBBC 0021CC3C 40004230 */  andi       $v0, $v0, 0x40
    /* 11DBC0 0021CC40 4D004010 */  beqz       $v0, .L0021CD78
    /* 11DBC4 0021CC44 2D100000 */   daddu     $v0, $zero, $zero
    /* 11DBC8 0021CC48 3000028E */  lw         $v0, 0x30($s0)
    /* 11DBCC 0021CC4C 01004238 */  xori       $v0, $v0, 0x1
    /* 11DBD0 0021CC50 01004230 */  andi       $v0, $v0, 0x1
    /* 11DBD4 0021CC54 47004010 */  beqz       $v0, .L0021CD74
    /* 11DBD8 0021CC58 705F9226 */   addiu     $s2, $s4, %lo(D_001D5F70)
    /* 11DBDC 0021CC5C 4801428E */  lw         $v0, 0x148($s2)
    /* 11DBE0 0021CC60 45004014 */  bnez       $v0, .L0021CD78
    /* 11DBE4 0021CC64 2D100000 */   daddu     $v0, $zero, $zero
    /* 11DBE8 0021CC68 3C00028E */  lw         $v0, 0x3C($s0)
    /* 11DBEC 0021CC6C 0A001324 */  addiu      $s3, $zero, 0xA
    /* 11DBF0 0021CC70 4800038E */  lw         $v1, 0x48($s0)
    /* 11DBF4 0021CC74 18105300 */  mult       $v0, $v0, $s3
    /* 11DBF8 0021CC78 21886200 */  addu       $s1, $v1, $v0
    /* 11DBFC 0021CC7C 06002486 */  lh         $a0, 0x6($s1)
    /* 11DC00 0021CC80 38008010 */  beqz       $a0, .L0021CD64
    /* 11DC04 0021CC84 1400023C */   lui       $v0, %hi(D_0013D5C8)
    /* 11DC08 0021CC88 C8D54224 */  addiu      $v0, $v0, %lo(D_0013D5C8)
    /* 11DC0C 0021CC8C 21108200 */  addu       $v0, $a0, $v0
    /* 11DC10 0021CC90 00004390 */  lbu        $v1, 0x0($v0)
    /* 11DC14 0021CC94 33006010 */  beqz       $v1, .L0021CD64
    /* 11DC18 0021CC98 4C000324 */   addiu     $v1, $zero, 0x4C
    /* 11DC1C 0021CC9C 1800023C */  lui        $v0, %hi(D_001864D0)
    /* 11DC20 0021CCA0 18188300 */  mult       $v1, $a0, $v1
    /* 11DC24 0021CCA4 D0644224 */  addiu      $v0, $v0, %lo(D_001864D0)
    /* 11DC28 0021CCA8 1400068E */  lw         $a2, 0x14($s0)
    /* 11DC2C 0021CCAC 2D200000 */  daddu      $a0, $zero, $zero
    /* 11DC30 0021CCB0 11000524 */  addiu      $a1, $zero, 0x11
    /* 11DC34 0021CCB4 21104300 */  addu       $v0, $v0, $v1
    /* 11DC38 0021CCB8 60BB080C */  jal        func_0022ED80
    /* 11DC3C 0021CCBC 0800508C */   lw        $s0, 0x8($v0)
    /* 11DC40 0021CCC0 480153AE */  sw         $s3, 0x148($s2)
    /* 11DC44 0021CCC4 80101000 */  sll        $v0, $s0, 2
    /* 11DC48 0021CCC8 30004326 */  addiu      $v1, $s2, 0x30
    /* 11DC4C 0021CCCC 21184300 */  addu       $v1, $v0, $v1
    /* 11DC50 0021CCD0 06002486 */  lh         $a0, 0x6($s1)
    /* 11DC54 0021CCD4 0000628C */  lw         $v0, 0x0($v1)
    /* 11DC58 0021CCD8 08004414 */  bne        $v0, $a0, .L0021CCFC
    /* 11DC5C 0021CCDC 18000224 */   addiu     $v0, $zero, 0x18
    /* 11DC60 0021CCE0 05000012 */  beqz       $s0, .L0021CCF8
    /* 11DC64 0021CCE4 03000224 */   addiu     $v0, $zero, 0x3
    /* 11DC68 0021CCE8 04000212 */  beq        $s0, $v0, .L0021CCFC
    /* 11DC6C 0021CCEC 18000224 */   addiu     $v0, $zero, 0x18
    /* 11DC70 0021CCF0 20000010 */  b          .L0021CD74
    /* 11DC74 0021CCF4 000060AC */   sw        $zero, 0x0($v1)
.align 2
  .L0021CCF8:
    /* 11DC78 0021CCF8 18000224 */  addiu      $v0, $zero, 0x18
.align 2
  .L0021CCFC:
    /* 11DC7C 0021CCFC 15008214 */  bne        $a0, $v0, .L0021CD54
    /* 11DC80 0021CD00 705F8226 */   addiu     $v0, $s4, %lo(D_001D5F70)
    /* 11DC84 0021CD04 FAA5070C */  jal        func_001E97E8
    /* 11DC88 0021CD08 18000424 */   addiu     $a0, $zero, 0x18
    /* 11DC8C 0021CD0C 19004010 */  beqz       $v0, .L0021CD74
    /* 11DC90 0021CD10 705F838E */   lw        $v1, %lo(D_001D5F70)($s4)
    /* 11DC94 0021CD14 03000224 */  addiu      $v0, $zero, 0x3
    /* 11DC98 0021CD18 17006214 */  bne        $v1, $v0, .L0021CD78
    /* 11DC9C 0021CD1C 2D100000 */   daddu     $v0, $zero, $zero
    /* 11DCA0 0021CD20 FAA5070C */  jal        func_001E97E8
    /* 11DCA4 0021CD24 18000424 */   addiu     $a0, $zero, 0x18
    /* 11DCA8 0021CD28 1400043C */  lui        $a0, %hi(D_0013F450)
    /* 11DCAC 0021CD2C 06000624 */  addiu      $a2, $zero, 0x6
    /* 11DCB0 0021CD30 50F48424 */  addiu      $a0, $a0, %lo(D_0013F450)
    /* 11DCB4 0021CD34 01000524 */  addiu      $a1, $zero, 0x1
    /* 11DCB8 0021CD38 F71F8390 */  lbu        $v1, 0x1FF7($a0)
    /* 11DCBC 0021CD3C F51F85A0 */  sb         $a1, 0x1FF5($a0)
    /* 11DCC0 0021CD40 21186200 */  addu       $v1, $v1, $v0
    /* 11DCC4 0021CD44 07006228 */  slti       $v0, $v1, 0x7
    /* 11DCC8 0021CD48 0A18C200 */  movz       $v1, $a2, $v0
    /* 11DCCC 0021CD4C 09000010 */  b          .L0021CD74
    /* 11DCD0 0021CD50 F71F83A0 */   sb        $v1, 0x1FF7($a0)
.align 2
  .L0021CD54:
    /* 11DCD4 0021CD54 80181000 */  sll        $v1, $s0, 2
    /* 11DCD8 0021CD58 21104300 */  addu       $v0, $v0, $v1
    /* 11DCDC 0021CD5C 05000010 */  b          .L0021CD74
    /* 11DCE0 0021CD60 300044AC */   sw        $a0, 0x30($v0)
.align 2
  .L0021CD64:
    /* 11DCE4 0021CD64 1400068E */  lw         $a2, 0x14($s0)
    /* 11DCE8 0021CD68 02000424 */  addiu      $a0, $zero, 0x2
    /* 11DCEC 0021CD6C 60BB080C */  jal        func_0022ED80
    /* 11DCF0 0021CD70 11000524 */   addiu     $a1, $zero, 0x11
.align 2
  .L0021CD74:
    /* 11DCF4 0021CD74 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0021CD78:
    /* 11DCF8 0021CD78 5000BF7B */  lq         $ra, 0x50($sp)
    /* 11DCFC 0021CD7C 4000B47B */  lq         $s4, 0x40($sp)
    /* 11DD00 0021CD80 3000B37B */  lq         $s3, 0x30($sp)
    /* 11DD04 0021CD84 2000B27B */  lq         $s2, 0x20($sp)
    /* 11DD08 0021CD88 1000B17B */  lq         $s1, 0x10($sp)
    /* 11DD0C 0021CD8C 0000B07B */  lq         $s0, 0x0($sp)
    /* 11DD10 0021CD90 0800E003 */  jr         $ra
    /* 11DD14 0021CD94 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0021C840
