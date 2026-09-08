.align 3
nonmatching func_001FB448, 0x28

glabel func_001FB448
    /* FC3C8 001FB448 382A0500 */  dsll       $5, $5, 8
    /* FC3CC 001FB44C 38340600 */  dsll       $6, $6, 16
    /* FC3D0 001FB450 25288500 */  or         $5, $4, $5
    /* FC3D4 001FB454 00800334 */  ori        $3, $0, 0x8000
    /* FC3D8 001FB458 381C0300 */  dsll       $3, $3, 16
    /* FC3DC 001FB45C 2528A600 */  or         $5, $5, $6
    /* FC3E0 001FB460 1500023C */  lui        $2, %hi(D_00152178)
    /* FC3E4 001FB464 2528A300 */  or         $5, $5, $3
    /* FC3E8 001FB468 0800E003 */  jr         $31
    /* FC3EC 001FB46C 782145FC */   sd        $5, %lo(D_00152178)($2)
endlabel func_001FB448
