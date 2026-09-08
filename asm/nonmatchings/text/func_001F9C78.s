.align 3
nonmatching func_001F9C78, 0x28

glabel func_001F9C78
    /* FABF8 001F9C78 000081D8 */  lqc2       $vf1, 0x0($4)
    /* FABFC 001F9C7C 0000A2D8 */  lqc2       $vf2, 0x0($5)
    /* FAC00 001F9C80 C300C04B */  vaddw.xyz  $vf3, $vf0, $vf0w
    /* FAC04 001F9C84 6A08C24B */  vmul.xyz   $vf1, $vf1, $vf2
    /* FAC08 001F9C88 3D08014B */  .word      0x4B01083D    # vadday.x   ACC, $vf1, $vf1y
    /* FAC0C 001F9C8C 4A18014B */  vmaddz.x   $vf1, $vf3, $vf1z
    /* FAC10 001F9C90 00082448 */  qmfc2.ni   $4, $vf1
    /* FAC14 001F9C94 00000000 */  nop
    /* FAC18 001F9C98 0800E003 */  jr         $31
    /* FAC1C 001F9C9C 00008444 */   mtc1      $4, $f0
endlabel func_001F9C78
