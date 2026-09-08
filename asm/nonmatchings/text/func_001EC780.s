.align 3
nonmatching func_001EC780, 0x44

glabel func_001EC780
    /* ED700 001EC780 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* ED704 001EC784 2D288000 */  daddu      $a1, $a0, $zero
    /* ED708 001EC788 0000BF7F */  sq         $ra, 0x0($sp)
    /* ED70C 001EC78C 14000424 */  addiu      $a0, $zero, 0x14
    /* ED710 001EC790 1F00023C */  lui        $v0, %hi(D_001E8F80)
    /* ED714 001EC794 8C00A384 */  lh         $v1, 0x8C($a1)
    /* ED718 001EC798 808F4224 */  addiu      $v0, $v0, %lo(D_001E8F80)
    /* ED71C 001EC79C 18186400 */  mult       $v1, $v1, $a0
    /* ED720 001EC7A0 21104300 */  addu       $v0, $v0, $v1
    /* ED724 001EC7A4 1000428C */  lw         $v0, 0x10($v0)
    /* ED728 001EC7A8 04004010 */  beqz       $v0, .L001EC7BC
    /* ED72C 001EC7AC 0000BF7B */   lq        $ra, 0x0($sp)
    /* ED730 001EC7B0 09F84000 */  jalr       $v0
    /* ED734 001EC7B4 2D20A000 */   daddu     $a0, $a1, $zero
    /* ED738 001EC7B8 0000BF7B */  lq         $ra, 0x0($sp)
.align 2
  .L001EC7BC:
    /* ED73C 001EC7BC 0800E003 */  jr         $ra
    /* ED740 001EC7C0 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001EC780
    /* ED744 001EC7C4 00000000 */  nop
