.align 3
nonmatching func_001F9BC8, 0x10

glabel func_001F9BC8
    /* FAB48 001F9BC8 3D03E14B */  vmr32.xyzw $vf1, $vf0
    /* FAB4C 001F9BCC 00000000 */  nop
    /* FAB50 001F9BD0 0800E003 */  jr         $ra
    /* FAB54 001F9BD4 000081F8 */   sqc2      $vf1, 0x0($a0)
endlabel func_001F9BC8
