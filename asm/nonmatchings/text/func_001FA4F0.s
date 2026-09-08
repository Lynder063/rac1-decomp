.align 3
nonmatching func_001FA4F0, 0x50

glabel func_001FA4F0
    /* FB470 001FA4F0 0000A4D8 */  lqc2       $vf4, 0x0($a1)
    /* FB474 001FA4F4 1000A5D8 */  lqc2       $vf5, 0x10($a1)
    /* FB478 001FA4F8 2000A6D8 */  lqc2       $vf6, 0x20($a1)
    /* FB47C 001FA4FC 0000C1D8 */  lqc2       $vf1, 0x0($a2)
    /* FB480 001FA500 1000C2D8 */  lqc2       $vf2, 0x10($a2)
    /* FB484 001FA504 2000C3D8 */  lqc2       $vf3, 0x20($a2)
    /* FB488 001FA508 BC21E14B */  .word      0x4BE121BC    # vmulax.xyzw ACC, $vf4, $vf1x
    /* FB48C 001FA50C BD28E14B */  .word      0x4BE128BD    # vmadday.xyzw ACC, $vf5, $vf1y
    /* FB490 001FA510 4A30E14B */  vmaddz.xyzw $vf1, $vf6, $vf1z
    /* FB494 001FA514 BC21E24B */  .word      0x4BE221BC    # vmulax.xyzw ACC, $vf4, $vf2x
    /* FB498 001FA518 BD28E24B */  .word      0x4BE228BD    # vmadday.xyzw ACC, $vf5, $vf2y
    /* FB49C 001FA51C 8A30E24B */  vmaddz.xyzw $vf2, $vf6, $vf2z
    /* FB4A0 001FA520 BC21E34B */  .word      0x4BE321BC    # vmulax.xyzw ACC, $vf4, $vf3x
    /* FB4A4 001FA524 BD28E34B */  .word      0x4BE328BD    # vmadday.xyzw ACC, $vf5, $vf3y
    /* FB4A8 001FA528 CA30E34B */  vmaddz.xyzw $vf3, $vf6, $vf3z
    /* FB4AC 001FA52C 00000000 */  nop
    /* FB4B0 001FA530 000081F8 */  sqc2       $vf1, 0x0($a0)
    /* FB4B4 001FA534 100082F8 */  sqc2       $vf2, 0x10($a0)
    /* FB4B8 001FA538 0800E003 */  jr         $ra
    /* FB4BC 001FA53C 200083F8 */   sqc2      $vf3, 0x20($a0)
endlabel func_001FA4F0
