/* Handwritten function */
nonmatching func_0011D6D4, 0x28C

glabel func_0011D6D4
    /* 1E654 0011D6D4 CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1E658 0011D6D8 CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1E65C 0011D6DC CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1E660 0011D6E0 CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1E664 0011D6E4 CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1E668 0011D6E8 CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1E66C 0011D6EC CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1E670 0011D6F0 CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1E674 0011D6F4 CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1E678 0011D6F8 CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1E67C 0011D6FC CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1E680 0011D700 16001A3C */  lui        $k0, %hi(D_001595C0) /* handwritten instruction */
    /* 1E684 0011D704 C0955A27 */  addiu      $k0, $k0, %lo(D_001595C0) /* handwritten instruction */
    /* 1E688 0011D708 1000417F */  sq         $at, 0x10($k0) /* handwritten instruction */
    /* 1E68C 0011D70C 2000427F */  sq         $v0, 0x20($k0) /* handwritten instruction */
    /* 1E690 0011D710 3000437F */  sq         $v1, 0x30($k0) /* handwritten instruction */
    /* 1E694 0011D714 4000447F */  sq         $a0, 0x40($k0) /* handwritten instruction */
    /* 1E698 0011D718 5000457F */  sq         $a1, 0x50($k0) /* handwritten instruction */
    /* 1E69C 0011D71C 6000467F */  sq         $a2, 0x60($k0) /* handwritten instruction */
    /* 1E6A0 0011D720 7000477F */  sq         $a3, 0x70($k0) /* handwritten instruction */
    /* 1E6A4 0011D724 8000487F */  sq         $t0, 0x80($k0) /* handwritten instruction */
    /* 1E6A8 0011D728 9000497F */  sq         $t1, 0x90($k0) /* handwritten instruction */
    /* 1E6AC 0011D72C A0004A7F */  sq         $t2, 0xA0($k0) /* handwritten instruction */
    /* 1E6B0 0011D730 B0004B7F */  sq         $t3, 0xB0($k0) /* handwritten instruction */
    /* 1E6B4 0011D734 C0004C7F */  sq         $t4, 0xC0($k0) /* handwritten instruction */
    /* 1E6B8 0011D738 D0004D7F */  sq         $t5, 0xD0($k0) /* handwritten instruction */
    /* 1E6BC 0011D73C E0004E7F */  sq         $t6, 0xE0($k0) /* handwritten instruction */
    /* 1E6C0 0011D740 F0004F7F */  sq         $t7, 0xF0($k0) /* handwritten instruction */
    /* 1E6C4 0011D744 0001507F */  sq         $s0, 0x100($k0) /* handwritten instruction */
    /* 1E6C8 0011D748 1001517F */  sq         $s1, 0x110($k0) /* handwritten instruction */
    /* 1E6CC 0011D74C 2001527F */  sq         $s2, 0x120($k0) /* handwritten instruction */
    /* 1E6D0 0011D750 3001537F */  sq         $s3, 0x130($k0) /* handwritten instruction */
    /* 1E6D4 0011D754 4001547F */  sq         $s4, 0x140($k0) /* handwritten instruction */
    /* 1E6D8 0011D758 5001557F */  sq         $s5, 0x150($k0) /* handwritten instruction */
    /* 1E6DC 0011D75C 6001567F */  sq         $s6, 0x160($k0) /* handwritten instruction */
    /* 1E6E0 0011D760 7001577F */  sq         $s7, 0x170($k0) /* handwritten instruction */
    /* 1E6E4 0011D764 8001587F */  sq         $t8, 0x180($k0) /* handwritten instruction */
    /* 1E6E8 0011D768 9001597F */  sq         $t9, 0x190($k0) /* handwritten instruction */
    /* 1E6EC 0011D76C C0015C7F */  sq         $gp, 0x1C0($k0) /* handwritten instruction */
    /* 1E6F0 0011D770 D0015D7F */  sq         $sp, 0x1D0($k0) /* handwritten instruction */
    /* 1E6F4 0011D774 E0015E7F */  sq         $fp, 0x1E0($k0) /* handwritten instruction */
    /* 1E6F8 0011D778 F0015F7F */  sq         $ra, 0x1F0($k0) /* handwritten instruction */
    /* 1E6FC 0011D77C 10100000 */  mfhi       $v0
    /* 1E700 0011D780 1600013C */  lui        $at, %hi(D_001597C0)
    /* 1E704 0011D784 C09722FC */  sd         $v0, %lo(D_001597C0)($at)
    /* 1E708 0011D788 10100070 */  mfhi1      $v0
    /* 1E70C 0011D78C 1600013C */  lui        $at, %hi(D_001597C8)
    /* 1E710 0011D790 C89722FC */  sd         $v0, %lo(D_001597C8)($at)
    /* 1E714 0011D794 12100000 */  mflo       $v0
    /* 1E718 0011D798 1600013C */  lui        $at, %hi(D_001597D0)
    /* 1E71C 0011D79C D09722FC */  sd         $v0, %lo(D_001597D0)($at)
    /* 1E720 0011D7A0 12100070 */  mflo1      $v0
    /* 1E724 0011D7A4 1600013C */  lui        $at, %hi(D_001597D8)
    /* 1E728 0011D7A8 D89722FC */  sd         $v0, %lo(D_001597D8)($at)
    /* 1E72C 0011D7AC 28100000 */  mfsa       $v0
    /* 1E730 0011D7B0 1600013C */  lui        $at, %hi(D_001597E0)
    /* 1E734 0011D7B4 E09722FC */  sd         $v0, %lo(D_001597E0)($at)
    /* 1E738 0011D7B8 00600440 */  mfc0       $a0, $12 /* handwritten instruction */
    /* 1E73C 0011D7BC 00680540 */  mfc0       $a1, $13 /* handwritten instruction */
    /* 1E740 0011D7C0 00700640 */  mfc0       $a2, $14 /* handwritten instruction */
    /* 1E744 0011D7C4 00400740 */  mfc0       $a3, $8 /* handwritten instruction */
    /* 1E748 0011D7C8 1600083C */  lui        $t0, %hi(D_001595C0)
    /* 1E74C 0011D7CC C0950825 */  addiu      $t0, $t0, %lo(D_001595C0)
    /* 1E750 0011D7D0 1600013C */  lui        $at, %hi(D_001597E8)
    /* 1E754 0011D7D4 E89726AC */  sw         $a2, %lo(D_001597E8)($at)
    /* 1E758 0011D7D8 1200013C */  lui        $at, %hi(D_0011D800)
    /* 1E75C 0011D7DC 00D82124 */  addiu      $at, $at, %lo(D_0011D800)
    /* 1E760 0011D7E0 00708140 */  mtc0       $at, $14 /* handwritten instruction */
    /* 1E764 0011D7E4 0F040000 */  sync.p
    /* 1E768 0011D7E8 00600140 */  mfc0       $at, $12 /* handwritten instruction */
    /* 1E76C 0011D7EC FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 1E770 0011D7F0 24082200 */  and        $at, $at, $v0
    /* 1E774 0011D7F4 00608140 */  mtc0       $at, $12 /* handwritten instruction */
    /* 1E778 0011D7F8 0F040000 */  sync.p
    /* 1E77C 0011D7FC 18000042 */  eret /* handwritten instruction */
.align 2
  alabel D_0011D800
    /* 1E780 0011D800 1300013C */  lui        $at, %hi(D_001300E8)
    /* 1E784 0011D804 E800218C */  lw         $at, %lo(D_001300E8)($at)
    /* 1E788 0011D808 16001D3C */  lui        $sp, %hi(D_001595C0)
    /* 1E78C 0011D80C 09F82000 */  jalr       $at
    /* 1E790 0011D810 C095BD27 */   addiu     $sp, $sp, %lo(D_001595C0)
    /* 1E794 0011D814 ACFF0324 */  addiu      $v1, $zero, -0x54
    /* 1E798 0011D818 0C000000 */  syscall    0 /* handwritten instruction */
    /* 1E79C 0011D81C 00000000 */  nop
    /* 1E7A0 0011D820 00000000 */  nop
    /* 1E7A4 0011D824 00000000 */  nop
    /* 1E7A8 0011D828 00000000 */  nop
    /* 1E7AC 0011D82C 00000000 */  nop
    /* 1E7B0 0011D830 00000000 */  nop
    /* 1E7B4 0011D834 00000000 */  nop
    /* 1E7B8 0011D838 00000000 */  nop
    /* 1E7BC 0011D83C 00000000 */  nop
    /* 1E7C0 0011D840 00600140 */  mfc0       $at, $12 /* handwritten instruction */
    /* 1E7C4 0011D844 E4FF1A24 */  addiu      $k0, $zero, -0x1C /* handwritten instruction */
    /* 1E7C8 0011D848 24083A00 */  and        $at, $at, $k0
    /* 1E7CC 0011D84C 00608140 */  mtc0       $at, $12 /* handwritten instruction */
    /* 1E7D0 0011D850 0F040000 */  sync.p
    /* 1E7D4 0011D854 1600023C */  lui        $v0, %hi(D_001597E8)
    /* 1E7D8 0011D858 E897428C */  lw         $v0, %lo(D_001597E8)($v0)
    /* 1E7DC 0011D85C 00708240 */  mtc0       $v0, $14 /* handwritten instruction */
    /* 1E7E0 0011D860 0F040000 */  sync.p
    /* 1E7E4 0011D864 1600023C */  lui        $v0, %hi(D_001597C0)
    /* 1E7E8 0011D868 C09742DC */  ld         $v0, %lo(D_001597C0)($v0)
    /* 1E7EC 0011D86C 11004000 */  mthi       $v0
    /* 1E7F0 0011D870 1600023C */  lui        $v0, %hi(D_001597C8)
    /* 1E7F4 0011D874 C89742DC */  ld         $v0, %lo(D_001597C8)($v0)
    /* 1E7F8 0011D878 11004070 */  mthi1      $v0
    /* 1E7FC 0011D87C 1600023C */  lui        $v0, %hi(D_001597D0)
    /* 1E800 0011D880 D09742DC */  ld         $v0, %lo(D_001597D0)($v0)
    /* 1E804 0011D884 13004000 */  mtlo       $v0
    /* 1E808 0011D888 1600023C */  lui        $v0, %hi(D_001597D8)
    /* 1E80C 0011D88C D89742DC */  ld         $v0, %lo(D_001597D8)($v0)
    /* 1E810 0011D890 13004070 */  mtlo1      $v0
    /* 1E814 0011D894 1600023C */  lui        $v0, %hi(D_001597E0)
    /* 1E818 0011D898 E09742DC */  ld         $v0, %lo(D_001597E0)($v0)
    /* 1E81C 0011D89C 29004000 */  mtsa       $v0
    /* 1E820 0011D8A0 0F040000 */  sync.p
    /* 1E824 0011D8A4 16001A3C */  lui        $k0, %hi(D_001595C0) /* handwritten instruction */
    /* 1E828 0011D8A8 C0955A27 */  addiu      $k0, $k0, %lo(D_001595C0) /* handwritten instruction */
    /* 1E82C 0011D8AC 1000417B */  lq         $at, 0x10($k0) /* handwritten instruction */
    /* 1E830 0011D8B0 2000427B */  lq         $v0, 0x20($k0) /* handwritten instruction */
    /* 1E834 0011D8B4 3000437B */  lq         $v1, 0x30($k0) /* handwritten instruction */
    /* 1E838 0011D8B8 4000447B */  lq         $a0, 0x40($k0) /* handwritten instruction */
    /* 1E83C 0011D8BC 5000457B */  lq         $a1, 0x50($k0) /* handwritten instruction */
    /* 1E840 0011D8C0 6000467B */  lq         $a2, 0x60($k0) /* handwritten instruction */
    /* 1E844 0011D8C4 7000477B */  lq         $a3, 0x70($k0) /* handwritten instruction */
    /* 1E848 0011D8C8 8000487B */  lq         $t0, 0x80($k0) /* handwritten instruction */
    /* 1E84C 0011D8CC 9000497B */  lq         $t1, 0x90($k0) /* handwritten instruction */
    /* 1E850 0011D8D0 A0004A7B */  lq         $t2, 0xA0($k0) /* handwritten instruction */
    /* 1E854 0011D8D4 B0004B7B */  lq         $t3, 0xB0($k0) /* handwritten instruction */
    /* 1E858 0011D8D8 C0004C7B */  lq         $t4, 0xC0($k0) /* handwritten instruction */
    /* 1E85C 0011D8DC D0004D7B */  lq         $t5, 0xD0($k0) /* handwritten instruction */
    /* 1E860 0011D8E0 E0004E7B */  lq         $t6, 0xE0($k0) /* handwritten instruction */
    /* 1E864 0011D8E4 F0004F7B */  lq         $t7, 0xF0($k0) /* handwritten instruction */
    /* 1E868 0011D8E8 0001507B */  lq         $s0, 0x100($k0) /* handwritten instruction */
    /* 1E86C 0011D8EC 1001517B */  lq         $s1, 0x110($k0) /* handwritten instruction */
    /* 1E870 0011D8F0 2001527B */  lq         $s2, 0x120($k0) /* handwritten instruction */
    /* 1E874 0011D8F4 3001537B */  lq         $s3, 0x130($k0) /* handwritten instruction */
    /* 1E878 0011D8F8 4001547B */  lq         $s4, 0x140($k0) /* handwritten instruction */
    /* 1E87C 0011D8FC 5001557B */  lq         $s5, 0x150($k0) /* handwritten instruction */
    /* 1E880 0011D900 6001567B */  lq         $s6, 0x160($k0) /* handwritten instruction */
    /* 1E884 0011D904 7001577B */  lq         $s7, 0x170($k0) /* handwritten instruction */
    /* 1E888 0011D908 8001587B */  lq         $t8, 0x180($k0) /* handwritten instruction */
    /* 1E88C 0011D90C 9001597B */  lq         $t9, 0x190($k0) /* handwritten instruction */
    /* 1E890 0011D910 C0015C7B */  lq         $gp, 0x1C0($k0) /* handwritten instruction */
    /* 1E894 0011D914 D0015D7B */  lq         $sp, 0x1D0($k0) /* handwritten instruction */
    /* 1E898 0011D918 E0015E7B */  lq         $fp, 0x1E0($k0) /* handwritten instruction */
    /* 1E89C 0011D91C F0015F7B */  lq         $ra, 0x1F0($k0) /* handwritten instruction */
    /* 1E8A0 0011D920 00601A40 */  mfc0       $k0, $12 /* handwritten instruction */
    /* 1E8A4 0011D924 13005A37 */  ori        $k0, $k0, 0x13 /* handwritten instruction */
    /* 1E8A8 0011D928 00609A40 */  mtc0       $k0, $12 /* handwritten instruction */
    /* 1E8AC 0011D92C 0F040000 */  sync.p
    /* 1E8B0 0011D930 18000042 */  eret /* handwritten instruction */
    /* 1E8B4 0011D934 00000000 */  nop
    /* 1E8B8 0011D938 00000000 */  nop
    /* 1E8BC 0011D93C 00000000 */  nop
    /* 1E8C0 0011D940 0000013C */  lui        $at, (0x0 >> 16)
    /* 1E8C4 0011D944 21082200 */  addu       $at, $at, $v0
    /* 1E8C8 0011D948 0000218C */  lw         $at, 0x0($at)
    /* 1E8CC 0011D94C 00001D3C */  lui        $sp, %hi(D_1000)
    /* 1E8D0 0011D950 09F82000 */  jalr       $at
    /* 1E8D4 0011D954 0010BD27 */   addiu     $sp, $sp, %lo(D_1000)
    /* 1E8D8 0011D958 CDFFFF03 */  break      1023, 1023
    /* 1E8DC 0011D95C CDCDCDCD */  pref       0x0D, -0x3233($t6)
endlabel func_0011D6D4
