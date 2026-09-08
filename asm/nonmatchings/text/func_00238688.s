.align 3
/* Handwritten function */
nonmatching func_00238688, 0x6FC

glabel func_00238688
    /* 139608 00238688 0070013C */  lui        $at, (0x70003FD8 >> 16)
    /* 13960C 0023868C F83F3EFC */  sd         $fp, (0x70003FF8 & 0xFFFF)($at)
    /* 139610 00238690 F03F30FC */  sd         $s0, (0x70003FF0 & 0xFFFF)($at)
    /* 139614 00238694 E83F31FC */  sd         $s1, (0x70003FE8 & 0xFFFF)($at)
    /* 139618 00238698 E03F32FC */  sd         $s2, (0x70003FE0 & 0xFFFF)($at)
    /* 13961C 0023869C D83F33FC */  sd         $s3, (0x70003FD8 & 0xFFFF)($at)
    /* 139620 002386A0 00701E3C */  lui        $fp, (0x70000000 >> 16)
    /* 139624 002386A4 FFFF1034 */  ori        $s0, $zero, 0xFFFF
    /* 139628 002386A8 50A38A8F */  lw         $t2, -0x5CB0($gp)
    /* 13962C 002386AC 16000B3C */  lui        $t3, %hi(D_00161058)
    /* 139630 002386B0 58106B8D */  lw         $t3, %lo(D_00161058)($t3)
    /* 139634 002386B4 1E000D3C */  lui        $t5, %hi(D_001E1A00)
    /* 139638 002386B8 001AAD25 */  addiu      $t5, $t5, %lo(D_001E1A00)
    /* 13963C 002386BC 8047123C */  lui        $s2, (0x47800000 >> 16)
    /* 139640 002386C0 88945272 */  pextlw     $s2, $s2, $s2
    /* 139644 002386C4 2DF08000 */  daddu      $fp, $a0, $zero
    /* 139648 002386C8 88945272 */  pextlw     $s2, $s2, $s2
    /* 13964C 002386CC 1A000E3C */  lui        $t6, %hi(D_0019BEC0)
    /* 139650 002386D0 C0BECE25 */  addiu      $t6, $t6, %lo(D_0019BEC0)
    /* 139654 002386D4 1A00113C */  lui        $s1, %hi(D_0019C2C0)
    /* 139658 002386D8 C0C23126 */  addiu      $s1, $s1, %lo(D_0019C2C0)
    /* 13965C 002386DC 1600013C */  lui        $at, %hi(D_0015FB80)
    /* 139660 002386E0 80FB2124 */  addiu      $at, $at, %lo(D_0015FB80)
    /* 139664 002386E4 000035D8 */  lqc2       $vf21, 0x0($at)
    /* 139668 002386E8 00000000 */  nop
.align 2
  .L002386EC:
    /* 13966C 002386EC 0000C697 */  lhu        $a2, 0x0($fp)
    /* 139670 002386F0 0200DE27 */  addiu      $fp, $fp, 0x2
    /* 139674 002386F4 9B01D010 */  beq        $a2, $s0, .L00238D64
    /* 139678 002386F8 00000000 */   nop
    /* 13967C 002386FC 40090600 */  sll        $at, $a2, 5
    /* 139680 00238700 21384101 */  addu       $a3, $t2, $at
    /* 139684 00238704 1C00E494 */  lhu        $a0, 0x1C($a3)
    /* 139688 00238708 00000000 */  nop
    /* 13968C 0023870C 1B00E590 */  lbu        $a1, 0x1B($a3)
    /* 139690 00238710 00000000 */  nop
    /* 139694 00238714 00FF8130 */  andi       $at, $a0, 0xFF00
    /* 139698 00238718 00000000 */  nop
    /* 13969C 0023871C 35002010 */  beqz       $at, .L002387F4
    /* 1396A0 00238720 00000000 */   nop
    /* 1396A4 00238724 02090400 */  srl        $at, $a0, 4
    /* 1396A8 00238728 F00F2130 */  andi       $at, $at, 0xFF0
    /* 1396AC 0023872C 0008A148 */  qmtc2.ni   $at, $vf1
    /* 1396B0 00238730 3E09014B */  vitof12.x  $vf1, $vf1
    /* 1396B4 00238734 0F008130 */  andi       $at, $a0, 0xF
    /* 1396B8 00238738 80090100 */  sll        $at, $at, 6
    /* 1396BC 0023873C 4400214A */  vsubx.w    $vf1, $vf0, $vf1x
    /* 1396C0 00238740 21082E00 */  addu       $at, $at, $t6
    /* 1396C4 00238744 000022D8 */  lqc2       $vf2, 0x0($at)
    /* 1396C8 00238748 02110400 */  srl        $v0, $a0, 4
    /* 1396CC 0023874C 100023D8 */  lqc2       $vf3, 0x10($at)
    /* 1396D0 00238750 0F004230 */  andi       $v0, $v0, 0xF
    /* 1396D4 00238754 200024D8 */  lqc2       $vf4, 0x20($at)
    /* 1396D8 00238758 80110200 */  sll        $v0, $v0, 6
    /* 1396DC 0023875C 300025D8 */  lqc2       $vf5, 0x30($at)
    /* 1396E0 00238760 21104E00 */  addu       $v0, $v0, $t6
    /* 1396E4 00238764 000046D8 */  lqc2       $vf6, 0x0($v0)
    /* 1396E8 00238768 9B10E14B */  vmulw.xyzw $vf2, $vf2, $vf1w
    /* 1396EC 0023876C 100047D8 */  lqc2       $vf7, 0x10($v0)
    /* 1396F0 00238770 DB18E14B */  vmulw.xyzw $vf3, $vf3, $vf1w
    /* 1396F4 00238774 200048D8 */  lqc2       $vf8, 0x20($v0)
    /* 1396F8 00238778 1B21E14B */  vmulw.xyzw $vf4, $vf4, $vf1w
    /* 1396FC 0023877C 300049D8 */  lqc2       $vf9, 0x30($v0)
    /* 139700 00238780 5B29E14B */  vmulw.xyzw $vf5, $vf5, $vf1w
    /* 139704 00238784 D839E14B */  vmulx.xyzw $vf7, $vf7, $vf1x
    /* 139708 00238788 584AE14B */  vmulx.xyzw $vf9, $vf9, $vf1x
    /* 13970C 0023878C 9831E14B */  vmulx.xyzw $vf6, $vf6, $vf1x
    /* 139710 00238790 1842E14B */  vmulx.xyzw $vf8, $vf8, $vf1x
    /* 139714 00238794 281EE74B */  vadd.xyzw  $vf24, $vf3, $vf7
    /* 139718 00238798 682EE94B */  vadd.xyzw  $vf25, $vf5, $vf9
    /* 13971C 0023879C E816E64B */  vadd.xyzw  $vf27, $vf2, $vf6
    /* 139720 002387A0 2827E84B */  vadd.xyzw  $vf28, $vf4, $vf8
    /* 139724 002387A4 6AC0F84B */  vmul.xyzw  $vf1, $vf24, $vf24
    /* 139728 002387A8 3D08014B */  vadday.x   ACC, $vf1, $vf1y
    /* 13972C 002387AC 4AA8014B */  vmaddz.x   $vf1, $vf21, $vf1z
    /* 139730 002387B0 BE03614A */  vrsqrt     Q, $vf0w, $vf1x
    /* 139734 002387B4 6AC8F94B */  vmul.xyzw  $vf1, $vf25, $vf25
    /* 139738 002387B8 3D08014B */  vadday.x   ACC, $vf1, $vf1y
    /* 13973C 002387BC 4AA8014B */  vmaddz.x   $vf1, $vf21, $vf1z
    /* 139740 002387C0 BF03004A */  vwaitq
    /* 139744 002387C4 1CC6C04B */  vmulq.xyz  $vf24, $vf24, Q
    /* 139748 002387C8 FF02004A */  vnop
    /* 13974C 002387CC FF02004A */  vnop
    /* 139750 002387D0 FF02004A */  vnop
    /* 139754 002387D4 BE03614A */  vrsqrt     Q, $vf0w, $vf1x
    /* 139758 002387D8 BF03004A */  vwaitq
    /* 13975C 002387DC 5CCEC04B */  vmulq.xyz  $vf25, $vf25, Q
    /* 139760 002387E0 FF02004A */  vnop
    /* 139764 002387E4 FF02004A */  vnop
    /* 139768 002387E8 FF02004A */  vnop
    /* 13976C 002387EC 09000010 */  b          .L00238814
    /* 139770 002387F0 00000000 */   nop
.align 2
  .L002387F4:
    /* 139774 002387F4 0F008130 */  andi       $at, $a0, 0xF
    /* 139778 002387F8 80090100 */  sll        $at, $at, 6
    /* 13977C 002387FC 21082E00 */  addu       $at, $at, $t6
    /* 139780 00238800 00003BD8 */  lqc2       $vf27, 0x0($at)
    /* 139784 00238804 100038D8 */  lqc2       $vf24, 0x10($at)
    /* 139788 00238808 20003CD8 */  lqc2       $vf28, 0x20($at)
    /* 13978C 0023880C 300039D8 */  lqc2       $vf25, 0x30($at)
    /* 139790 00238810 00000000 */  nop
.align 2
  .L00238814:
    /* 139794 00238814 0300A010 */  beqz       $a1, .L00238824
    /* 139798 00238818 83071B4B */   vaddw.x   $vf30, $vf0, $vf27w
    /* 13979C 0023881C 1B00E0A0 */  sb         $zero, 0x1B($a3)
    /* 1397A0 00238820 00000000 */  nop
.align 2
  .L00238824:
    /* 1397A4 00238824 83079C4A */  vaddw.y    $vf30, $vf0, $vf28w
    /* 1397A8 00238828 C706204A */  vsubw.w    $vf27, $vf0, $vf0w
    /* 1397AC 0023882C 0707204A */  vsubw.w    $vf28, $vf0, $vf0w
    /* 1397B0 00238830 00000000 */  nop
    /* 1397B4 00238834 0F00013C */  lui        $at, (0xF0000 >> 16)
    /* 1397B8 00238838 FEFF0320 */  addi       $v1, $zero, -0x2 /* handwritten instruction */
    /* 1397BC 0023883C 1E00E594 */  lhu        $a1, 0x1E($a3)
    /* 1397C0 00238840 2528A100 */  or         $a1, $a1, $at
    /* 1397C4 00238844 0000EAD8 */  lqc2       $vf10, 0x0($a3)
    /* 1397C8 00238848 AC06E04B */  vsub.xyzw  $vf26, $vf0, $vf0
    /* 1397CC 0023884C 6C07E04B */  vsub.xyzw  $vf29, $vf0, $vf0
    /* 1397D0 00238850 00000000 */  nop
.align 2
  .L00238854:
    /* 1397D4 00238854 0F000234 */  ori        $v0, $zero, 0xF
    /* 1397D8 00238858 2408A200 */  and        $at, $a1, $v0
    /* 1397DC 0023885C 21002210 */  beq        $at, $v0, .L002388E4
    /* 1397E0 00238860 03290500 */   sra       $a1, $a1, 4
    /* 1397E4 00238864 40090100 */  sll        $at, $at, 5
    /* 1397E8 00238868 21083100 */  addu       $at, $at, $s1
    /* 1397EC 0023886C 100022D8 */  lqc2       $vf2, 0x10($at)
    /* 1397F0 00238870 000021D8 */  lqc2       $vf1, 0x0($at)
    /* 1397F4 00238874 BC03E24B */  vdiv       Q, $vf0w, $vf2w
    /* 1397F8 00238878 AC50C24B */  vsub.xyz   $vf2, $vf10, $vf2
    /* 1397FC 0023887C 2A11E24B */  vmul.xyzw  $vf4, $vf2, $vf2
    /* 139800 00238880 00000000 */  nop
    /* 139804 00238884 3D20044B */  vadday.x   ACC, $vf4, $vf4y
    /* 139808 00238888 0AA9044B */  vmaddz.x   $vf4, $vf21, $vf4z
    /* 13980C 0023888C DC02204A */  vmulq.w    $vf11, $vf0, Q
    /* 139810 00238890 0420244A */  vsubx.w    $vf0, $vf4, $vf4x
    /* 139814 00238894 FF02004A */  vnop
    /* 139818 00238898 FF02004A */  vnop
    /* 13981C 0023889C FF02004A */  vnop
    /* 139820 002388A0 FF02004A */  vnop
    /* 139824 002388A4 00884148 */  cfc2.ni    $at, $vi17
    /* 139828 002388A8 BD03044A */  .word      0x4A0403BD                    # vsqrt      Q, $vf4x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 13982C 002388AC 10002130 */  andi       $at, $at, 0x10
    /* 139830 002388B0 E8FF2014 */  bnez       $at, .L00238854
    /* 139834 002388B4 BF03004A */   vwaitq
    /* 139838 002388B8 DC5A204A */  vmulq.w    $vf11, $vf11, Q
    /* 13983C 002388BC 1C01204A */  vmulq.w    $vf4, $vf0, Q
    /* 139840 002388C0 C7022B4A */  vsubw.w    $vf11, $vf0, $vf11w
    /* 139844 002388C4 BC03E44B */  vdiv       Q, $vf0w, $vf4w
    /* 139848 002388C8 5B08EB4B */  vmulw.xyzw $vf1, $vf1, $vf11w
    /* 13984C 002388CC BF03004A */  vwaitq
    /* 139850 002388D0 FC11C04B */  vmulaq.xyz ACC, $vf2, Q
    /* 139854 002388D4 8BD6C04B */  vmaddw.xyz $vf26, $vf26, $vf0w
    /* 139858 002388D8 68EFE14B */  vadd.xyzw  $vf29, $vf29, $vf1
    /* 13985C 002388DC DDFF0010 */  b          .L00238854
    /* 139860 002388E0 01006320 */   addi      $v1, $v1, 0x1 /* handwritten instruction */
.align 2
  .L002388E4:
    /* 139864 002388E4 07006004 */  bltz       $v1, .L00238904
    /* 139868 002388E8 6AD0FA4B */   vmul.xyzw $vf1, $vf26, $vf26
    /* 13986C 002388EC 3D08014B */  vadday.x   ACC, $vf1, $vf1y
    /* 139870 002388F0 4AA8014B */  vmaddz.x   $vf1, $vf21, $vf1z
    /* 139874 002388F4 BE03614A */  vrsqrt     Q, $vf0w, $vf1x
    /* 139878 002388F8 BF03004A */  vwaitq
    /* 13987C 002388FC 9CD6C04B */  vmulq.xyz  $vf26, $vf26, Q
    /* 139880 00238900 00000000 */  nop
.align 2
  .L00238904:
    /* 139884 00238904 8706204A */  vsubw.w    $vf26, $vf0, $vf0w
    /* 139888 00238908 83075D4A */  vaddw.z    $vf30, $vf0, $vf29w
    /* 13988C 0023890C 4707204A */  vsubw.w    $vf29, $vf0, $vf0w
    /* 139890 00238910 2C06204A */  vsub.w     $vf24, $vf0, $vf0
    /* 139894 00238914 000A0600 */  sll        $at, $a2, 8
    /* 139898 00238918 C0110600 */  sll        $v0, $a2, 7
    /* 13989C 0023891C 80190600 */  sll        $v1, $a2, 6
    /* 1398A0 00238920 21082200 */  addu       $at, $at, $v0
    /* 1398A4 00238924 21282300 */  addu       $a1, $at, $v1
    /* 1398A8 00238928 6C06204A */  vsub.w     $vf25, $vf0, $vf0
    /* 1398AC 0023892C 21286501 */  addu       $a1, $t3, $a1
    /* 1398B0 00238930 AC06204A */  vsub.w     $vf26, $vf0, $vf0
    /* 1398B4 00238934 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* 1398B8 00238938 1000A2D8 */  lqc2       $vf2, 0x10($a1)
    /* 1398BC 0023893C 2000A3D8 */  lqc2       $vf3, 0x20($a1)
    /* 1398C0 00238940 00000000 */  nop
    /* 1398C4 00238944 5B08C14B */  vmulw.xyz  $vf1, $vf1, $vf1w
    /* 1398C8 00238948 9B10C24B */  vmulw.xyz  $vf2, $vf2, $vf2w
    /* 1398CC 0023894C DB18C34B */  vmulw.xyz  $vf3, $vf3, $vf3w
    /* 1398D0 00238950 2C01014B */  vsub.x     $vf4, $vf0, $vf1
    /* 1398D4 00238954 6C01824A */  vsub.y     $vf5, $vf0, $vf2
    /* 1398D8 00238958 AC01434A */  vsub.z     $vf6, $vf0, $vf3
    /* 1398DC 0023895C 4501014B */  vsuby.x    $vf5, $vf0, $vf1y
    /* 1398E0 00238960 8601014B */  vsubz.x    $vf6, $vf0, $vf1z
    /* 1398E4 00238964 0401824A */  vsubx.y    $vf4, $vf0, $vf2x
    /* 1398E8 00238968 8601824A */  vsubz.y    $vf6, $vf0, $vf2z
    /* 1398EC 0023896C 0401434A */  vsubx.z    $vf4, $vf0, $vf3x
    /* 1398F0 00238970 4501434A */  vsuby.z    $vf5, $vf0, $vf3y
    /* 1398F4 00238974 BC21D84B */  vmulax.xyz ACC, $vf4, $vf24x
    /* 1398F8 00238978 BD28D84B */  vmadday.xyz ACC, $vf5, $vf24y
    /* 1398FC 0023897C 4A30D84B */  vmaddz.xyz $vf1, $vf6, $vf24z
    /* 139900 00238980 BC21D94B */  vmulax.xyz ACC, $vf4, $vf25x
    /* 139904 00238984 BD28D94B */  vmadday.xyz ACC, $vf5, $vf25y
    /* 139908 00238988 8A30D94B */  vmaddz.xyz $vf2, $vf6, $vf25z
    /* 13990C 0023898C BC21DA4B */  vmulax.xyz ACC, $vf4, $vf26x
    /* 139910 00238990 BD28DA4B */  vmadday.xyz ACC, $vf5, $vf26y
    /* 139914 00238994 CA30DA4B */  vmaddz.xyz $vf3, $vf6, $vf26z
    /* 139918 00238998 0006014B */  vaddx.x    $vf24, $vf0, $vf1x
    /* 13991C 0023899C 4106014B */  vaddy.x    $vf25, $vf0, $vf1y
    /* 139920 002389A0 8206014B */  vaddz.x    $vf26, $vf0, $vf1z
    /* 139924 002389A4 0006824A */  vaddx.y    $vf24, $vf0, $vf2x
    /* 139928 002389A8 4106824A */  vaddy.y    $vf25, $vf0, $vf2y
    /* 13992C 002389AC 8206824A */  vaddz.y    $vf26, $vf0, $vf2z
    /* 139930 002389B0 0006434A */  vaddx.z    $vf24, $vf0, $vf3x
    /* 139934 002389B4 4106434A */  vaddy.z    $vf25, $vf0, $vf3y
    /* 139938 002389B8 8206434A */  vaddz.z    $vf26, $vf0, $vf3z
    /* 13993C 002389BC 1A00E190 */  lbu        $at, 0x1A($a3)
    /* 139940 002389C0 80080100 */  sll        $at, $at, 2
    /* 139944 002389C4 2108A101 */  addu       $at, $t5, $at
    /* 139948 002389C8 00002F8C */  lw         $t7, 0x0($at)
    /* 13994C 002389CC 4000B824 */  addiu      $t8, $a1, 0x40
    /* 139950 002389D0 0C00EF8D */  lw         $t7, 0xC($t7)
    /* 139954 002389D4 00011327 */  addiu      $s3, $t8, 0x100
    /* 139958 002389D8 00011927 */  addiu      $t9, $t8, 0x100
    /* 13995C 002389DC 00006586 */  lh         $a1, 0x0($s3)
    /* 139960 002389E0 00000000 */  nop
    /* 139964 002389E4 02006686 */  lh         $a2, 0x2($s3)
    /* 139968 002389E8 882F0570 */  pext5      $a1, $a1
    /* 13996C 002389EC 04006786 */  lh         $a3, 0x4($s3)
    /* 139970 002389F0 88370670 */  pext5      $a2, $a2
    /* 139974 002389F4 06006886 */  lh         $t0, 0x6($s3)
    /* 139978 002389F8 883F0770 */  pext5      $a3, $a3
    /* 13997C 002389FC 0000E1DD */  ld         $at, 0x0($t7)
    /* 139980 00238A00 88470870 */  pext5      $t0, $t0
    /* 139984 00238A04 0800E2DD */  ld         $v0, 0x8($t7)
    /* 139988 00238A08 882E0570 */  pextlb     $a1, $zero, $a1
    /* 13998C 00238A0C 1000E3DD */  ld         $v1, 0x10($t7)
    /* 139990 00238A10 88360670 */  pextlb     $a2, $zero, $a2
    /* 139994 00238A14 1800E4DD */  ld         $a0, 0x18($t7)
    /* 139998 00238A18 883E0770 */  pextlb     $a3, $zero, $a3
    /* 13999C 00238A1C 88460870 */  pextlb     $t0, $zero, $t0
    /* 1399A0 00238A20 882D0570 */  pextlh     $a1, $zero, $a1
    /* 1399A4 00238A24 88350670 */  pextlh     $a2, $zero, $a2
    /* 1399A8 00238A28 883D0770 */  pextlh     $a3, $zero, $a3
    /* 1399AC 00238A2C 88450870 */  pextlh     $t0, $zero, $t0
    /* 1399B0 00238A30 282CB270 */  padduw     $a1, $a1, $s2
    /* 1399B4 00238A34 2834D270 */  padduw     $a2, $a2, $s2
    /* 1399B8 00238A38 283CF270 */  padduw     $a3, $a3, $s2
    /* 1399BC 00238A3C 28441271 */  padduw     $t0, $t0, $s2
    /* 1399C0 00238A40 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 1399C4 00238A44 880D2070 */  pextlh     $at, $at, $zero
    /* 1399C8 00238A48 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 1399CC 00238A4C 3F0C0170 */  psraw      $at, $at, 16
    /* 1399D0 00238A50 0048A548 */  qmtc2.ni   $a1, $vf9
    /* 1399D4 00238A54 0008A148 */  qmtc2.ni   $at, $vf1
    /* 1399D8 00238A58 88154070 */  pextlh     $v0, $v0, $zero
    /* 1399DC 00238A5C 3F140270 */  psraw      $v0, $v0, 16
    /* 1399E0 00238A60 0050A648 */  qmtc2.ni   $a2, $vf10
    /* 1399E4 00238A64 0010A248 */  qmtc2.ni   $v0, $vf2
    /* 1399E8 00238A68 881D6070 */  pextlh     $v1, $v1, $zero
    /* 1399EC 00238A6C 3F1C0370 */  psraw      $v1, $v1, 16
    /* 1399F0 00238A70 0058A748 */  qmtc2.ni   $a3, $vf11
    /* 1399F4 00238A74 0018A348 */  qmtc2.ni   $v1, $vf3
    /* 1399F8 00238A78 88258070 */  pextlh     $a0, $a0, $zero
    /* 1399FC 00238A7C 3F240470 */  psraw      $a0, $a0, 16
    /* 139A00 00238A80 0060A848 */  qmtc2.ni   $t0, $vf12
    /* 139A04 00238A84 0020A448 */  qmtc2.ni   $a0, $vf4
    /* 139A08 00238A88 2000EF21 */  addi       $t7, $t7, 0x20 /* handwritten instruction */
    /* 139A0C 00238A8C 3816004A */  vcallms    0x2C0
    /* 139A10 00238A90 08007322 */  addi       $s3, $s3, 0x8 /* handwritten instruction */
    /* 139A14 00238A94 00006586 */  lh         $a1, 0x0($s3)
    /* 139A18 00238A98 00000000 */  nop
    /* 139A1C 00238A9C 02006686 */  lh         $a2, 0x2($s3)
    /* 139A20 00238AA0 882F0570 */  pext5      $a1, $a1
    /* 139A24 00238AA4 04006786 */  lh         $a3, 0x4($s3)
    /* 139A28 00238AA8 88370670 */  pext5      $a2, $a2
    /* 139A2C 00238AAC 06006886 */  lh         $t0, 0x6($s3)
    /* 139A30 00238AB0 883F0770 */  pext5      $a3, $a3
    /* 139A34 00238AB4 0000E1DD */  ld         $at, 0x0($t7)
    /* 139A38 00238AB8 88470870 */  pext5      $t0, $t0
    /* 139A3C 00238ABC 0800E2DD */  ld         $v0, 0x8($t7)
    /* 139A40 00238AC0 882E0570 */  pextlb     $a1, $zero, $a1
    /* 139A44 00238AC4 1000E3DD */  ld         $v1, 0x10($t7)
    /* 139A48 00238AC8 88360670 */  pextlb     $a2, $zero, $a2
    /* 139A4C 00238ACC 1800E4DD */  ld         $a0, 0x18($t7)
    /* 139A50 00238AD0 883E0770 */  pextlb     $a3, $zero, $a3
    /* 139A54 00238AD4 88460870 */  pextlb     $t0, $zero, $t0
    /* 139A58 00238AD8 882D0570 */  pextlh     $a1, $zero, $a1
    /* 139A5C 00238ADC 88350670 */  pextlh     $a2, $zero, $a2
    /* 139A60 00238AE0 883D0770 */  pextlh     $a3, $zero, $a3
    /* 139A64 00238AE4 88450870 */  pextlh     $t0, $zero, $t0
    /* 139A68 00238AE8 282CB270 */  padduw     $a1, $a1, $s2
    /* 139A6C 00238AEC 2834D270 */  padduw     $a2, $a2, $s2
    /* 139A70 00238AF0 283CF270 */  padduw     $a3, $a3, $s2
    /* 139A74 00238AF4 28441271 */  padduw     $t0, $t0, $s2
    /* 139A78 00238AF8 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 139A7C 00238AFC 880D2070 */  pextlh     $at, $at, $zero
    /* 139A80 00238B00 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 139A84 00238B04 3F0C0170 */  psraw      $at, $at, 16
    /* 139A88 00238B08 0068A548 */  qmtc2.ni   $a1, $vf13
    /* 139A8C 00238B0C 0028A148 */  qmtc2.ni   $at, $vf5
    /* 139A90 00238B10 88154070 */  pextlh     $v0, $v0, $zero
    /* 139A94 00238B14 3F140270 */  psraw      $v0, $v0, 16
    /* 139A98 00238B18 0070A648 */  qmtc2.ni   $a2, $vf14
    /* 139A9C 00238B1C 0030A248 */  qmtc2.ni   $v0, $vf6
    /* 139AA0 00238B20 881D6070 */  pextlh     $v1, $v1, $zero
    /* 139AA4 00238B24 3F1C0370 */  psraw      $v1, $v1, 16
    /* 139AA8 00238B28 0078A748 */  qmtc2.ni   $a3, $vf15
    /* 139AAC 00238B2C 0038A348 */  qmtc2.ni   $v1, $vf7
    /* 139AB0 00238B30 88258070 */  pextlh     $a0, $a0, $zero
    /* 139AB4 00238B34 3F240470 */  psraw      $a0, $a0, 16
    /* 139AB8 00238B38 0080A848 */  qmtc2.ni   $t0, $vf16
    /* 139ABC 00238B3C 0040A448 */  qmtc2.ni   $a0, $vf8
    /* 139AC0 00238B40 2000EF21 */  addi       $t7, $t7, 0x20 /* handwritten instruction */
.align 2
  .L00238B44:
    /* 139AC4 00238B44 3821004A */  vcallms    0x420
    /* 139AC8 00238B48 08007322 */  addi       $s3, $s3, 0x8 /* handwritten instruction */
    /* 139ACC 00238B4C 00082148 */  qmfc2.ni   $at, $vf1
    /* 139AD0 00238B50 10001823 */  addi       $t8, $t8, 0x10 /* handwritten instruction */
    /* 139AD4 00238B54 C80D0170 */  ppach      $at, $zero, $at
    /* 139AD8 00238B58 00102248 */  qmfc2.ni   $v0, $vf2
    /* 139ADC 00238B5C C80E0170 */  ppacb      $at, $zero, $at
    /* 139AE0 00238B60 00182348 */  qmfc2.ni   $v1, $vf3
    /* 139AE4 00238B64 C8150270 */  ppach      $v0, $zero, $v0
    /* 139AE8 00238B68 00202448 */  qmfc2.ni   $a0, $vf4
    /* 139AEC 00238B6C C8160270 */  ppacb      $v0, $zero, $v0
    /* 139AF0 00238B70 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 139AF4 00238B74 C81D0370 */  ppach      $v1, $zero, $v1
    /* 139AF8 00238B78 F0FF01AF */  sw         $at, -0x10($t8)
    /* 139AFC 00238B7C C81E0370 */  ppacb      $v1, $zero, $v1
    /* 139B00 00238B80 F4FF02AF */  sw         $v0, -0xC($t8)
    /* 139B04 00238B84 C8250470 */  ppach      $a0, $zero, $a0
    /* 139B08 00238B88 F8FF03AF */  sw         $v1, -0x8($t8)
    /* 139B0C 00238B8C C8260470 */  ppacb      $a0, $zero, $a0
    /* 139B10 00238B90 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 139B14 00238B94 71001913 */  beq        $t8, $t9, .L00238D5C
    /* 139B18 00238B98 FCFF04AF */   sw        $a0, -0x4($t8)
    /* 139B1C 00238B9C 00006586 */  lh         $a1, 0x0($s3)
    /* 139B20 00238BA0 00000000 */  nop
    /* 139B24 00238BA4 02006686 */  lh         $a2, 0x2($s3)
    /* 139B28 00238BA8 882F0570 */  pext5      $a1, $a1
    /* 139B2C 00238BAC 04006786 */  lh         $a3, 0x4($s3)
    /* 139B30 00238BB0 88370670 */  pext5      $a2, $a2
    /* 139B34 00238BB4 06006886 */  lh         $t0, 0x6($s3)
    /* 139B38 00238BB8 883F0770 */  pext5      $a3, $a3
    /* 139B3C 00238BBC 0000E1DD */  ld         $at, 0x0($t7)
    /* 139B40 00238BC0 88470870 */  pext5      $t0, $t0
    /* 139B44 00238BC4 0800E2DD */  ld         $v0, 0x8($t7)
    /* 139B48 00238BC8 882E0570 */  pextlb     $a1, $zero, $a1
    /* 139B4C 00238BCC 1000E3DD */  ld         $v1, 0x10($t7)
    /* 139B50 00238BD0 88360670 */  pextlb     $a2, $zero, $a2
    /* 139B54 00238BD4 1800E4DD */  ld         $a0, 0x18($t7)
    /* 139B58 00238BD8 883E0770 */  pextlb     $a3, $zero, $a3
    /* 139B5C 00238BDC 88460870 */  pextlb     $t0, $zero, $t0
    /* 139B60 00238BE0 882D0570 */  pextlh     $a1, $zero, $a1
    /* 139B64 00238BE4 88350670 */  pextlh     $a2, $zero, $a2
    /* 139B68 00238BE8 883D0770 */  pextlh     $a3, $zero, $a3
    /* 139B6C 00238BEC 88450870 */  pextlh     $t0, $zero, $t0
    /* 139B70 00238BF0 282CB270 */  padduw     $a1, $a1, $s2
    /* 139B74 00238BF4 2834D270 */  padduw     $a2, $a2, $s2
    /* 139B78 00238BF8 283CF270 */  padduw     $a3, $a3, $s2
    /* 139B7C 00238BFC 28441271 */  padduw     $t0, $t0, $s2
    /* 139B80 00238C00 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 139B84 00238C04 880D2070 */  pextlh     $at, $at, $zero
    /* 139B88 00238C08 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 139B8C 00238C0C 3F0C0170 */  psraw      $at, $at, 16
    /* 139B90 00238C10 0048A548 */  qmtc2.ni   $a1, $vf9
    /* 139B94 00238C14 0008A148 */  qmtc2.ni   $at, $vf1
    /* 139B98 00238C18 88154070 */  pextlh     $v0, $v0, $zero
    /* 139B9C 00238C1C 3F140270 */  psraw      $v0, $v0, 16
    /* 139BA0 00238C20 0050A648 */  qmtc2.ni   $a2, $vf10
    /* 139BA4 00238C24 0010A248 */  qmtc2.ni   $v0, $vf2
    /* 139BA8 00238C28 881D6070 */  pextlh     $v1, $v1, $zero
    /* 139BAC 00238C2C 3F1C0370 */  psraw      $v1, $v1, 16
    /* 139BB0 00238C30 0058A748 */  qmtc2.ni   $a3, $vf11
    /* 139BB4 00238C34 0018A348 */  qmtc2.ni   $v1, $vf3
    /* 139BB8 00238C38 88258070 */  pextlh     $a0, $a0, $zero
    /* 139BBC 00238C3C 3F240470 */  psraw      $a0, $a0, 16
    /* 139BC0 00238C40 0060A848 */  qmtc2.ni   $t0, $vf12
    /* 139BC4 00238C44 0020A448 */  qmtc2.ni   $a0, $vf4
    /* 139BC8 00238C48 2000EF21 */  addi       $t7, $t7, 0x20 /* handwritten instruction */
    /* 139BCC 00238C4C 3816004A */  vcallms    0x2C0
    /* 139BD0 00238C50 08007322 */  addi       $s3, $s3, 0x8 /* handwritten instruction */
    /* 139BD4 00238C54 00282148 */  qmfc2.ni   $at, $vf5
    /* 139BD8 00238C58 10001823 */  addi       $t8, $t8, 0x10 /* handwritten instruction */
    /* 139BDC 00238C5C C80D0170 */  ppach      $at, $zero, $at
    /* 139BE0 00238C60 00302248 */  qmfc2.ni   $v0, $vf6
    /* 139BE4 00238C64 C80E0170 */  ppacb      $at, $zero, $at
    /* 139BE8 00238C68 00382348 */  qmfc2.ni   $v1, $vf7
    /* 139BEC 00238C6C C8150270 */  ppach      $v0, $zero, $v0
    /* 139BF0 00238C70 00402448 */  qmfc2.ni   $a0, $vf8
    /* 139BF4 00238C74 C8160270 */  ppacb      $v0, $zero, $v0
    /* 139BF8 00238C78 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 139BFC 00238C7C C81D0370 */  ppach      $v1, $zero, $v1
    /* 139C00 00238C80 F0FF01AF */  sw         $at, -0x10($t8)
    /* 139C04 00238C84 C81E0370 */  ppacb      $v1, $zero, $v1
    /* 139C08 00238C88 F4FF02AF */  sw         $v0, -0xC($t8)
    /* 139C0C 00238C8C C8250470 */  ppach      $a0, $zero, $a0
    /* 139C10 00238C90 F8FF03AF */  sw         $v1, -0x8($t8)
    /* 139C14 00238C94 C8260470 */  ppacb      $a0, $zero, $a0
    /* 139C18 00238C98 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 139C1C 00238C9C 2F001913 */  beq        $t8, $t9, .L00238D5C
    /* 139C20 00238CA0 FCFF04AF */   sw        $a0, -0x4($t8)
    /* 139C24 00238CA4 00006586 */  lh         $a1, 0x0($s3)
    /* 139C28 00238CA8 00000000 */  nop
    /* 139C2C 00238CAC 02006686 */  lh         $a2, 0x2($s3)
    /* 139C30 00238CB0 882F0570 */  pext5      $a1, $a1
    /* 139C34 00238CB4 04006786 */  lh         $a3, 0x4($s3)
    /* 139C38 00238CB8 88370670 */  pext5      $a2, $a2
    /* 139C3C 00238CBC 06006886 */  lh         $t0, 0x6($s3)
    /* 139C40 00238CC0 883F0770 */  pext5      $a3, $a3
    /* 139C44 00238CC4 0000E1DD */  ld         $at, 0x0($t7)
    /* 139C48 00238CC8 88470870 */  pext5      $t0, $t0
    /* 139C4C 00238CCC 0800E2DD */  ld         $v0, 0x8($t7)
    /* 139C50 00238CD0 882E0570 */  pextlb     $a1, $zero, $a1
    /* 139C54 00238CD4 1000E3DD */  ld         $v1, 0x10($t7)
    /* 139C58 00238CD8 88360670 */  pextlb     $a2, $zero, $a2
    /* 139C5C 00238CDC 1800E4DD */  ld         $a0, 0x18($t7)
    /* 139C60 00238CE0 883E0770 */  pextlb     $a3, $zero, $a3
    /* 139C64 00238CE4 88460870 */  pextlb     $t0, $zero, $t0
    /* 139C68 00238CE8 882D0570 */  pextlh     $a1, $zero, $a1
    /* 139C6C 00238CEC 88350670 */  pextlh     $a2, $zero, $a2
    /* 139C70 00238CF0 883D0770 */  pextlh     $a3, $zero, $a3
    /* 139C74 00238CF4 88450870 */  pextlh     $t0, $zero, $t0
    /* 139C78 00238CF8 282CB270 */  padduw     $a1, $a1, $s2
    /* 139C7C 00238CFC 2834D270 */  padduw     $a2, $a2, $s2
    /* 139C80 00238D00 283CF270 */  padduw     $a3, $a3, $s2
    /* 139C84 00238D04 28441271 */  padduw     $t0, $t0, $s2
    /* 139C88 00238D08 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 139C8C 00238D0C 880D2070 */  pextlh     $at, $at, $zero
    /* 139C90 00238D10 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 139C94 00238D14 3F0C0170 */  psraw      $at, $at, 16
    /* 139C98 00238D18 0068A548 */  qmtc2.ni   $a1, $vf13
    /* 139C9C 00238D1C 0028A148 */  qmtc2.ni   $at, $vf5
    /* 139CA0 00238D20 88154070 */  pextlh     $v0, $v0, $zero
    /* 139CA4 00238D24 3F140270 */  psraw      $v0, $v0, 16
    /* 139CA8 00238D28 0070A648 */  qmtc2.ni   $a2, $vf14
    /* 139CAC 00238D2C 0030A248 */  qmtc2.ni   $v0, $vf6
    /* 139CB0 00238D30 881D6070 */  pextlh     $v1, $v1, $zero
    /* 139CB4 00238D34 3F1C0370 */  psraw      $v1, $v1, 16
    /* 139CB8 00238D38 0078A748 */  qmtc2.ni   $a3, $vf15
    /* 139CBC 00238D3C 0038A348 */  qmtc2.ni   $v1, $vf7
    /* 139CC0 00238D40 88258070 */  pextlh     $a0, $a0, $zero
    /* 139CC4 00238D44 3F240470 */  psraw      $a0, $a0, 16
    /* 139CC8 00238D48 0080A848 */  qmtc2.ni   $t0, $vf16
    /* 139CCC 00238D4C 0040A448 */  qmtc2.ni   $a0, $vf8
    /* 139CD0 00238D50 2000EF21 */  addi       $t7, $t7, 0x20 /* handwritten instruction */
    /* 139CD4 00238D54 7BFF0010 */  b          .L00238B44
    /* 139CD8 00238D58 00000000 */   nop
.align 2
  .L00238D5C:
    /* 139CDC 00238D5C 63FE0010 */  b          .L002386EC
    /* 139CE0 00238D60 00000000 */   nop
.align 2
  .L00238D64:
    /* 139CE4 00238D64 0070013C */  lui        $at, (0x70003FD8 >> 16)
    /* 139CE8 00238D68 F83F3EDC */  ld         $fp, (0x70003FF8 & 0xFFFF)($at)
    /* 139CEC 00238D6C F03F30DC */  ld         $s0, (0x70003FF0 & 0xFFFF)($at)
    /* 139CF0 00238D70 E83F31DC */  ld         $s1, (0x70003FE8 & 0xFFFF)($at)
    /* 139CF4 00238D74 E03F32DC */  ld         $s2, (0x70003FE0 & 0xFFFF)($at)
    /* 139CF8 00238D78 D83F33DC */  ld         $s3, (0x70003FD8 & 0xFFFF)($at)
    /* 139CFC 00238D7C 0800E003 */  jr         $ra
    /* 139D00 00238D80 00000000 */   nop
endlabel func_00238688
    /* 139D04 00238D84 00000000 */  nop
