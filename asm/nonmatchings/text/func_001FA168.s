.align 3
nonmatching func_001FA168, 0x28

glabel func_001FA168
    /* FB0E8 001FA168 5800E04B */  vmulx.xyzw $vf1, $vf0, $vf0x
    /* FB0EC 001FA16C 9800E04B */  vmulx.xyzw $vf2, $vf0, $vf0x
    /* FB0F0 001FA170 3D03E34B */  vmr32.xyzw $vf3, $vf0
    /* FB0F4 001FA174 4308004B */  vaddw.x    $vf1, $vf1, $vf0w
    /* FB0F8 001FA178 8310804A */  vaddw.y    $vf2, $vf2, $vf0w
    /* FB0FC 001FA17C 000081F8 */  sqc2       $vf1, 0x0($a0)
    /* FB100 001FA180 100082F8 */  sqc2       $vf2, 0x10($a0)
    /* FB104 001FA184 200083F8 */  sqc2       $vf3, 0x20($a0)
    /* FB108 001FA188 0800E003 */  jr         $ra
    /* FB10C 001FA18C 00000000 */   nop
endlabel func_001FA168
