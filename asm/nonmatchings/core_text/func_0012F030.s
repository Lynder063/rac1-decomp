.align 3
nonmatching func_0012F030, 0x38

glabel func_0012F030
    /* 2FFB0 0012F030 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 2FFB4 0012F034 8C80828F */  lw         $2, -0x7F74($28)
    /* 2FFB8 0012F038 06004010 */  beqz       $2, .L0012F054
    /* 2FFBC 0012F03C 0000BF7F */   sq        $31, 0x0($29)
    /* 2FFC0 0012F040 1300033C */  lui        $3, %hi(D_00137C00)
    /* 2FFC4 0012F044 007C6324 */  addiu      $3, $3, %lo(D_00137C00)
    /* 2FFC8 0012F048 1000628C */  lw         $2, 0x10($3)
    /* 2FFCC 0012F04C 04000010 */  b          .L0012F060
    /* 2FFD0 0012F050 0000BF7B */   lq        $31, 0x0($29)
.align 2
  .L0012F054:
    /* 2FFD4 0012F054 4C86040C */  jal        func_00121930
    /* 2FFD8 0012F058 00000000 */   nop
    /* 2FFDC 0012F05C 0000BF7B */  lq         $31, 0x0($29)
.align 2
  .L0012F060:
    /* 2FFE0 0012F060 0800E003 */  jr         $31
    /* 2FFE4 0012F064 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0012F030
