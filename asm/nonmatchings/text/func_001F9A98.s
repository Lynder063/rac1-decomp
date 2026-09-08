.align 3
/* Handwritten function */
nonmatching func_001F9A98, 0x28

glabel func_001F9A98
    /* FAA18 001F9A98 0000A378 */  lq         $v1, 0x0($a1)
    /* FAA1C 001F9A9C 1000A520 */  addi       $a1, $a1, 0x10 /* handwritten instruction */
    /* FAA20 001F9AA0 10008420 */  addi       $a0, $a0, 0x10 /* handwritten instruction */
    /* FAA24 001F9AA4 F0FFC620 */  addi       $a2, $a2, -0x10 /* handwritten instruction */
    /* FAA28 001F9AA8 F0FF837C */  sq         $v1, -0x10($a0)
    /* FAA2C 001F9AAC 00000000 */  nop
    /* FAA30 001F9AB0 F9FFC01C */  bgtz       $a2, func_001F9A98
    /* FAA34 001F9AB4 00000000 */   nop
    /* FAA38 001F9AB8 0800E003 */  jr         $ra
    /* FAA3C 001F9ABC 00000000 */   nop
endlabel func_001F9A98
