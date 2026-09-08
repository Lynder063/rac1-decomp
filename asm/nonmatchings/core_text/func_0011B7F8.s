.align 3
nonmatching func_0011B7F8, 0x6C

glabel func_0011B7F8
    /* 1C778 0011B7F8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1C77C 0011B7FC 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1C780 0011B800 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1C784 0011B804 2D808000 */  daddu      $s0, $a0, $zero
    /* 1C788 0011B808 2000BFFF */  sd         $ra, 0x20($sp)
    /* 1C78C 0011B80C C46D040C */  jal        func_0011B710
    /* 1C790 0011B810 1300113C */   lui       $s1, %hi(D_0012FDA0)
    /* 1C794 0011B814 2C63040C */  jal        func_00118CB0
    /* 1C798 0011B818 A0FD248E */   lw        $a0, %lo(D_0012FDA0)($s1)
    /* 1C79C 0011B81C 2000032E */  sltiu      $v1, $s0, 0x20
    /* 1C7A0 0011B820 05006014 */  bnez       $v1, .L0011B838
    /* 1C7A4 0011B824 1500023C */   lui       $v0, %hi(D_00157E80)
    /* 1C7A8 0011B828 2463040C */  jal        func_00118C90
    /* 1C7AC 0011B82C A0FD248E */   lw        $a0, %lo(D_0012FDA0)($s1)
    /* 1C7B0 0011B830 07000010 */  b          .L0011B850
    /* 1C7B4 0011B834 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0011B838:
    /* 1C7B8 0011B838 00811000 */  sll        $s0, $s0, 4
    /* 1C7BC 0011B83C 807E4224 */  addiu      $v0, $v0, %lo(D_00157E80)
    /* 1C7C0 0011B840 A0FD248E */  lw         $a0, %lo(D_0012FDA0)($s1)
    /* 1C7C4 0011B844 2463040C */  jal        func_00118C90
    /* 1C7C8 0011B848 21800202 */   addu      $s0, $s0, $v0
    /* 1C7CC 0011B84C 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L0011B850:
    /* 1C7D0 0011B850 2000BFDF */  ld         $ra, 0x20($sp)
    /* 1C7D4 0011B854 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1C7D8 0011B858 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1C7DC 0011B85C 0800E003 */  jr         $ra
    /* 1C7E0 0011B860 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0011B7F8
    /* 1C7E4 0011B864 00000000 */  nop
