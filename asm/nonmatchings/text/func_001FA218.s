.align 3
nonmatching func_001FA218, 0x20

glabel func_001FA218
    /* FB198 001FA218 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* FB19C 001FA21C F868004A */  vcallms    0xD18
    /* FB1A0 001FA220 01A02148 */  qmfc2.i    $at, $vf20
    /* FB1A4 001FA224 000094F8 */  sqc2       $vf20, 0x0($a0)
    /* FB1A8 001FA228 100095F8 */  sqc2       $vf21, 0x10($a0)
    /* FB1AC 001FA22C 200096F8 */  sqc2       $vf22, 0x20($a0)
    /* FB1B0 001FA230 0800E003 */  jr         $ra
    /* FB1B4 001FA234 300097F8 */   sqc2      $vf23, 0x30($a0)
endlabel func_001FA218
