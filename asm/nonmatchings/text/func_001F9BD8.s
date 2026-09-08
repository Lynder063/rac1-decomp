.align 3
nonmatching func_001F9BD8, 0x18

glabel func_001F9BD8
    /* FAB58 001F9BD8 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* FAB5C 001F9BDC 0000C2D8 */  lqc2       $vf2, 0x0($a2)
    /* FAB60 001F9BE0 6808C24B */  vadd.xyz   $vf1, $vf1, $vf2
    /* FAB64 001F9BE4 00000000 */  nop
    /* FAB68 001F9BE8 0800E003 */  jr         $ra
    /* FAB6C 001F9BEC 000081F8 */   sqc2      $vf1, 0x0($a0)
endlabel func_001F9BD8
