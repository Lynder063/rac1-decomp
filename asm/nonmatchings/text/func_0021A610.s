.align 3
nonmatching func_0021A610, 0x6C4

glabel func_0021A610
    /* 11B590 0021A610 70FEBD27 */  addiu      $sp, $sp, -0x190
    /* 11B594 0021A614 47000424 */  addiu      $a0, $zero, 0x47
    /* 11B598 0021A618 3001B47F */  sq         $s4, 0x130($sp)
    /* 11B59C 0021A61C 0500053C */  lui        $a1, (0x5360B >> 16)
    /* 11B5A0 0021A620 0B36A534 */  ori        $a1, $a1, (0x5360B & 0xFFFF)
    /* 11B5A4 0021A624 2001B37F */  sq         $s3, 0x120($sp)
    /* 11B5A8 0021A628 1001B27F */  sq         $s2, 0x110($sp)
    /* 11B5AC 0021A62C 06001324 */  addiu      $s3, $zero, 0x6
    /* 11B5B0 0021A630 0001B17F */  sq         $s1, 0x100($sp)
    /* 11B5B4 0021A634 F000B07F */  sq         $s0, 0xF0($sp)
    /* 11B5B8 0021A638 8001BF7F */  sq         $ra, 0x180($sp)
    /* 11B5BC 0021A63C 2D800000 */  daddu      $s0, $zero, $zero
    /* 11B5C0 0021A640 7001BE7F */  sq         $fp, 0x170($sp)
    /* 11B5C4 0021A644 6001B77F */  sq         $s7, 0x160($sp)
    /* 11B5C8 0021A648 5001B67F */  sq         $s6, 0x150($sp)
    /* 11B5CC 0021A64C 26D3080C */  jal        func_00234C98
    /* 11B5D0 0021A650 4001B57F */   sq        $s5, 0x140($sp)
    /* 11B5D4 0021A654 3238080C */  jal        func_0020E0C8
    /* 11B5D8 0021A658 00000000 */   nop
    /* 11B5DC 0021A65C 1038080C */  jal        func_0020E040
    /* 11B5E0 0021A660 00000000 */   nop
    /* 11B5E4 0021A664 1D00023C */  lui        $v0, %hi(D_001D5F70)
    /* 11B5E8 0021A668 1A38080C */  jal        func_0020E068
    /* 11B5EC 0021A66C 705F5424 */   addiu     $s4, $v0, %lo(D_001D5F70)
    /* 11B5F0 0021A670 1D00033C */  lui        $v1, %hi(D_001CE640)
    /* 11B5F4 0021A674 1600043C */  lui        $a0, %hi(D_00160018)
    /* 11B5F8 0021A678 1800848C */  lw         $a0, %lo(D_00160018)($a0)
    /* 11B5FC 0021A67C 04000524 */  addiu      $a1, $zero, 0x4
    /* 11B600 0021A680 6038080C */  jal        func_0020E180
    /* 11B604 0021A684 40E67224 */   addiu     $s2, $v1, %lo(D_001CE640)
    /* 11B608 0021A688 0267080C */  jal        func_00219C08
    /* 11B60C 0021A68C 00000000 */   nop
    /* 11B610 0021A690 82C9070C */  jal        func_001F2608
    /* 11B614 0021A694 00000000 */   nop
    /* 11B618 0021A698 1D00023C */  lui        $v0, %hi(D_001D6120)
    /* 11B61C 0021A69C 20615124 */  addiu      $s1, $v0, %lo(D_001D6120)
.align 2
  .L0021A6A0:
    /* 11B620 0021A6A0 0000428E */  lw         $v0, 0x0($s2)
    /* 11B624 0021A6A4 0C004050 */  beql       $v0, $zero, .L0021A6D8
    /* 11B628 0021A6A8 01001026 */   addiu     $s0, $s0, 0x1
    /* 11B62C 0021A6AC 0000248E */  lw         $a0, 0x0($s1)
    /* 11B630 0021A6B0 09008050 */  beql       $a0, $zero, .L0021A6D8
    /* 11B634 0021A6B4 01001026 */   addiu     $s0, $s0, 0x1
    /* 11B638 0021A6B8 04001316 */  bne        $s0, $s3, .L0021A6CC
    /* 11B63C 0021A6BC 00000000 */   nop
    /* 11B640 0021A6C0 D800828E */  lw         $v0, 0xD8($s4)
    /* 11B644 0021A6C4 04004050 */  beql       $v0, $zero, .L0021A6D8
    /* 11B648 0021A6C8 01001026 */   addiu     $s0, $s0, 0x1
.align 2
  .L0021A6CC:
    /* 11B64C 0021A6CC 6038080C */  jal        func_0020E180
    /* 11B650 0021A6D0 01000524 */   addiu     $a1, $zero, 0x1
    /* 11B654 0021A6D4 01001026 */  addiu      $s0, $s0, 0x1
.align 2
  .L0021A6D8:
    /* 11B658 0021A6D8 04003126 */  addiu      $s1, $s1, 0x4
    /* 11B65C 0021A6DC 0E00022A */  slti       $v0, $s0, 0xE
    /* 11B660 0021A6E0 EFFF4014 */  bnez       $v0, .L0021A6A0
    /* 11B664 0021A6E4 04005226 */   addiu     $s2, $s2, 0x4
    /* 11B668 0021A6E8 1D00053C */  lui        $a1, %hi(D_001D5F70)
    /* 11B66C 0021A6EC 1D00033C */  lui        $v1, %hi(D_001D6120)
    /* 11B670 0021A6F0 705FA224 */  addiu      $v0, $a1, %lo(D_001D5F70)
    /* 11B674 0021A6F4 20617324 */  addiu      $s3, $v1, %lo(D_001D6120)
    /* 11B678 0021A6F8 0400448C */  lw         $a0, 0x4($v0)
    /* 11B67C 0021A6FC 2D900000 */  daddu      $s2, $zero, $zero
    /* 11B680 0021A700 1000B727 */  addiu      $s7, $sp, 0x10
    /* 11B684 0021A704 2000B627 */  addiu      $s6, $sp, 0x20
    /* 11B688 0021A708 44008224 */  addiu      $v0, $a0, 0x44
    /* 11B68C 0021A70C 3000B527 */  addiu      $s5, $sp, 0x30
    /* 11B690 0021A710 0A100400 */  movz       $v0, $zero, $a0
    /* 11B694 0021A714 4000B427 */  addiu      $s4, $sp, 0x40
    /* 11B698 0021A718 D000A2AF */  sw         $v0, 0xD0($sp)
    /* 11B69C 0021A71C 2D884000 */  daddu      $s1, $v0, $zero
.align 2
  .L0021A720:
    /* 11B6A0 0021A720 0000648E */  lw         $a0, 0x0($s3)
    /* 11B6A4 0021A724 50008010 */  beqz       $a0, .L0021A868
    /* 11B6A8 0021A728 80181200 */   sll       $v1, $s2, 2
    /* 11B6AC 0021A72C 1D00053C */  lui        $a1, %hi(D_001CE640)
    /* 11B6B0 0021A730 40E6A224 */  addiu      $v0, $a1, %lo(D_001CE640)
    /* 11B6B4 0021A734 21106200 */  addu       $v0, $v1, $v0
    /* 11B6B8 0021A738 0000438C */  lw         $v1, 0x0($v0)
    /* 11B6BC 0021A73C 4A006010 */  beqz       $v1, .L0021A868
    /* 11B6C0 0021A740 06000224 */   addiu     $v0, $zero, 0x6
    /* 11B6C4 0021A744 07004256 */  bnel       $s2, $v0, .L0021A764
    /* 11B6C8 0021A748 7800908C */   lw        $s0, 0x78($a0)
    /* 11B6CC 0021A74C 1D00033C */  lui        $v1, %hi(D_001D5F70)
    /* 11B6D0 0021A750 705F6224 */  addiu      $v0, $v1, %lo(D_001D5F70)
    /* 11B6D4 0021A754 D800438C */  lw         $v1, 0xD8($v0)
    /* 11B6D8 0021A758 44006050 */  beql       $v1, $zero, .L0021A86C
    /* 11B6DC 0021A75C 01005226 */   addiu     $s2, $s2, 0x1
    /* 11B6E0 0021A760 7800908C */  lw         $s0, 0x78($a0)
.align 2
  .L0021A764:
    /* 11B6E4 0021A764 0000027A */  lq         $v0, 0x0($s0)
    /* 11B6E8 0021A768 0000E27E */  sq         $v0, 0x0($s7)
    /* 11B6EC 0021A76C 10000326 */  addiu      $v1, $s0, 0x10
    /* 11B6F0 0021A770 00006278 */  lq         $v0, 0x0($v1)
    /* 11B6F4 0021A774 0000C27E */  sq         $v0, 0x0($s6)
    /* 11B6F8 0021A778 20000426 */  addiu      $a0, $s0, 0x20
    /* 11B6FC 0021A77C 00008278 */  lq         $v0, 0x0($a0)
    /* 11B700 0021A780 0000A27E */  sq         $v0, 0x0($s5)
    /* 11B704 0021A784 30000326 */  addiu      $v1, $s0, 0x30
    /* 11B708 0021A788 00006278 */  lq         $v0, 0x0($v1)
    /* 11B70C 0021A78C 0000827E */  sq         $v0, 0x0($s4)
    /* 11B710 0021A790 1000A67B */  lq         $a2, 0x10($sp)
    /* 11B714 0021A794 B000A527 */  addiu      $a1, $sp, 0xB0
    /* 11B718 0021A798 4000A27B */  lq         $v0, 0x40($sp)
    /* 11B71C 0021A79C A000A427 */  addiu      $a0, $sp, 0xA0
    /* 11B720 0021A7A0 A000A67F */  sq         $a2, 0xA0($sp)
    /* 11B724 0021A7A4 C400A727 */  addiu      $a3, $sp, 0xC4
    /* 11B728 0021A7A8 B000A27F */  sq         $v0, 0xB0($sp)
    /* 11B72C 0021A7AC C000A627 */  addiu      $a2, $sp, 0xC0
    /* 11B730 0021A7B0 C800A827 */  addiu      $t0, $sp, 0xC8
    /* 11B734 0021A7B4 64E3080C */  jal        func_00238D90
    /* 11B738 0021A7B8 CC00A927 */   addiu     $t1, $sp, 0xCC
    /* 11B73C 0021A7BC C800A28F */  lw         $v0, 0xC8($sp)
    /* 11B740 0021A7C0 CC00A38F */  lw         $v1, 0xCC($sp)
    /* 11B744 0021A7C4 01004224 */  addiu      $v0, $v0, 0x1
    /* 11B748 0021A7C8 C000A58F */  lw         $a1, 0xC0($sp)
    /* 11B74C 0021A7CC C800A2AF */  sw         $v0, 0xC8($sp)
    /* 11B750 0021A7D0 01006324 */  addiu      $v1, $v1, 0x1
    /* 11B754 0021A7D4 D000A28F */  lw         $v0, 0xD0($sp)
    /* 11B758 0021A7D8 0E004010 */  beqz       $v0, .L0021A814
    /* 11B75C 0021A7DC CC00A3AF */   sw        $v1, 0xCC($sp)
    /* 11B760 0021A7E0 0000228E */  lw         $v0, 0x0($s1)
    /* 11B764 0021A7E4 0C004010 */  beqz       $v0, .L0021A818
    /* 11B768 0021A7E8 C800A38F */   lw        $v1, 0xC8($sp)
    /* 11B76C 0021A7EC 200045AC */  sw         $a1, 0x20($v0)
    /* 11B770 0021A7F0 0000238E */  lw         $v1, 0x0($s1)
    /* 11B774 0021A7F4 C400A28F */  lw         $v0, 0xC4($sp)
    /* 11B778 0021A7F8 240062AC */  sw         $v0, 0x24($v1)
    /* 11B77C 0021A7FC C800A28F */  lw         $v0, 0xC8($sp)
    /* 11B780 0021A800 0000248E */  lw         $a0, 0x0($s1)
    /* 11B784 0021A804 180082AC */  sw         $v0, 0x18($a0)
    /* 11B788 0021A808 0000238E */  lw         $v1, 0x0($s1)
    /* 11B78C 0021A80C CC00A28F */  lw         $v0, 0xCC($sp)
    /* 11B790 0021A810 1C0062AC */  sw         $v0, 0x1C($v1)
.align 2
  .L0021A814:
    /* 11B794 0021A814 C800A38F */  lw         $v1, 0xC8($sp)
.align 2
  .L0021A818:
    /* 11B798 0021A818 2D480000 */  daddu      $t1, $zero, $zero
    /* 11B79C 0021A81C B095888F */  lw         $t0, -0x6A50($gp)
    /* 11B7A0 0021A820 500003AE */  sw         $v1, 0x50($s0)
    /* 11B7A4 0021A824 CC00A28F */  lw         $v0, 0xCC($sp)
    /* 11B7A8 0021A828 540002AE */  sw         $v0, 0x54($s0)
    /* 11B7AC 0021A82C C000A38F */  lw         $v1, 0xC0($sp)
    /* 11B7B0 0021A830 580003AE */  sw         $v1, 0x58($s0)
    /* 11B7B4 0021A834 C400A28F */  lw         $v0, 0xC4($sp)
    /* 11B7B8 0021A838 5C0002AE */  sw         $v0, 0x5C($s0)
    /* 11B7BC 0021A83C C800A68F */  lw         $a2, 0xC8($sp)
    /* 11B7C0 0021A840 CC00A78F */  lw         $a3, 0xCC($sp)
    /* 11B7C4 0021A844 C000A38F */  lw         $v1, 0xC0($sp)
    /* 11B7C8 0021A848 0100C424 */  addiu      $a0, $a2, 0x1
    /* 11B7CC 0021A84C C400A28F */  lw         $v0, 0xC4($sp)
    /* 11B7D0 0021A850 0100E524 */  addiu      $a1, $a3, 0x1
    /* 11B7D4 0021A854 2130C300 */  addu       $a2, $a2, $v1
    /* 11B7D8 0021A858 2138E200 */  addu       $a3, $a3, $v0
    /* 11B7DC 0021A85C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 11B7E0 0021A860 9005080C */  jal        func_00201640
    /* 11B7E4 0021A864 FFFFE724 */   addiu     $a3, $a3, -0x1
.align 2
  .L0021A868:
    /* 11B7E8 0021A868 01005226 */  addiu      $s2, $s2, 0x1
.align 2
  .L0021A86C:
    /* 11B7EC 0021A86C 04003126 */  addiu      $s1, $s1, 0x4
    /* 11B7F0 0021A870 0E00422A */  slti       $v0, $s2, 0xE
    /* 11B7F4 0021A874 AAFF4014 */  bnez       $v0, .L0021A720
    /* 11B7F8 0021A878 04007326 */   addiu     $s3, $s3, 0x4
    /* 11B7FC 0021A87C D400A0AF */  sw         $zero, 0xD4($sp)
.align 2
  .L0021A880:
    /* 11B800 0021A880 D400A38F */  lw         $v1, 0xD4($sp)
    /* 11B804 0021A884 2D800000 */  daddu      $s0, $zero, $zero
    /* 11B808 0021A888 01006324 */  addiu      $v1, $v1, 0x1
    /* 11B80C 0021A88C E000A3AF */  sw         $v1, 0xE0($sp)
    /* 11B810 0021A890 80101000 */  sll        $v0, $s0, 2
    /* 11B814 0021A894 00000000 */  nop
.align 2
  .L0021A898:
    /* 11B818 0021A898 01000526 */  addiu      $a1, $s0, 0x1
    /* 11B81C 0021A89C 1D00033C */  lui        $v1, %hi(D_001D6120)
    /* 11B820 0021A8A0 E400A5AF */  sw         $a1, 0xE4($sp)
    /* 11B824 0021A8A4 2D904000 */  daddu      $s2, $v0, $zero
    /* 11B828 0021A8A8 20616324 */  addiu      $v1, $v1, %lo(D_001D6120)
    /* 11B82C 0021A8AC 21104300 */  addu       $v0, $v0, $v1
    /* 11B830 0021A8B0 0000478C */  lw         $a3, 0x0($v0)
    /* 11B834 0021A8B4 D000E010 */  beqz       $a3, .L0021ABF8
    /* 11B838 0021A8B8 D000A58F */   lw        $a1, 0xD0($sp)
    /* 11B83C 0021A8BC CE00A010 */  beqz       $a1, .L0021ABF8
    /* 11B840 0021A8C0 21104502 */   addu      $v0, $s2, $a1
    /* 11B844 0021A8C4 0000448C */  lw         $a0, 0x0($v0)
    /* 11B848 0021A8C8 CC008050 */  beql       $a0, $zero, .L0021ABFC
    /* 11B84C 0021A8CC E400B08F */   lw        $s0, 0xE4($sp)
    /* 11B850 0021A8D0 1000858C */  lw         $a1, 0x10($a0)
    /* 11B854 0021A8D4 0400A230 */  andi       $v0, $a1, 0x4
    /* 11B858 0021A8D8 C8004054 */  bnel       $v0, $zero, .L0021ABFC
    /* 11B85C 0021A8DC E400B08F */   lw        $s0, 0xE4($sp)
    /* 11B860 0021A8E0 1D00033C */  lui        $v1, %hi(D_001CE640)
    /* 11B864 0021A8E4 40E66224 */  addiu      $v0, $v1, %lo(D_001CE640)
    /* 11B868 0021A8E8 21104202 */  addu       $v0, $s2, $v0
    /* 11B86C 0021A8EC 0000438C */  lw         $v1, 0x0($v0)
    /* 11B870 0021A8F0 C2006050 */  beql       $v1, $zero, .L0021ABFC
    /* 11B874 0021A8F4 E400B08F */   lw        $s0, 0xE4($sp)
    /* 11B878 0021A8F8 0400868C */  lw         $a2, 0x4($a0)
    /* 11B87C 0021A8FC BE00C010 */  beqz       $a2, .L0021ABF8
    /* 11B880 0021A900 06000224 */   addiu     $v0, $zero, 0x6
    /* 11B884 0021A904 06000216 */  bne        $s0, $v0, .L0021A920
    /* 11B888 0021A908 D400A38F */   lw        $v1, 0xD4($sp)
    /* 11B88C 0021A90C 1D00023C */  lui        $v0, %hi(D_001D5F70)
    /* 11B890 0021A910 705F4324 */  addiu      $v1, $v0, %lo(D_001D5F70)
    /* 11B894 0021A914 D800628C */  lw         $v0, 0xD8($v1)
    /* 11B898 0021A918 B7004010 */  beqz       $v0, .L0021ABF8
    /* 11B89C 0021A91C D400A38F */   lw        $v1, 0xD4($sp)
.align 2
  .L0021A920:
    /* 11B8A0 0021A920 06006014 */  bnez       $v1, .L0021A93C
    /* 11B8A4 0021A924 D400A28F */   lw        $v0, 0xD4($sp)
    /* 11B8A8 0021A928 01000326 */  addiu      $v1, $s0, 0x1
    /* 11B8AC 0021A92C 0200A230 */  andi       $v0, $a1, 0x2
    /* 11B8B0 0021A930 B1004010 */  beqz       $v0, .L0021ABF8
    /* 11B8B4 0021A934 E400A3AF */   sw        $v1, 0xE4($sp)
    /* 11B8B8 0021A938 D400A28F */  lw         $v0, 0xD4($sp)
.align 2
  .L0021A93C:
    /* 11B8BC 0021A93C 01000324 */  addiu      $v1, $zero, 0x1
    /* 11B8C0 0021A940 06004314 */  bne        $v0, $v1, .L0021A95C
    /* 11B8C4 0021A944 0100A230 */   andi      $v0, $a1, 0x1
    /* 11B8C8 0021A948 01000326 */  addiu      $v1, $s0, 0x1
    /* 11B8CC 0021A94C 0200A230 */  andi       $v0, $a1, 0x2
    /* 11B8D0 0021A950 A9004014 */  bnez       $v0, .L0021ABF8
    /* 11B8D4 0021A954 E400A3AF */   sw        $v1, 0xE4($sp)
    /* 11B8D8 0021A958 0100A230 */  andi       $v0, $a1, 0x1
.align 2
  .L0021A95C:
    /* 11B8DC 0021A95C 06004050 */  beql       $v0, $zero, .L0021A978
    /* 11B8E0 0021A960 7800E38C */   lw        $v1, 0x78($a3)
    /* 11B8E4 0021A964 01001026 */  addiu      $s0, $s0, 0x1
    /* 11B8E8 0021A968 09F8C000 */  jalr       $a2
    /* 11B8EC 0021A96C E400B0AF */   sw        $s0, 0xE4($sp)
    /* 11B8F0 0021A970 A2000010 */  b          .L0021ABFC
    /* 11B8F4 0021A974 E400B08F */   lw        $s0, 0xE4($sp)
.align 2
  .L0021A978:
    /* 11B8F8 0021A978 01001026 */  addiu      $s0, $s0, 0x1
    /* 11B8FC 0021A97C E400B0AF */  sw         $s0, 0xE4($sp)
    /* 11B900 0021A980 07001124 */  addiu      $s1, $zero, 0x7
    /* 11B904 0021A984 D400A58F */  lw         $a1, 0xD4($sp)
    /* 11B908 0021A988 5000628C */  lw         $v0, 0x50($v1)
    /* 11B90C 0021A98C 5800778C */  lw         $s7, 0x58($v1)
    /* 11B910 0021A990 5C007E8C */  lw         $fp, 0x5C($v1)
    /* 11B914 0021A994 D800A2AF */  sw         $v0, 0xD8($sp)
    /* 11B918 0021A998 5400638C */  lw         $v1, 0x54($v1)
    /* 11B91C 0021A99C DC00A3AF */  sw         $v1, 0xDC($sp)
    /* 11B920 0021A9A0 80000324 */  addiu      $v1, $zero, 0x80
    /* 11B924 0021A9A4 2A107700 */  slt        $v0, $v1, $s7
    /* 11B928 0021A9A8 0A004010 */  beqz       $v0, .L0021A9D4
    /* 11B92C 0021A9AC 2B300500 */   sltu      $a2, $zero, $a1
    /* 11B930 0021A9B0 01000324 */  addiu      $v1, $zero, 0x1
    /* 11B934 0021A9B4 01003126 */  addiu      $s1, $s1, 0x1
.align 2
  .L0021A9B8:
    /* 11B938 0021A9B8 04102302 */  sllv       $v0, $v1, $s1
    /* 11B93C 0021A9BC 2A105700 */  slt        $v0, $v0, $s7
    /* 11B940 0021A9C0 00000000 */  nop
    /* 11B944 0021A9C4 00000000 */  nop
    /* 11B948 0021A9C8 00000000 */  nop
    /* 11B94C 0021A9CC FAFF4054 */  bnel       $v0, $zero, .L0021A9B8
    /* 11B950 0021A9D0 01003126 */   addiu     $s1, $s1, 0x1
.align 2
  .L0021A9D4:
    /* 11B954 0021A9D4 80000524 */  addiu      $a1, $zero, 0x80
    /* 11B958 0021A9D8 2A10BE00 */  slt        $v0, $a1, $fp
    /* 11B95C 0021A9DC 0E004010 */  beqz       $v0, .L0021AA18
    /* 11B960 0021A9E0 07001024 */   addiu     $s0, $zero, 0x7
    /* 11B964 0021A9E4 01000324 */  addiu      $v1, $zero, 0x1
    /* 11B968 0021A9E8 01001026 */  addiu      $s0, $s0, 0x1
    /* 11B96C 0021A9EC 00000000 */  nop
.align 2
  .L0021A9F0:
    /* 11B970 0021A9F0 04100302 */  sllv       $v0, $v1, $s0
    /* 11B974 0021A9F4 2A105E00 */  slt        $v0, $v0, $fp
    /* 11B978 0021A9F8 00000000 */  nop
    /* 11B97C 0021A9FC 00000000 */  nop
    /* 11B980 0021AA00 00000000 */  nop
    /* 11B984 0021AA04 FAFF4054 */  bnel       $v0, $zero, .L0021A9F0
    /* 11B988 0021AA08 01001026 */   addiu     $s0, $s0, 0x1
    /* 11B98C 0021AA0C 03000010 */  b          .L0021AA1C
    /* 11B990 0021AA10 21103002 */   addu      $v0, $s1, $s0
    /* 11B994 0021AA14 00000000 */  nop
.align 2
  .L0021AA18:
    /* 11B998 0021AA18 21103002 */  addu       $v0, $s1, $s0
.align 2
  .L0021AA1C:
    /* 11B99C 0021AA1C 12004228 */  slti       $v0, $v0, 0x12
    /* 11B9A0 0021AA20 00000000 */  nop
    /* 11B9A4 0021AA24 00000000 */  nop
    /* 11B9A8 0021AA28 00000000 */  nop
    /* 11B9AC 0021AA2C FAFF4050 */  beql       $v0, $zero, .L0021AA18
    /* 11B9B0 0021AA30 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* 11B9B4 0021AA34 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 11B9B8 0021AA38 00608144 */  mtc1       $at, $f12
    /* 11B9BC 0021AA3C 2D280002 */  daddu      $a1, $s0, $zero
    /* 11B9C0 0021AA40 94DE070C */  jal        func_001F7A50
    /* 11B9C4 0021AA44 2D202002 */   daddu     $a0, $s1, $zero
    /* 11B9C8 0021AA48 01000224 */  addiu      $v0, $zero, 0x1
    /* 11B9CC 0021AA4C B095888F */  lw         $t0, -0x6A50($gp)
    /* 11B9D0 0021AA50 04A80202 */  sllv       $s5, $v0, $s0
    /* 11B9D4 0021AA54 04A02202 */  sllv       $s4, $v0, $s1
    /* 11B9D8 0021AA58 2D280000 */  daddu      $a1, $zero, $zero
    /* 11B9DC 0021AA5C 2D308002 */  daddu      $a2, $s4, $zero
    /* 11B9E0 0021AA60 2D38A002 */  daddu      $a3, $s5, $zero
    /* 11B9E4 0021AA64 2D480000 */  daddu      $t1, $zero, $zero
    /* 11B9E8 0021AA68 2D500000 */  daddu      $t2, $zero, $zero
    /* 11B9EC 0021AA6C F205080C */  jal        func_002017C8
    /* 11B9F0 0021AA70 2D200000 */   daddu     $a0, $zero, $zero
    /* 11B9F4 0021AA74 D000A38F */  lw         $v1, 0xD0($sp)
    /* 11B9F8 0021AA78 21104302 */  addu       $v0, $s2, $v1
    /* 11B9FC 0021AA7C 0000448C */  lw         $a0, 0x0($v0)
    /* 11BA00 0021AA80 0400828C */  lw         $v0, 0x4($a0)
    /* 11BA04 0021AA84 09F84000 */  jalr       $v0
    /* 11BA08 0021AA88 00000000 */   nop
    /* 11BA0C 0021AA8C D0DE070C */  jal        func_001F7B40
    /* 11BA10 0021AA90 2D804000 */   daddu     $s0, $v0, $zero
    /* 11BA14 0021AA94 01000232 */  andi       $v0, $s0, 0x1
    /* 11BA18 0021AA98 58004054 */  bnel       $v0, $zero, .L0021ABFC
    /* 11BA1C 0021AA9C E400B08F */   lw        $s0, 0xE4($sp)
    /* 11BA20 0021AAA0 2DB00000 */  daddu      $s6, $zero, $zero
    /* 11BA24 0021AAA4 2D908002 */  daddu      $s2, $s4, $zero
    /* 11BA28 0021AAA8 2D980000 */  daddu      $s3, $zero, $zero
    /* 11BA2C 0021AAAC 02000232 */  andi       $v0, $s0, 0x2
    /* 11BA30 0021AAB0 04004010 */  beqz       $v0, .L0021AAC4
    /* 11BA34 0021AAB4 2D88A002 */   daddu     $s1, $s5, $zero
    /* 11BA38 0021AAB8 2D90E002 */  daddu      $s2, $s7, $zero
    /* 11BA3C 0021AABC 36000010 */  b          .L0021AB98
    /* 11BA40 0021AAC0 2D88C003 */   daddu     $s1, $fp, $zero
.align 2
  .L0021AAC4:
    /* 11BA44 0021AAC4 08000232 */  andi       $v0, $s0, 0x8
    /* 11BA48 0021AAC8 14004010 */  beqz       $v0, .L0021AB1C
    /* 11BA4C 0021AACC 23105702 */   subu      $v0, $s2, $s7
    /* 11BA50 0021AAD0 23183E02 */  subu       $v1, $s1, $fp
    /* 11BA54 0021AAD4 C2270200 */  srl        $a0, $v0, 31
    /* 11BA58 0021AAD8 C22F0300 */  srl        $a1, $v1, 31
    /* 11BA5C 0021AADC 21104400 */  addu       $v0, $v0, $a0
    /* 11BA60 0021AAE0 21186500 */  addu       $v1, $v1, $a1
    /* 11BA64 0021AAE4 43B00200 */  sra        $s6, $v0, 1
    /* 11BA68 0021AAE8 43980300 */  sra        $s3, $v1, 1
    /* 11BA6C 0021AAEC FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 11BA70 0021AAF0 23905602 */  subu       $s2, $s2, $s6
    /* 11BA74 0021AAF4 23883302 */  subu       $s1, $s1, $s3
    /* 11BA78 0021AAF8 2A20B600 */  slt        $a0, $a1, $s6
    /* 11BA7C 0021AAFC 2A28B300 */  slt        $a1, $a1, $s3
    /* 11BA80 0021AB00 2A109202 */  slt        $v0, $s4, $s2
    /* 11BA84 0021AB04 2A18B102 */  slt        $v1, $s5, $s1
    /* 11BA88 0021AB08 0B908202 */  movn       $s2, $s4, $v0
    /* 11BA8C 0021AB0C 0B88A302 */  movn       $s1, $s5, $v1
    /* 11BA90 0021AB10 0AB00400 */  movz       $s6, $zero, $a0
    /* 11BA94 0021AB14 20000010 */  b          .L0021AB98
    /* 11BA98 0021AB18 0A980500 */   movz      $s3, $zero, $a1
.align 2
  .L0021AB1C:
    /* 11BA9C 0021AB1C 04000232 */  andi       $v0, $s0, 0x4
    /* 11BAA0 0021AB20 1A004010 */  beqz       $v0, .L0021AB8C
    /* 11BAA4 0021AB24 2A10FE02 */   slt       $v0, $s7, $fp
    /* 11BAA8 0021AB28 0C004010 */  beqz       $v0, .L0021AB5C
    /* 11BAAC 0021AB2C 1820F202 */   mult      $a0, $s7, $s2
    /* 11BAB0 0021AB30 40181E00 */  sll        $v1, $fp, 1
    /* 11BAB4 0021AB34 C2171200 */  srl        $v0, $s2, 31
    /* 11BAB8 0021AB38 01006050 */  beql       $v1, $zero, .L0021AB40
    /* 11BABC 0021AB3C CD010000 */   break     0, 7
.align 2
  .L0021AB40:
    /* 11BAC0 0021AB40 21104202 */  addu       $v0, $s2, $v0
    /* 11BAC4 0021AB44 43100200 */  sra        $v0, $v0, 1
    /* 11BAC8 0021AB48 1A008300 */  div        $zero, $a0, $v1
    /* 11BACC 0021AB4C 12200000 */  mflo       $a0
    /* 11BAD0 0021AB50 23B04400 */  subu       $s6, $v0, $a0
    /* 11BAD4 0021AB54 10000010 */  b          .L0021AB98
    /* 11BAD8 0021AB58 23905602 */   subu      $s2, $s2, $s6
.align 2
  .L0021AB5C:
    /* 11BADC 0021AB5C 1820D103 */  mult       $a0, $fp, $s1
    /* 11BAE0 0021AB60 40181700 */  sll        $v1, $s7, 1
    /* 11BAE4 0021AB64 C2171100 */  srl        $v0, $s1, 31
    /* 11BAE8 0021AB68 01006050 */  beql       $v1, $zero, .L0021AB70
    /* 11BAEC 0021AB6C CD010000 */   break     0, 7
.align 2
  .L0021AB70:
    /* 11BAF0 0021AB70 21102202 */  addu       $v0, $s1, $v0
    /* 11BAF4 0021AB74 43100200 */  sra        $v0, $v0, 1
    /* 11BAF8 0021AB78 1A008300 */  div        $zero, $a0, $v1
    /* 11BAFC 0021AB7C 12200000 */  mflo       $a0
    /* 11BB00 0021AB80 23984400 */  subu       $s3, $v0, $a0
    /* 11BB04 0021AB84 04000010 */  b          .L0021AB98
    /* 11BB08 0021AB88 23883302 */   subu      $s1, $s1, $s3
.align 2
  .L0021AB8C:
    /* 11BB0C 0021AB8C 10000232 */  andi       $v0, $s0, 0x10
    /* 11BB10 0021AB90 1A004010 */  beqz       $v0, .L0021ABFC
    /* 11BB14 0021AB94 E400B08F */   lw        $s0, 0xE4($sp)
.align 2
  .L0021AB98:
    /* 11BB18 0021AB98 00800534 */  ori        $a1, $zero, 0x8000
    /* 11BB1C 0021AB9C 382E0500 */  dsll       $a1, $a1, 24
    /* 11BB20 0021ABA0 6400A534 */  ori        $a1, $a1, 0x64
    /* 11BB24 0021ABA4 26D3080C */  jal        func_00234C98
    /* 11BB28 0021ABA8 42000424 */   addiu     $a0, $zero, 0x42
    /* 11BB2C 0021ABAC 47000424 */  addiu      $a0, $zero, 0x47
    /* 11BB30 0021ABB0 26D3080C */  jal        func_00234C98
    /* 11BB34 0021ABB4 43000524 */   addiu     $a1, $zero, 0x43
    /* 11BB38 0021ABB8 1600033C */  lui        $v1, %hi(D_0015EFD0)
    /* 11BB3C 0021ABBC D0EF63DC */  ld         $v1, %lo(D_0015EFD0)($v1)
    /* 11BB40 0021ABC0 2D40C002 */  daddu      $t0, $s6, $zero
    /* 11BB44 0021ABC4 2D486002 */  daddu      $t1, $s3, $zero
    /* 11BB48 0021ABC8 80800234 */  ori        $v0, $zero, 0x8080
    /* 11BB4C 0021ABCC 38140200 */  dsll       $v0, $v0, 16
    /* 11BB50 0021ABD0 80804234 */  ori        $v0, $v0, 0x8080
    /* 11BB54 0021ABD4 D800A48F */  lw         $a0, 0xD8($sp)
    /* 11BB58 0021ABD8 2D30E002 */  daddu      $a2, $s7, $zero
    /* 11BB5C 0021ABDC DC00A58F */  lw         $a1, 0xDC($sp)
    /* 11BB60 0021ABE0 2D38C003 */  daddu      $a3, $fp, $zero
    /* 11BB64 0021ABE4 0000A2FF */  sd         $v0, 0x0($sp)
    /* 11BB68 0021ABE8 23504802 */  subu       $t2, $s2, $t0
    /* 11BB6C 0021ABEC 0800A3FF */  sd         $v1, 0x8($sp)
    /* 11BB70 0021ABF0 00D6070C */  jal        func_001F5800
    /* 11BB74 0021ABF4 23582902 */   subu      $t3, $s1, $t1
.align 2
  .L0021ABF8:
    /* 11BB78 0021ABF8 E400B08F */  lw         $s0, 0xE4($sp)
.align 2
  .L0021ABFC:
    /* 11BB7C 0021ABFC 0E00022A */  slti       $v0, $s0, 0xE
    /* 11BB80 0021AC00 25FF4014 */  bnez       $v0, .L0021A898
    /* 11BB84 0021AC04 80101000 */   sll       $v0, $s0, 2
    /* 11BB88 0021AC08 D400A28F */  lw         $v0, 0xD4($sp)
    /* 11BB8C 0021AC0C 06004014 */  bnez       $v0, .L0021AC28
    /* 11BB90 0021AC10 E000A38F */   lw        $v1, 0xE0($sp)
    /* 11BB94 0021AC14 2638080C */  jal        func_0020E098
    /* 11BB98 0021AC18 00000000 */   nop
    /* 11BB9C 0021AC1C 8038080C */  jal        func_0020E200
    /* 11BBA0 0021AC20 00000000 */   nop
    /* 11BBA4 0021AC24 E000A38F */  lw         $v1, 0xE0($sp)
.align 2
  .L0021AC28:
    /* 11BBA8 0021AC28 02006228 */  slti       $v0, $v1, 0x2
    /* 11BBAC 0021AC2C 14FF4014 */  bnez       $v0, .L0021A880
    /* 11BBB0 0021AC30 D400A3AF */   sw        $v1, 0xD4($sp)
    /* 11BBB4 0021AC34 2D200000 */  daddu      $a0, $zero, $zero
    /* 11BBB8 0021AC38 8CD1070C */  jal        func_001F4630
    /* 11BBBC 0021AC3C 2D800000 */   daddu     $s0, $zero, $zero
    /* 11BBC0 0021AC40 06001424 */  addiu      $s4, $zero, 0x6
    /* 11BBC4 0021AC44 1D00023C */  lui        $v0, %hi(D_001CE640)
    /* 11BBC8 0021AC48 1D00033C */  lui        $v1, %hi(D_001D5F70)
    /* 11BBCC 0021AC4C 1D00043C */  lui        $a0, %hi(D_001D6120)
    /* 11BBD0 0021AC50 705F7324 */  addiu      $s3, $v1, %lo(D_001D5F70)
    /* 11BBD4 0021AC54 20619224 */  addiu      $s2, $a0, %lo(D_001D6120)
    /* 11BBD8 0021AC58 40E65124 */  addiu      $s1, $v0, %lo(D_001CE640)
    /* 11BBDC 0021AC5C 00000000 */  nop
.align 2
  .L0021AC60:
    /* 11BBE0 0021AC60 0000228E */  lw         $v0, 0x0($s1)
    /* 11BBE4 0021AC64 09004050 */  beql       $v0, $zero, .L0021AC8C
    /* 11BBE8 0021AC68 01001026 */   addiu     $s0, $s0, 0x1
    /* 11BBEC 0021AC6C 04001416 */  bne        $s0, $s4, .L0021AC80
    /* 11BBF0 0021AC70 00000000 */   nop
    /* 11BBF4 0021AC74 D800628E */  lw         $v0, 0xD8($s3)
    /* 11BBF8 0021AC78 04004050 */  beql       $v0, $zero, .L0021AC8C
    /* 11BBFC 0021AC7C 01001026 */   addiu     $s0, $s0, 0x1
.align 2
  .L0021AC80:
    /* 11BC00 0021AC80 2E94080C */  jal        func_002250B8
    /* 11BC04 0021AC84 0000448E */   lw        $a0, 0x0($s2)
    /* 11BC08 0021AC88 01001026 */  addiu      $s0, $s0, 0x1
.align 2
  .L0021AC8C:
    /* 11BC0C 0021AC8C 04005226 */  addiu      $s2, $s2, 0x4
    /* 11BC10 0021AC90 0E00022A */  slti       $v0, $s0, 0xE
    /* 11BC14 0021AC94 F2FF4014 */  bnez       $v0, .L0021AC60
    /* 11BC18 0021AC98 04003126 */   addiu     $s1, $s1, 0x4
    /* 11BC1C 0021AC9C D2D1070C */  jal        func_001F4748
    /* 11BC20 0021ACA0 00000000 */   nop
    /* 11BC24 0021ACA4 8001BF7B */  lq         $ra, 0x180($sp)
    /* 11BC28 0021ACA8 7001BE7B */  lq         $fp, 0x170($sp)
    /* 11BC2C 0021ACAC 6001B77B */  lq         $s7, 0x160($sp)
    /* 11BC30 0021ACB0 5001B67B */  lq         $s6, 0x150($sp)
    /* 11BC34 0021ACB4 4001B57B */  lq         $s5, 0x140($sp)
    /* 11BC38 0021ACB8 3001B47B */  lq         $s4, 0x130($sp)
    /* 11BC3C 0021ACBC 2001B37B */  lq         $s3, 0x120($sp)
    /* 11BC40 0021ACC0 1001B27B */  lq         $s2, 0x110($sp)
    /* 11BC44 0021ACC4 0001B17B */  lq         $s1, 0x100($sp)
    /* 11BC48 0021ACC8 F000B07B */  lq         $s0, 0xF0($sp)
    /* 11BC4C 0021ACCC 0800E003 */  jr         $ra
    /* 11BC50 0021ACD0 9001BD27 */   addiu     $sp, $sp, 0x190
endlabel func_0021A610
    /* 11BC54 0021ACD4 00000000 */  nop
