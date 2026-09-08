.align 3
nonmatching func_001FA8A8, 0x48

glabel func_001FA8A8
    /* FB828 001FA8A8 88260470 */  pextlb     $a0, $zero, $a0
    /* FB82C 001FA8AC 00600144 */  mfc1       $at, $f12
    /* FB830 001FA8B0 88250470 */  pextlh     $a0, $zero, $a0
    /* FB834 001FA8B4 882E0570 */  pextlb     $a1, $zero, $a1
    /* FB838 001FA8B8 882D0570 */  pextlh     $a1, $zero, $a1
    /* FB83C 001FA8BC 0008A148 */  qmtc2.ni   $at, $vf1
    /* FB840 001FA8C0 0010A448 */  qmtc2.ni   $a0, $vf2
    /* FB844 001FA8C4 0018A548 */  qmtc2.ni   $a1, $vf3
    /* FB848 001FA8C8 4400214A */  vsubx.w    $vf1, $vf0, $vf1x
    /* FB84C 001FA8CC 3C11E24B */  vitof0.xyzw $vf2, $vf2
    /* FB850 001FA8D0 3C19E34B */  vitof0.xyzw $vf3, $vf3
    /* FB854 001FA8D4 BF11E14B */  .word      0x4BE111BF    # vmulaw.xyzw ACC, $vf2, $vf1w
    /* FB858 001FA8D8 4818E14B */  vmaddx.xyzw $vf1, $vf3, $vf1x
    /* FB85C 001FA8DC 7C09E14B */  vftoi0.xyzw $vf1, $vf1
    /* FB860 001FA8E0 00082248 */  qmfc2.ni   $v0, $vf1
    /* FB864 001FA8E4 C8150270 */  ppach      $v0, $zero, $v0
    /* FB868 001FA8E8 0800E003 */  jr         $ra
    /* FB86C 001FA8EC C8160270 */   ppacb     $v0, $zero, $v0
endlabel func_001FA8A8
