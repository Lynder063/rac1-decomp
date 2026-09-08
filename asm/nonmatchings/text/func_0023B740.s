.align 3
nonmatching func_0023B740, 0x400

glabel func_0023B740
    /* 13C6C0 0023B740 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 13C6C4 0023B744 03000224 */  addiu      $v0, $zero, 0x3
    /* 13C6C8 0023B748 7000B67F */  sq         $s6, 0x70($sp)
    /* 13C6CC 0023B74C 6000B57F */  sq         $s5, 0x60($sp)
    /* 13C6D0 0023B750 2DB00000 */  daddu      $s6, $zero, $zero
    /* 13C6D4 0023B754 5000B47F */  sq         $s4, 0x50($sp)
    /* 13C6D8 0023B758 2DA80000 */  daddu      $s5, $zero, $zero
    /* 13C6DC 0023B75C 4000B37F */  sq         $s3, 0x40($sp)
    /* 13C6E0 0023B760 2DA0C000 */  daddu      $s4, $a2, $zero
    /* 13C6E4 0023B764 2000B17F */  sq         $s1, 0x20($sp)
    /* 13C6E8 0023B768 1000B07F */  sq         $s0, 0x10($sp)
    /* 13C6EC 0023B76C 2D888000 */  daddu      $s1, $a0, $zero
    /* 13C6F0 0023B770 9000BF7F */  sq         $ra, 0x90($sp)
    /* 13C6F4 0023B774 2D80A000 */  daddu      $s0, $a1, $zero
    /* 13C6F8 0023B778 8000B77F */  sq         $s7, 0x80($sp)
    /* 13C6FC 0023B77C 2D200000 */  daddu      $a0, $zero, $zero
    /* 13C700 0023B780 3000B27F */  sq         $s2, 0x30($sp)
    /* 13C704 0023B784 0000928E */  lw         $s2, 0x0($s4)
    /* 13C708 0023B788 6063040C */  jal        func_00118D80
    /* 13C70C 0023B78C 14A682AF */   sw        $v0, -0x59EC($gp)
    /* 13C710 0023B790 2D984002 */  daddu      $s3, $s2, $zero
    /* 13C714 0023B794 6063040C */  jal        func_00118D80
    /* 13C718 0023B798 02000424 */   addiu     $a0, $zero, 0x2
    /* 13C71C 0023B79C 6689040C */  jal        func_00122598
    /* 13C720 0023B7A0 2D200000 */   daddu     $a0, $zero, $zero
    /* 13C724 0023B7A4 04000324 */  addiu      $v1, $zero, 0x4
    /* 13C728 0023B7A8 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C72C 0023B7AC 141323AC */  sw         $v1, %lo(D_00161314)($at)
    /* 13C730 0023B7B0 A4000010 */  b          .L0023BA44
    /* 13C734 0023B7B4 1400173C */   lui       $s7, %hi(D_0013E650)
.align 2
  .L0023B7B8:
    /* 13C738 0023B7B8 05000224 */  addiu      $v0, $zero, 0x5
    /* 13C73C 0023B7BC 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C740 0023B7C0 141322AC */  sw         $v0, %lo(D_00161314)($at)
    /* 13C744 0023B7C4 01006324 */  addiu      $v1, $v1, 0x1
    /* 13C748 0023B7C8 4262080C */  jal        func_00218908
    /* 13C74C 0023B7CC 18A683AF */   sw        $v1, -0x59E8($gp)
    /* 13C750 0023B7D0 06000224 */  addiu      $v0, $zero, 0x6
    /* 13C754 0023B7D4 1600043C */  lui        $a0, %hi(D_0015EFD8)
    /* 13C758 0023B7D8 D8EF848C */  lw         $a0, %lo(D_0015EFD8)($a0)
    /* 13C75C 0023B7DC FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 13C760 0023B7E0 33008310 */  beq        $a0, $v1, .L0023B8B0
    /* 13C764 0023B7E4 14A682AF */   sw        $v0, -0x59EC($gp)
    /* 13C768 0023B7E8 07000224 */  addiu      $v0, $zero, 0x7
    /* 13C76C 0023B7EC 02000324 */  addiu      $v1, $zero, 0x2
    /* 13C770 0023B7F0 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C774 0023B7F4 141322AC */  sw         $v0, %lo(D_00161314)($at)
    /* 13C778 0023B7F8 05008314 */  bne        $a0, $v1, .L0023B810
    /* 13C77C 0023B7FC 1400053C */   lui       $a1, %hi(D_0013CA40)
    /* 13C780 0023B800 40CAA224 */  addiu      $v0, $a1, %lo(D_0013CA40)
    /* 13C784 0023B804 A401438C */  lw         $v1, 0x1A4($v0)
    /* 13C788 0023B808 1F006014 */  bnez       $v1, .L0023B888
    /* 13C78C 0023B80C 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0023B810:
    /* 13C790 0023B810 1600023C */  lui        $v0, %hi(D_0015EFA0)
    /* 13C794 0023B814 A0EF428C */  lw         $v0, %lo(D_0015EFA0)($v0)
    /* 13C798 0023B818 0E004014 */  bnez       $v0, .L0023B854
    /* 13C79C 0023B81C 40CAA324 */   addiu     $v1, $a1, %lo(D_0013CA40)
    /* 13C7A0 0023B820 1600023C */  lui        $v0, %hi(D_0015EF20)
    /* 13C7A4 0023B824 20EF428C */  lw         $v0, %lo(D_0015EF20)($v0)
    /* 13C7A8 0023B828 0B004054 */  bnel       $v0, $zero, .L0023B858
    /* 13C7AC 0023B82C A401628C */   lw        $v0, 0x1A4($v1)
    /* 13C7B0 0023B830 1600023C */  lui        $v0, %hi(D_0015EFD8)
    /* 13C7B4 0023B834 D8EF428C */  lw         $v0, %lo(D_0015EFD8)($v0)
    /* 13C7B8 0023B838 07004054 */  bnel       $v0, $zero, .L0023B858
    /* 13C7BC 0023B83C A401628C */   lw        $v0, 0x1A4($v1)
    /* 13C7C0 0023B840 1600023C */  lui        $v0, %hi(D_0015EE84)
    /* 13C7C4 0023B844 84EE428C */  lw         $v0, %lo(D_0015EE84)($v0)
    /* 13C7C8 0023B848 0700401C */  bgtz       $v0, .L0023B868
    /* 13C7CC 0023B84C 40CAA224 */   addiu     $v0, $a1, %lo(D_0013CA40)
    /* 13C7D0 0023B850 40CAA324 */  addiu      $v1, $a1, %lo(D_0013CA40)
.align 2
  .L0023B854:
    /* 13C7D4 0023B854 A401628C */  lw         $v0, 0x1A4($v1)
.align 2
  .L0023B858:
    /* 13C7D8 0023B858 00084230 */  andi       $v0, $v0, 0x800
    /* 13C7DC 0023B85C 0A004014 */  bnez       $v0, .L0023B888
    /* 13C7E0 0023B860 01000224 */   addiu     $v0, $zero, 0x1
    /* 13C7E4 0023B864 40CAA224 */  addiu      $v0, $a1, %lo(D_0013CA40)
.align 2
  .L0023B868:
    /* 13C7E8 0023B868 00800434 */  ori        $a0, $zero, 0x8000
    /* 13C7EC 0023B86C 38270400 */  dsll       $a0, $a0, 28
    /* 13C7F0 0023B870 0F008434 */  ori        $a0, $a0, 0xF
    /* 13C7F4 0023B874 A00143DC */  ld         $v1, 0x1A0($v0)
    /* 13C7F8 0023B878 01000224 */  addiu      $v0, $zero, 0x1
    /* 13C7FC 0023B87C 24186400 */  and        $v1, $v1, $a0
    /* 13C800 0023B880 26186400 */  xor        $v1, $v1, $a0
    /* 13C804 0023B884 0B100300 */  movn       $v0, $zero, $v1
.align 2
  .L0023B888:
    /* 13C808 0023B888 06004010 */  beqz       $v0, .L0023B8A4
    /* 13C80C 0023B88C 0CA6828F */   lw        $v0, -0x59F4($gp)
    /* 13C810 0023B890 0D00043C */  lui        $a0, (0xD9048 >> 16)
    /* 13C814 0023B894 48908434 */  ori        $a0, $a0, (0xD9048 & 0xFFFF)
    /* 13C818 0023B898 01001624 */  addiu      $s6, $zero, 0x1
    /* 13C81C 0023B89C 10F8080C */  jal        func_0023E040
    /* 13C820 0023B8A0 21204400 */   addu      $a0, $v0, $a0
.align 2
  .L0023B8A4:
    /* 13C824 0023B8A4 08000224 */  addiu      $v0, $zero, 0x8
    /* 13C828 0023B8A8 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C82C 0023B8AC 141322AC */  sw         $v0, %lo(D_00161314)($at)
.align 2
  .L0023B8B0:
    /* 13C830 0023B8B0 09000224 */  addiu      $v0, $zero, 0x9
    /* 13C834 0023B8B4 2D200002 */  daddu      $a0, $s0, $zero
    /* 13C838 0023B8B8 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C83C 0023B8BC 141322AC */  sw         $v0, %lo(D_00161314)($at)
    /* 13C840 0023B8C0 4CF3080C */  jal        func_0023CD30
    /* 13C844 0023B8C4 2D28A003 */   daddu     $a1, $sp, $zero
    /* 13C848 0023B8C8 2D184000 */  daddu      $v1, $v0, $zero
    /* 13C84C 0023B8CC 0A000224 */  addiu      $v0, $zero, 0xA
    /* 13C850 0023B8D0 1500601A */  blez       $s3, .L0023B928
    /* 13C854 0023B8D4 14A682AF */   sw        $v0, -0x59EC($gp)
    /* 13C858 0023B8D8 FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* 13C85C 0023B8DC 2A104300 */  slt        $v0, $v0, $v1
    /* 13C860 0023B8E0 11004010 */  beqz       $v0, .L0023B928
    /* 13C864 0023B8E4 0000A58F */   lw        $a1, 0x0($sp)
    /* 13C868 0023B8E8 0B000224 */  addiu      $v0, $zero, 0xB
    /* 13C86C 0023B8EC 2D208002 */  daddu      $a0, $s4, $zero
    /* 13C870 0023B8F0 0100063C */  lui        $a2, (0x10000 >> 16)
    /* 13C874 0023B8F4 2D380000 */  daddu      $a3, $zero, $zero
    /* 13C878 0023B8F8 8CF3080C */  jal        func_0023CE30
    /* 13C87C 0023B8FC 14A682AF */   sw        $v0, -0x59EC($gp)
    /* 13C880 0023B900 0C000324 */  addiu      $v1, $zero, 0xC
    /* 13C884 0023B904 2D200002 */  daddu      $a0, $s0, $zero
    /* 13C888 0023B908 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C88C 0023B90C 141323AC */  sw         $v1, %lo(D_00161314)($at)
    /* 13C890 0023B910 2D284000 */  daddu      $a1, $v0, $zero
    /* 13C894 0023B914 58F3080C */  jal        func_0023CD60
    /* 13C898 0023B918 23986202 */   subu      $s3, $s3, $v0
    /* 13C89C 0023B91C 0D000324 */  addiu      $v1, $zero, 0xD
    /* 13C8A0 0023B920 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C8A4 0023B924 141323AC */  sw         $v1, %lo(D_00161314)($at)
.align 2
  .L0023B928:
    /* 13C8A8 0023B928 0E000224 */  addiu      $v0, $zero, 0xE
    /* 13C8AC 0023B92C DCEF080C */  jal        func_0023BF70
    /* 13C8B0 0023B930 14A682AF */   sw        $v0, -0x59EC($gp)
    /* 13C8B4 0023B934 0F000224 */  addiu      $v0, $zero, 0xF
    /* 13C8B8 0023B938 D0EE080C */  jal        func_0023BB40
    /* 13C8BC 0023B93C 14A682AF */   sw        $v0, -0x59EC($gp)
    /* 13C8C0 0023B940 10000224 */  addiu      $v0, $zero, 0x10
    /* 13C8C4 0023B944 2D200002 */  daddu      $a0, $s0, $zero
    /* 13C8C8 0023B948 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C8CC 0023B94C 141322AC */  sw         $v0, %lo(D_00161314)($at)
    /* 13C8D0 0023B950 6AF3080C */  jal        func_0023CDA8
    /* 13C8D4 0023B954 0400A537 */   ori       $a1, $sp, 0x4
    /* 13C8D8 0023B958 2D304000 */  daddu      $a2, $v0, $zero
    /* 13C8DC 0023B95C 11000224 */  addiu      $v0, $zero, 0x11
    /* 13C8E0 0023B960 1500C018 */  blez       $a2, .L0023B9B8
    /* 13C8E4 0023B964 14A682AF */   sw        $v0, -0x59EC($gp)
    /* 13C8E8 0023B968 0500023C */  lui        $v0, (0x50008 >> 16)
    /* 13C8EC 0023B96C 0400A58F */  lw         $a1, 0x4($sp)
    /* 13C8F0 0023B970 21100202 */  addu       $v0, $s0, $v0
    /* 13C8F4 0023B974 12000324 */  addiu      $v1, $zero, 0x12
    /* 13C8F8 0023B978 0800488C */  lw         $t0, (0x50008 & 0xFFFF)($v0)
    /* 13C8FC 0023B97C 2D202002 */  daddu      $a0, $s1, $zero
    /* 13C900 0023B980 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C904 0023B984 141323AC */  sw         $v1, %lo(D_00161314)($at)
    /* 13C908 0023B988 44AB040C */  jal        func_0012AD10
    /* 13C90C 0023B98C 2D380002 */   daddu     $a3, $s0, $zero
    /* 13C910 0023B990 13000324 */  addiu      $v1, $zero, 0x13
    /* 13C914 0023B994 2D200002 */  daddu      $a0, $s0, $zero
    /* 13C918 0023B998 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C91C 0023B99C 141323AC */  sw         $v1, %lo(D_00161314)($at)
    /* 13C920 0023B9A0 2D284000 */  daddu      $a1, $v0, $zero
    /* 13C924 0023B9A4 7CF3080C */  jal        func_0023CDF0
    /* 13C928 0023B9A8 23904202 */   subu      $s2, $s2, $v0
    /* 13C92C 0023B9AC 14000324 */  addiu      $v1, $zero, 0x14
    /* 13C930 0023B9B0 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C934 0023B9B4 141323AC */  sw         $v1, %lo(D_00161314)($at)
.align 2
  .L0023B9B8:
    /* 13C938 0023B9B8 15000224 */  addiu      $v0, $zero, 0x15
    /* 13C93C 0023B9BC DCEF080C */  jal        func_0023BF70
    /* 13C940 0023B9C0 14A682AF */   sw        $v0, -0x59EC($gp)
    /* 13C944 0023B9C4 16000224 */  addiu      $v0, $zero, 0x16
    /* 13C948 0023B9C8 1E00A016 */  bnez       $s5, .L0023BA44
    /* 13C94C 0023B9CC 14A682AF */   sw        $v0, -0x59EC($gp)
    /* 13C950 0023B9D0 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13C954 0023B9D4 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
    /* 13C958 0023B9D8 0D00043C */  lui        $a0, (0xD9168 >> 16)
    /* 13C95C 0023B9DC 68918434 */  ori        $a0, $a0, (0xD9168 & 0xFFFF)
    /* 13C960 0023B9E0 72F9080C */  jal        func_0023E5C8
    /* 13C964 0023B9E4 21204400 */   addu      $a0, $v0, $a0
    /* 13C968 0023B9E8 17004010 */  beqz       $v0, .L0023BA48
    /* 13C96C 0023B9EC 0500422A */   slti      $v0, $s2, 0x5
    /* 13C970 0023B9F0 D8EE080C */  jal        func_0023BB60
    /* 13C974 0023B9F4 00000000 */   nop
    /* 13C978 0023B9F8 12004010 */  beqz       $v0, .L0023BA44
    /* 13C97C 0023B9FC 17000224 */   addiu     $v0, $zero, 0x17
    /* 13C980 0023BA00 01000424 */  addiu      $a0, $zero, 0x1
    /* 13C984 0023BA04 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C988 0023BA08 141322AC */  sw         $v0, %lo(D_00161314)($at)
    /* 13C98C 0023BA0C 58F2080C */  jal        func_0023C960
    /* 13C990 0023BA10 01001524 */   addiu     $s5, $zero, 0x1
    /* 13C994 0023BA14 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13C998 0023BA18 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13C99C 0023BA1C 0D00043C */  lui        $a0, (0xD9100 >> 16)
    /* 13C9A0 0023BA20 18000224 */  addiu      $v0, $zero, 0x18
    /* 13C9A4 0023BA24 00918434 */  ori        $a0, $a0, (0xD9100 & 0xFFFF)
    /* 13C9A8 0023BA28 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C9AC 0023BA2C 141322AC */  sw         $v0, %lo(D_00161314)($at)
    /* 13C9B0 0023BA30 22F0080C */  jal        func_0023C088
    /* 13C9B4 0023BA34 21206400 */   addu      $a0, $v1, $a0
    /* 13C9B8 0023BA38 19000224 */  addiu      $v0, $zero, 0x19
    /* 13C9BC 0023BA3C 1600013C */  lui        $at, %hi(D_00161314)
    /* 13C9C0 0023BA40 141322AC */  sw         $v0, %lo(D_00161314)($at)
.align 2
  .L0023BA44:
    /* 13C9C4 0023BA44 0500422A */  slti       $v0, $s2, 0x5
.align 2
  .L0023BA48:
    /* 13C9C8 0023BA48 0D004014 */  bnez       $v0, .L0023BA80
    /* 13C9CC 0023BA4C 00000000 */   nop
    /* 13C9D0 0023BA50 14F8080C */  jal        func_0023E050
    /* 13C9D4 0023BA54 2D202002 */   daddu     $a0, $s1, $zero
    /* 13C9D8 0023BA58 03000324 */  addiu      $v1, $zero, 0x3
    /* 13C9DC 0023BA5C 56FF4314 */  bne        $v0, $v1, .L0023B7B8
    /* 13C9E0 0023BA60 18A6838F */   lw        $v1, -0x59E8($gp)
    /* 13C9E4 0023BA64 06000010 */  b          .L0023BA80
    /* 13C9E8 0023BA68 00000000 */   nop
    /* 13C9EC 0023BA6C 00000000 */  nop
.align 2
  .L0023BA70:
    /* 13C9F0 0023BA70 DCEF080C */  jal        func_0023BF70
    /* 13C9F4 0023BA74 00000000 */   nop
    /* 13C9F8 0023BA78 D0EE080C */  jal        func_0023BB40
    /* 13C9FC 0023BA7C 00000000 */   nop
.align 2
  .L0023BA80:
    /* 13CA00 0023BA80 36F8080C */  jal        func_0023E0D8
    /* 13CA04 0023BA84 2D202002 */   daddu     $a0, $s1, $zero
    /* 13CA08 0023BA88 F9FF4010 */  beqz       $v0, .L0023BA70
    /* 13CA0C 0023BA8C 03001024 */   addiu     $s0, $zero, 0x3
    /* 13CA10 0023BA90 05000010 */  b          .L0023BAA8
    /* 13CA14 0023BA94 00000000 */   nop
.align 2
  .L0023BA98:
    /* 13CA18 0023BA98 DCEF080C */  jal        func_0023BF70
    /* 13CA1C 0023BA9C 00000000 */   nop
    /* 13CA20 0023BAA0 D0EE080C */  jal        func_0023BB40
    /* 13CA24 0023BAA4 00000000 */   nop
.align 2
  .L0023BAA8:
    /* 13CA28 0023BAA8 6CF8080C */  jal        func_0023E1B0
    /* 13CA2C 0023BAAC 2D202002 */   daddu     $a0, $s1, $zero
    /* 13CA30 0023BAB0 05004014 */  bnez       $v0, .L0023BAC8
    /* 13CA34 0023BAB4 00000000 */   nop
    /* 13CA38 0023BAB8 14F8080C */  jal        func_0023E050
    /* 13CA3C 0023BABC 2D202002 */   daddu     $a0, $s1, $zero
    /* 13CA40 0023BAC0 F5FF5014 */  bne        $v0, $s0, .L0023BA98
    /* 13CA44 0023BAC4 00000000 */   nop
.align 2
  .L0023BAC8:
    /* 13CA48 0023BAC8 6CF2080C */  jal        func_0023C9B0
    /* 13CA4C 0023BACC 00000000 */   nop
    /* 13CA50 0023BAD0 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13CA54 0023BAD4 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
    /* 13CA58 0023BAD8 0D00043C */  lui        $a0, (0xD9100 >> 16)
    /* 13CA5C 0023BADC 00918434 */  ori        $a0, $a0, (0xD9100 & 0xFFFF)
    /* 13CA60 0023BAE0 38F0080C */  jal        func_0023C0E0
    /* 13CA64 0023BAE4 21204400 */   addu      $a0, $v0, $a0
    /* 13CA68 0023BAE8 50E6E226 */  addiu      $v0, $s7, %lo(D_0013E650)
    /* 13CA6C 0023BAEC 05000424 */  addiu      $a0, $zero, 0x5
    /* 13CA70 0023BAF0 D2B8040C */  jal        func_0012E348
    /* 13CA74 0023BAF4 5C00458C */   lw        $a1, 0x5C($v0)
    /* 13CA78 0023BAF8 70B7040C */  jal        func_0012DDC0
    /* 13CA7C 0023BAFC 00000000 */   nop
    /* 13CA80 0023BB00 2D10C002 */  daddu      $v0, $s6, $zero
    /* 13CA84 0023BB04 9000BF7B */  lq         $ra, 0x90($sp)
    /* 13CA88 0023BB08 8000B77B */  lq         $s7, 0x80($sp)
    /* 13CA8C 0023BB0C 7000B67B */  lq         $s6, 0x70($sp)
    /* 13CA90 0023BB10 6000B57B */  lq         $s5, 0x60($sp)
    /* 13CA94 0023BB14 5000B47B */  lq         $s4, 0x50($sp)
    /* 13CA98 0023BB18 4000B37B */  lq         $s3, 0x40($sp)
    /* 13CA9C 0023BB1C 3000B27B */  lq         $s2, 0x30($sp)
    /* 13CAA0 0023BB20 2000B17B */  lq         $s1, 0x20($sp)
    /* 13CAA4 0023BB24 1000B07B */  lq         $s0, 0x10($sp)
    /* 13CAA8 0023BB28 1600013C */  lui        $at, %hi(D_00161314)
    /* 13CAAC 0023BB2C 141320AC */  sw         $zero, %lo(D_00161314)($at)
    /* 13CAB0 0023BB30 1600013C */  lui        $at, %hi(D_00161318)
    /* 13CAB4 0023BB34 181320AC */  sw         $zero, %lo(D_00161318)($at)
    /* 13CAB8 0023BB38 0800E003 */  jr         $ra
    /* 13CABC 0023BB3C A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_0023B740
