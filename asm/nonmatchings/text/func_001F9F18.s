.align 3
nonmatching func_001F9F18, 0x18

glabel func_001F9F18
    /* FAE98 001F9F18 882E0570 */  pextlb     $5, $0, $5
    /* FAE9C 001F9F1C 882D0570 */  pextlh     $5, $0, $5
    /* FAEA0 001F9F20 0008A548 */  qmtc2.ni   $5, $vf1
    /* FAEA4 001F9F24 3C09E14B */  vitof0.xyzw $vf1, $vf1
    /* FAEA8 001F9F28 0800E003 */  jr         $31
    /* FAEAC 001F9F2C 000081F8 */   sqc2      $vf1, 0x0($4)
endlabel func_001F9F18
