.align 3
nonmatching func_001F9CB8, 0x30

glabel func_001F9CB8
    /* FAC38 001F9CB8 000081D8 */  lqc2       $vf1, 0x0($a0)
    /* FAC3C 001F9CBC 8300C04B */  vaddw.xyz  $vf2, $vf0, $vf0w
    /* FAC40 001F9CC0 6A08C14B */  vmul.xyz   $vf1, $vf1, $vf1
    /* FAC44 001F9CC4 3D08014B */  vadday.x   ACC, $vf1, $vf1y
    /* FAC48 001F9CC8 4A10014B */  vmaddz.x   $vf1, $vf2, $vf1z
    /* FAC4C 001F9CCC BD03014A */  .word      0x4A0103BD                    # vsqrt      Q, $vf1x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* FAC50 001F9CD0 BF03004A */  vwaitq
    /* FAC54 001F9CD4 6000004B */  vaddq.x    $vf1, $vf0, Q
    /* FAC58 001F9CD8 00082448 */  qmfc2.ni   $a0, $vf1
    /* FAC5C 001F9CDC 00000000 */  nop
    /* FAC60 001F9CE0 0800E003 */  jr         $ra
    /* FAC64 001F9CE4 00008444 */   mtc1      $a0, $f0
endlabel func_001F9CB8
