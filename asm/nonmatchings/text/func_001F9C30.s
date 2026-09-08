.align 3
nonmatching func_001F9C30, 0x18

glabel func_001F9C30
    /* FABB0 001F9C30 00600144 */  mfc1       $1, $f12
    /* FABB4 001F9C34 0000A1D8 */  lqc2       $vf1, 0x0($5)
    /* FABB8 001F9C38 0010A148 */  qmtc2.ni   $1, $vf2
    /* FABBC 001F9C3C 5808C24B */  vmulx.xyz  $vf1, $vf1, $vf2x
    /* FABC0 001F9C40 0800E003 */  jr         $31
    /* FABC4 001F9C44 000081F8 */   sqc2      $vf1, 0x0($4)
endlabel func_001F9C30
