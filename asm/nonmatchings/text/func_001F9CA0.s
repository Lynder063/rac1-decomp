.align 3
nonmatching func_001F9CA0, 0x18

glabel func_001F9CA0
    /* FAC20 001F9CA0 0000A1D8 */  lqc2       $vf1, 0x0($5)
    /* FAC24 001F9CA4 0000C2D8 */  lqc2       $vf2, 0x0($6)
    /* FAC28 001F9CA8 FE12C14B */  .word      0x4BC112FE    # vopmula.xyz ACC, $vf2, $vf1
    /* FAC2C 001F9CAC EE08C24B */  .word      0x4BC208EE    # vopmsub.xyz $vf3, $vf1, $vf2
    /* FAC30 001F9CB0 0800E003 */  jr         $31
    /* FAC34 001F9CB4 000083F8 */   sqc2      $vf3, 0x0($4)
endlabel func_001F9CA0
