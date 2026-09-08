.align 3
/* Handwritten function */
nonmatching func_001F9B70, 0x18

glabel func_001F9B70
    /* FAAF0 001F9B70 03008104 */  bgez       $a0, .L001F9B80
    /* FAAF4 001F9B74 00000000 */   nop
    /* FAAF8 001F9B78 22200400 */  neg        $a0, $a0 /* handwritten instruction */
    /* FAAFC 001F9B7C 00000000 */  nop
.align 2
  .L001F9B80:
    /* FAB00 001F9B80 0800E003 */  jr         $ra
    /* FAB04 001F9B84 00008220 */   addi      $v0, $a0, 0x0 /* handwritten instruction */
endlabel func_001F9B70
