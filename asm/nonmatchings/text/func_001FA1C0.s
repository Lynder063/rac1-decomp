.align 3
nonmatching func_001FA1C0, 0x38

glabel func_001FA1C0
    /* FB140 001FA1C0 00600144 */  mfc1       $1, $f12
    /* FB144 001FA1C4 0028A148 */  qmtc2.ni   $1, $vf5
    /* FB148 001FA1C8 5800E04B */  vmulx.xyzw $vf1, $vf0, $vf0x
    /* FB14C 001FA1CC 9800E04B */  vmulx.xyzw $vf2, $vf0, $vf0x
    /* FB150 001FA1D0 D800E04B */  vmulx.xyzw $vf3, $vf0, $vf0x
    /* FB154 001FA1D4 3C03E44B */  vmove.xyzw $vf4, $vf0
    /* FB158 001FA1D8 4008054B */  vaddx.x    $vf1, $vf1, $vf5x
    /* FB15C 001FA1DC 8010854A */  vaddx.y    $vf2, $vf2, $vf5x
    /* FB160 001FA1E0 C018454A */  vaddx.z    $vf3, $vf3, $vf5x
    /* FB164 001FA1E4 000081F8 */  sqc2       $vf1, 0x0($4)
    /* FB168 001FA1E8 100082F8 */  sqc2       $vf2, 0x10($4)
    /* FB16C 001FA1EC 200083F8 */  sqc2       $vf3, 0x20($4)
    /* FB170 001FA1F0 0800E003 */  jr         $31
    /* FB174 001FA1F4 300084F8 */   sqc2      $vf4, 0x30($4)
endlabel func_001FA1C0
