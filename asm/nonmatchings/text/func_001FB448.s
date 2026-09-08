.align 3
nonmatching func_001FB448, 0x28

glabel func_001FB448
    /* FC3C8 001FB448 382A0500 */  dsll       $a1, $a1, 8
    /* FC3CC 001FB44C 38340600 */  dsll       $a2, $a2, 16
    /* FC3D0 001FB450 25288500 */  or         $a1, $a0, $a1
    /* FC3D4 001FB454 00800334 */  ori        $v1, $zero, 0x8000
    /* FC3D8 001FB458 381C0300 */  dsll       $v1, $v1, 16
    /* FC3DC 001FB45C 2528A600 */  or         $a1, $a1, $a2
    /* FC3E0 001FB460 1500023C */  lui        $v0, %hi(D_00152178)
    /* FC3E4 001FB464 2528A300 */  or         $a1, $a1, $v1
    /* FC3E8 001FB468 0800E003 */  jr         $ra
    /* FC3EC 001FB46C 782145FC */   sd        $a1, %lo(D_00152178)($v0)
endlabel func_001FB448
