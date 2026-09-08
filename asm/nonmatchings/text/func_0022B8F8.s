.align 3
/* Handwritten function */
nonmatching func_0022B8F8, 0x5B4

glabel func_0022B8F8
    /* 12C878 0022B8F8 0070013C */  lui        $at, (0x70003FE0 >> 16)
    /* 12C87C 0022B8FC F83F3EFC */  sd         $fp, (0x70003FF8 & 0xFFFF)($at)
    /* 12C880 0022B900 F03F30FC */  sd         $s0, (0x70003FF0 & 0xFFFF)($at)
    /* 12C884 0022B904 E83F31FC */  sd         $s1, (0x70003FE8 & 0xFFFF)($at)
    /* 12C888 0022B908 E03F32FC */  sd         $s2, (0x70003FE0 & 0xFFFF)($at)
    /* 12C88C 0022B90C 16000A3C */  lui        $t2, %hi(D_001604D4)
    /* 12C890 0022B910 D4044A8D */  lw         $t2, %lo(D_001604D4)($t2)
    /* 12C894 0022B914 00701E3C */  lui        $fp, (0x70000000 >> 16)
    /* 12C898 0022B918 DC978B8F */  lw         $t3, -0x6824($gp)
    /* 12C89C 0022B91C FFFF1034 */  ori        $s0, $zero, 0xFFFF
    /* 12C8A0 0022B920 E0978C8F */  lw         $t4, -0x6820($gp)
    /* 12C8A4 0022B924 1E000D3C */  lui        $t5, %hi(D_001D82C0)
    /* 12C8A8 0022B928 C082AD25 */  addiu      $t5, $t5, %lo(D_001D82C0)
    /* 12C8AC 0022B92C 8047123C */  lui        $s2, (0x47800000 >> 16)
    /* 12C8B0 0022B930 88945272 */  pextlw     $s2, $s2, $s2
    /* 12C8B4 0022B934 2DF08000 */  daddu      $fp, $a0, $zero
    /* 12C8B8 0022B938 88945272 */  pextlw     $s2, $s2, $s2
    /* 12C8BC 0022B93C 1A000E3C */  lui        $t6, %hi(D_0019BEC0)
    /* 12C8C0 0022B940 C0BECE25 */  addiu      $t6, $t6, %lo(D_0019BEC0)
    /* 12C8C4 0022B944 1A00113C */  lui        $s1, %hi(D_0019C2C0)
    /* 12C8C8 0022B948 C0C23126 */  addiu      $s1, $s1, %lo(D_0019C2C0)
    /* 12C8CC 0022B94C 1600013C */  lui        $at, %hi(D_0015FB80)
    /* 12C8D0 0022B950 80FB2124 */  addiu      $at, $at, %lo(D_0015FB80)
    /* 12C8D4 0022B954 000035D8 */  lqc2       $vf21, 0x0($at)
.align 2
  .L0022B958:
    /* 12C8D8 0022B958 0000C697 */  lhu        $a2, 0x0($fp)
    /* 12C8DC 0022B95C 0200DE27 */  addiu      $fp, $fp, 0x2
    /* 12C8E0 0022B960 4B01D010 */  beq        $a2, $s0, .L0022BE90
    /* 12C8E4 0022B964 00000000 */   nop
    /* 12C8E8 0022B968 40090600 */  sll        $at, $a2, 5
    /* 12C8EC 0022B96C 21384101 */  addu       $a3, $t2, $at
    /* 12C8F0 0022B970 1C00E494 */  lhu        $a0, 0x1C($a3)
    /* 12C8F4 0022B974 00FF8130 */  andi       $at, $a0, 0xFF00
    /* 12C8F8 0022B978 2F002010 */  beqz       $at, .L0022BA38
    /* 12C8FC 0022B97C 00000000 */   nop
    /* 12C900 0022B980 02090400 */  srl        $at, $a0, 4
    /* 12C904 0022B984 F00F2130 */  andi       $at, $at, 0xFF0
    /* 12C908 0022B988 0008A148 */  qmtc2.ni   $at, $vf1
    /* 12C90C 0022B98C 3E09014B */  vitof12.x  $vf1, $vf1
    /* 12C910 0022B990 0F008130 */  andi       $at, $a0, 0xF
    /* 12C914 0022B994 80090100 */  sll        $at, $at, 6
    /* 12C918 0022B998 4400214A */  vsubx.w    $vf1, $vf0, $vf1x
    /* 12C91C 0022B99C 21082E00 */  addu       $at, $at, $t6
    /* 12C920 0022B9A0 000022D8 */  lqc2       $vf2, 0x0($at)
    /* 12C924 0022B9A4 02110400 */  srl        $v0, $a0, 4
    /* 12C928 0022B9A8 100023D8 */  lqc2       $vf3, 0x10($at)
    /* 12C92C 0022B9AC 0F004230 */  andi       $v0, $v0, 0xF
    /* 12C930 0022B9B0 200024D8 */  lqc2       $vf4, 0x20($at)
    /* 12C934 0022B9B4 80110200 */  sll        $v0, $v0, 6
    /* 12C938 0022B9B8 300025D8 */  lqc2       $vf5, 0x30($at)
    /* 12C93C 0022B9BC 21104E00 */  addu       $v0, $v0, $t6
    /* 12C940 0022B9C0 000046D8 */  lqc2       $vf6, 0x0($v0)
    /* 12C944 0022B9C4 9B10C14B */  vmulw.xyz  $vf2, $vf2, $vf1w
    /* 12C948 0022B9C8 100047D8 */  lqc2       $vf7, 0x10($v0)
    /* 12C94C 0022B9CC DB18C14B */  vmulw.xyz  $vf3, $vf3, $vf1w
    /* 12C950 0022B9D0 200048D8 */  lqc2       $vf8, 0x20($v0)
    /* 12C954 0022B9D4 1B21C14B */  vmulw.xyz  $vf4, $vf4, $vf1w
    /* 12C958 0022B9D8 300049D8 */  lqc2       $vf9, 0x30($v0)
    /* 12C95C 0022B9DC 5B29C14B */  vmulw.xyz  $vf5, $vf5, $vf1w
    /* 12C960 0022B9E0 D839C14B */  vmulx.xyz  $vf7, $vf7, $vf1x
    /* 12C964 0022B9E4 584AC14B */  vmulx.xyz  $vf9, $vf9, $vf1x
    /* 12C968 0022B9E8 9831C14B */  vmulx.xyz  $vf6, $vf6, $vf1x
    /* 12C96C 0022B9EC 1842C14B */  vmulx.xyz  $vf8, $vf8, $vf1x
    /* 12C970 0022B9F0 281EE74B */  vadd.xyzw  $vf24, $vf3, $vf7
    /* 12C974 0022B9F4 682EE94B */  vadd.xyzw  $vf25, $vf5, $vf9
    /* 12C978 0022B9F8 E816E64B */  vadd.xyzw  $vf27, $vf2, $vf6
    /* 12C97C 0022B9FC 2827E84B */  vadd.xyzw  $vf28, $vf4, $vf8
    /* 12C980 0022BA00 6AC0F84B */  vmul.xyzw  $vf1, $vf24, $vf24
    /* 12C984 0022BA04 3D08014B */  vadday.x   ACC, $vf1, $vf1y
    /* 12C988 0022BA08 4AA8014B */  vmaddz.x   $vf1, $vf21, $vf1z
    /* 12C98C 0022BA0C BE03614A */  vrsqrt     Q, $vf0w, $vf1x
    /* 12C990 0022BA10 6AC8F94B */  vmul.xyzw  $vf1, $vf25, $vf25
    /* 12C994 0022BA14 3D08014B */  vadday.x   ACC, $vf1, $vf1y
    /* 12C998 0022BA18 4AA8014B */  vmaddz.x   $vf1, $vf21, $vf1z
    /* 12C99C 0022BA1C BF03004A */  vwaitq
    /* 12C9A0 0022BA20 1CC6C04B */  vmulq.xyz  $vf24, $vf24, Q
    /* 12C9A4 0022BA24 BE03614A */  vrsqrt     Q, $vf0w, $vf1x
    /* 12C9A8 0022BA28 BF03004A */  vwaitq
    /* 12C9AC 0022BA2C 5CCEC04B */  vmulq.xyz  $vf25, $vf25, Q
    /* 12C9B0 0022BA30 09000010 */  b          .L0022BA58
    /* 12C9B4 0022BA34 00000000 */   nop
.align 2
  .L0022BA38:
    /* 12C9B8 0022BA38 0F008130 */  andi       $at, $a0, 0xF
    /* 12C9BC 0022BA3C 80090100 */  sll        $at, $at, 6
    /* 12C9C0 0022BA40 21082E00 */  addu       $at, $at, $t6
    /* 12C9C4 0022BA44 00003BD8 */  lqc2       $vf27, 0x0($at)
    /* 12C9C8 0022BA48 100038D8 */  lqc2       $vf24, 0x10($at)
    /* 12C9CC 0022BA4C 20003CD8 */  lqc2       $vf28, 0x20($at)
    /* 12C9D0 0022BA50 300039D8 */  lqc2       $vf25, 0x30($at)
    /* 12C9D4 0022BA54 00000000 */  nop
.align 2
  .L0022BA58:
    /* 12C9D8 0022BA58 83071B4B */  vaddw.x    $vf30, $vf0, $vf27w
    /* 12C9DC 0022BA5C 83079C4A */  vaddw.y    $vf30, $vf0, $vf28w
    /* 12C9E0 0022BA60 C706204A */  vsubw.w    $vf27, $vf0, $vf0w
    /* 12C9E4 0022BA64 0707204A */  vsubw.w    $vf28, $vf0, $vf0w
    /* 12C9E8 0022BA68 0F00013C */  lui        $at, (0xF0000 >> 16)
    /* 12C9EC 0022BA6C FEFF0320 */  addi       $v1, $zero, -0x2 /* handwritten instruction */
    /* 12C9F0 0022BA70 1E00E594 */  lhu        $a1, 0x1E($a3)
    /* 12C9F4 0022BA74 2528A100 */  or         $a1, $a1, $at
    /* 12C9F8 0022BA78 0000EAD8 */  lqc2       $vf10, 0x0($a3)
    /* 12C9FC 0022BA7C AC06E04B */  vsub.xyzw  $vf26, $vf0, $vf0
    /* 12CA00 0022BA80 6C07E04B */  vsub.xyzw  $vf29, $vf0, $vf0
    /* 12CA04 0022BA84 00000000 */  nop
.align 2
  .L0022BA88:
    /* 12CA08 0022BA88 0F000234 */  ori        $v0, $zero, 0xF
    /* 12CA0C 0022BA8C 2408A200 */  and        $at, $a1, $v0
    /* 12CA10 0022BA90 21002210 */  beq        $at, $v0, .L0022BB18
    /* 12CA14 0022BA94 03290500 */   sra       $a1, $a1, 4
    /* 12CA18 0022BA98 40090100 */  sll        $at, $at, 5
    /* 12CA1C 0022BA9C 21083100 */  addu       $at, $at, $s1
    /* 12CA20 0022BAA0 100022D8 */  lqc2       $vf2, 0x10($at)
    /* 12CA24 0022BAA4 000021D8 */  lqc2       $vf1, 0x0($at)
    /* 12CA28 0022BAA8 BC03E24B */  vdiv       Q, $vf0w, $vf2w
    /* 12CA2C 0022BAAC AC50C24B */  vsub.xyz   $vf2, $vf10, $vf2
    /* 12CA30 0022BAB0 2A11E24B */  vmul.xyzw  $vf4, $vf2, $vf2
    /* 12CA34 0022BAB4 00000000 */  nop
    /* 12CA38 0022BAB8 3D20044B */  vadday.x   ACC, $vf4, $vf4y
    /* 12CA3C 0022BABC 0AA9044B */  vmaddz.x   $vf4, $vf21, $vf4z
    /* 12CA40 0022BAC0 DC02204A */  vmulq.w    $vf11, $vf0, Q
    /* 12CA44 0022BAC4 0420244A */  vsubx.w    $vf0, $vf4, $vf4x
    /* 12CA48 0022BAC8 FF02004A */  vnop
    /* 12CA4C 0022BACC FF02004A */  vnop
    /* 12CA50 0022BAD0 FF02004A */  vnop
    /* 12CA54 0022BAD4 FF02004A */  vnop
    /* 12CA58 0022BAD8 00884148 */  cfc2.ni    $at, $vi17
    /* 12CA5C 0022BADC BD03044A */  .word      0x4A0403BD                    # vsqrt      Q, $vf4x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 12CA60 0022BAE0 10002130 */  andi       $at, $at, 0x10
    /* 12CA64 0022BAE4 E8FF2014 */  bnez       $at, .L0022BA88
    /* 12CA68 0022BAE8 BF03004A */   vwaitq
    /* 12CA6C 0022BAEC DC5A204A */  vmulq.w    $vf11, $vf11, Q
    /* 12CA70 0022BAF0 1C01204A */  vmulq.w    $vf4, $vf0, Q
    /* 12CA74 0022BAF4 C7022B4A */  vsubw.w    $vf11, $vf0, $vf11w
    /* 12CA78 0022BAF8 BC03E44B */  vdiv       Q, $vf0w, $vf4w
    /* 12CA7C 0022BAFC 5B08EB4B */  vmulw.xyzw $vf1, $vf1, $vf11w
    /* 12CA80 0022BB00 BF03004A */  vwaitq
    /* 12CA84 0022BB04 FC11C04B */  vmulaq.xyz ACC, $vf2, Q
    /* 12CA88 0022BB08 8BD6C04B */  vmaddw.xyz $vf26, $vf26, $vf0w
    /* 12CA8C 0022BB0C 68EFE14B */  vadd.xyzw  $vf29, $vf29, $vf1
    /* 12CA90 0022BB10 DDFF0010 */  b          .L0022BA88
    /* 12CA94 0022BB14 01006320 */   addi      $v1, $v1, 0x1 /* handwritten instruction */
.align 2
  .L0022BB18:
    /* 12CA98 0022BB18 07006004 */  bltz       $v1, .L0022BB38
    /* 12CA9C 0022BB1C 6AD0FA4B */   vmul.xyzw $vf1, $vf26, $vf26
    /* 12CAA0 0022BB20 3D08014B */  vadday.x   ACC, $vf1, $vf1y
    /* 12CAA4 0022BB24 4AA8014B */  vmaddz.x   $vf1, $vf21, $vf1z
    /* 12CAA8 0022BB28 BE03614A */  vrsqrt     Q, $vf0w, $vf1x
    /* 12CAAC 0022BB2C BF03004A */  vwaitq
    /* 12CAB0 0022BB30 9CD6C04B */  vmulq.xyz  $vf26, $vf26, Q
    /* 12CAB4 0022BB34 00000000 */  nop
.align 2
  .L0022BB38:
    /* 12CAB8 0022BB38 8706204A */  vsubw.w    $vf26, $vf0, $vf0w
    /* 12CABC 0022BB3C 83075D4A */  vaddw.z    $vf30, $vf0, $vf29w
    /* 12CAC0 0022BB40 4707204A */  vsubw.w    $vf29, $vf0, $vf0w
    /* 12CAC4 0022BB44 2C06204A */  vsub.w     $vf24, $vf0, $vf0
    /* 12CAC8 0022BB48 80290600 */  sll        $a1, $a2, 6
    /* 12CACC 0022BB4C 6C06204A */  vsub.w     $vf25, $vf0, $vf0
    /* 12CAD0 0022BB50 21286501 */  addu       $a1, $t3, $a1
    /* 12CAD4 0022BB54 AC06204A */  vsub.w     $vf26, $vf0, $vf0
    /* 12CAD8 0022BB58 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* 12CADC 0022BB5C 0C00A18C */  lw         $at, 0xC($a1)
    /* 12CAE0 0022BB60 1000A2D8 */  lqc2       $vf2, 0x10($a1)
    /* 12CAE4 0022BB64 880E0170 */  pextlb     $at, $zero, $at
    /* 12CAE8 0022BB68 2000A3D8 */  lqc2       $vf3, 0x20($a1)
    /* 12CAEC 0022BB6C 880D0170 */  pextlh     $at, $zero, $at
    /* 12CAF0 0022BB70 280C3270 */  padduw     $at, $at, $s2
    /* 12CAF4 0022BB74 00F8A148 */  qmtc2.ni   $at, $vf31
    /* 12CAF8 0022BB78 2A09C14B */  vmul.xyz   $vf4, $vf1, $vf1
    /* 12CAFC 0022BB7C 6A11C24B */  vmul.xyz   $vf5, $vf2, $vf2
    /* 12CB00 0022BB80 AA19C34B */  vmul.xyz   $vf6, $vf3, $vf3
    /* 12CB04 0022BB84 3D20044B */  vadday.x   ACC, $vf4, $vf4y
    /* 12CB08 0022BB88 0AA9044B */  vmaddz.x   $vf4, $vf21, $vf4z
    /* 12CB0C 0022BB8C BE03644A */  vrsqrt     Q, $vf0w, $vf4x
    /* 12CB10 0022BB90 3D28054B */  vadday.x   ACC, $vf5, $vf5y
    /* 12CB14 0022BB94 4AA9054B */  vmaddz.x   $vf5, $vf21, $vf5z
    /* 12CB18 0022BB98 BF03004A */  vwaitq
    /* 12CB1C 0022BB9C 5C08C04B */  vmulq.xyz  $vf1, $vf1, Q
    /* 12CB20 0022BBA0 BE03654A */  vrsqrt     Q, $vf0w, $vf5x
    /* 12CB24 0022BBA4 3D30064B */  vadday.x   ACC, $vf6, $vf6y
    /* 12CB28 0022BBA8 8AA9064B */  vmaddz.x   $vf6, $vf21, $vf6z
    /* 12CB2C 0022BBAC BF03004A */  vwaitq
    /* 12CB30 0022BBB0 9C10C04B */  vmulq.xyz  $vf2, $vf2, Q
    /* 12CB34 0022BBB4 BE03664A */  vrsqrt     Q, $vf0w, $vf6x
    /* 12CB38 0022BBB8 BF03004A */  vwaitq
    /* 12CB3C 0022BBBC DC18C04B */  vmulq.xyz  $vf3, $vf3, Q
    /* 12CB40 0022BBC0 2C01014B */  vsub.x     $vf4, $vf0, $vf1
    /* 12CB44 0022BBC4 6C01824A */  vsub.y     $vf5, $vf0, $vf2
    /* 12CB48 0022BBC8 AC01434A */  vsub.z     $vf6, $vf0, $vf3
    /* 12CB4C 0022BBCC 4501014B */  vsuby.x    $vf5, $vf0, $vf1y
    /* 12CB50 0022BBD0 8601014B */  vsubz.x    $vf6, $vf0, $vf1z
    /* 12CB54 0022BBD4 0401824A */  vsubx.y    $vf4, $vf0, $vf2x
    /* 12CB58 0022BBD8 1B00E180 */  lb         $at, 0x1B($a3)
    /* 12CB5C 0022BBDC 8601824A */  vsubz.y    $vf6, $vf0, $vf2z
    /* 12CB60 0022BBE0 0401434A */  vsubx.z    $vf4, $vf0, $vf3x
    /* 12CB64 0022BBE4 00000000 */  nop
    /* 12CB68 0022BBE8 03002010 */  beqz       $at, .L0022BBF8
    /* 12CB6C 0022BBEC 4501434A */   vsuby.z   $vf5, $vf0, $vf3y
    /* 12CB70 0022BBF0 1B00E0A0 */  sb         $zero, 0x1B($a3)
    /* 12CB74 0022BBF4 00000000 */  nop
.align 2
  .L0022BBF8:
    /* 12CB78 0022BBF8 BC21D84B */  vmulax.xyz ACC, $vf4, $vf24x
    /* 12CB7C 0022BBFC BD28D84B */  vmadday.xyz ACC, $vf5, $vf24y
    /* 12CB80 0022BC00 4A30D84B */  vmaddz.xyz $vf1, $vf6, $vf24z
    /* 12CB84 0022BC04 BC21D94B */  vmulax.xyz ACC, $vf4, $vf25x
    /* 12CB88 0022BC08 BD28D94B */  vmadday.xyz ACC, $vf5, $vf25y
    /* 12CB8C 0022BC0C 8A30D94B */  vmaddz.xyz $vf2, $vf6, $vf25z
    /* 12CB90 0022BC10 BC21DA4B */  vmulax.xyz ACC, $vf4, $vf26x
    /* 12CB94 0022BC14 BD28DA4B */  vmadday.xyz ACC, $vf5, $vf26y
    /* 12CB98 0022BC18 CA30DA4B */  vmaddz.xyz $vf3, $vf6, $vf26z
    /* 12CB9C 0022BC1C 1A00E190 */  lbu        $at, 0x1A($a3)
    /* 12CBA0 0022BC20 0006014B */  vaddx.x    $vf24, $vf0, $vf1x
    /* 12CBA4 0022BC24 80080100 */  sll        $at, $at, 2
    /* 12CBA8 0022BC28 4106014B */  vaddy.x    $vf25, $vf0, $vf1y
    /* 12CBAC 0022BC2C 2108A101 */  addu       $at, $t5, $at
    /* 12CBB0 0022BC30 8206014B */  vaddz.x    $vf26, $vf0, $vf1z
    /* 12CBB4 0022BC34 00002F8C */  lw         $t7, 0x0($at)
    /* 12CBB8 0022BC38 0006824A */  vaddx.y    $vf24, $vf0, $vf2x
    /* 12CBBC 0022BC3C 2C00EF8D */  lw         $t7, 0x2C($t7)
    /* 12CBC0 0022BC40 4106824A */  vaddy.y    $vf25, $vf0, $vf2y
    /* 12CBC4 0022BC44 80090600 */  sll        $at, $a2, 6
    /* 12CBC8 0022BC48 8206824A */  vaddz.y    $vf26, $vf0, $vf2z
    /* 12CBCC 0022BC4C 40110600 */  sll        $v0, $a2, 5
    /* 12CBD0 0022BC50 0006434A */  vaddx.z    $vf24, $vf0, $vf3x
    /* 12CBD4 0022BC54 21082200 */  addu       $at, $at, $v0
    /* 12CBD8 0022BC58 4106434A */  vaddy.z    $vf25, $vf0, $vf3y
    /* 12CBDC 0022BC5C 21C08101 */  addu       $t8, $t4, $at
    /* 12CBE0 0022BC60 8206434A */  vaddz.z    $vf26, $vf0, $vf3z
    /* 12CBE4 0022BC64 60001923 */  addi       $t9, $t8, 0x60 /* handwritten instruction */
    /* 12CBE8 0022BC68 0000E1DD */  ld         $at, 0x0($t7)
    /* 12CBEC 0022BC6C 0800E2DD */  ld         $v0, 0x8($t7)
    /* 12CBF0 0022BC70 1000E3DD */  ld         $v1, 0x10($t7)
    /* 12CBF4 0022BC74 1800E4DD */  ld         $a0, 0x18($t7)
    /* 12CBF8 0022BC78 880D2070 */  pextlh     $at, $at, $zero
    /* 12CBFC 0022BC7C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CC00 0022BC80 3F0C0170 */  psraw      $at, $at, 16
    /* 12CC04 0022BC84 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CC08 0022BC88 0008A148 */  qmtc2.ni   $at, $vf1
    /* 12CC0C 0022BC8C 88154070 */  pextlh     $v0, $v0, $zero
    /* 12CC10 0022BC90 3F140270 */  psraw      $v0, $v0, 16
    /* 12CC14 0022BC94 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CC18 0022BC98 0010A248 */  qmtc2.ni   $v0, $vf2
    /* 12CC1C 0022BC9C 881D6070 */  pextlh     $v1, $v1, $zero
    /* 12CC20 0022BCA0 3F1C0370 */  psraw      $v1, $v1, 16
    /* 12CC24 0022BCA4 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CC28 0022BCA8 0018A348 */  qmtc2.ni   $v1, $vf3
    /* 12CC2C 0022BCAC 88258070 */  pextlh     $a0, $a0, $zero
    /* 12CC30 0022BCB0 3F240470 */  psraw      $a0, $a0, 16
    /* 12CC34 0022BCB4 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CC38 0022BCB8 0020A448 */  qmtc2.ni   $a0, $vf4
    /* 12CC3C 0022BCBC 2000EF21 */  addi       $t7, $t7, 0x20 /* handwritten instruction */
    /* 12CC40 0022BCC0 3800004A */  vcallms    0x0
    /* 12CC44 0022BCC4 00000000 */  nop
    /* 12CC48 0022BCC8 0000E1DD */  ld         $at, 0x0($t7)
    /* 12CC4C 0022BCCC 0800E2DD */  ld         $v0, 0x8($t7)
    /* 12CC50 0022BCD0 1000E3DD */  ld         $v1, 0x10($t7)
    /* 12CC54 0022BCD4 1800E4DD */  ld         $a0, 0x18($t7)
    /* 12CC58 0022BCD8 880D2070 */  pextlh     $at, $at, $zero
    /* 12CC5C 0022BCDC 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CC60 0022BCE0 3F0C0170 */  psraw      $at, $at, 16
    /* 12CC64 0022BCE4 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CC68 0022BCE8 0028A148 */  qmtc2.ni   $at, $vf5
    /* 12CC6C 0022BCEC 88154070 */  pextlh     $v0, $v0, $zero
    /* 12CC70 0022BCF0 3F140270 */  psraw      $v0, $v0, 16
    /* 12CC74 0022BCF4 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CC78 0022BCF8 0030A248 */  qmtc2.ni   $v0, $vf6
    /* 12CC7C 0022BCFC 881D6070 */  pextlh     $v1, $v1, $zero
    /* 12CC80 0022BD00 3F1C0370 */  psraw      $v1, $v1, 16
    /* 12CC84 0022BD04 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CC88 0022BD08 0038A348 */  qmtc2.ni   $v1, $vf7
    /* 12CC8C 0022BD0C 88258070 */  pextlh     $a0, $a0, $zero
    /* 12CC90 0022BD10 3F240470 */  psraw      $a0, $a0, 16
    /* 12CC94 0022BD14 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CC98 0022BD18 0040A448 */  qmtc2.ni   $a0, $vf8
    /* 12CC9C 0022BD1C 2000EF21 */  addi       $t7, $t7, 0x20 /* handwritten instruction */
.align 2
  .L0022BD20:
    /* 12CCA0 0022BD20 380B004A */  vcallms    0x160
    /* 12CCA4 0022BD24 00000000 */  nop
    /* 12CCA8 0022BD28 00482148 */  qmfc2.ni   $at, $vf9
    /* 12CCAC 0022BD2C 10001823 */  addi       $t8, $t8, 0x10 /* handwritten instruction */
    /* 12CCB0 0022BD30 C80D0170 */  ppach      $at, $zero, $at
    /* 12CCB4 0022BD34 00502248 */  qmfc2.ni   $v0, $vf10
    /* 12CCB8 0022BD38 C80E0170 */  ppacb      $at, $zero, $at
    /* 12CCBC 0022BD3C 00582348 */  qmfc2.ni   $v1, $vf11
    /* 12CCC0 0022BD40 C8150270 */  ppach      $v0, $zero, $v0
    /* 12CCC4 0022BD44 00602448 */  qmfc2.ni   $a0, $vf12
    /* 12CCC8 0022BD48 C8160270 */  ppacb      $v0, $zero, $v0
    /* 12CCCC 0022BD4C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CCD0 0022BD50 C81D0370 */  ppach      $v1, $zero, $v1
    /* 12CCD4 0022BD54 F0FF01AF */  sw         $at, -0x10($t8)
    /* 12CCD8 0022BD58 C81E0370 */  ppacb      $v1, $zero, $v1
    /* 12CCDC 0022BD5C F4FF02AF */  sw         $v0, -0xC($t8)
    /* 12CCE0 0022BD60 C8250470 */  ppach      $a0, $zero, $a0
    /* 12CCE4 0022BD64 F8FF03AF */  sw         $v1, -0x8($t8)
    /* 12CCE8 0022BD68 C8260470 */  ppacb      $a0, $zero, $a0
    /* 12CCEC 0022BD6C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CCF0 0022BD70 45001913 */  beq        $t8, $t9, .L0022BE88
    /* 12CCF4 0022BD74 FCFF04AF */   sw        $a0, -0x4($t8)
    /* 12CCF8 0022BD78 0000E1DD */  ld         $at, 0x0($t7)
    /* 12CCFC 0022BD7C 0800E2DD */  ld         $v0, 0x8($t7)
    /* 12CD00 0022BD80 1000E3DD */  ld         $v1, 0x10($t7)
    /* 12CD04 0022BD84 1800E4DD */  ld         $a0, 0x18($t7)
    /* 12CD08 0022BD88 880D2070 */  pextlh     $at, $at, $zero
    /* 12CD0C 0022BD8C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CD10 0022BD90 3F0C0170 */  psraw      $at, $at, 16
    /* 12CD14 0022BD94 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CD18 0022BD98 0008A148 */  qmtc2.ni   $at, $vf1
    /* 12CD1C 0022BD9C 88154070 */  pextlh     $v0, $v0, $zero
    /* 12CD20 0022BDA0 3F140270 */  psraw      $v0, $v0, 16
    /* 12CD24 0022BDA4 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CD28 0022BDA8 0010A248 */  qmtc2.ni   $v0, $vf2
    /* 12CD2C 0022BDAC 881D6070 */  pextlh     $v1, $v1, $zero
    /* 12CD30 0022BDB0 3F1C0370 */  psraw      $v1, $v1, 16
    /* 12CD34 0022BDB4 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CD38 0022BDB8 0018A348 */  qmtc2.ni   $v1, $vf3
    /* 12CD3C 0022BDBC 88258070 */  pextlh     $a0, $a0, $zero
    /* 12CD40 0022BDC0 3F240470 */  psraw      $a0, $a0, 16
    /* 12CD44 0022BDC4 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CD48 0022BDC8 0020A448 */  qmtc2.ni   $a0, $vf4
    /* 12CD4C 0022BDCC 2000EF21 */  addi       $t7, $t7, 0x20 /* handwritten instruction */
    /* 12CD50 0022BDD0 3800004A */  vcallms    0x0
    /* 12CD54 0022BDD4 00000000 */  nop
    /* 12CD58 0022BDD8 00682148 */  qmfc2.ni   $at, $vf13
    /* 12CD5C 0022BDDC 10001823 */  addi       $t8, $t8, 0x10 /* handwritten instruction */
    /* 12CD60 0022BDE0 C80D0170 */  ppach      $at, $zero, $at
    /* 12CD64 0022BDE4 00702248 */  qmfc2.ni   $v0, $vf14
    /* 12CD68 0022BDE8 C80E0170 */  ppacb      $at, $zero, $at
    /* 12CD6C 0022BDEC 00782348 */  qmfc2.ni   $v1, $vf15
    /* 12CD70 0022BDF0 C8150270 */  ppach      $v0, $zero, $v0
    /* 12CD74 0022BDF4 00802448 */  qmfc2.ni   $a0, $vf16
    /* 12CD78 0022BDF8 C8160270 */  ppacb      $v0, $zero, $v0
    /* 12CD7C 0022BDFC 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CD80 0022BE00 C81D0370 */  ppach      $v1, $zero, $v1
    /* 12CD84 0022BE04 F0FF01AF */  sw         $at, -0x10($t8)
    /* 12CD88 0022BE08 C81E0370 */  ppacb      $v1, $zero, $v1
    /* 12CD8C 0022BE0C F4FF02AF */  sw         $v0, -0xC($t8)
    /* 12CD90 0022BE10 C8250470 */  ppach      $a0, $zero, $a0
    /* 12CD94 0022BE14 F8FF03AF */  sw         $v1, -0x8($t8)
    /* 12CD98 0022BE18 C8260470 */  ppacb      $a0, $zero, $a0
    /* 12CD9C 0022BE1C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CDA0 0022BE20 19001913 */  beq        $t8, $t9, .L0022BE88
    /* 12CDA4 0022BE24 FCFF04AF */   sw        $a0, -0x4($t8)
    /* 12CDA8 0022BE28 0000E1DD */  ld         $at, 0x0($t7)
    /* 12CDAC 0022BE2C 0800E2DD */  ld         $v0, 0x8($t7)
    /* 12CDB0 0022BE30 1000E3DD */  ld         $v1, 0x10($t7)
    /* 12CDB4 0022BE34 1800E4DD */  ld         $a0, 0x18($t7)
    /* 12CDB8 0022BE38 880D2070 */  pextlh     $at, $at, $zero
    /* 12CDBC 0022BE3C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CDC0 0022BE40 3F0C0170 */  psraw      $at, $at, 16
    /* 12CDC4 0022BE44 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CDC8 0022BE48 0028A148 */  qmtc2.ni   $at, $vf5
    /* 12CDCC 0022BE4C 88154070 */  pextlh     $v0, $v0, $zero
    /* 12CDD0 0022BE50 3F140270 */  psraw      $v0, $v0, 16
    /* 12CDD4 0022BE54 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CDD8 0022BE58 0030A248 */  qmtc2.ni   $v0, $vf6
    /* 12CDDC 0022BE5C 881D6070 */  pextlh     $v1, $v1, $zero
    /* 12CDE0 0022BE60 3F1C0370 */  psraw      $v1, $v1, 16
    /* 12CDE4 0022BE64 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CDE8 0022BE68 0038A348 */  qmtc2.ni   $v1, $vf7
    /* 12CDEC 0022BE6C 88258070 */  pextlh     $a0, $a0, $zero
    /* 12CDF0 0022BE70 3F240470 */  psraw      $a0, $a0, 16
    /* 12CDF4 0022BE74 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 12CDF8 0022BE78 0040A448 */  qmtc2.ni   $a0, $vf8
    /* 12CDFC 0022BE7C 2000EF21 */  addi       $t7, $t7, 0x20 /* handwritten instruction */
    /* 12CE00 0022BE80 A7FF0010 */  b          .L0022BD20
    /* 12CE04 0022BE84 00000000 */   nop
.align 2
  .L0022BE88:
    /* 12CE08 0022BE88 B3FE0010 */  b          .L0022B958
    /* 12CE0C 0022BE8C 00000000 */   nop
.align 2
  .L0022BE90:
    /* 12CE10 0022BE90 0070013C */  lui        $at, (0x70003FE0 >> 16)
    /* 12CE14 0022BE94 F83F3EDC */  ld         $fp, (0x70003FF8 & 0xFFFF)($at)
    /* 12CE18 0022BE98 F03F30DC */  ld         $s0, (0x70003FF0 & 0xFFFF)($at)
    /* 12CE1C 0022BE9C E83F31DC */  ld         $s1, (0x70003FE8 & 0xFFFF)($at)
    /* 12CE20 0022BEA0 E03F32DC */  ld         $s2, (0x70003FE0 & 0xFFFF)($at)
    /* 12CE24 0022BEA4 0800E003 */  jr         $ra
    /* 12CE28 0022BEA8 00000000 */   nop
endlabel func_0022B8F8
    /* 12CE2C 0022BEAC 00000000 */  nop
