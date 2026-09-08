.align 3
nonmatching func_001F9F30, 0x28

glabel func_001F9F30
    /* FAEB0 001F9F30 000081D8 */  lqc2       $vf1, 0x0($a0)
    /* FAEB4 001F9F34 00000000 */  nop
    /* FAEB8 001F9F38 7C09E14B */  vftoi0.xyzw $vf1, $vf1
    /* FAEBC 001F9F3C 00000000 */  nop
    /* FAEC0 001F9F40 00082148 */  qmfc2.ni   $at, $vf1
    /* FAEC4 001F9F44 00000000 */  nop
    /* FAEC8 001F9F48 0000A048 */  qmtc2.ni   $zero, $vf0
    /* FAECC 001F9F4C C8150170 */  ppach      $v0, $zero, $at
    /* FAED0 001F9F50 0800E003 */  jr         $ra
    /* FAED4 001F9F54 C8160270 */   ppacb     $v0, $zero, $v0
endlabel func_001F9F30
    /* FAED8 001F9F58 00000000 */  nop
    /* FAEDC 001F9F5C 00000000 */  nop
