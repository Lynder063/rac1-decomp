.align 3
nonmatching func_0012A7E8, 0x288

glabel func_0012A7E8
    /* 2B768 0012A7E8 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 2B76C 0012A7EC 02000624 */  addiu      $a2, $zero, 0x2
    /* 2B770 0012A7F0 6000B3FF */  sd         $s3, 0x60($sp)
    /* 2B774 0012A7F4 5000B2FF */  sd         $s2, 0x50($sp)
    /* 2B778 0012A7F8 3000B0FF */  sd         $s0, 0x30($sp)
    /* 2B77C 0012A7FC 2D90A000 */  daddu      $s2, $a1, $zero
    /* 2B780 0012A800 9000BFFF */  sd         $ra, 0x90($sp)
    /* 2B784 0012A804 2D808000 */  daddu      $s0, $a0, $zero
    /* 2B788 0012A808 8000B5FF */  sd         $s5, 0x80($sp)
    /* 2B78C 0012A80C 2D28A003 */  daddu      $a1, $sp, $zero
    /* 2B790 0012A810 7000B4FF */  sd         $s4, 0x70($sp)
    /* 2B794 0012A814 4000B1FF */  sd         $s1, 0x40($sp)
    /* 2B798 0012A818 0C00438E */  lw         $v1, 0xC($s2)
    /* 2B79C 0012A81C 1000428E */  lw         $v0, 0x10($s2)
    /* 2B7A0 0012A820 5808048E */  lw         $a0, 0x858($s0)
    /* 2B7A4 0012A824 18986200 */  mult       $s3, $v1, $v0
    /* 2B7A8 0012A828 1EAF040C */  jal        func_0012BC78
    /* 2B7AC 0012A82C 0000A6AF */   sw        $a2, 0x0($sp)
    /* 2B7B0 0012A830 0010033C */  lui        $v1, (0x10002010 >> 16)
    /* 2B7B4 0012A834 10206334 */  ori        $v1, $v1, (0x10002010 & 0xFFFF)
    /* 2B7B8 0012A838 0000628C */  lw         $v0, 0x0($v1)
    /* 2B7BC 0012A83C 00404230 */  andi       $v0, $v0, 0x4000
    /* 2B7C0 0012A840 03004010 */  beqz       $v0, .L0012A850
    /* 2B7C4 0012A844 0040023C */   lui       $v0, (0x40000000 >> 16)
    /* 2B7C8 0012A848 0010013C */  lui        $at, (0x10002010 >> 16)
    /* 2B7CC 0012A84C 102022AC */  sw         $v0, (0x10002010 & 0xFFFF)($at)
.align 2
  .L0012A850:
    /* 2B7D0 0012A850 0010033C */  lui        $v1, (0x10002010 >> 16)
    /* 2B7D4 0012A854 0004752A */  slti       $s5, $s3, 0x400
    /* 2B7D8 0012A858 10206334 */  ori        $v1, $v1, (0x10002010 & 0xFFFF)
    /* 2B7DC 0012A85C 00000000 */  nop
.align 2
  .L0012A860:
    /* 2B7E0 0012A860 0000628C */  lw         $v0, 0x0($v1)
    /* 2B7E4 0012A864 00000000 */  nop
    /* 2B7E8 0012A868 00000000 */  nop
    /* 2B7EC 0012A86C 00000000 */  nop
    /* 2B7F0 0012A870 00000000 */  nop
    /* 2B7F4 0012A874 FAFF4004 */  bltz       $v0, .L0012A860
    /* 2B7F8 0012A878 00000000 */   nop
    /* 2B7FC 0012A87C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2B800 0012A880 58A1040C */  jal        func_00128560
    /* 2B804 0012A884 2D280000 */   daddu     $a1, $zero, $zero
    /* 2B808 0012A888 0010043C */  lui        $a0, (0x10002010 >> 16)
    /* 2B80C 0012A88C 0000438E */  lw         $v1, 0x0($s2)
    /* 2B810 0012A890 10208434 */  ori        $a0, $a0, (0x10002010 & 0xFFFF)
    /* 2B814 0012A894 00000000 */  nop
.align 2
  .L0012A898:
    /* 2B818 0012A898 0000828C */  lw         $v0, 0x0($a0)
    /* 2B81C 0012A89C 00000000 */  nop
    /* 2B820 0012A8A0 00000000 */  nop
    /* 2B824 0012A8A4 00000000 */  nop
    /* 2B828 0012A8A8 00000000 */  nop
    /* 2B82C 0012A8AC FAFF4004 */  bltz       $v0, .L0012A898
    /* 2B830 0012A8B0 00000000 */   nop
    /* 2B834 0012A8B4 18000224 */  addiu      $v0, $zero, 0x18
    /* 2B838 0012A8B8 FF0F113C */  lui        $s1, (0xFFFFFFF >> 16)
    /* 2B83C 0012A8BC 18106202 */  mult       $v0, $s3, $v0
    /* 2B840 0012A8C0 FFFF3136 */  ori        $s1, $s1, (0xFFFFFFF & 0xFFFF)
    /* 2B844 0012A8C4 24187100 */  and        $v1, $v1, $s1
    /* 2B848 0012A8C8 FFFF1434 */  ori        $s4, $zero, 0xFFFF
    /* 2B84C 0012A8CC 2400A3AF */  sw         $v1, 0x24($sp)
    /* 2B850 0012A8D0 2B208202 */  sltu       $a0, $s4, $v0
    /* 2B854 0012A8D4 3A008010 */  beqz       $a0, .L0012A9C0
    /* 2B858 0012A8D8 2000A2AF */   sw        $v0, 0x20($sp)
    /* 2B85C 0012A8DC 1300053C */  lui        $a1, %hi(func_0012A718)
    /* 2B860 0012A8E0 04000424 */  addiu      $a0, $zero, 0x4
    /* 2B864 0012A8E4 18A7A524 */  addiu      $a1, $a1, %lo(func_0012A718)
    /* 2B868 0012A8E8 2D300000 */  daddu      $a2, $zero, $zero
    /* 2B86C 0012A8EC B062040C */  jal        func_00118AC0
    /* 2B870 0012A8F0 2000A727 */   addiu     $a3, $sp, 0x20
    /* 2B874 0012A8F4 2D904000 */  daddu      $s2, $v0, $zero
    /* 2B878 0012A8F8 10000324 */  addiu      $v1, $zero, 0x10
    /* 2B87C 0012A8FC 0010023C */  lui        $v0, (0x1000E010 >> 16)
    /* 2B880 0012A900 04000424 */  addiu      $a0, $zero, 0x4
    /* 2B884 0012A904 10E04234 */  ori        $v0, $v0, (0x1000E010 & 0xFFFF)
    /* 2B888 0012A908 1865040C */  jal        func_00119460
    /* 2B88C 0012A90C 000043AC */   sw        $v1, 0x0($v0)
    /* 2B890 0012A910 5876040C */  jal        func_0011D960
    /* 2B894 0012A914 00000000 */   nop
    /* 2B898 0012A918 2400A58F */  lw         $a1, 0x24($sp)
    /* 2B89C 0012A91C 0010033C */  lui        $v1, (0x1000B410 >> 16)
    /* 2B8A0 0012A920 10B46334 */  ori        $v1, $v1, (0x1000B410 & 0xFFFF)
    /* 2B8A4 0012A924 0010043C */  lui        $a0, (0x1000B420 >> 16)
    /* 2B8A8 0012A928 000065AC */  sw         $a1, 0x0($v1)
    /* 2B8AC 0012A92C 20B48434 */  ori        $a0, $a0, (0x1000B420 & 0xFFFF)
    /* 2B8B0 0012A930 000094AC */  sw         $s4, 0x0($a0)
    /* 2B8B4 0012A934 0010033C */  lui        $v1, (0x1000B400 >> 16)
    /* 2B8B8 0012A938 00B46334 */  ori        $v1, $v1, (0x1000B400 & 0xFFFF)
    /* 2B8BC 0012A93C 01010424 */  addiu      $a0, $zero, 0x101
    /* 2B8C0 0012A940 000064AC */  sw         $a0, 0x0($v1)
    /* 2B8C4 0012A944 04004010 */  beqz       $v0, .L0012A958
    /* 2B8C8 0012A948 2400A28F */   lw        $v0, 0x24($sp)
    /* 2B8CC 0012A94C 6A76040C */  jal        func_0011D9A8
    /* 2B8D0 0012A950 00000000 */   nop
    /* 2B8D4 0012A954 2400A28F */  lw         $v0, 0x24($sp)
.align 2
  .L0012A958:
    /* 2B8D8 0012A958 0F00033C */  lui        $v1, (0xFFFF0 >> 16)
    /* 2B8DC 0012A95C 2000A48F */  lw         $a0, 0x20($sp)
    /* 2B8E0 0012A960 F0FF6334 */  ori        $v1, $v1, (0xFFFF0 & 0xFFFF)
    /* 2B8E4 0012A964 21104300 */  addu       $v0, $v0, $v1
    /* 2B8E8 0012A968 24105100 */  and        $v0, $v0, $s1
    /* 2B8EC 0012A96C 23209400 */  subu       $a0, $a0, $s4
    /* 2B8F0 0012A970 2400A2AF */  sw         $v0, 0x24($sp)
    /* 2B8F4 0012A974 0700A012 */  beqz       $s5, .L0012A994
    /* 2B8F8 0012A978 2000A4AF */   sw        $a0, 0x20($sp)
    /* 2B8FC 0012A97C D800058E */  lw         $a1, 0xD8($s0)
    /* 2B900 0012A980 2D306002 */  daddu      $a2, $s3, $zero
    /* 2B904 0012A984 BCA8040C */  jal        func_0012A2F0
    /* 2B908 0012A988 2D200002 */   daddu     $a0, $s0, $zero
    /* 2B90C 0012A98C 05000010 */  b          .L0012A9A4
    /* 2B910 0012A990 00000000 */   nop
.align 2
  .L0012A994:
    /* 2B914 0012A994 D800058E */  lw         $a1, 0xD8($s0)
    /* 2B918 0012A998 2D306002 */  daddu      $a2, $s3, $zero
    /* 2B91C 0012A99C 56A9040C */  jal        func_0012A558
    /* 2B920 0012A9A0 2D200002 */   daddu     $a0, $s0, $zero
.align 2
  .L0012A9A4:
    /* 2B924 0012A9A4 FE64040C */  jal        func_001193F8
    /* 2B928 0012A9A8 04000424 */   addiu     $a0, $zero, 0x4
    /* 2B92C 0012A9AC 2D284002 */  daddu      $a1, $s2, $zero
    /* 2B930 0012A9B0 B462040C */  jal        func_00118AD0
    /* 2B934 0012A9B4 04000424 */   addiu     $a0, $zero, 0x4
    /* 2B938 0012A9B8 20000010 */  b          .L0012AA3C
    /* 2B93C 0012A9BC 5808048E */   lw        $a0, 0x858($s0)
.align 2
  .L0012A9C0:
    /* 2B940 0012A9C0 5876040C */  jal        func_0011D960
    /* 2B944 0012A9C4 00000000 */   nop
    /* 2B948 0012A9C8 0000458E */  lw         $a1, 0x0($s2)
    /* 2B94C 0012A9CC 0010033C */  lui        $v1, (0x1000B410 >> 16)
    /* 2B950 0012A9D0 10B46334 */  ori        $v1, $v1, (0x1000B410 & 0xFFFF)
    /* 2B954 0012A9D4 0010063C */  lui        $a2, (0x1000B420 >> 16)
    /* 2B958 0012A9D8 2428B100 */  and        $a1, $a1, $s1
    /* 2B95C 0012A9DC 20B4C634 */  ori        $a2, $a2, (0x1000B420 & 0xFFFF)
    /* 2B960 0012A9E0 000065AC */  sw         $a1, 0x0($v1)
    /* 2B964 0012A9E4 0010043C */  lui        $a0, (0x1000B400 >> 16)
    /* 2B968 0012A9E8 00B48434 */  ori        $a0, $a0, (0x1000B400 & 0xFFFF)
    /* 2B96C 0012A9EC 01010524 */  addiu      $a1, $zero, 0x101
    /* 2B970 0012A9F0 2000A38F */  lw         $v1, 0x20($sp)
    /* 2B974 0012A9F4 0000C3AC */  sw         $v1, 0x0($a2)
    /* 2B978 0012A9F8 03004010 */  beqz       $v0, .L0012AA08
    /* 2B97C 0012A9FC 000085AC */   sw        $a1, 0x0($a0)
    /* 2B980 0012AA00 6A76040C */  jal        func_0011D9A8
    /* 2B984 0012AA04 00000000 */   nop
.align 2
  .L0012AA08:
    /* 2B988 0012AA08 0700A012 */  beqz       $s5, .L0012AA28
    /* 2B98C 0012AA0C 2000A0AF */   sw        $zero, 0x20($sp)
    /* 2B990 0012AA10 D800058E */  lw         $a1, 0xD8($s0)
    /* 2B994 0012AA14 2D306002 */  daddu      $a2, $s3, $zero
    /* 2B998 0012AA18 BCA8040C */  jal        func_0012A2F0
    /* 2B99C 0012AA1C 2D200002 */   daddu     $a0, $s0, $zero
    /* 2B9A0 0012AA20 06000010 */  b          .L0012AA3C
    /* 2B9A4 0012AA24 5808048E */   lw        $a0, 0x858($s0)
.align 2
  .L0012AA28:
    /* 2B9A8 0012AA28 D800058E */  lw         $a1, 0xD8($s0)
    /* 2B9AC 0012AA2C 2D306002 */  daddu      $a2, $s3, $zero
    /* 2B9B0 0012AA30 56A9040C */  jal        func_0012A558
    /* 2B9B4 0012AA34 2D200002 */   daddu     $a0, $s0, $zero
    /* 2B9B8 0012AA38 5808048E */  lw         $a0, 0x858($s0)
.align 2
  .L0012AA3C:
    /* 2B9BC 0012AA3C 03000224 */  addiu      $v0, $zero, 0x3
    /* 2B9C0 0012AA40 0000A2AF */  sw         $v0, 0x0($sp)
    /* 2B9C4 0012AA44 1EAF040C */  jal        func_0012BC78
    /* 2B9C8 0012AA48 2D28A003 */   daddu     $a1, $sp, $zero
    /* 2B9CC 0012AA4C 9000BFDF */  ld         $ra, 0x90($sp)
    /* 2B9D0 0012AA50 8000B5DF */  ld         $s5, 0x80($sp)
    /* 2B9D4 0012AA54 7000B4DF */  ld         $s4, 0x70($sp)
    /* 2B9D8 0012AA58 6000B3DF */  ld         $s3, 0x60($sp)
    /* 2B9DC 0012AA5C 5000B2DF */  ld         $s2, 0x50($sp)
    /* 2B9E0 0012AA60 4000B1DF */  ld         $s1, 0x40($sp)
    /* 2B9E4 0012AA64 3000B0DF */  ld         $s0, 0x30($sp)
    /* 2B9E8 0012AA68 0800E003 */  jr         $ra
    /* 2B9EC 0012AA6C A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_0012A7E8
