.align 3
nonmatching func_0012D818, 0x48

glabel func_0012D818
    /* 2E798 0012D818 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2E79C 0012D81C 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2E7A0 0012D820 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2E7A4 0012D824 2000BFFF */  sd         $ra, 0x20($sp)
    /* 2E7A8 0012D828 FCB4040C */  jal        func_0012D3F0
    /* 2E7AC 0012D82C 2D808000 */   daddu     $s0, $a0, $zero
    /* 2E7B0 0012D830 12B5040C */  jal        func_0012D448
    /* 2E7B4 0012D834 2D884000 */   daddu     $s1, $v0, $zero
    /* 2E7B8 0012D838 3C000324 */  addiu      $v1, $zero, 0x3C
    /* 2E7BC 0012D83C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2E7C0 0012D840 18104300 */  mult       $v0, $v0, $v1
    /* 2E7C4 0012D844 2000BFDF */  ld         $ra, 0x20($sp)
    /* 2E7C8 0012D848 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2E7CC 0012D84C E4FD4224 */  addiu      $v0, $v0, -0x21C
    /* 2E7D0 0012D850 21282202 */  addu       $a1, $s1, $v0
    /* 2E7D4 0012D854 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2E7D8 0012D858 E2B50408 */  j          func_0012D788
    /* 2E7DC 0012D85C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012D818
    /* 2E7E0 0012D860 00000000 */  nop
    /* 2E7E4 0012D864 00000000 */  nop
