.align 3
nonmatching func_001F9F90, 0x18

glabel func_001F9F90
    /* FAF10 001F9F90 00600144 */  mfc1       $at, $f12
    /* FAF14 001F9F94 0008A148 */  qmtc2.ni   $at, $vf1
    /* FAF18 001F9F98 3864004A */  .word      0x4A006438    # vcallms    0xC80
    /* FAF1C 001F9F9C 01082148 */  qmfc2.i    $at, $vf1
    /* FAF20 001F9FA0 0800E003 */  jr         $ra
    /* FAF24 001F9FA4 00008144 */   mtc1      $at, $f0
endlabel func_001F9F90
