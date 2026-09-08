.align 3
nonmatching func_001FA588, 0x40

glabel func_001FA588
    /* FB508 001FA588 0000A1D8 */  lqc2       $vf1, 0x0($5)
    /* FB50C 001FA58C 0000C2D8 */  lqc2       $vf2, 0x0($6)
    /* FB510 001FA590 4302C04B */  vaddw.xyz  $vf9, $vf0, $vf0w
    /* FB514 001FA594 EA10214A */  vmul.w     $vf3, $vf2, $vf1
    /* FB518 001FA598 2A11C14B */  vmul.xyz   $vf4, $vf2, $vf1
    /* FB51C 001FA59C 5B11C14B */  vmulw.xyz  $vf5, $vf2, $vf1w
    /* FB520 001FA5A0 9B09C24B */  vmulw.xyz  $vf6, $vf1, $vf2w
    /* FB524 001FA5A4 FE0AC24B */  .word      0x4BC20AFE    # vopmula.xyz ACC, $vf1, $vf2
    /* FB528 001FA5A8 EE11C14B */  .word      0x4BC111EE    # vopmsub.xyz $vf7, $vf2, $vf1
    /* FB52C 001FA5AC 3D20044B */  .word      0x4B04203D    # vadday.x   ACC, $vf4, $vf4y
    /* FB530 001FA5B0 0A49044B */  vmaddz.x   $vf4, $vf9, $vf4z
    /* FB534 001FA5B4 282AC64B */  vadd.xyz   $vf8, $vf5, $vf6
    /* FB538 001FA5B8 2842C74B */  vadd.xyz   $vf8, $vf8, $vf7
    /* FB53C 001FA5BC 041A244A */  vsubx.w    $vf8, $vf3, $vf4x
    /* FB540 001FA5C0 0800E003 */  jr         $31
    /* FB544 001FA5C4 000088F8 */   sqc2      $vf8, 0x0($4)
endlabel func_001FA588
