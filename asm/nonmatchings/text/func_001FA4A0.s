.align 3
nonmatching func_001FA4A0, 0x50

glabel func_001FA4A0
    /* FB420 001FA4A0 0000A1D8 */  lqc2       $vf1, 0x0($5)
    /* FB424 001FA4A4 1000A2D8 */  lqc2       $vf2, 0x10($5)
    /* FB428 001FA4A8 2000A3D8 */  lqc2       $vf3, 0x20($5)
    /* FB42C 001FA4AC 300080F8 */  sqc2       $vf0, 0x30($4)
    /* FB430 001FA4B0 0001014B */  vaddx.x    $vf4, $vf0, $vf1x
    /* FB434 001FA4B4 4101824A */  vaddy.y    $vf5, $vf0, $vf2y
    /* FB438 001FA4B8 8201434A */  vaddz.z    $vf6, $vf0, $vf3z
    /* FB43C 001FA4BC 4101014B */  vaddy.x    $vf5, $vf0, $vf1y
    /* FB440 001FA4C0 0001824A */  vaddx.y    $vf4, $vf0, $vf2x
    /* FB444 001FA4C4 8201014B */  vaddz.x    $vf6, $vf0, $vf1z
    /* FB448 001FA4C8 0001434A */  vaddx.z    $vf4, $vf0, $vf3x
    /* FB44C 001FA4CC 8201824A */  vaddz.y    $vf6, $vf0, $vf2z
    /* FB450 001FA4D0 4101434A */  vaddy.z    $vf5, $vf0, $vf3y
    /* FB454 001FA4D4 0701204A */  vsubw.w    $vf4, $vf0, $vf0w
    /* FB458 001FA4D8 4701204A */  vsubw.w    $vf5, $vf0, $vf0w
    /* FB45C 001FA4DC 8701204A */  vsubw.w    $vf6, $vf0, $vf0w
    /* FB460 001FA4E0 000084F8 */  sqc2       $vf4, 0x0($4)
    /* FB464 001FA4E4 100085F8 */  sqc2       $vf5, 0x10($4)
    /* FB468 001FA4E8 0800E003 */  jr         $31
    /* FB46C 001FA4EC 200086F8 */   sqc2      $vf6, 0x20($4)
endlabel func_001FA4A0
