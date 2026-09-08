.align 3
nonmatching func_001188C8, 0x60

glabel func_001188C8
    /* 19848 001188C8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1984C 001188CC 0000B0FF */  sd         $s0, 0x0($sp)
    /* 19850 001188D0 2D808000 */  daddu      $s0, $a0, $zero
    /* 19854 001188D4 1000B1FF */  sd         $s1, 0x10($sp)
    /* 19858 001188D8 2D20A000 */  daddu      $a0, $a1, $zero
    /* 1985C 001188DC 1600113C */  lui        $s1, %hi(D_0015ED10)
    /* 19860 001188E0 2D28C000 */  daddu      $a1, $a2, $zero
    /* 19864 001188E4 2000BFFF */  sd         $ra, 0x20($sp)
    /* 19868 001188E8 10ED20AE */  sw         $zero, %lo(D_0015ED10)($s1)
    /* 1986C 001188EC 0264040C */  jal        func_00119008
    /* 19870 001188F0 2D30E000 */   daddu     $a2, $a3, $zero
    /* 19874 001188F4 2D184000 */  daddu      $v1, $v0, $zero
    /* 19878 001188F8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1987C 001188FC 05006214 */  bne        $v1, $v0, .L00118914
    /* 19880 00118900 2000BFDF */   ld        $ra, 0x20($sp)
    /* 19884 00118904 10ED228E */  lw         $v0, %lo(D_0015ED10)($s1)
    /* 19888 00118908 02004054 */  bnel       $v0, $zero, .L00118914
    /* 1988C 0011890C 000002AE */   sw        $v0, 0x0($s0)
    /* 19890 00118910 2000BFDF */  ld         $ra, 0x20($sp)
.align 2
  .L00118914:
    /* 19894 00118914 2D106000 */  daddu      $v0, $v1, $zero
    /* 19898 00118918 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1989C 0011891C 0000B0DF */  ld         $s0, 0x0($sp)
    /* 198A0 00118920 0800E003 */  jr         $ra
    /* 198A4 00118924 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_001188C8
