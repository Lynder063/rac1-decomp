.align 3
nonmatching func_0011B710, 0x5C

glabel func_0011B710
    /* 1C690 0011B710 C0FFBD27 */  addiu      $29, $29, -0x40
    /* 1C694 0011B714 FFFF0324 */  addiu      $3, $0, -0x1
    /* 1C698 0011B718 2000B0FF */  sd         $16, 0x20($29)
    /* 1C69C 0011B71C 1300103C */  lui        $16, %hi(D_0012FDA0)
    /* 1C6A0 0011B720 3000BFFF */  sd         $31, 0x30($29)
    /* 1C6A4 0011B724 A0FD028E */  lw         $2, %lo(D_0012FDA0)($16)
    /* 1C6A8 0011B728 0D004314 */  bne        $2, $3, .L0011B760
    /* 1C6AC 0011B72C 3000BFDF */   ld        $31, 0x30($29)
    /* 1C6B0 0011B730 01000224 */  addiu      $2, $0, 0x1
    /* 1C6B4 0011B734 1400A0AF */  sw         $0, 0x14($29)
    /* 1C6B8 0011B738 0400A2AF */  sw         $2, 0x4($29)
    /* 1C6BC 0011B73C 2D20A003 */  daddu      $4, $29, $0
    /* 1C6C0 0011B740 1C63040C */  jal        func_00118C70
    /* 1C6C4 0011B744 0800A2AF */   sw        $2, 0x8($29)
    /* 1C6C8 0011B748 A0FD02AE */  sw         $2, %lo(D_0012FDA0)($16)
    /* 1C6CC 0011B74C 1C63040C */  jal        func_00118C70
    /* 1C6D0 0011B750 2D20A003 */   daddu     $4, $29, $0
    /* 1C6D4 0011B754 1300033C */  lui        $3, %hi(D_0012FDA4)
    /* 1C6D8 0011B758 A4FD62AC */  sw         $2, %lo(D_0012FDA4)($3)
    /* 1C6DC 0011B75C 3000BFDF */  ld         $31, 0x30($29)
.align 2
  .L0011B760:
    /* 1C6E0 0011B760 2000B0DF */  ld         $16, 0x20($29)
    /* 1C6E4 0011B764 0800E003 */  jr         $31
    /* 1C6E8 0011B768 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_0011B710
    /* 1C6EC 0011B76C 00000000 */  nop
