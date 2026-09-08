.align 3
nonmatching func_001F9C08, 0x28

glabel func_001F9C08
    /* FAB88 001F9C08 00600144 */  mfc1       $1, $f12
    /* FAB8C 001F9C0C 0000A1D8 */  lqc2       $vf1, 0x0($5)
    /* FAB90 001F9C10 0018A148 */  qmtc2.ni   $1, $vf3
    /* FAB94 001F9C14 0000C2D8 */  lqc2       $vf2, 0x0($6)
    /* FAB98 001F9C18 AC10C14B */  vsub.xyz   $vf2, $vf2, $vf1
    /* FAB9C 001F9C1C 9810C34B */  vmulx.xyz  $vf2, $vf2, $vf3x
    /* FABA0 001F9C20 6808C24B */  vadd.xyz   $vf1, $vf1, $vf2
    /* FABA4 001F9C24 00000000 */  nop
    /* FABA8 001F9C28 0800E003 */  jr         $31
    /* FABAC 001F9C2C 000081F8 */   sqc2      $vf1, 0x0($4)
endlabel func_001F9C08
