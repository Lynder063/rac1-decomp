.align 3
/* Handwritten function */
nonmatching func_001F99B0, 0x28

glabel func_001F99B0
    /* FA930 001F99B0 000085AC */  sw         $a1, 0x0($a0)
    /* FA934 001F99B4 FCFFC620 */  addi       $a2, $a2, -0x4 /* handwritten instruction */
    /* FA938 001F99B8 0500C018 */  blez       $a2, .L001F99D0
    /* FA93C 001F99BC 04008420 */   addi      $a0, $a0, 0x4 /* handwritten instruction */
    /* FA940 001F99C0 000085AC */  sw         $a1, 0x0($a0)
    /* FA944 001F99C4 FCFFC620 */  addi       $a2, $a2, -0x4 /* handwritten instruction */
    /* FA948 001F99C8 F9FFC01C */  bgtz       $a2, func_001F99B0
    /* FA94C 001F99CC 04008420 */   addi      $a0, $a0, 0x4 /* handwritten instruction */
.align 2
  .L001F99D0:
    /* FA950 001F99D0 0800E003 */  jr         $ra
    /* FA954 001F99D4 00000000 */   nop
endlabel func_001F99B0
