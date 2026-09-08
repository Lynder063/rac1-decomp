.align 3
nonmatching func_0011B868, 0x384

glabel func_0011B868
    /* 1C7E8 0011B868 1300023C */  lui        $v0, %hi(D_0012FD98)
    /* 1C7EC 0011B86C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1C7F0 0011B870 98FD438C */  lw         $v1, %lo(D_0012FD98)($v0)
    /* 1C7F4 0011B874 2D280000 */  daddu      $a1, $zero, $zero
    /* 1C7F8 0011B878 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1C7FC 0011B87C 02006010 */  beqz       $v1, .L0011B888
    /* 1C800 0011B880 2000B0FF */   sd        $s0, 0x20($sp)
    /* 1C804 0011B884 0C00858C */  lw         $a1, 0xC($a0)
.align 2
  .L0011B888:
    /* 1C808 0011B888 40040324 */  addiu      $v1, $zero, 0x440
    /* 1C80C 0011B88C 1300023C */  lui        $v0, %hi(D_0012FD90)
    /* 1C810 0011B890 1818A300 */  mult       $v1, $a1, $v1
    /* 1C814 0011B894 1500043C */  lui        $a0, %hi(D_00157600)
    /* 1C818 0011B898 90FD45AC */  sw         $a1, %lo(D_0012FD90)($v0)
    /* 1C81C 0011B89C 00768424 */  addiu      $a0, $a0, %lo(D_00157600)
    /* 1C820 0011B8A0 0020053C */  lui        $a1, (0x20000000 >> 16)
    /* 1C824 0011B8A4 21186400 */  addu       $v1, $v1, $a0
    /* 1C828 0011B8A8 25806500 */  or         $s0, $v1, $a1
    /* 1C82C 0011B8AC 0300028A */  lwl        $v0, 0x3($s0)
    /* 1C830 0011B8B0 0000029A */  lwr        $v0, 0x0($s0)
    /* 1C834 0011B8B4 0300A2AB */  swl        $v0, 0x3($sp)
    /* 1C838 0011B8B8 0000A2BB */  swr        $v0, 0x0($sp)
    /* 1C83C 0011B8BC 0700068A */  lwl        $a2, 0x7($s0)
    /* 1C840 0011B8C0 0400069A */  lwr        $a2, 0x4($s0)
    /* 1C844 0011B8C4 0700A6AB */  swl        $a2, 0x7($sp)
    /* 1C848 0011B8C8 0400A6BB */  swr        $a2, 0x4($sp)
    /* 1C84C 0011B8CC 0B00038A */  lwl        $v1, 0xB($s0)
    /* 1C850 0011B8D0 0800039A */  lwr        $v1, 0x8($s0)
    /* 1C854 0011B8D4 0B00A3AB */  swl        $v1, 0xB($sp)
    /* 1C858 0011B8D8 0800A3BB */  swr        $v1, 0x8($sp)
    /* 1C85C 0011B8DC 0F00078A */  lwl        $a3, 0xF($s0)
    /* 1C860 0011B8E0 0C00079A */  lwr        $a3, 0xC($s0)
    /* 1C864 0011B8E4 0F00A7AB */  swl        $a3, 0xF($sp)
    /* 1C868 0011B8E8 0C00A7BB */  swr        $a3, 0xC($sp)
    /* 1C86C 0011B8EC 0000A28F */  lw         $v0, 0x0($sp)
    /* 1C870 0011B8F0 04004004 */  bltz       $v0, .L0011B904
    /* 1C874 0011B8F4 0800A48F */   lw        $a0, 0x8($sp)
    /* 1C878 0011B8F8 10000526 */  addiu      $a1, $s0, 0x10
    /* 1C87C 0011B8FC 9254040C */  jal        func_00115248
    /* 1C880 0011B900 0C00A68F */   lw        $a2, 0xC($sp)
.align 2
  .L0011B904:
    /* 1C884 0011B904 0400A28F */  lw         $v0, 0x4($sp)
    /* 1C888 0011B908 FEFF4424 */  addiu      $a0, $v0, -0x2
    /* 1C88C 0011B90C 1900832C */  sltiu      $v1, $a0, 0x19
    /* 1C890 0011B910 95006010 */  beqz       $v1, .L0011BB68
    /* 1C894 0011B914 1500023C */   lui       $v0, %hi(jtbl_001529E0)
    /* 1C898 0011B918 80180400 */  sll        $v1, $a0, 2
    /* 1C89C 0011B91C E0294224 */  addiu      $v0, $v0, %lo(jtbl_001529E0)
    /* 1C8A0 0011B920 21186200 */  addu       $v1, $v1, $v0
    /* 1C8A4 0011B924 0000648C */  lw         $a0, 0x0($v1)
    /* 1C8A8 0011B928 08008000 */  jr         $a0
    /* 1C8AC 0011B92C 00000000 */   nop
.align 2
  jlabel .L0011B930
    /* 1C8B0 0011B930 1400028E */  lw         $v0, 0x14($s0)
    /* 1C8B4 0011B934 0E004018 */  blez       $v0, .L0011B970
    /* 1C8B8 0011B938 14000726 */   addiu     $a3, $s0, 0x14
    /* 1C8BC 0011B93C 0800E88C */  lw         $t0, 0x8($a3)
    /* 1C8C0 0011B940 0B004018 */  blez       $v0, .L0011B970
    /* 1C8C4 0011B944 2D300000 */   daddu     $a2, $zero, $zero
    /* 1C8C8 0011B948 24000526 */  addiu      $a1, $s0, 0x24
    /* 1C8CC 0011B94C 2110A600 */  addu       $v0, $a1, $a2
.align 2
  .L0011B950:
    /* 1C8D0 0011B950 21200601 */  addu       $a0, $t0, $a2
    /* 1C8D4 0011B954 00004390 */  lbu        $v1, 0x0($v0)
    /* 1C8D8 0011B958 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1C8DC 0011B95C 000083A0 */  sb         $v1, 0x0($a0)
    /* 1C8E0 0011B960 0000E28C */  lw         $v0, 0x0($a3)
    /* 1C8E4 0011B964 2A10C200 */  slt        $v0, $a2, $v0
    /* 1C8E8 0011B968 F9FF4014 */  bnez       $v0, .L0011B950
    /* 1C8EC 0011B96C 2110A600 */   addu      $v0, $a1, $a2
.align 2
  .L0011B970:
    /* 1C8F0 0011B970 0400E28C */  lw         $v0, 0x4($a3)
    /* 1C8F4 0011B974 7D004018 */  blez       $v0, .L0011BB6C
    /* 1C8F8 0011B978 0000A48F */   lw        $a0, 0x0($sp)
    /* 1C8FC 0011B97C 0C00E88C */  lw         $t0, 0xC($a3)
    /* 1C900 0011B980 7A004018 */  blez       $v0, .L0011BB6C
    /* 1C904 0011B984 2D300000 */   daddu     $a2, $zero, $zero
    /* 1C908 0011B988 5000E524 */  addiu      $a1, $a3, 0x50
    /* 1C90C 0011B98C 2110A600 */  addu       $v0, $a1, $a2
.align 2
  .L0011B990:
    /* 1C910 0011B990 21200601 */  addu       $a0, $t0, $a2
    /* 1C914 0011B994 00004390 */  lbu        $v1, 0x0($v0)
    /* 1C918 0011B998 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1C91C 0011B99C 000083A0 */  sb         $v1, 0x0($a0)
    /* 1C920 0011B9A0 0400E28C */  lw         $v0, 0x4($a3)
    /* 1C924 0011B9A4 2A10C200 */  slt        $v0, $a2, $v0
    /* 1C928 0011B9A8 F9FF4014 */  bnez       $v0, .L0011B990
    /* 1C92C 0011B9AC 2110A600 */   addu      $v0, $a1, $a2
    /* 1C930 0011B9B0 6E000010 */  b          .L0011BB6C
    /* 1C934 0011B9B4 0000A48F */   lw        $a0, 0x0($sp)
.align 2
  jlabel .L0011B9B8
    /* 1C938 0011B9B8 1700048A */  lwl        $a0, 0x17($s0)
    /* 1C93C 0011B9BC 1400049A */  lwr        $a0, 0x14($s0)
    /* 1C940 0011B9C0 1300A4AB */  swl        $a0, 0x13($sp)
    /* 1C944 0011B9C4 1000A4BB */  swr        $a0, 0x10($sp)
    /* 1C948 0011B9C8 18000426 */  addiu      $a0, $s0, 0x18
    /* 1C94C 0011B9CC 1000A68F */  lw         $a2, 0x10($sp)
    /* 1C950 0011B9D0 25108600 */  or         $v0, $a0, $a2
    /* 1C954 0011B9D4 07004230 */  andi       $v0, $v0, 0x7
    /* 1C958 0011B9D8 18004010 */  beqz       $v0, .L0011BA3C
    /* 1C95C 0011B9DC 58010226 */   addiu     $v0, $s0, 0x158
.align 2
  .L0011B9E0:
    /* 1C960 0011B9E0 07008868 */  ldl        $t0, 0x7($a0)
    /* 1C964 0011B9E4 0000886C */  ldr        $t0, 0x0($a0)
    /* 1C968 0011B9E8 0F008368 */  ldl        $v1, 0xF($a0)
    /* 1C96C 0011B9EC 0800836C */  ldr        $v1, 0x8($a0)
    /* 1C970 0011B9F0 17008568 */  ldl        $a1, 0x17($a0)
    /* 1C974 0011B9F4 1000856C */  ldr        $a1, 0x10($a0)
    /* 1C978 0011B9F8 1F008768 */  ldl        $a3, 0x1F($a0)
    /* 1C97C 0011B9FC 1800876C */  ldr        $a3, 0x18($a0)
    /* 1C980 0011BA00 0700C8B0 */  sdl        $t0, 0x7($a2)
    /* 1C984 0011BA04 0000C8B4 */  sdr        $t0, 0x0($a2)
    /* 1C988 0011BA08 0F00C3B0 */  sdl        $v1, 0xF($a2)
    /* 1C98C 0011BA0C 0800C3B4 */  sdr        $v1, 0x8($a2)
    /* 1C990 0011BA10 1700C5B0 */  sdl        $a1, 0x17($a2)
    /* 1C994 0011BA14 1000C5B4 */  sdr        $a1, 0x10($a2)
    /* 1C998 0011BA18 1F00C7B0 */  sdl        $a3, 0x1F($a2)
    /* 1C99C 0011BA1C 1800C7B4 */  sdr        $a3, 0x18($a2)
    /* 1C9A0 0011BA20 20008424 */  addiu      $a0, $a0, 0x20
    /* 1C9A4 0011BA24 2000C624 */  addiu      $a2, $a2, 0x20
    /* 1C9A8 0011BA28 00000000 */  nop
    /* 1C9AC 0011BA2C ECFF8214 */  bne        $a0, $v0, .L0011B9E0
    /* 1C9B0 0011BA30 00000000 */   nop
    /* 1C9B4 0011BA34 0E000010 */  b          .L0011BA70
    /* 1C9B8 0011BA38 00000000 */   nop
.align 2
  .L0011BA3C:
    /* 1C9BC 0011BA3C 000088DC */  ld         $t0, 0x0($a0)
    /* 1C9C0 0011BA40 080083DC */  ld         $v1, 0x8($a0)
    /* 1C9C4 0011BA44 100085DC */  ld         $a1, 0x10($a0)
    /* 1C9C8 0011BA48 180087DC */  ld         $a3, 0x18($a0)
    /* 1C9CC 0011BA4C 0000C8FC */  sd         $t0, 0x0($a2)
    /* 1C9D0 0011BA50 0800C3FC */  sd         $v1, 0x8($a2)
    /* 1C9D4 0011BA54 1000C5FC */  sd         $a1, 0x10($a2)
    /* 1C9D8 0011BA58 1800C7FC */  sd         $a3, 0x18($a2)
    /* 1C9DC 0011BA5C 20008424 */  addiu      $a0, $a0, 0x20
    /* 1C9E0 0011BA60 2000C624 */  addiu      $a2, $a2, 0x20
    /* 1C9E4 0011BA64 00000000 */  nop
    /* 1C9E8 0011BA68 F4FF8214 */  bne        $a0, $v0, .L0011BA3C
    /* 1C9EC 0011BA6C 00000000 */   nop
.align 2
  .L0011BA70:
    /* 1C9F0 0011BA70 03008888 */  lwl        $t0, 0x3($a0)
    /* 1C9F4 0011BA74 00008898 */  lwr        $t0, 0x0($a0)
    /* 1C9F8 0011BA78 0300C8A8 */  swl        $t0, 0x3($a2)
    /* 1C9FC 0011BA7C 3A000010 */  b          .L0011BB68
    /* 1CA00 0011BA80 0000C8B8 */   swr       $t0, 0x0($a2)
.align 2
  jlabel .L0011BA84
    /* 1CA04 0011BA84 1700068A */  lwl        $a2, 0x17($s0)
    /* 1CA08 0011BA88 1400069A */  lwr        $a2, 0x14($s0)
    /* 1CA0C 0011BA8C 1300A6AB */  swl        $a2, 0x13($sp)
    /* 1CA10 0011BA90 1000A6BB */  swr        $a2, 0x10($sp)
    /* 1CA14 0011BA94 1000A28F */  lw         $v0, 0x10($sp)
    /* 1CA18 0011BA98 1F00036A */  ldl        $v1, 0x1F($s0)
    /* 1CA1C 0011BA9C 1800036E */  ldr        $v1, 0x18($s0)
    /* 1CA20 0011BAA0 2700046A */  ldl        $a0, 0x27($s0)
    /* 1CA24 0011BAA4 2000046E */  ldr        $a0, 0x20($s0)
    /* 1CA28 0011BAA8 2F00056A */  ldl        $a1, 0x2F($s0)
    /* 1CA2C 0011BAAC 2800056E */  ldr        $a1, 0x28($s0)
    /* 1CA30 0011BAB0 3700066A */  ldl        $a2, 0x37($s0)
    /* 1CA34 0011BAB4 3000066E */  ldr        $a2, 0x30($s0)
    /* 1CA38 0011BAB8 070043B0 */  sdl        $v1, 0x7($v0)
    /* 1CA3C 0011BABC 000043B4 */  sdr        $v1, 0x0($v0)
    /* 1CA40 0011BAC0 0F0044B0 */  sdl        $a0, 0xF($v0)
    /* 1CA44 0011BAC4 080044B4 */  sdr        $a0, 0x8($v0)
    /* 1CA48 0011BAC8 170045B0 */  sdl        $a1, 0x17($v0)
    /* 1CA4C 0011BACC 100045B4 */  sdr        $a1, 0x10($v0)
    /* 1CA50 0011BAD0 1F0046B0 */  sdl        $a2, 0x1F($v0)
    /* 1CA54 0011BAD4 180046B4 */  sdr        $a2, 0x18($v0)
    /* 1CA58 0011BAD8 3F00036A */  ldl        $v1, 0x3F($s0)
    /* 1CA5C 0011BADC 3800036E */  ldr        $v1, 0x38($s0)
    /* 1CA60 0011BAE0 4700046A */  ldl        $a0, 0x47($s0)
    /* 1CA64 0011BAE4 4000046E */  ldr        $a0, 0x40($s0)
    /* 1CA68 0011BAE8 4F00056A */  ldl        $a1, 0x4F($s0)
    /* 1CA6C 0011BAEC 4800056E */  ldr        $a1, 0x48($s0)
    /* 1CA70 0011BAF0 5700066A */  ldl        $a2, 0x57($s0)
    /* 1CA74 0011BAF4 5000066E */  ldr        $a2, 0x50($s0)
    /* 1CA78 0011BAF8 270043B0 */  sdl        $v1, 0x27($v0)
    /* 1CA7C 0011BAFC 200043B4 */  sdr        $v1, 0x20($v0)
    /* 1CA80 0011BB00 2F0044B0 */  sdl        $a0, 0x2F($v0)
    /* 1CA84 0011BB04 280044B4 */  sdr        $a0, 0x28($v0)
    /* 1CA88 0011BB08 370045B0 */  sdl        $a1, 0x37($v0)
    /* 1CA8C 0011BB0C 300045B4 */  sdr        $a1, 0x30($v0)
    /* 1CA90 0011BB10 3F0046B0 */  sdl        $a2, 0x3F($v0)
    /* 1CA94 0011BB14 380046B4 */  sdr        $a2, 0x38($v0)
    /* 1CA98 0011BB18 14000010 */  b          .L0011BB6C
    /* 1CA9C 0011BB1C 0000A48F */   lw        $a0, 0x0($sp)
.align 2
  jlabel .L0011BB20
    /* 1CAA0 0011BB20 1700078A */  lwl        $a3, 0x17($s0)
    /* 1CAA4 0011BB24 1400079A */  lwr        $a3, 0x14($s0)
    /* 1CAA8 0011BB28 1300A7AB */  swl        $a3, 0x13($sp)
    /* 1CAAC 0011BB2C 1000A7BB */  swr        $a3, 0x10($sp)
    /* 1CAB0 0011BB30 1B00048A */  lwl        $a0, 0x1B($s0)
    /* 1CAB4 0011BB34 1800049A */  lwr        $a0, 0x18($s0)
    /* 1CAB8 0011BB38 1700A4AB */  swl        $a0, 0x17($sp)
    /* 1CABC 0011BB3C 1400A4BB */  swr        $a0, 0x14($sp)
    /* 1CAC0 0011BB40 1400A68F */  lw         $a2, 0x14($sp)
    /* 1CAC4 0011BB44 0104C22C */  sltiu      $v0, $a2, 0x401
    /* 1CAC8 0011BB48 05004014 */  bnez       $v0, .L0011BB60
    /* 1CACC 0011BB4C 1000A48F */   lw        $a0, 0x10($sp)
    /* 1CAD0 0011BB50 00040224 */  addiu      $v0, $zero, 0x400
    /* 1CAD4 0011BB54 00040624 */  addiu      $a2, $zero, 0x400
    /* 1CAD8 0011BB58 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1CADC 0011BB5C 1000A48F */  lw         $a0, 0x10($sp)
.align 2
  .L0011BB60:
    /* 1CAE0 0011BB60 9254040C */  jal        func_00115248
    /* 1CAE4 0011BB64 1C000526 */   addiu     $a1, $s0, 0x1C
.align 2
  jlabel .L0011BB68
    /* 1CAE8 0011BB68 0000A48F */  lw         $a0, 0x0($sp)
.align 2
  .L0011BB6C:
    /* 1CAEC 0011BB6C 19008104 */  bgez       $a0, .L0011BBD4
    /* 1CAF0 0011BB70 1300073C */   lui       $a3, %hi(D_0012FD10)
    /* 1CAF4 0011BB74 23100400 */  negu       $v0, $a0
    /* 1CAF8 0011BB78 10FDE38C */  lw         $v1, %lo(D_0012FD10)($a3)
    /* 1CAFC 0011BB7C 2D284000 */  daddu      $a1, $v0, $zero
    /* 1CB00 0011BB80 0000A2AF */  sw         $v0, 0x0($sp)
    /* 1CB04 0011BB84 06006514 */  bne        $v1, $a1, .L0011BBA0
    /* 1CB08 0011BB88 2D300000 */   daddu     $a2, $zero, $zero
    /* 1CB0C 0011BB8C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1CB10 0011BB90 10FDE2AC */  sw         $v0, %lo(D_0012FD10)($a3)
    /* 1CB14 0011BB94 12000010 */  b          .L0011BBE0
    /* 1CB18 0011BB98 3000BFDF */   ld        $ra, 0x30($sp)
    /* 1CB1C 0011BB9C 00000000 */  nop
.align 2
  .L0011BBA0:
    /* 1CB20 0011BBA0 0100C624 */  addiu      $a2, $a2, 0x1
.align 2
  .L0011BBA4:
    /* 1CB24 0011BBA4 2000C228 */  slti       $v0, $a2, 0x20
    /* 1CB28 0011BBA8 0C004010 */  beqz       $v0, .L0011BBDC
    /* 1CB2C 0011BBAC 10FDE224 */   addiu     $v0, $a3, %lo(D_0012FD10)
    /* 1CB30 0011BBB0 80180600 */  sll        $v1, $a2, 2
    /* 1CB34 0011BBB4 21186200 */  addu       $v1, $v1, $v0
    /* 1CB38 0011BBB8 0000648C */  lw         $a0, 0x0($v1)
    /* 1CB3C 0011BBBC F9FF8514 */  bne        $a0, $a1, .L0011BBA4
    /* 1CB40 0011BBC0 0100C624 */   addiu     $a2, $a2, 0x1
    /* 1CB44 0011BBC4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1CB48 0011BBC8 000062AC */  sw         $v0, 0x0($v1)
    /* 1CB4C 0011BBCC 04000010 */  b          .L0011BBE0
    /* 1CB50 0011BBD0 3000BFDF */   ld        $ra, 0x30($sp)
.align 2
  .L0011BBD4:
    /* 1CB54 0011BBD4 2863040C */  jal        func_00118CA0
    /* 1CB58 0011BBD8 00000000 */   nop
.align 2
  .L0011BBDC:
    /* 1CB5C 0011BBDC 3000BFDF */  ld         $ra, 0x30($sp)
.align 2
  .L0011BBE0:
    /* 1CB60 0011BBE0 2000B0DF */  ld         $s0, 0x20($sp)
    /* 1CB64 0011BBE4 0800E003 */  jr         $ra
    /* 1CB68 0011BBE8 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0011B868
    /* 1CB6C 0011BBEC 00000000 */  nop
