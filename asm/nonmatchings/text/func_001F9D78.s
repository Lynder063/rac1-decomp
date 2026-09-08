.align 3
/* Handwritten function */
nonmatching func_001F9D78, 0x48

glabel func_001F9D78
    /* FACF8 001F9D78 000081D8 */  lqc2       $vf1, 0x0($a0)
    /* FACFC 001F9D7C 0000A2D8 */  lqc2       $vf2, 0x0($a1)
    /* FAD00 001F9D80 EC08C24B */  vsub.xyz   $vf3, $vf1, $vf2
    /* FAD04 001F9D84 2809224A */  vadd.w     $vf4, $vf1, $vf2
    /* FAD08 001F9D88 4301C04B */  vaddw.xyz  $vf5, $vf0, $vf0w
    /* FAD0C 001F9D8C 00000000 */  nop
    /* FAD10 001F9D90 EA18C34B */  vmul.xyz   $vf3, $vf3, $vf3
    /* FAD14 001F9D94 2A21244A */  vmul.w     $vf4, $vf4, $vf4
    /* FAD18 001F9D98 3C18834A */  vaddax.y   ACC, $vf3, $vf3x
    /* FAD1C 001F9D9C BE28834A */  vmaddaz.y  ACC, $vf5, $vf3z
    /* FAD20 001F9DA0 CF28844A */  vmsubw.y   $vf3, $vf5, $vf4w
    /* FAD24 001F9DA4 00182248 */  qmfc2.ni   $v0, $vf3
    /* FAD28 001F9DA8 03004104 */  bgez       $v0, .L001F9DB8
    /* FAD2C 001F9DAC 00000000 */   nop
    /* FAD30 001F9DB0 0800E003 */  jr         $ra
    /* FAD34 001F9DB4 01000220 */   addi      $v0, $zero, 0x1 /* handwritten instruction */
.align 2
  .L001F9DB8:
    /* FAD38 001F9DB8 0800E003 */  jr         $ra
    /* FAD3C 001F9DBC 00000220 */   addi      $v0, $zero, 0x0 /* handwritten instruction */
endlabel func_001F9D78
