.align 3
nonmatching func_001FA480, 0x20

glabel func_001FA480
    /* FB400 001FA480 0000A178 */  lq         $1, 0x0($5)
    /* FB404 001FA484 1000A278 */  lq         $2, 0x10($5)
    /* FB408 001FA488 2000A378 */  lq         $3, 0x20($5)
    /* FB40C 001FA48C 0000817C */  sq         $1, 0x0($4)
    /* FB410 001FA490 1000827C */  sq         $2, 0x10($4)
    /* FB414 001FA494 2000837C */  sq         $3, 0x20($4)
    /* FB418 001FA498 0800E003 */  jr         $31
    /* FB41C 001FA49C 00000000 */   nop
endlabel func_001FA480
