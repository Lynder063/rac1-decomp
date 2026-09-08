.align 3
nonmatching func_0011E7C8, 0x98

glabel func_0011E7C8
    /* 1F748 0011E7C8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1F74C 0011E7CC 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1F750 0011E7D0 2D808000 */  daddu      $s0, $a0, $zero
    /* 1F754 0011E7D4 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1F758 0011E7D8 E0811134 */  ori        $s1, $zero, 0x81E0
    /* 1F75C 0011E7DC FC8B1100 */  dsll32     $s1, $s1, 15
    /* 1F760 0011E7E0 3F201000 */  dsra32     $a0, $s0, 0
    /* 1F764 0011E7E4 2000BFFF */  sd         $ra, 0x20($sp)
    /* 1F768 0011E7E8 2081040C */  jal        func_00120480
    /* 1F76C 0011E7EC 00000000 */   nop
    /* 1F770 0011E7F0 2D282002 */  daddu      $a1, $s1, $zero
    /* 1F774 0011E7F4 C27F040C */  jal        func_0011FF08
    /* 1F778 0011E7F8 2D204000 */   daddu     $a0, $v0, $zero
    /* 1F77C 0011E7FC 2D282002 */  daddu      $a1, $s1, $zero
    /* 1F780 0011E800 C27F040C */  jal        func_0011FF08
    /* 1F784 0011E804 2D204000 */   daddu     $a0, $v0, $zero
    /* 1F788 0011E808 2D884000 */  daddu      $s1, $v0, $zero
    /* 1F78C 0011E80C FFFF023C */  lui        $v0, (0xFFFF0000 >> 16)
    /* 1F790 0011E810 3E100200 */  dsrl32     $v0, $v0, 0
    /* 1F794 0011E814 24800202 */  and        $s0, $s0, $v0
    /* 1F798 0011E818 3C801000 */  dsll32     $s0, $s0, 0
    /* 1F79C 0011E81C 3F801000 */  dsra32     $s0, $s0, 0
    /* 1F7A0 0011E820 2081040C */  jal        func_00120480
    /* 1F7A4 0011E824 2D200002 */   daddu     $a0, $s0, $zero
    /* 1F7A8 0011E828 06000106 */  bgez       $s0, .L0011E844
    /* 1F7AC 0011E82C 2D202002 */   daddu     $a0, $s1, $zero
    /* 1F7B0 0011E830 E0830534 */  ori        $a1, $zero, 0x83E0
    /* 1F7B4 0011E834 FC2B0500 */  dsll32     $a1, $a1, 15
    /* 1F7B8 0011E838 927F040C */  jal        func_0011FE48
    /* 1F7BC 0011E83C 2D204000 */   daddu     $a0, $v0, $zero
    /* 1F7C0 0011E840 2D202002 */  daddu      $a0, $s1, $zero
.align 2
  .L0011E844:
    /* 1F7C4 0011E844 927F040C */  jal        func_0011FE48
    /* 1F7C8 0011E848 2D284000 */   daddu     $a1, $v0, $zero
    /* 1F7CC 0011E84C 2000BFDF */  ld         $ra, 0x20($sp)
    /* 1F7D0 0011E850 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1F7D4 0011E854 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1F7D8 0011E858 0800E003 */  jr         $ra
    /* 1F7DC 0011E85C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0011E7C8
