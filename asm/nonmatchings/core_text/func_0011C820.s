.align 3
nonmatching func_0011C820, 0x2C0

glabel func_0011C820
    /* 1D7A0 0011C820 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* 1D7A4 0011C824 9000B5FF */  sd         $s5, 0x90($sp)
    /* 1D7A8 0011C828 5000B1FF */  sd         $s1, 0x50($sp)
    /* 1D7AC 0011C82C 2DA8C000 */  daddu      $s5, $a2, $zero
    /* 1D7B0 0011C830 B000B7FF */  sd         $s7, 0xB0($sp)
    /* 1D7B4 0011C834 2D88A000 */  daddu      $s1, $a1, $zero
    /* 1D7B8 0011C838 6000B2FF */  sd         $s2, 0x60($sp)
    /* 1D7BC 0011C83C 1500173C */  lui        $s7, %hi(D_00156980)
    /* 1D7C0 0011C840 4000B0FF */  sd         $s0, 0x40($sp)
    /* 1D7C4 0011C844 8069F226 */  addiu      $s2, $s7, %lo(D_00156980)
    /* 1D7C8 0011C848 D000BFFF */  sd         $ra, 0xD0($sp)
    /* 1D7CC 0011C84C C000BEFF */  sd         $fp, 0xC0($sp)
    /* 1D7D0 0011C850 A000B6FF */  sd         $s6, 0xA0($sp)
    /* 1D7D4 0011C854 8000B4FF */  sd         $s4, 0x80($sp)
    /* 1D7D8 0011C858 FE6D040C */  jal        func_0011B7F8
    /* 1D7DC 0011C85C 7000B3FF */   sd        $s3, 0x70($sp)
    /* 1D7E0 0011C860 2D804000 */  daddu      $s0, $v0, $zero
    /* 1D7E4 0011C864 106F040C */  jal        func_0011BC40
    /* 1D7E8 0011C868 03000424 */   addiu     $a0, $zero, 0x3
    /* 1D7EC 0011C86C 1300033C */  lui        $v1, %hi(D_0012FD94)
    /* 1D7F0 0011C870 94FD628C */  lw         $v0, %lo(D_0012FD94)($v1)
    /* 1D7F4 0011C874 05004014 */  bnez       $v0, .L0011C88C
    /* 1D7F8 0011C878 00000000 */   nop
    /* 1D7FC 0011C87C 1C6F040C */  jal        func_0011BC70
    /* 1D800 0011C880 00000000 */   nop
    /* 1D804 0011C884 8A000010 */  b          .L0011CAB0
    /* 1D808 0011C888 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0011C88C:
    /* 1D80C 0011C88C 04000012 */  beqz       $s0, .L0011C8A0
    /* 1D810 0011C890 00000000 */   nop
    /* 1D814 0011C894 0400168E */  lw         $s6, 0x4($s0)
    /* 1D818 0011C898 0500C056 */  bnel       $s6, $zero, .L0011C8B0
    /* 1D81C 0011C89C 0000038E */   lw        $v1, 0x0($s0)
.align 2
  .L0011C8A0:
    /* 1D820 0011C8A0 1C6F040C */  jal        func_0011BC70
    /* 1D824 0011C8A4 00000000 */   nop
    /* 1D828 0011C8A8 81000010 */  b          .L0011CAB0
    /* 1D82C 0011C8AC F7FF0224 */   addiu     $v0, $zero, -0x9
.align 2
  .L0011C8B0:
    /* 1D830 0011C8B0 1500023C */  lui        $v0, %hi(D_00157E80)
    /* 1D834 0011C8B4 807E4224 */  addiu      $v0, $v0, %lo(D_00157E80)
    /* 1D838 0011C8B8 01000424 */  addiu      $a0, $zero, 0x1
    /* 1D83C 0011C8BC 0C0043AE */  sw         $v1, 0xC($s2)
    /* 1D840 0011C8C0 23100202 */  subu       $v0, $s0, $v0
    /* 1D844 0011C8C4 1400A4AF */  sw         $a0, 0x14($sp)
    /* 1D848 0011C8C8 03110200 */  sra        $v0, $v0, 4
    /* 1D84C 0011C8CC 2C0042AE */  sw         $v0, 0x2C($s2)
    /* 1D850 0011C8D0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1D854 0011C8D4 140055AE */  sw         $s5, 0x14($s2)
    /* 1D858 0011C8D8 100051AE */  sw         $s1, 0x10($s2)
    /* 1D85C 0011C8DC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1D860 0011C8E0 1C63040C */  jal        func_00118C70
    /* 1D864 0011C8E4 2400A0AF */   sw        $zero, 0x24($sp)
    /* 1D868 0011C8E8 2DA04000 */  daddu      $s4, $v0, $zero
    /* 1D86C 0011C8EC 04000324 */  addiu      $v1, $zero, 0x4
    /* 1D870 0011C8F0 3000A227 */  addiu      $v0, $sp, 0x30
    /* 1D874 0011C8F4 080043AE */  sw         $v1, 0x8($s2)
    /* 1D878 0011C8F8 040042AE */  sw         $v0, 0x4($s2)
    /* 1D87C 0011C8FC 0080C232 */  andi       $v0, $s6, 0x8000
    /* 1D880 0011C900 24004010 */  beqz       $v0, .L0011C994
    /* 1D884 0011C904 8069F4AE */   sw        $s4, %lo(D_00156980)($s7)
    /* 1D888 0011C908 1300133C */  lui        $s3, %hi(D_0012FDA4)
    /* 1D88C 0011C90C 2C63040C */  jal        func_00118CB0
    /* 1D890 0011C910 A4FD648E */   lw        $a0, %lo(D_0012FDA4)($s3)
    /* 1D894 0011C914 1300073C */  lui        $a3, %hi(D_0012FD10)
    /* 1D898 0011C918 2D300000 */  daddu      $a2, $zero, $zero
    /* 1D89C 0011C91C 10FDE38C */  lw         $v1, %lo(D_0012FD10)($a3)
    /* 1D8A0 0011C920 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1D8A4 0011C924 08006214 */  bne        $v1, $v0, .L0011C948
    /* 1D8A8 0011C928 0F003032 */   andi      $s0, $s1, 0xF
    /* 1D8AC 0011C92C 8069E38E */  lw         $v1, %lo(D_00156980)($s7)
    /* 1D8B0 0011C930 15001E3C */  lui        $fp, (0x150000 >> 16)
    /* 1D8B4 0011C934 23100300 */  negu       $v0, $v1
    /* 1D8B8 0011C938 10FDE3AC */  sw         $v1, %lo(D_0012FD10)($a3)
    /* 1D8BC 0011C93C 11000010 */  b          .L0011C984
    /* 1D8C0 0011C940 8069E2AE */   sw        $v0, %lo(D_00156980)($s7)
    /* 1D8C4 0011C944 00000000 */  nop
.align 2
  .L0011C948:
    /* 1D8C8 0011C948 15001E3C */  lui        $fp, (0x150000 >> 16)
    /* 1D8CC 0011C94C 0100C624 */  addiu      $a2, $a2, 0x1
.align 2
  .L0011C950:
    /* 1D8D0 0011C950 2000C228 */  slti       $v0, $a2, 0x20
    /* 1D8D4 0011C954 0B004010 */  beqz       $v0, .L0011C984
    /* 1D8D8 0011C958 80100600 */   sll       $v0, $a2, 2
    /* 1D8DC 0011C95C 10FDE324 */  addiu      $v1, $a3, %lo(D_0012FD10)
    /* 1D8E0 0011C960 21284300 */  addu       $a1, $v0, $v1
    /* 1D8E4 0011C964 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1D8E8 0011C968 0000A28C */  lw         $v0, 0x0($a1)
    /* 1D8EC 0011C96C F8FF4414 */  bne        $v0, $a0, .L0011C950
    /* 1D8F0 0011C970 0100C624 */   addiu     $a2, $a2, 0x1
    /* 1D8F4 0011C974 0000428E */  lw         $v0, 0x0($s2)
    /* 1D8F8 0011C978 23180200 */  negu       $v1, $v0
    /* 1D8FC 0011C97C 0000A2AC */  sw         $v0, 0x0($a1)
    /* 1D900 0011C980 000043AE */  sw         $v1, 0x0($s2)
.align 2
  .L0011C984:
    /* 1D904 0011C984 2463040C */  jal        func_00118C90
    /* 1D908 0011C988 A4FD648E */   lw        $a0, %lo(D_0012FDA4)($s3)
    /* 1D90C 0011C98C 03000010 */  b          .L0011C99C
    /* 1D910 0011C990 00000000 */   nop
.align 2
  .L0011C994:
    /* 1D914 0011C994 0F003032 */  andi       $s0, $s1, 0xF
    /* 1D918 0011C998 15001E3C */  lui        $fp, %hi(D_001575C0)
.align 2
  .L0011C99C:
    /* 1D91C 0011C99C 03000016 */  bnez       $s0, .L0011C9AC
    /* 1D920 0011C9A0 02111100 */   srl       $v0, $s1, 4
    /* 1D924 0011C9A4 04000010 */  b          .L0011C9B8
    /* 1D928 0011C9A8 2D800000 */   daddu     $s0, $zero, $zero
.align 2
  .L0011C9AC:
    /* 1D92C 0011C9AC F0FF2326 */  addiu      $v1, $s1, -0x10
    /* 1D930 0011C9B0 00110200 */  sll        $v0, $v0, 4
    /* 1D934 0011C9B4 23804300 */  subu       $s0, $v0, $v1
.align 2
  .L0011C9B8:
    /* 1D938 0011C9B8 2A18B002 */  slt        $v1, $s5, $s0
    /* 1D93C 0011C9BC 0020133C */  lui        $s3, (0x20000000 >> 16)
    /* 1D940 0011C9C0 2410D302 */  and        $v0, $s6, $s3
    /* 1D944 0011C9C4 04004014 */  bnez       $v0, .L0011C9D8
    /* 1D948 0011C9C8 0B80A302 */   movn      $s0, $s5, $v1
    /* 1D94C 0011C9CC 2D28A002 */  daddu      $a1, $s5, $zero
    /* 1D950 0011C9D0 5C6B040C */  jal        func_0011AD70
    /* 1D954 0011C9D4 2D202002 */   daddu     $a0, $s1, $zero
.align 2
  .L0011C9D8:
    /* 1D958 0011C9D8 25883302 */  or         $s1, $s1, $s3
    /* 1D95C 0011C9DC 180050AE */  sw         $s0, 0x18($s2)
    /* 1D960 0011C9E0 0B00001A */  blez       $s0, .L0011CA10
    /* 1D964 0011C9E4 2D280000 */   daddu     $a1, $zero, $zero
    /* 1D968 0011C9E8 1C004626 */  addiu      $a2, $s2, 0x1C
    /* 1D96C 0011C9EC 00000000 */  nop
.align 2
  .L0011C9F0:
    /* 1D970 0011C9F0 21102502 */  addu       $v0, $s1, $a1
    /* 1D974 0011C9F4 2120C500 */  addu       $a0, $a2, $a1
    /* 1D978 0011C9F8 00004390 */  lbu        $v1, (0x20000000 & 0xFFFF)($v0)
    /* 1D97C 0011C9FC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1D980 0011CA00 2A10B000 */  slt        $v0, $a1, $s0
    /* 1D984 0011CA04 000083A0 */  sb         $v1, 0x0($a0)
    /* 1D988 0011CA08 F9FF4014 */  bnez       $v0, .L0011C9F0
    /* 1D98C 0011CA0C 00000000 */   nop
.align 2
  .L0011CA10:
    /* 1D990 0011CA10 C075D027 */  addiu      $s0, $fp, %lo(D_001575C0)
    /* 1D994 0011CA14 1600023C */  lui        $v0, %hi(D_00158080)
    /* 1D998 0011CA18 80804424 */  addiu      $a0, $v0, %lo(D_00158080)
    /* 1D99C 0011CA1C 8069E726 */  addiu      $a3, $s7, %lo(D_00156980)
    /* 1D9A0 0011CA20 0000A0AF */  sw         $zero, 0x0($sp)
    /* 1D9A4 0011CA24 03000524 */  addiu      $a1, $zero, 0x3
    /* 1D9A8 0011CA28 2D300000 */  daddu      $a2, $zero, $zero
    /* 1D9AC 0011CA2C 30000824 */  addiu      $t0, $zero, 0x30
    /* 1D9B0 0011CA30 2D480002 */  daddu      $t1, $s0, $zero
    /* 1D9B4 0011CA34 04000A24 */  addiu      $t2, $zero, 0x4
    /* 1D9B8 0011CA38 326D040C */  jal        func_0011B4C8
    /* 1D9BC 0011CA3C 2D580000 */   daddu     $t3, $zero, $zero
    /* 1D9C0 0011CA40 07004104 */  bgez       $v0, .L0011CA60
    /* 1D9C4 0011CA44 0020023C */   lui       $v0, (0x20000000 >> 16)
    /* 1D9C8 0011CA48 2063040C */  jal        func_00118C80
    /* 1D9CC 0011CA4C 2D208002 */   daddu     $a0, $s4, $zero
    /* 1D9D0 0011CA50 1C6F040C */  jal        func_0011BC70
    /* 1D9D4 0011CA54 00000000 */   nop
    /* 1D9D8 0011CA58 15000010 */  b          .L0011CAB0
    /* 1D9DC 0011CA5C F5FF0224 */   addiu     $v0, $zero, -0xB
.align 2
  .L0011CA60:
    /* 1D9E0 0011CA60 25100202 */  or         $v0, $s0, $v0
    /* 1D9E4 0011CA64 1C6F040C */  jal        func_0011BC70
    /* 1D9E8 0011CA68 0000508C */   lw        $s0, (0x20000000 & 0xFFFF)($v0)
    /* 1D9EC 0011CA6C 05000016 */  bnez       $s0, .L0011CA84
    /* 1D9F0 0011CA70 0080C232 */   andi      $v0, $s6, 0x8000
    /* 1D9F4 0011CA74 2063040C */  jal        func_00118C80
    /* 1D9F8 0011CA78 2D208002 */   daddu     $a0, $s4, $zero
    /* 1D9FC 0011CA7C 0C000010 */  b          .L0011CAB0
    /* 1DA00 0011CA80 F5FF0224 */   addiu     $v0, $zero, -0xB
.align 2
  .L0011CA84:
    /* 1DA04 0011CA84 05004010 */  beqz       $v0, .L0011CA9C
    /* 1DA08 0011CA88 00000000 */   nop
    /* 1DA0C 0011CA8C 2063040C */  jal        func_00118C80
    /* 1DA10 0011CA90 2D208002 */   daddu     $a0, $s4, $zero
    /* 1DA14 0011CA94 06000010 */  b          .L0011CAB0
    /* 1DA18 0011CA98 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0011CA9C:
    /* 1DA1C 0011CA9C 2C63040C */  jal        func_00118CB0
    /* 1DA20 0011CAA0 2D208002 */   daddu     $a0, $s4, $zero
    /* 1DA24 0011CAA4 2063040C */  jal        func_00118C80
    /* 1DA28 0011CAA8 2D208002 */   daddu     $a0, $s4, $zero
    /* 1DA2C 0011CAAC 3000A28F */  lw         $v0, 0x30($sp)
.align 2
  .L0011CAB0:
    /* 1DA30 0011CAB0 D000BFDF */  ld         $ra, 0xD0($sp)
    /* 1DA34 0011CAB4 C000BEDF */  ld         $fp, 0xC0($sp)
    /* 1DA38 0011CAB8 B000B7DF */  ld         $s7, 0xB0($sp)
    /* 1DA3C 0011CABC A000B6DF */  ld         $s6, 0xA0($sp)
    /* 1DA40 0011CAC0 9000B5DF */  ld         $s5, 0x90($sp)
    /* 1DA44 0011CAC4 8000B4DF */  ld         $s4, 0x80($sp)
    /* 1DA48 0011CAC8 7000B3DF */  ld         $s3, 0x70($sp)
    /* 1DA4C 0011CACC 6000B2DF */  ld         $s2, 0x60($sp)
    /* 1DA50 0011CAD0 5000B1DF */  ld         $s1, 0x50($sp)
    /* 1DA54 0011CAD4 4000B0DF */  ld         $s0, 0x40($sp)
    /* 1DA58 0011CAD8 0800E003 */  jr         $ra
    /* 1DA5C 0011CADC E000BD27 */   addiu     $sp, $sp, 0xE0
endlabel func_0011C820
