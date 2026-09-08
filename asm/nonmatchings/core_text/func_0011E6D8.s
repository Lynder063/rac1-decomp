.align 3
nonmatching func_0011E6D8, 0xEC

glabel func_0011E6D8
    /* 1F658 0011E6D8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1F65C 0011E6DC 2D280000 */  daddu      $a1, $zero, $zero
    /* 1F660 0011E6E0 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1F664 0011E6E4 2D888000 */  daddu      $s1, $a0, $zero
    /* 1F668 0011E6E8 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1F66C 0011E6EC 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1F670 0011E6F0 0C81040C */  jal        func_00120430
    /* 1F674 0011E6F4 0000B0FF */   sd        $s0, 0x0($sp)
    /* 1F678 0011E6F8 2C004004 */  bltz       $v0, .L0011E7AC
    /* 1F67C 0011E6FC 2D100000 */   daddu     $v0, $zero, $zero
    /* 1F680 0011E700 C0F70534 */  ori        $a1, $zero, 0xF7C0
    /* 1F684 0011E704 BC2B0500 */  dsll32     $a1, $a1, 14
    /* 1F688 0011E708 C27F040C */  jal        func_0011FF08
    /* 1F68C 0011E70C 2D202002 */   daddu     $a0, $s1, $zero
    /* 1F690 0011E710 7481040C */  jal        func_001205D0
    /* 1F694 0011E714 2D204000 */   daddu     $a0, $v0, $zero
    /* 1F698 0011E718 3C800200 */  dsll32     $s0, $v0, 0
    /* 1F69C 0011E71C 05000006 */  bltz       $s0, .L0011E734
    /* 1F6A0 0011E720 01000232 */   andi      $v0, $s0, 0x1
    /* 1F6A4 0011E724 F279040C */  jal        func_0011E7C8
    /* 1F6A8 0011E728 2D200002 */   daddu     $a0, $s0, $zero
    /* 1F6AC 0011E72C 08000010 */  b          .L0011E750
    /* 1F6B0 0011E730 2D202002 */   daddu     $a0, $s1, $zero
.align 2
  .L0011E734:
    /* 1F6B4 0011E734 7A201000 */  dsrl       $a0, $s0, 1
    /* 1F6B8 0011E738 F279040C */  jal        func_0011E7C8
    /* 1F6BC 0011E73C 25204400 */   or        $a0, $v0, $a0
    /* 1F6C0 0011E740 2D204000 */  daddu      $a0, $v0, $zero
    /* 1F6C4 0011E744 927F040C */  jal        func_0011FE48
    /* 1F6C8 0011E748 2D288000 */   daddu     $a1, $a0, $zero
    /* 1F6CC 0011E74C 2D202002 */  daddu      $a0, $s1, $zero
.align 2
  .L0011E750:
    /* 1F6D0 0011E750 A87F040C */  jal        func_0011FEA0
    /* 1F6D4 0011E754 2D284000 */   daddu     $a1, $v0, $zero
    /* 1F6D8 0011E758 2D900000 */  daddu      $s2, $zero, $zero
    /* 1F6DC 0011E75C 2D884000 */  daddu      $s1, $v0, $zero
    /* 1F6E0 0011E760 2D284002 */  daddu      $a1, $s2, $zero
    /* 1F6E4 0011E764 0C81040C */  jal        func_00120430
    /* 1F6E8 0011E768 2D202002 */   daddu     $a0, $s1, $zero
    /* 1F6EC 0011E76C 09004104 */  bgez       $v0, .L0011E794
    /* 1F6F0 0011E770 2D204002 */   daddu     $a0, $s2, $zero
    /* 1F6F4 0011E774 A87F040C */  jal        func_0011FEA0
    /* 1F6F8 0011E778 2D282002 */   daddu     $a1, $s1, $zero
    /* 1F6FC 0011E77C 7481040C */  jal        func_001205D0
    /* 1F700 0011E780 2D204000 */   daddu     $a0, $v0, $zero
    /* 1F704 0011E784 3C100200 */  dsll32     $v0, $v0, 0
    /* 1F708 0011E788 3E100200 */  dsrl32     $v0, $v0, 0
    /* 1F70C 0011E78C 06000010 */  b          .L0011E7A8
    /* 1F710 0011E790 2F800202 */   dsubu     $s0, $s0, $v0
.align 2
  .L0011E794:
    /* 1F714 0011E794 7481040C */  jal        func_001205D0
    /* 1F718 0011E798 2D202002 */   daddu     $a0, $s1, $zero
    /* 1F71C 0011E79C 3C100200 */  dsll32     $v0, $v0, 0
    /* 1F720 0011E7A0 3E100200 */  dsrl32     $v0, $v0, 0
    /* 1F724 0011E7A4 2D800202 */  daddu      $s0, $s0, $v0
.align 2
  .L0011E7A8:
    /* 1F728 0011E7A8 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L0011E7AC:
    /* 1F72C 0011E7AC 3000BFDF */  ld         $ra, 0x30($sp)
    /* 1F730 0011E7B0 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1F734 0011E7B4 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1F738 0011E7B8 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1F73C 0011E7BC 0800E003 */  jr         $ra
    /* 1F740 0011E7C0 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0011E6D8
