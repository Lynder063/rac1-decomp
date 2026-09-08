.align 3
nonmatching func_001EC780, 0x44

glabel func_001EC780
    /* ED700 001EC780 F0FFBD27 */  addiu      $29, $29, -0x10
    /* ED704 001EC784 2D288000 */  daddu      $5, $4, $0
    /* ED708 001EC788 0000BF7F */  sq         $31, 0x0($29)
    /* ED70C 001EC78C 14000424 */  addiu      $4, $0, 0x14
    /* ED710 001EC790 1F00023C */  lui        $2, %hi(D_001E8F80)
    /* ED714 001EC794 8C00A384 */  lh         $3, 0x8C($5)
    /* ED718 001EC798 808F4224 */  addiu      $2, $2, %lo(D_001E8F80)
    /* ED71C 001EC79C 18186400 */  mult       $3, $3, $4
    /* ED720 001EC7A0 21104300 */  addu       $2, $2, $3
    /* ED724 001EC7A4 1000428C */  lw         $2, 0x10($2)
    /* ED728 001EC7A8 04004010 */  beqz       $2, .L001EC7BC
    /* ED72C 001EC7AC 0000BF7B */   lq        $31, 0x0($29)
    /* ED730 001EC7B0 09F84000 */  jalr       $2
    /* ED734 001EC7B4 2D20A000 */   daddu     $4, $5, $0
    /* ED738 001EC7B8 0000BF7B */  lq         $31, 0x0($29)
.align 2
  .L001EC7BC:
    /* ED73C 001EC7BC 0800E003 */  jr         $31
    /* ED740 001EC7C0 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_001EC780
    /* ED744 001EC7C4 00000000 */  nop
