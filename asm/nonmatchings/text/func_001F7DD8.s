.align 3
nonmatching func_001F7DD8, 0xC0

glabel func_001F7DD8
    /* F8D58 001F7DD8 1800A88C */  lw         $t0, 0x18($a1)
    /* F8D5C 001F7DDC 00000000 */  nop
    /* F8D60 001F7DE0 00600A44 */  mfc1       $t2, $f12
    /* F8D64 001F7DE4 00000000 */  nop
    /* F8D68 001F7DE8 88460870 */  pextlb     $t0, $zero, $t0
    /* F8D6C 001F7DEC 1800C98C */  lw         $t1, 0x18($a2)
    /* F8D70 001F7DF0 88450870 */  pextlh     $t0, $zero, $t0
    /* F8D74 001F7DF4 0008AA48 */  qmtc2.ni   $t2, $vf1
    /* F8D78 001F7DF8 0028A848 */  qmtc2.ni   $t0, $vf5
    /* F8D7C 001F7DFC 884E0970 */  pextlb     $t1, $zero, $t1
    /* F8D80 001F7E00 884D0970 */  pextlh     $t1, $zero, $t1
    /* F8D84 001F7E04 F4FF0014 */  bnez       $zero, func_001F7DD8
    /* F8D88 001F7E08 0018A948 */   qmtc2.ni  $t1, $vf3
    /* F8D8C 001F7E0C 00000000 */  nop
    /* F8D90 001F7E10 3C29E54B */  vitof0.xyzw $vf5, $vf5
    /* F8D94 001F7E14 8401214A */  vsubx.w    $vf6, $vf0, $vf1x
    /* F8D98 001F7E18 3C19E34B */  vitof0.xyzw $vf3, $vf3
    /* F8D9C 001F7E1C 00000000 */  nop
    /* F8DA0 001F7E20 00000000 */  nop
    /* F8DA4 001F7E24 00000000 */  nop
    /* F8DA8 001F7E28 0000A2D8 */  lqc2       $vf2, 0x0($a1)
    /* F8DAC 001F7E2C 00000000 */  nop
    /* F8DB0 001F7E30 BF29E64B */  vmulaw.xyzw ACC, $vf5, $vf6w
    /* F8DB4 001F7E34 4819E14B */  vmaddx.xyzw $vf5, $vf3, $vf1x
    /* F8DB8 001F7E38 0000C3D8 */  lqc2       $vf3, 0x0($a2)
    /* F8DBC 001F7E3C 00000000 */  nop
    /* F8DC0 001F7E40 BF11E64B */  vmulaw.xyzw ACC, $vf2, $vf6w
    /* F8DC4 001F7E44 8818E14B */  vmaddx.xyzw $vf2, $vf3, $vf1x
    /* F8DC8 001F7E48 7D29E54B */  vftoi4.xyzw $vf5, $vf5
    /* F8DCC 001F7E4C 00000000 */  nop
    /* F8DD0 001F7E50 1000A3D8 */  lqc2       $vf3, 0x10($a1)
    /* F8DD4 001F7E54 00000000 */  nop
    /* F8DD8 001F7E58 1000C4D8 */  lqc2       $vf4, 0x10($a2)
    /* F8DDC 001F7E5C 00000000 */  nop
    /* F8DE0 001F7E60 BF19864B */  vmulaw.xy  ACC, $vf3, $vf6w
    /* F8DE4 001F7E64 02000834 */  ori        $t0, $zero, 0x2
    /* F8DE8 001F7E68 C820814B */  vmaddx.xy  $vf3, $vf4, $vf1x
    /* F8DEC 001F7E6C 00000000 */  nop
    /* F8DF0 001F7E70 E9460870 */  pcpyh      $t0, $t0
    /* F8DF4 001F7E74 00282948 */  qmfc2.ni   $t1, $vf5
    /* F8DF8 001F7E78 C84D0970 */  ppach      $t1, $zero, $t1
    /* F8DFC 001F7E7C 08492871 */  paddh      $t1, $t1, $t0
    /* F8E00 001F7E80 36490970 */  psrlh      $t1, $t1, 4
    /* F8E04 001F7E84 100083F8 */  sqc2       $vf3, 0x10($a0)
    /* F8E08 001F7E88 C84E0970 */  ppacb      $t1, $zero, $t1
    /* F8E0C 001F7E8C 000082F8 */  sqc2       $vf2, 0x0($a0)
    /* F8E10 001F7E90 0800E003 */  jr         $ra
    /* F8E14 001F7E94 180089AC */   sw        $t1, 0x18($a0)
endlabel func_001F7DD8
