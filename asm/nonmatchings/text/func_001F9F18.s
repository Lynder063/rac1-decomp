.align 3
nonmatching func_001F9F18, 0x18

glabel func_001F9F18
    /* FAE98 001F9F18 882E0570 */  pextlb     $a1, $zero, $a1
    /* FAE9C 001F9F1C 882D0570 */  pextlh     $a1, $zero, $a1
    /* FAEA0 001F9F20 0008A548 */  qmtc2.ni   $a1, $vf1
    /* FAEA4 001F9F24 3C09E14B */  vitof0.xyzw $vf1, $vf1
    /* FAEA8 001F9F28 0800E003 */  jr         $ra
    /* FAEAC 001F9F2C 000081F8 */   sqc2      $vf1, 0x0($a0)
endlabel func_001F9F18
