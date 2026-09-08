.align 3
nonmatching func_001F9BF0, 0x18

glabel func_001F9BF0
    /* FAB70 001F9BF0 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* FAB74 001F9BF4 0000C2D8 */  lqc2       $vf2, 0x0($a2)
    /* FAB78 001F9BF8 6C08C24B */  vsub.xyz   $vf1, $vf1, $vf2
    /* FAB7C 001F9BFC 00000000 */  nop
    /* FAB80 001F9C00 0800E003 */  jr         $ra
    /* FAB84 001F9C04 000081F8 */   sqc2      $vf1, 0x0($a0)
endlabel func_001F9BF0
