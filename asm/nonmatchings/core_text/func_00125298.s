.align 3
nonmatching func_00125298, 0x64

glabel func_00125298
    /* 26218 00125298 A000BD27 */  addiu      $sp, $sp, 0xA0
    /* 2621C 0012529C CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 26220 001252A0 000089F8 */  sqc2       $vf9, 0x0($a0)
    /* 26224 001252A4 00000000 */  nop
    /* 26228 001252A8 00000000 */  nop
    /* 2622C 001252AC 00000000 */  nop
    /* 26230 001252B0 000086F8 */  sqc2       $vf6, 0x0($a0)
    /* 26234 001252B4 00000000 */  nop
    /* 26238 001252B8 00000000 */  nop
    /* 2623C 001252BC 00000000 */  nop
    /* 26240 001252C0 0000A4D8 */  lqc2       $vf4, 0x0($a1)
    /* 26244 001252C4 6A21C44B */  vmul.xyz   $vf5, $vf4, $vf4
    /* 26248 001252C8 4129054B */  vaddy.x    $vf5, $vf5, $vf5y
    /* 2624C 001252CC 4229054B */  vaddz.x    $vf5, $vf5, $vf5z
    /* 26250 001252D0 BD03054A */  .word      0x4A0503BD                    # vsqrt      Q, $vf5x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 26254 001252D4 BF03004A */  vwaitq
    /* 26258 001252D8 6001004B */  vaddq.x    $vf5, $vf0, Q
    /* 2625C 001252DC FF02004A */  vnop
    /* 26260 001252E0 FF02004A */  vnop
    /* 26264 001252E4 BC03654A */  vdiv       Q, $vf0w, $vf5x
    /* 26268 001252E8 AC01E04B */  vsub.xyzw  $vf6, $vf0, $vf0
    /* 2626C 001252EC BF03004A */  vwaitq
    /* 26270 001252F0 9C21C04B */  vmulq.xyz  $vf6, $vf4, Q
    /* 26274 001252F4 0800E003 */  jr         $ra
    /* 26278 001252F8 000086F8 */   sqc2      $vf6, 0x0($a0)
endlabel func_00125298
    /* 2627C 001252FC 00000000 */  nop
