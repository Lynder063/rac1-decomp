.align 3
/* Handwritten function */
nonmatching func_001F9AC0, 0x30

glabel func_001F9AC0
    /* FAA40 001F9AC0 0000A278 */  lq         $2, 0x0($5)
    /* FAA44 001F9AC4 1000A520 */  addi       $5, $5, 0x10 /* handwritten instruction */
    /* FAA48 001F9AC8 0000C378 */  lq         $3, 0x0($6)
    /* FAA4C 001F9ACC 1000C620 */  addi       $6, $6, 0x10 /* handwritten instruction */
    /* FAA50 001F9AD0 10008420 */  addi       $4, $4, 0x10 /* handwritten instruction */
    /* FAA54 001F9AD4 F0FFE720 */  addi       $7, $7, -0x10 /* handwritten instruction */
    /* FAA58 001F9AD8 A9144370 */  por        $2, $2, $3
    /* FAA5C 001F9ADC 0000A048 */  qmtc2.ni   $0, $vf0
    /* FAA60 001F9AE0 F7FFE01C */  bgtz       $7, func_001F9AC0
    /* FAA64 001F9AE4 F0FF827C */   sq        $2, -0x10($4)
    /* FAA68 001F9AE8 0800E003 */  jr         $31
    /* FAA6C 001F9AEC 00000000 */   nop
endlabel func_001F9AC0
