.align 3
nonmatching func_0012D788, 0x8C

glabel func_0012D788
    /* 2E708 0012D788 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2E70C 0012D78C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2E710 0012D790 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2E714 0012D794 2D888000 */  daddu      $s1, $a0, $zero
    /* 2E718 0012D798 2000BFFF */  sd         $ra, 0x20($sp)
    /* 2E71C 0012D79C 40B5040C */  jal        func_0012D500
    /* 2E720 0012D7A0 2D80A000 */   daddu     $s0, $a1, $zero
    /* 2E724 0012D7A4 02002292 */  lbu        $v0, 0x2($s1)
    /* 2E728 0012D7A8 21805000 */  addu       $s0, $v0, $s0
    /* 2E72C 0012D7AC 0E000206 */  bltzl      $s0, .L0012D7E8
    /* 2E730 0012D7B0 3C001026 */   addiu     $s0, $s0, 0x3C
    /* 2E734 0012D7B4 3D00022A */  slti       $v0, $s0, 0x3D
    /* 2E738 0012D7B8 10004054 */  bnel       $v0, $zero, .L0012D7FC
    /* 2E73C 0012D7BC 020030A2 */   sb        $s0, 0x2($s1)
    /* 2E740 0012D7C0 2D202002 */  daddu      $a0, $s1, $zero
    /* 2E744 0012D7C4 00000000 */  nop
.align 2
  .L0012D7C8:
    /* 2E748 0012D7C8 CCB5040C */  jal        func_0012D730
    /* 2E74C 0012D7CC C4FF1026 */   addiu     $s0, $s0, -0x3C
    /* 2E750 0012D7D0 3D00022A */  slti       $v0, $s0, 0x3D
    /* 2E754 0012D7D4 FCFF4010 */  beqz       $v0, .L0012D7C8
    /* 2E758 0012D7D8 2D202002 */   daddu     $a0, $s1, $zero
    /* 2E75C 0012D7DC 08000010 */  b          .L0012D800
    /* 2E760 0012D7E0 020030A2 */   sb        $s0, 0x2($s1)
    /* 2E764 0012D7E4 00000000 */  nop
.align 2
  .L0012D7E8:
    /* 2E768 0012D7E8 D8B5040C */  jal        func_0012D760
    /* 2E76C 0012D7EC 2D202002 */   daddu     $a0, $s1, $zero
    /* 2E770 0012D7F0 FDFF0206 */  bltzl      $s0, .L0012D7E8
    /* 2E774 0012D7F4 3C001026 */   addiu     $s0, $s0, 0x3C
    /* 2E778 0012D7F8 020030A2 */  sb         $s0, 0x2($s1)
.align 2
  .L0012D7FC:
    /* 2E77C 0012D7FC 2D202002 */  daddu      $a0, $s1, $zero
.align 2
  .L0012D800:
    /* 2E780 0012D800 2000BFDF */  ld         $ra, 0x20($sp)
    /* 2E784 0012D804 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2E788 0012D808 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2E78C 0012D80C 5AB50408 */  j          func_0012D568
    /* 2E790 0012D810 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012D788
    /* 2E794 0012D814 00000000 */  nop
