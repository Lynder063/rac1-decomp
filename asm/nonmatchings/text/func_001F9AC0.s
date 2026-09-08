.align 3
/* Handwritten function */
nonmatching func_001F9AC0, 0x30

glabel func_001F9AC0
    /* FAA40 001F9AC0 0000A278 */  lq         $v0, 0x0($a1)
    /* FAA44 001F9AC4 1000A520 */  addi       $a1, $a1, 0x10 /* handwritten instruction */
    /* FAA48 001F9AC8 0000C378 */  lq         $v1, 0x0($a2)
    /* FAA4C 001F9ACC 1000C620 */  addi       $a2, $a2, 0x10 /* handwritten instruction */
    /* FAA50 001F9AD0 10008420 */  addi       $a0, $a0, 0x10 /* handwritten instruction */
    /* FAA54 001F9AD4 F0FFE720 */  addi       $a3, $a3, -0x10 /* handwritten instruction */
    /* FAA58 001F9AD8 A9144370 */  por        $v0, $v0, $v1
    /* FAA5C 001F9ADC 0000A048 */  qmtc2.ni   $zero, $vf0
    /* FAA60 001F9AE0 F7FFE01C */  bgtz       $a3, func_001F9AC0
    /* FAA64 001F9AE4 F0FF827C */   sq        $v0, -0x10($a0)
    /* FAA68 001F9AE8 0800E003 */  jr         $ra
    /* FAA6C 001F9AEC 00000000 */   nop
endlabel func_001F9AC0
