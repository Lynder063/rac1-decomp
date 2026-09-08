.align 3
nonmatching func_001E9808, 0x1D0

glabel func_001E9808
    /* EA788 001E9808 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* EA78C 001E980C 6000BF7F */  sq         $ra, 0x60($sp)
    /* EA790 001E9810 5000B57F */  sq         $s5, 0x50($sp)
    /* EA794 001E9814 4000B47F */  sq         $s4, 0x40($sp)
    /* EA798 001E9818 3000B37F */  sq         $s3, 0x30($sp)
    /* EA79C 001E981C 2000B27F */  sq         $s2, 0x20($sp)
    /* EA7A0 001E9820 1000B17F */  sq         $s1, 0x10($sp)
    /* EA7A4 001E9824 63008004 */  bltz       $a0, .L001E99B4
    /* EA7A8 001E9828 0000B07F */   sq        $s0, 0x0($sp)
    /* EA7AC 001E982C 1600023C */  lui        $v0, %hi(D_0015EE80)
    /* EA7B0 001E9830 80EE428C */  lw         $v0, %lo(D_0015EE80)($v0)
    /* EA7B4 001E9834 08004010 */  beqz       $v0, .L001E9858
    /* EA7B8 001E9838 1300023C */   lui       $v0, %hi(D_00137C80)
    /* EA7BC 001E983C C0180400 */  sll        $v1, $a0, 3
    /* EA7C0 001E9840 807C4224 */  addiu      $v0, $v0, %lo(D_00137C80)
    /* EA7C4 001E9844 21204300 */  addu       $a0, $v0, $v1
    /* EA7C8 001E9848 2D108000 */  daddu      $v0, $a0, $zero
    /* EA7CC 001E984C 9C1A918C */  lw         $s1, 0x1A9C($a0)
    /* EA7D0 001E9850 07000010 */  b          .L001E9870
    /* EA7D4 001E9854 981A528C */   lw        $s2, 0x1A98($v0)
.align 2
  .L001E9858:
    /* EA7D8 001E9858 C0180400 */  sll        $v1, $a0, 3
    /* EA7DC 001E985C 807C4224 */  addiu      $v0, $v0, %lo(D_00137C80)
    /* EA7E0 001E9860 21204300 */  addu       $a0, $v0, $v1
    /* EA7E4 001E9864 2D108000 */  daddu      $v0, $a0, $zero
    /* EA7E8 001E9868 7C1A918C */  lw         $s1, 0x1A7C($a0)
    /* EA7EC 001E986C 781A528C */  lw         $s2, 0x1A78($v0)
.align 2
  .L001E9870:
    /* EA7F0 001E9870 1400033C */  lui        $v1, %hi(D_0013E650)
    /* EA7F4 001E9874 02000524 */  addiu      $a1, $zero, 0x2
    /* EA7F8 001E9878 2DA86000 */  daddu      $s5, $v1, $zero
    /* EA7FC 001E987C 2D200000 */  daddu      $a0, $zero, $zero
    /* EA800 001E9880 50E66324 */  addiu      $v1, $v1, %lo(D_0013E650)
    /* EA804 001E9884 1900133C */  lui        $s3, %hi(D_001941C0)
    /* EA808 001E9888 6B006290 */  lbu        $v0, 0x6B($v1)
    /* EA80C 001E988C 1300143C */  lui        $s4, %hi(func_0012F308)
    /* EA810 001E9890 1600013C */  lui        $at, %hi(D_0015EFD8)
    /* EA814 001E9894 D8EF25AC */  sw         $a1, %lo(D_0015EFD8)($at)
    /* EA818 001E9898 08004234 */  ori        $v0, $v0, 0x8
    /* EA81C 001E989C 6063040C */  jal        func_00118D80
    /* EA820 001E98A0 6B0062A0 */   sb        $v0, 0x6B($v1)
    /* EA824 001E98A4 FABB080C */  jal        func_0022EFE8
    /* EA828 001E98A8 00000000 */   nop
    /* EA82C 001E98AC 625B080C */  jal        func_00216D88
    /* EA830 001E98B0 00000000 */   nop
    /* EA834 001E98B4 30E6070C */  jal        func_001F98C0
    /* EA838 001E98B8 0C000424 */   addiu     $a0, $zero, 0xC
    /* EA83C 001E98BC 82D3070C */  jal        func_001F4E08
    /* EA840 001E98C0 2D204000 */   daddu     $a0, $v0, $zero
    /* EA844 001E98C4 01000224 */  addiu      $v0, $zero, 0x1
    /* EA848 001E98C8 2D200000 */  daddu      $a0, $zero, $zero
    /* EA84C 001E98CC 6063040C */  jal        func_00118D80
    /* EA850 001E98D0 E88982AF */   sw        $v0, -0x7618($gp)
    /* EA854 001E98D4 FABB080C */  jal        func_0022EFE8
    /* EA858 001E98D8 00000000 */   nop
    /* EA85C 001E98DC 625B080C */  jal        func_00216D88
    /* EA860 001E98E0 00000000 */   nop
    /* EA864 001E98E4 D2BB040C */  jal        func_0012EF48
    /* EA868 001E98E8 2D200000 */   daddu     $a0, $zero, $zero
    /* EA86C 001E98EC 1400033C */  lui        $v1, (0x140000 >> 16)
    /* EA870 001E98F0 03000010 */  b          .L001E9900
    /* EA874 001E98F4 2D806000 */   daddu     $s0, $v1, $zero
.align 2
  .L001E98F8:
    /* EA878 001E98F8 9A27080C */  jal        func_00209E68
    /* EA87C 001E98FC 00000000 */   nop
.align 2
  .L001E9900:
    /* EA880 001E9900 1400033C */  lui        $v1, %hi(D_0013D390)
    /* EA884 001E9904 90D36324 */  addiu      $v1, $v1, %lo(D_0013D390)
    /* EA888 001E9908 DC00628C */  lw         $v0, 0xDC($v1)
    /* EA88C 001E990C 03004228 */  slti       $v0, $v0, 0x3
    /* EA890 001E9910 F9FF4010 */  beqz       $v0, .L001E98F8
    /* EA894 001E9914 00000000 */   nop
    /* EA898 001E9918 E400628C */  lw         $v0, 0xE4($v1)
    /* EA89C 001E991C F6FF4104 */  bgez       $v0, .L001E98F8
    /* EA8A0 001E9920 C0416226 */   addiu     $v0, $s3, %lo(D_001941C0)
    /* EA8A4 001E9924 1000063C */  lui        $a2, (0x100000 >> 16)
    /* EA8A8 001E9928 1C00438C */  lw         $v1, 0x1C($v0)
    /* EA8AC 001E992C 4000073C */  lui        $a3, (0x400000 >> 16)
    /* EA8B0 001E9930 2D400000 */  daddu      $t0, $zero, $zero
    /* EA8B4 001E9934 2D282002 */  daddu      $a1, $s1, $zero
    /* EA8B8 001E9938 21386700 */  addu       $a3, $v1, $a3
    /* EA8BC 001E993C 21306600 */  addu       $a2, $v1, $a2
    /* EA8C0 001E9940 9CED080C */  jal        func_0023B670
    /* EA8C4 001E9944 2D204002 */   daddu     $a0, $s2, $zero
    /* EA8C8 001E9948 CC83040C */  jal        func_00120F30
    /* EA8CC 001E994C 2D200000 */   daddu     $a0, $zero, $zero
    /* EA8D0 001E9950 6689040C */  jal        func_00122598
    /* EA8D4 001E9954 2D200000 */   daddu     $a0, $zero, $zero
    /* EA8D8 001E9958 2D280000 */  daddu      $a1, $zero, $zero
    /* EA8DC 001E995C 1682040C */  jal        func_00120858
    /* EA8E0 001E9960 2D200000 */   daddu     $a0, $zero, $zero
    /* EA8E4 001E9964 5A8C040C */  jal        func_00123168
    /* EA8E8 001E9968 08F38426 */   addiu     $a0, $s4, %lo(func_0012F308)
    /* EA8EC 001E996C 1600053C */  lui        $a1, %hi(D_0015EF88)
    /* EA8F0 001E9970 88EFA58C */  lw         $a1, %lo(D_0015EF88)($a1)
    /* EA8F4 001E9974 01000924 */  addiu      $t1, $zero, 0x1
    /* EA8F8 001E9978 0001043C */  lui        $a0, (0x1000000 >> 16)
    /* EA8FC 001E997C 1B000624 */  addiu      $a2, $zero, 0x1B
    /* EA900 001E9980 06000724 */  addiu      $a3, $zero, 0x6
    /* EA904 001E9984 D204080C */  jal        func_00201348
    /* EA908 001E9988 06000824 */   addiu     $t0, $zero, 0x6
    /* EA90C 001E998C 1600013C */  lui        $at, %hi(D_0015EFD8)
    /* EA910 001E9990 D8EF20AC */  sw         $zero, %lo(D_0015EFD8)($at)
    /* EA914 001E9994 82D3070C */  jal        func_001F4E08
    /* EA918 001E9998 04000424 */   addiu     $a0, $zero, 0x4
    /* EA91C 001E999C 1600013C */  lui        $at, %hi(D_0015F6E8)
    /* EA920 001E99A0 E8F620AC */  sw         $zero, %lo(D_0015F6E8)($at)
    /* EA924 001E99A4 50E6A326 */  addiu      $v1, $s5, %lo(D_0013E650)
    /* EA928 001E99A8 6B006290 */  lbu        $v0, 0x6B($v1)
    /* EA92C 001E99AC 10004234 */  ori        $v0, $v0, 0x10
    /* EA930 001E99B0 6B0062A0 */  sb         $v0, 0x6B($v1)
.align 2
  .L001E99B4:
    /* EA934 001E99B4 6000BF7B */  lq         $ra, 0x60($sp)
    /* EA938 001E99B8 5000B57B */  lq         $s5, 0x50($sp)
    /* EA93C 001E99BC 4000B47B */  lq         $s4, 0x40($sp)
    /* EA940 001E99C0 3000B37B */  lq         $s3, 0x30($sp)
    /* EA944 001E99C4 2000B27B */  lq         $s2, 0x20($sp)
    /* EA948 001E99C8 1000B17B */  lq         $s1, 0x10($sp)
    /* EA94C 001E99CC 0000B07B */  lq         $s0, 0x0($sp)
    /* EA950 001E99D0 0800E003 */  jr         $ra
    /* EA954 001E99D4 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_001E9808
