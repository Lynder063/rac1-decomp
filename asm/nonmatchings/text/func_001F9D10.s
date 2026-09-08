.align 3
nonmatching func_001F9D10, 0x38

glabel func_001F9D10
    /* FAC90 001F9D10 000081D8 */  lqc2       $vf1, 0x0($a0)
    /* FAC94 001F9D14 0000A2D8 */  lqc2       $vf2, 0x0($a1)
    /* FAC98 001F9D18 C300C04B */  vaddw.xyz  $vf3, $vf0, $vf0w
    /* FAC9C 001F9D1C 6C08C24B */  vsub.xyz   $vf1, $vf1, $vf2
    /* FACA0 001F9D20 6A08C14B */  vmul.xyz   $vf1, $vf1, $vf1
    /* FACA4 001F9D24 3D08014B */  vadday.x   ACC, $vf1, $vf1y
    /* FACA8 001F9D28 4A18014B */  vmaddz.x   $vf1, $vf3, $vf1z
    /* FACAC 001F9D2C BD03014A */  .word      0x4A0103BD                    # vsqrt      Q, $vf1x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* FACB0 001F9D30 BF03004A */  vwaitq
    /* FACB4 001F9D34 6000004B */  vaddq.x    $vf1, $vf0, Q
    /* FACB8 001F9D38 00082448 */  qmfc2.ni   $a0, $vf1
    /* FACBC 001F9D3C 00000000 */  nop
    /* FACC0 001F9D40 0800E003 */  jr         $ra
    /* FACC4 001F9D44 00008444 */   mtc1      $a0, $f0
endlabel func_001F9D10
