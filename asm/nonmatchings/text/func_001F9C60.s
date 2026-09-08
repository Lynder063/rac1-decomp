.align 3
nonmatching func_001F9C60, 0x18

glabel func_001F9C60
    /* FABE0 001F9C60 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* FABE4 001F9C64 0000C2D8 */  lqc2       $vf2, 0x0($a2)
    /* FABE8 001F9C68 6A08E24B */  vmul.xyzw  $vf1, $vf1, $vf2
    /* FABEC 001F9C6C 00000000 */  nop
    /* FABF0 001F9C70 0800E003 */  jr         $ra
    /* FABF4 001F9C74 000081F8 */   sqc2      $vf1, 0x0($a0)
endlabel func_001F9C60
