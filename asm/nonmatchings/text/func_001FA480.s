.align 3
nonmatching func_001FA480, 0x20

glabel func_001FA480
    /* FB400 001FA480 0000A178 */  lq         $at, 0x0($a1)
    /* FB404 001FA484 1000A278 */  lq         $v0, 0x10($a1)
    /* FB408 001FA488 2000A378 */  lq         $v1, 0x20($a1)
    /* FB40C 001FA48C 0000817C */  sq         $at, 0x0($a0)
    /* FB410 001FA490 1000827C */  sq         $v0, 0x10($a0)
    /* FB414 001FA494 2000837C */  sq         $v1, 0x20($a0)
    /* FB418 001FA498 0800E003 */  jr         $ra
    /* FB41C 001FA49C 00000000 */   nop
endlabel func_001FA480
