.align 3
nonmatching func_001FA1F8, 0x20

glabel func_001FA1F8
    /* FB178 001FA1F8 0000A1D8 */  lqc2       $vf1, 0x0($5)
    /* FB17C 001FA1FC F868004A */  .word      0x4A0068F8    # vcallms    0xD18
    /* FB180 001FA200 01A02148 */  qmfc2.i    $1, $vf20
    /* FB184 001FA204 000094F8 */  sqc2       $vf20, 0x0($4)
    /* FB188 001FA208 100095F8 */  sqc2       $vf21, 0x10($4)
    /* FB18C 001FA20C 200096F8 */  sqc2       $vf22, 0x20($4)
    /* FB190 001FA210 0800E003 */  jr         $31
    /* FB194 001FA214 00000000 */   nop
endlabel func_001FA1F8
