.align 3
nonmatching func_001FA190, 0x30

glabel func_001FA190
    /* FB110 001FA190 5800E04B */  vmulx.xyzw $vf1, $vf0, $vf0x
    /* FB114 001FA194 9800E04B */  vmulx.xyzw $vf2, $vf0, $vf0x
    /* FB118 001FA198 3D03E34B */  .word      0x4BE3033D    # vmr32.xyzw $vf3, $vf0
    /* FB11C 001FA19C 3C03E44B */  vmove.xyzw $vf4, $vf0
    /* FB120 001FA1A0 4308004B */  vaddw.x    $vf1, $vf1, $vf0w
    /* FB124 001FA1A4 8310804A */  vaddw.y    $vf2, $vf2, $vf0w
    /* FB128 001FA1A8 000081F8 */  sqc2       $vf1, 0x0($a0)
    /* FB12C 001FA1AC 100082F8 */  sqc2       $vf2, 0x10($a0)
    /* FB130 001FA1B0 200083F8 */  sqc2       $vf3, 0x20($a0)
    /* FB134 001FA1B4 300084F8 */  sqc2       $vf4, 0x30($a0)
    /* FB138 001FA1B8 0800E003 */  jr         $ra
    /* FB13C 001FA1BC 00000000 */   nop
endlabel func_001FA190
