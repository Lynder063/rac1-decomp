.align 3
nonmatching func_001FA460, 0x20

glabel func_001FA460
    /* FB3E0 001FA460 0000A178 */  lq         $at, 0x0($a1)
    /* FB3E4 001FA464 1000A278 */  lq         $v0, 0x10($a1)
    /* FB3E8 001FA468 2000A378 */  lq         $v1, 0x20($a1)
    /* FB3EC 001FA46C 0000817C */  sq         $at, 0x0($a0)
    /* FB3F0 001FA470 1000827C */  sq         $v0, 0x10($a0)
    /* FB3F4 001FA474 2000837C */  sq         $v1, 0x20($a0)
    /* FB3F8 001FA478 0800E003 */  jr         $ra
    /* FB3FC 001FA47C 300080F8 */   sqc2      $vf0, 0x30($a0)
endlabel func_001FA460
