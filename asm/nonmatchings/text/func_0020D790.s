.align 3
nonmatching func_0020D790, 0x98

glabel func_0020D790
    /* 10E710 0020D790 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 10E714 0020D794 1000B17F */  sq         $s1, 0x10($sp)
    /* 10E718 0020D798 0000B07F */  sq         $s0, 0x0($sp)
    /* 10E71C 0020D79C FF001124 */  addiu      $s1, $zero, 0xFF
    /* 10E720 0020D7A0 2000BF7F */  sq         $ra, 0x20($sp)
    /* 10E724 0020D7A4 2D808000 */  daddu      $s0, $a0, $zero
    /* 10E728 0020D7A8 7D000392 */  lbu        $v1, 0x7D($s0)
    /* 10E72C 0020D7AC 12007110 */  beq        $v1, $s1, .L0020D7F8
    /* 10E730 0020D7B0 2D286000 */   daddu     $a1, $v1, $zero
    /* 10E734 0020D7B4 1400023C */  lui        $v0, %hi(D_0013E650)
    /* 10E738 0020D7B8 70000324 */  addiu      $v1, $zero, 0x70
    /* 10E73C 0020D7BC 50E64224 */  addiu      $v0, $v0, %lo(D_0013E650)
    /* 10E740 0020D7C0 1818A300 */  mult       $v1, $a1, $v1
    /* 10E744 0020D7C4 21186200 */  addu       $v1, $v1, $v0
    /* 10E748 0020D7C8 8800648C */  lw         $a0, 0x88($v1)
    /* 10E74C 0020D7CC 03009050 */  beql       $a0, $s0, .L0020D7DC
    /* 10E750 0020D7D0 7E006384 */   lh        $v1, 0x7E($v1)
    /* 10E754 0020D7D4 0F000010 */  b          .L0020D814
    /* 10E758 0020D7D8 7D0011A2 */   sb        $s1, 0x7D($s0)
.align 2
  .L0020D7DC:
    /* 10E75C 0020D7DC 7C000292 */  lbu        $v0, 0x7C($s0)
    /* 10E760 0020D7E0 0D006210 */  beq        $v1, $v0, .L0020D818
    /* 10E764 0020D7E4 2000BF7B */   lq        $ra, 0x20($sp)
    /* 10E768 0020D7E8 ACBA080C */  jal        func_0022EAB0
    /* 10E76C 0020D7EC 2D20A000 */   daddu     $a0, $a1, $zero
    /* 10E770 0020D7F0 08000010 */  b          .L0020D814
    /* 10E774 0020D7F4 7D0011A2 */   sb        $s1, 0x7D($s0)
.align 2
  .L0020D7F8:
    /* 10E778 0020D7F8 7C000292 */  lbu        $v0, 0x7C($s0)
    /* 10E77C 0020D7FC 05004310 */  beq        $v0, $v1, .L0020D814
    /* 10E780 0020D800 2D204000 */   daddu     $a0, $v0, $zero
    /* 10E784 0020D804 04000524 */  addiu      $a1, $zero, 0x4
    /* 10E788 0020D808 60BB080C */  jal        func_0022ED80
    /* 10E78C 0020D80C 2D300002 */   daddu     $a2, $s0, $zero
    /* 10E790 0020D810 7D0002A2 */  sb         $v0, 0x7D($s0)
.align 2
  .L0020D814:
    /* 10E794 0020D814 2000BF7B */  lq         $ra, 0x20($sp)
.align 2
  .L0020D818:
    /* 10E798 0020D818 1000B17B */  lq         $s1, 0x10($sp)
    /* 10E79C 0020D81C 0000B07B */  lq         $s0, 0x0($sp)
    /* 10E7A0 0020D820 0800E003 */  jr         $ra
    /* 10E7A4 0020D824 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0020D790
