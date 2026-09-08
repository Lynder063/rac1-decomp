.align 3
/* Handwritten function */
nonmatching func_0023C7A8, 0x168

glabel func_0023C7A8
    /* 13D728 0023C7A8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 13D72C 0023C7AC 02000424 */  addiu      $a0, $zero, 0x2
    /* 13D730 0023C7B0 2000B27F */  sq         $s2, 0x20($sp)
    /* 13D734 0023C7B4 3000BF7F */  sq         $ra, 0x30($sp)
    /* 13D738 0023C7B8 1000B17F */  sq         $s1, 0x10($sp)
    /* 13D73C 0023C7BC B88C040C */  jal        func_001232E0
    /* 13D740 0023C7C0 0000B07F */   sq        $s0, 0x0($sp)
    /* 13D744 0023C7C4 2D904000 */  daddu      $s2, $v0, $zero
    /* 13D748 0023C7C8 0012023C */  lui        $v0, (0x12001000 >> 16)
    /* 13D74C 0023C7CC 00104234 */  ori        $v0, $v0, (0x12001000 & 0xFFFF)
    /* 13D750 0023C7D0 000043DC */  ld         $v1, 0x0($v0)
    /* 13D754 0023C7D4 7A1B0300 */  dsrl       $v1, $v1, 13
    /* 13D758 0023C7D8 01006330 */  andi       $v1, $v1, 0x1
    /* 13D75C 0023C7DC 3C180300 */  dsll32     $v1, $v1, 0
    /* 13D760 0023C7E0 3F180300 */  dsra32     $v1, $v1, 0
    /* 13D764 0023C7E4 1600013C */  lui        $at, %hi(D_001612EC)
    /* 13D768 0023C7E8 EC1223AC */  sw         $v1, %lo(D_001612EC)($at)
    /* 13D76C 0023C7EC 1600023C */  lui        $v0, %hi(D_001612E0)
    /* 13D770 0023C7F0 E012428C */  lw         $v0, %lo(D_001612E0)($v0)
    /* 13D774 0023C7F4 3D004010 */  beqz       $v0, .L0023C8EC
    /* 13D778 0023C7F8 00000000 */   nop
    /* 13D77C 0023C7FC 1600023C */  lui        $v0, %hi(D_001612E4)
    /* 13D780 0023C800 E412428C */  lw         $v0, %lo(D_001612E4)($v0)
    /* 13D784 0023C804 01000424 */  addiu      $a0, $zero, 0x1
    /* 13D788 0023C808 2D280000 */  daddu      $a1, $zero, $zero
    /* 13D78C 0023C80C 01004224 */  addiu      $v0, $v0, 0x1
    /* 13D790 0023C810 1600013C */  lui        $at, %hi(D_001612E4)
    /* 13D794 0023C814 E41222AC */  sw         $v0, %lo(D_001612E4)($at)
    /* 13D798 0023C818 1682040C */  jal        func_00120858
    /* 13D79C 0023C81C 00000000 */   nop
    /* 13D7A0 0023C820 1600013C */  lui        $at, %hi(D_001612F0)
    /* 13D7A4 0023C824 F01222AC */  sw         $v0, %lo(D_001612F0)($at)
    /* 13D7A8 0023C828 1600023C */  lui        $v0, %hi(D_001612F0)
    /* 13D7AC 0023C82C F012428C */  lw         $v0, %lo(D_001612F0)($v0)
    /* 13D7B0 0023C830 2E004014 */  bnez       $v0, .L0023C8EC
    /* 13D7B4 0023C834 0CA6828F */   lw        $v0, -0x59F4($gp)
    /* 13D7B8 0023C838 0D00043C */  lui        $a0, (0xD9168 >> 16)
    /* 13D7BC 0023C83C 68918434 */  ori        $a0, $a0, (0xD9168 & 0xFFFF)
    /* 13D7C0 0023C840 AAF9080C */  jal        func_0023E6A8
    /* 13D7C4 0023C844 21204400 */   addu      $a0, $v0, $a0
    /* 13D7C8 0023C848 2D804000 */  daddu      $s0, $v0, $zero
    /* 13D7CC 0023C84C 05000016 */  bnez       $s0, .L0023C864
    /* 13D7D0 0023C850 00000000 */   nop
    /* 13D7D4 0023C854 0F000000 */  sync
    /* 13D7D8 0023C858 38000042 */  ei /* handwritten instruction */
    /* 13D7DC 0023C85C 26000010 */  b          .L0023C8F8
    /* 13D7E0 0023C860 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0023C864:
    /* 13D7E4 0023C864 1600023C */  lui        $v0, %hi(D_001612EC)
    /* 13D7E8 0023C868 EC12428C */  lw         $v0, %lo(D_001612EC)($v0)
    /* 13D7EC 0023C86C 0C004014 */  bnez       $v0, .L0023C8A0
    /* 13D7F0 0023C870 02000224 */   addiu     $v0, $zero, 0x2
    /* 13D7F4 0023C874 0000038E */  lw         $v1, 0x0($s0)
    /* 13D7F8 0023C878 09006214 */  bne        $v1, $v0, .L0023C8A0
    /* 13D7FC 0023C87C 2D200000 */   daddu     $a0, $zero, $zero
    /* 13D800 0023C880 1682040C */  jal        func_00120858
    /* 13D804 0023C884 2D280000 */   daddu     $a1, $zero, $zero
    /* 13D808 0023C888 2D204002 */  daddu      $a0, $s2, $zero
    /* 13D80C 0023C88C 728D040C */  jal        func_001235C8
    /* 13D810 0023C890 40000526 */   addiu     $a1, $s0, 0x40
    /* 13D814 0023C894 01000224 */  addiu      $v0, $zero, 0x1
    /* 13D818 0023C898 14000010 */  b          .L0023C8EC
    /* 13D81C 0023C89C 000002AE */   sw        $v0, 0x0($s0)
.align 2
  .L0023C8A0:
    /* 13D820 0023C8A0 1600033C */  lui        $v1, %hi(D_001612EC)
    /* 13D824 0023C8A4 EC12638C */  lw         $v1, %lo(D_001612EC)($v1)
    /* 13D828 0023C8A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 13D82C 0023C8AC 0F006214 */  bne        $v1, $v0, .L0023C8EC
    /* 13D830 0023C8B0 00000000 */   nop
    /* 13D834 0023C8B4 0000118E */  lw         $s1, 0x0($s0)
    /* 13D838 0023C8B8 0C002316 */  bne        $s1, $v1, .L0023C8EC
    /* 13D83C 0023C8BC 00000000 */   nop
    /* 13D840 0023C8C0 2D280000 */  daddu      $a1, $zero, $zero
    /* 13D844 0023C8C4 1682040C */  jal        func_00120858
    /* 13D848 0023C8C8 2D200000 */   daddu     $a0, $zero, $zero
    /* 13D84C 0023C8CC 0100053C */  lui        $a1, (0x13880 >> 16)
    /* 13D850 0023C8D0 2D204002 */  daddu      $a0, $s2, $zero
    /* 13D854 0023C8D4 8038A534 */  ori        $a1, $a1, (0x13880 & 0xFFFF)
    /* 13D858 0023C8D8 728D040C */  jal        func_001235C8
    /* 13D85C 0023C8DC 21280502 */   addu      $a1, $s0, $a1
    /* 13D860 0023C8E0 000000AE */  sw         $zero, 0x0($s0)
    /* 13D864 0023C8E4 1600013C */  lui        $at, %hi(D_001612E8)
    /* 13D868 0023C8E8 E81231AC */  sw         $s1, %lo(D_001612E8)($at)
.align 2
  .L0023C8EC:
    /* 13D86C 0023C8EC 0F000000 */  sync
    /* 13D870 0023C8F0 38000042 */  ei /* handwritten instruction */
    /* 13D874 0023C8F4 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0023C8F8:
    /* 13D878 0023C8F8 3000BF7B */  lq         $ra, 0x30($sp)
    /* 13D87C 0023C8FC 2000B27B */  lq         $s2, 0x20($sp)
    /* 13D880 0023C900 1000B17B */  lq         $s1, 0x10($sp)
    /* 13D884 0023C904 0000B07B */  lq         $s0, 0x0($sp)
    /* 13D888 0023C908 0800E003 */  jr         $ra
    /* 13D88C 0023C90C 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0023C7A8
