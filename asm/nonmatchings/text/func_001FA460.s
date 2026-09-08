.align 3
nonmatching func_001FA460, 0x20

glabel func_001FA460
    /* FB3E0 001FA460 0000A178 */  lq         $1, 0x0($5)
    /* FB3E4 001FA464 1000A278 */  lq         $2, 0x10($5)
    /* FB3E8 001FA468 2000A378 */  lq         $3, 0x20($5)
    /* FB3EC 001FA46C 0000817C */  sq         $1, 0x0($4)
    /* FB3F0 001FA470 1000827C */  sq         $2, 0x10($4)
    /* FB3F4 001FA474 2000837C */  sq         $3, 0x20($4)
    /* FB3F8 001FA478 0800E003 */  jr         $31
    /* FB3FC 001FA47C 300080F8 */   sqc2      $vf0, 0x30($4)
endlabel func_001FA460
