.align 3
nonmatching func_001F7E98, 0x60

glabel func_001F7E98
    /* F8E18 001F7E98 0306C04B */  vaddw.xyz  $vf24, $vf0, $vf0w
    /* F8E1C 001F7E9C 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* F8E20 001F7EA0 0000C2D8 */  lqc2       $vf2, 0x0($a2)
    /* F8E24 001F7EA4 0000E3D8 */  lqc2       $vf3, 0x0($a3)
    /* F8E28 001F7EA8 2C11C14B */  vsub.xyz   $vf4, $vf2, $vf1
    /* F8E2C 001F7EAC 6C19C14B */  vsub.xyz   $vf5, $vf3, $vf1
    /* F8E30 001F7EB0 AA21C44B */  vmul.xyz   $vf6, $vf4, $vf4
    /* F8E34 001F7EB4 EA21C54B */  vmul.xyz   $vf7, $vf4, $vf5
    /* F8E38 001F7EB8 3D30064B */  .word      0x4B06303D    # vadday.x   ACC, $vf6, $vf6y
    /* F8E3C 001F7EBC 8AC1064B */  vmaddz.x   $vf6, $vf24, $vf6z
    /* F8E40 001F7EC0 3D38074B */  .word      0x4B07383D    # vadday.x   ACC, $vf7, $vf7y
    /* F8E44 001F7EC4 CAC1074B */  vmaddz.x   $vf7, $vf24, $vf7z
    /* F8E48 001F7EC8 BC3B064A */  .word      0x4A063BBC    # vdiv       Q, $vf7x, $vf6x
    /* F8E4C 001F7ECC BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F8E50 001F7ED0 2002004B */  .word      0x4B000220    # vaddq.x    $vf8, $vf0, Q
    /* F8E54 001F7ED4 D741004B */  vminiw.x   $vf7, $vf8, $vf0w
    /* F8E58 001F7ED8 00402848 */  qmfc2.ni   $t0, $vf8
    /* F8E5C 001F7EDC 00000000 */  nop
    /* F8E60 001F7EE0 D039004B */  vmaxx.x    $vf7, $vf7, $vf0x
    /* F8E64 001F7EE4 00008844 */  mtc1       $t0, $f0
    /* F8E68 001F7EE8 BC21C74B */  .word      0x4BC721BC    # vmulax.xyz ACC, $vf4, $vf7x
    /* F8E6C 001F7EEC 4B08C04B */  vmaddw.xyz $vf1, $vf1, $vf0w
    /* F8E70 001F7EF0 0800E003 */  jr         $ra
    /* F8E74 001F7EF4 000081F8 */   sqc2      $vf1, 0x0($a0)
endlabel func_001F7E98
