.align 3
nonmatching func_0011B710, 0x5C

glabel func_0011B710
    /* 1C690 0011B710 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1C694 0011B714 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1C698 0011B718 2000B0FF */  sd         $s0, 0x20($sp)
    /* 1C69C 0011B71C 1300103C */  lui        $s0, %hi(D_0012FDA0)
    /* 1C6A0 0011B720 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1C6A4 0011B724 A0FD028E */  lw         $v0, %lo(D_0012FDA0)($s0)
    /* 1C6A8 0011B728 0D004314 */  bne        $v0, $v1, .L0011B760
    /* 1C6AC 0011B72C 3000BFDF */   ld        $ra, 0x30($sp)
    /* 1C6B0 0011B730 01000224 */  addiu      $v0, $zero, 0x1
    /* 1C6B4 0011B734 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1C6B8 0011B738 0400A2AF */  sw         $v0, 0x4($sp)
    /* 1C6BC 0011B73C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 1C6C0 0011B740 1C63040C */  jal        func_00118C70
    /* 1C6C4 0011B744 0800A2AF */   sw        $v0, 0x8($sp)
    /* 1C6C8 0011B748 A0FD02AE */  sw         $v0, %lo(D_0012FDA0)($s0)
    /* 1C6CC 0011B74C 1C63040C */  jal        func_00118C70
    /* 1C6D0 0011B750 2D20A003 */   daddu     $a0, $sp, $zero
    /* 1C6D4 0011B754 1300033C */  lui        $v1, %hi(D_0012FDA4)
    /* 1C6D8 0011B758 A4FD62AC */  sw         $v0, %lo(D_0012FDA4)($v1)
    /* 1C6DC 0011B75C 3000BFDF */  ld         $ra, 0x30($sp)
.align 2
  .L0011B760:
    /* 1C6E0 0011B760 2000B0DF */  ld         $s0, 0x20($sp)
    /* 1C6E4 0011B764 0800E003 */  jr         $ra
    /* 1C6E8 0011B768 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0011B710
    /* 1C6EC 0011B76C 00000000 */  nop
