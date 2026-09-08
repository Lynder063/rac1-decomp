.align 3
nonmatching func_001F9C48, 0x18

glabel func_001F9C48
    /* FABC8 001F9C48 00600144 */  mfc1       $at, $f12
    /* FABCC 001F9C4C 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* FABD0 001F9C50 0010A148 */  qmtc2.ni   $at, $vf2
    /* FABD4 001F9C54 5808E24B */  vmulx.xyzw $vf1, $vf1, $vf2x
    /* FABD8 001F9C58 0800E003 */  jr         $ra
    /* FABDC 001F9C5C 000081F8 */   sqc2      $vf1, 0x0($a0)
endlabel func_001F9C48
