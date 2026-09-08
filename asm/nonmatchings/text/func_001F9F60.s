.align 3
/* Handwritten function */
nonmatching func_001F9F60, 0x30

glabel func_001F9F60
    /* FAEE0 001F9F60 00000220 */  addi       $2, $0, 0x0 /* handwritten instruction */
    /* FAEE4 001F9F64 00000000 */  nop
.align 2
  .L001F9F68:
    /* FAEE8 001F9F68 00008690 */  lbu        $6, 0x0($4)
    /* FAEEC 001F9F6C 00000000 */  nop
    /* FAEF0 001F9F70 01008790 */  lbu        $7, 0x1($4)
    /* FAEF4 001F9F74 02008420 */  addi       $4, $4, 0x2 /* handwritten instruction */
    /* FAEF8 001F9F78 20104600 */  add        $2, $2, $6 /* handwritten instruction */
    /* FAEFC 001F9F7C FEFFA520 */  addi       $5, $5, -0x2 /* handwritten instruction */
    /* FAF00 001F9F80 F9FFA01C */  bgtz       $5, .L001F9F68
    /* FAF04 001F9F84 20104700 */   add       $2, $2, $7 /* handwritten instruction */
    /* FAF08 001F9F88 0800E003 */  jr         $31
    /* FAF0C 001F9F8C 00000000 */   nop
endlabel func_001F9F60
