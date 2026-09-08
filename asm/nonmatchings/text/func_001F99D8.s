.align 3
/* Handwritten function */
nonmatching func_001F99D8, 0x28

glabel func_001F99D8
    /* FA958 001F99D8 0000807C */  sq         $0, 0x0($4)
    /* FA95C 001F99DC F0FFA520 */  addi       $5, $5, -0x10 /* handwritten instruction */
    /* FA960 001F99E0 0500A018 */  blez       $5, .L001F99F8
    /* FA964 001F99E4 10008420 */   addi      $4, $4, 0x10 /* handwritten instruction */
    /* FA968 001F99E8 0000807C */  sq         $0, 0x0($4)
    /* FA96C 001F99EC F0FFA520 */  addi       $5, $5, -0x10 /* handwritten instruction */
    /* FA970 001F99F0 F9FFA01C */  bgtz       $5, func_001F99D8
    /* FA974 001F99F4 10008420 */   addi      $4, $4, 0x10 /* handwritten instruction */
.align 2
  .L001F99F8:
    /* FA978 001F99F8 0800E003 */  jr         $31
    /* FA97C 001F99FC 00000000 */   nop
endlabel func_001F99D8
