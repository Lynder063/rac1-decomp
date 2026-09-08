/* Handwritten function */
nonmatching func_0011D6D4, 0x28C

glabel func_0011D6D4
    /* 1E654 0011D6D4 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1E658 0011D6D8 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1E65C 0011D6DC CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1E660 0011D6E0 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1E664 0011D6E4 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1E668 0011D6E8 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1E66C 0011D6EC CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1E670 0011D6F0 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1E674 0011D6F4 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1E678 0011D6F8 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1E67C 0011D6FC CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1E680 0011D700 16001A3C */  lui        $26, %hi(D_001595C0) /* handwritten instruction */
    /* 1E684 0011D704 C0955A27 */  addiu      $26, $26, %lo(D_001595C0) /* handwritten instruction */
    /* 1E688 0011D708 1000417F */  sq         $1, 0x10($26) /* handwritten instruction */
    /* 1E68C 0011D70C 2000427F */  sq         $2, 0x20($26) /* handwritten instruction */
    /* 1E690 0011D710 3000437F */  sq         $3, 0x30($26) /* handwritten instruction */
    /* 1E694 0011D714 4000447F */  sq         $4, 0x40($26) /* handwritten instruction */
    /* 1E698 0011D718 5000457F */  sq         $5, 0x50($26) /* handwritten instruction */
    /* 1E69C 0011D71C 6000467F */  sq         $6, 0x60($26) /* handwritten instruction */
    /* 1E6A0 0011D720 7000477F */  sq         $7, 0x70($26) /* handwritten instruction */
    /* 1E6A4 0011D724 8000487F */  sq         $8, 0x80($26) /* handwritten instruction */
    /* 1E6A8 0011D728 9000497F */  sq         $9, 0x90($26) /* handwritten instruction */
    /* 1E6AC 0011D72C A0004A7F */  sq         $10, 0xA0($26) /* handwritten instruction */
    /* 1E6B0 0011D730 B0004B7F */  sq         $11, 0xB0($26) /* handwritten instruction */
    /* 1E6B4 0011D734 C0004C7F */  sq         $12, 0xC0($26) /* handwritten instruction */
    /* 1E6B8 0011D738 D0004D7F */  sq         $13, 0xD0($26) /* handwritten instruction */
    /* 1E6BC 0011D73C E0004E7F */  sq         $14, 0xE0($26) /* handwritten instruction */
    /* 1E6C0 0011D740 F0004F7F */  sq         $15, 0xF0($26) /* handwritten instruction */
    /* 1E6C4 0011D744 0001507F */  sq         $16, 0x100($26) /* handwritten instruction */
    /* 1E6C8 0011D748 1001517F */  sq         $17, 0x110($26) /* handwritten instruction */
    /* 1E6CC 0011D74C 2001527F */  sq         $18, 0x120($26) /* handwritten instruction */
    /* 1E6D0 0011D750 3001537F */  sq         $19, 0x130($26) /* handwritten instruction */
    /* 1E6D4 0011D754 4001547F */  sq         $20, 0x140($26) /* handwritten instruction */
    /* 1E6D8 0011D758 5001557F */  sq         $21, 0x150($26) /* handwritten instruction */
    /* 1E6DC 0011D75C 6001567F */  sq         $22, 0x160($26) /* handwritten instruction */
    /* 1E6E0 0011D760 7001577F */  sq         $23, 0x170($26) /* handwritten instruction */
    /* 1E6E4 0011D764 8001587F */  sq         $24, 0x180($26) /* handwritten instruction */
    /* 1E6E8 0011D768 9001597F */  sq         $25, 0x190($26) /* handwritten instruction */
    /* 1E6EC 0011D76C C0015C7F */  sq         $28, 0x1C0($26) /* handwritten instruction */
    /* 1E6F0 0011D770 D0015D7F */  sq         $29, 0x1D0($26) /* handwritten instruction */
    /* 1E6F4 0011D774 E0015E7F */  sq         $30, 0x1E0($26) /* handwritten instruction */
    /* 1E6F8 0011D778 F0015F7F */  sq         $31, 0x1F0($26) /* handwritten instruction */
    /* 1E6FC 0011D77C 10100000 */  mfhi       $2
    /* 1E700 0011D780 1600013C */  lui        $1, %hi(D_001597C0)
    /* 1E704 0011D784 C09722FC */  sd         $2, %lo(D_001597C0)($1)
    /* 1E708 0011D788 10100070 */  mfhi1      $2
    /* 1E70C 0011D78C 1600013C */  lui        $1, %hi(D_001597C8)
    /* 1E710 0011D790 C89722FC */  sd         $2, %lo(D_001597C8)($1)
    /* 1E714 0011D794 12100000 */  mflo       $2
    /* 1E718 0011D798 1600013C */  lui        $1, %hi(D_001597D0)
    /* 1E71C 0011D79C D09722FC */  sd         $2, %lo(D_001597D0)($1)
    /* 1E720 0011D7A0 12100070 */  mflo1      $2
    /* 1E724 0011D7A4 1600013C */  lui        $1, %hi(D_001597D8)
    /* 1E728 0011D7A8 D89722FC */  sd         $2, %lo(D_001597D8)($1)
    /* 1E72C 0011D7AC 28100000 */  mfsa       $2
    /* 1E730 0011D7B0 1600013C */  lui        $1, %hi(D_001597E0)
    /* 1E734 0011D7B4 E09722FC */  sd         $2, %lo(D_001597E0)($1)
    /* 1E738 0011D7B8 00600440 */  mfc0       $4, $12 /* handwritten instruction */
    /* 1E73C 0011D7BC 00680540 */  mfc0       $5, $13 /* handwritten instruction */
    /* 1E740 0011D7C0 00700640 */  mfc0       $6, $14 /* handwritten instruction */
    /* 1E744 0011D7C4 00400740 */  mfc0       $7, $8 /* handwritten instruction */
    /* 1E748 0011D7C8 1600083C */  lui        $8, %hi(D_001595C0)
    /* 1E74C 0011D7CC C0950825 */  addiu      $8, $8, %lo(D_001595C0)
    /* 1E750 0011D7D0 1600013C */  lui        $1, %hi(D_001597E8)
    /* 1E754 0011D7D4 E89726AC */  sw         $6, %lo(D_001597E8)($1)
    /* 1E758 0011D7D8 1200013C */  lui        $1, %hi(D_0011D800)
    /* 1E75C 0011D7DC 00D82124 */  addiu      $1, $1, %lo(D_0011D800)
    /* 1E760 0011D7E0 00708140 */  mtc0       $1, $14 /* handwritten instruction */
    /* 1E764 0011D7E4 0F040000 */  sync.p
    /* 1E768 0011D7E8 00600140 */  mfc0       $1, $12 /* handwritten instruction */
    /* 1E76C 0011D7EC FEFF0224 */  addiu      $2, $0, -0x2
    /* 1E770 0011D7F0 24082200 */  and        $1, $1, $2
    /* 1E774 0011D7F4 00608140 */  mtc0       $1, $12 /* handwritten instruction */
    /* 1E778 0011D7F8 0F040000 */  sync.p
    /* 1E77C 0011D7FC 18000042 */  eret /* handwritten instruction */
.align 2
  alabel D_0011D800
    /* 1E780 0011D800 1300013C */  lui        $1, %hi(D_001300E8)
    /* 1E784 0011D804 E800218C */  lw         $1, %lo(D_001300E8)($1)
    /* 1E788 0011D808 16001D3C */  lui        $29, %hi(D_001595C0)
    /* 1E78C 0011D80C 09F82000 */  jalr       $1
    /* 1E790 0011D810 C095BD27 */   addiu     $29, $29, %lo(D_001595C0)
    /* 1E794 0011D814 ACFF0324 */  addiu      $3, $0, -0x54
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
    /* 1E7C0 0011D840 00600140 */  mfc0       $1, $12 /* handwritten instruction */
    /* 1E7C4 0011D844 E4FF1A24 */  addiu      $26, $0, -0x1C /* handwritten instruction */
    /* 1E7C8 0011D848 24083A00 */  and        $1, $1, $26
    /* 1E7CC 0011D84C 00608140 */  mtc0       $1, $12 /* handwritten instruction */
    /* 1E7D0 0011D850 0F040000 */  sync.p
    /* 1E7D4 0011D854 1600023C */  lui        $2, %hi(D_001597E8)
    /* 1E7D8 0011D858 E897428C */  lw         $2, %lo(D_001597E8)($2)
    /* 1E7DC 0011D85C 00708240 */  mtc0       $2, $14 /* handwritten instruction */
    /* 1E7E0 0011D860 0F040000 */  sync.p
    /* 1E7E4 0011D864 1600023C */  lui        $2, %hi(D_001597C0)
    /* 1E7E8 0011D868 C09742DC */  ld         $2, %lo(D_001597C0)($2)
    /* 1E7EC 0011D86C 11004000 */  mthi       $2
    /* 1E7F0 0011D870 1600023C */  lui        $2, %hi(D_001597C8)
    /* 1E7F4 0011D874 C89742DC */  ld         $2, %lo(D_001597C8)($2)
    /* 1E7F8 0011D878 11004070 */  mthi1      $2
    /* 1E7FC 0011D87C 1600023C */  lui        $2, %hi(D_001597D0)
    /* 1E800 0011D880 D09742DC */  ld         $2, %lo(D_001597D0)($2)
    /* 1E804 0011D884 13004000 */  mtlo       $2
    /* 1E808 0011D888 1600023C */  lui        $2, %hi(D_001597D8)
    /* 1E80C 0011D88C D89742DC */  ld         $2, %lo(D_001597D8)($2)
    /* 1E810 0011D890 13004070 */  mtlo1      $2
    /* 1E814 0011D894 1600023C */  lui        $2, %hi(D_001597E0)
    /* 1E818 0011D898 E09742DC */  ld         $2, %lo(D_001597E0)($2)
    /* 1E81C 0011D89C 29004000 */  mtsa       $2
    /* 1E820 0011D8A0 0F040000 */  sync.p
    /* 1E824 0011D8A4 16001A3C */  lui        $26, %hi(D_001595C0) /* handwritten instruction */
    /* 1E828 0011D8A8 C0955A27 */  addiu      $26, $26, %lo(D_001595C0) /* handwritten instruction */
    /* 1E82C 0011D8AC 1000417B */  lq         $1, 0x10($26) /* handwritten instruction */
    /* 1E830 0011D8B0 2000427B */  lq         $2, 0x20($26) /* handwritten instruction */
    /* 1E834 0011D8B4 3000437B */  lq         $3, 0x30($26) /* handwritten instruction */
    /* 1E838 0011D8B8 4000447B */  lq         $4, 0x40($26) /* handwritten instruction */
    /* 1E83C 0011D8BC 5000457B */  lq         $5, 0x50($26) /* handwritten instruction */
    /* 1E840 0011D8C0 6000467B */  lq         $6, 0x60($26) /* handwritten instruction */
    /* 1E844 0011D8C4 7000477B */  lq         $7, 0x70($26) /* handwritten instruction */
    /* 1E848 0011D8C8 8000487B */  lq         $8, 0x80($26) /* handwritten instruction */
    /* 1E84C 0011D8CC 9000497B */  lq         $9, 0x90($26) /* handwritten instruction */
    /* 1E850 0011D8D0 A0004A7B */  lq         $10, 0xA0($26) /* handwritten instruction */
    /* 1E854 0011D8D4 B0004B7B */  lq         $11, 0xB0($26) /* handwritten instruction */
    /* 1E858 0011D8D8 C0004C7B */  lq         $12, 0xC0($26) /* handwritten instruction */
    /* 1E85C 0011D8DC D0004D7B */  lq         $13, 0xD0($26) /* handwritten instruction */
    /* 1E860 0011D8E0 E0004E7B */  lq         $14, 0xE0($26) /* handwritten instruction */
    /* 1E864 0011D8E4 F0004F7B */  lq         $15, 0xF0($26) /* handwritten instruction */
    /* 1E868 0011D8E8 0001507B */  lq         $16, 0x100($26) /* handwritten instruction */
    /* 1E86C 0011D8EC 1001517B */  lq         $17, 0x110($26) /* handwritten instruction */
    /* 1E870 0011D8F0 2001527B */  lq         $18, 0x120($26) /* handwritten instruction */
    /* 1E874 0011D8F4 3001537B */  lq         $19, 0x130($26) /* handwritten instruction */
    /* 1E878 0011D8F8 4001547B */  lq         $20, 0x140($26) /* handwritten instruction */
    /* 1E87C 0011D8FC 5001557B */  lq         $21, 0x150($26) /* handwritten instruction */
    /* 1E880 0011D900 6001567B */  lq         $22, 0x160($26) /* handwritten instruction */
    /* 1E884 0011D904 7001577B */  lq         $23, 0x170($26) /* handwritten instruction */
    /* 1E888 0011D908 8001587B */  lq         $24, 0x180($26) /* handwritten instruction */
    /* 1E88C 0011D90C 9001597B */  lq         $25, 0x190($26) /* handwritten instruction */
    /* 1E890 0011D910 C0015C7B */  lq         $28, 0x1C0($26) /* handwritten instruction */
    /* 1E894 0011D914 D0015D7B */  lq         $29, 0x1D0($26) /* handwritten instruction */
    /* 1E898 0011D918 E0015E7B */  lq         $30, 0x1E0($26) /* handwritten instruction */
    /* 1E89C 0011D91C F0015F7B */  lq         $31, 0x1F0($26) /* handwritten instruction */
    /* 1E8A0 0011D920 00601A40 */  mfc0       $26, $12 /* handwritten instruction */
    /* 1E8A4 0011D924 13005A37 */  ori        $26, $26, 0x13 /* handwritten instruction */
    /* 1E8A8 0011D928 00609A40 */  mtc0       $26, $12 /* handwritten instruction */
    /* 1E8AC 0011D92C 0F040000 */  sync.p
    /* 1E8B0 0011D930 18000042 */  eret /* handwritten instruction */
    /* 1E8B4 0011D934 00000000 */  nop
    /* 1E8B8 0011D938 00000000 */  nop
    /* 1E8BC 0011D93C 00000000 */  nop
    /* 1E8C0 0011D940 0000013C */  lui        $1, (0x0 >> 16)
    /* 1E8C4 0011D944 21082200 */  addu       $1, $1, $2
    /* 1E8C8 0011D948 0000218C */  lw         $1, 0x0($1)
    /* 1E8CC 0011D94C 00001D3C */  lui        $29, %hi(D_1000)
    /* 1E8D0 0011D950 09F82000 */  jalr       $1
    /* 1E8D4 0011D954 0010BD27 */   addiu     $29, $29, %lo(D_1000)
    /* 1E8D8 0011D958 CDFFFF03 */  break      1023, 1023
    /* 1E8DC 0011D95C CDCDCDCD */  pref       0x0D, -0x3233($14)
endlabel func_0011D6D4
