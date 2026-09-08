.align 3
nonmatching func_0012C990, 0xE0

glabel func_0012C990
    /* 2D910 0012C990 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 2D914 0012C994 02000224 */  addiu      $v0, $zero, 0x2
    /* 2D918 0012C998 4000B2FF */  sd         $s2, 0x40($sp)
    /* 2D91C 0012C99C 3000B1FF */  sd         $s1, 0x30($sp)
    /* 2D920 0012C9A0 2D90A000 */  daddu      $s2, $a1, $zero
    /* 2D924 0012C9A4 2000B0FF */  sd         $s0, 0x20($sp)
    /* 2D928 0012C9A8 2D888000 */  daddu      $s1, $a0, $zero
    /* 2D92C 0012C9AC 5000BFFF */  sd         $ra, 0x50($sp)
    /* 2D930 0012C9B0 2D80C000 */  daddu      $s0, $a2, $zero
    /* 2D934 0012C9B4 2D28A003 */  daddu      $a1, $sp, $zero
    /* 2D938 0012C9B8 5808248E */  lw         $a0, 0x858($s1)
    /* 2D93C 0012C9BC 1EAF040C */  jal        func_0012BC78
    /* 2D940 0012C9C0 0000A2AF */   sw        $v0, 0x0($sp)
    /* 2D944 0012C9C4 64A1040C */  jal        func_00128590
    /* 2D948 0012C9C8 2D202002 */   daddu     $a0, $s1, $zero
    /* 2D94C 0012C9CC 0010023C */  lui        $v0, (0x10002000 >> 16)
    /* 2D950 0012C9D0 2D202002 */  daddu      $a0, $s1, $zero
    /* 2D954 0012C9D4 00204234 */  ori        $v0, $v0, (0x10002000 & 0xFFFF)
    /* 2D958 0012C9D8 64A1040C */  jal        func_00128590
    /* 2D95C 0012C9DC 000040AC */   sw        $zero, 0x0($v0)
    /* 2D960 0012C9E0 5876040C */  jal        func_0011D960
    /* 2D964 0012C9E4 00000000 */   nop
    /* 2D968 0012C9E8 FF0F033C */  lui        $v1, (0xFFFFFFF >> 16)
    /* 2D96C 0012C9EC 0010043C */  lui        $a0, (0x1000B410 >> 16)
    /* 2D970 0012C9F0 FFFF6334 */  ori        $v1, $v1, (0xFFFFFFF & 0xFFFF)
    /* 2D974 0012C9F4 10B48434 */  ori        $a0, $a0, (0x1000B410 & 0xFFFF)
    /* 2D978 0012C9F8 24800302 */  and        $s0, $s0, $v1
    /* 2D97C 0012C9FC 0010053C */  lui        $a1, (0x1000B420 >> 16)
    /* 2D980 0012CA00 000090AC */  sw         $s0, 0x0($a0)
    /* 2D984 0012CA04 20B4A534 */  ori        $a1, $a1, (0x1000B420 & 0xFFFF)
    /* 2D988 0012CA08 04000424 */  addiu      $a0, $zero, 0x4
    /* 2D98C 0012CA0C 0010033C */  lui        $v1, (0x1000B400 >> 16)
    /* 2D990 0012CA10 0000A4AC */  sw         $a0, 0x0($a1)
    /* 2D994 0012CA14 00B46334 */  ori        $v1, $v1, (0x1000B400 & 0xFFFF)
    /* 2D998 0012CA18 01010424 */  addiu      $a0, $zero, 0x101
    /* 2D99C 0012CA1C 000064AC */  sw         $a0, 0x0($v1)
    /* 2D9A0 0012CA20 04004050 */  beql       $v0, $zero, .L0012CA34
    /* 2D9A4 0012CA24 2D284002 */   daddu     $a1, $s2, $zero
    /* 2D9A8 0012CA28 6A76040C */  jal        func_0011D9A8
    /* 2D9AC 0012CA2C 00000000 */   nop
    /* 2D9B0 0012CA30 2D284002 */  daddu      $a1, $s2, $zero
.align 2
  .L0012CA34:
    /* 2D9B4 0012CA34 58A1040C */  jal        func_00128560
    /* 2D9B8 0012CA38 2D202002 */   daddu     $a0, $s1, $zero
    /* 2D9BC 0012CA3C 64A1040C */  jal        func_00128590
    /* 2D9C0 0012CA40 2D202002 */   daddu     $a0, $s1, $zero
    /* 2D9C4 0012CA44 5808248E */  lw         $a0, 0x858($s1)
    /* 2D9C8 0012CA48 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D9CC 0012CA4C 0000A2AF */  sw         $v0, 0x0($sp)
    /* 2D9D0 0012CA50 1EAF040C */  jal        func_0012BC78
    /* 2D9D4 0012CA54 2D28A003 */   daddu     $a1, $sp, $zero
    /* 2D9D8 0012CA58 5000BFDF */  ld         $ra, 0x50($sp)
    /* 2D9DC 0012CA5C 4000B2DF */  ld         $s2, 0x40($sp)
    /* 2D9E0 0012CA60 3000B1DF */  ld         $s1, 0x30($sp)
    /* 2D9E4 0012CA64 2000B0DF */  ld         $s0, 0x20($sp)
    /* 2D9E8 0012CA68 0800E003 */  jr         $ra
    /* 2D9EC 0012CA6C 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0012C990
