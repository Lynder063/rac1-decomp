.align 3
nonmatching func_001F9FA8, 0x18

glabel func_001F9FA8
    /* FAF28 001F9FA8 00600144 */  mfc1       $at, $f12
    /* FAF2C 001F9FAC 0008A148 */  qmtc2.ni   $at, $vf1
    /* FAF30 001F9FB0 B864004A */  .word      0x4A0064B8    # vcallms    0xC90
    /* FAF34 001F9FB4 01082148 */  qmfc2.i    $at, $vf1
    /* FAF38 001F9FB8 0800E003 */  jr         $ra
    /* FAF3C 001F9FBC 00008144 */   mtc1      $at, $f0
endlabel func_001F9FA8
