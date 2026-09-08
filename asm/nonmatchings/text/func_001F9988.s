.align 3
/* Handwritten function */
nonmatching func_001F9988, 0x28

glabel func_001F9988
    /* FA908 001F9988 00000000 */  nop
    /* FA90C 001F998C 00000000 */  nop
    /* FA910 001F9990 00000000 */  nop
    /* FA914 001F9994 00000000 */  nop
    /* FA918 001F9998 00000000 */  nop
    /* FA91C 001F999C 00000000 */  nop
    /* FA920 001F99A0 F9FF801C */  bgtz       $a0, func_001F9988
    /* FA924 001F99A4 FEFF8420 */   addi      $a0, $a0, -0x2 /* handwritten instruction */
    /* FA928 001F99A8 0800E003 */  jr         $ra
    /* FA92C 001F99AC 00000000 */   nop
endlabel func_001F9988
