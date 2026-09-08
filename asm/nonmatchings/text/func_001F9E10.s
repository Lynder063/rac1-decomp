.align 3
nonmatching func_001F9E10, 0x48

glabel func_001F9E10
    /* FAD90 001F9E10 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* FAD94 001F9E14 AA08814B */  vmul.xy    $vf2, $vf1, $vf1
    /* FAD98 001F9E18 8110024B */  vaddy.x    $vf2, $vf2, $vf2y
    /* FAD9C 001F9E1C 00600144 */  mfc1       $at, $f12
    /* FADA0 001F9E20 0018A148 */  qmtc2.ni   $at, $vf3
    /* FADA4 001F9E24 BE1B024A */  .word      0x4A021BBE    # vrsqrt     Q, $vf3x, $vf2x
    /* FADA8 001F9E28 00102148 */  qmfc2.ni   $at, $vf2
    /* FADAC 001F9E2C 3C080100 */  dsll32     $at, $at, 0
    /* FADB0 001F9E30 05002010 */  beqz       $at, .L001F9E48
    /* FADB4 001F9E34 00000000 */   nop
    /* FADB8 001F9E38 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* FADBC 001F9E3C 5C08804B */  .word      0x4B80085C    # vmulq.xy   $vf1, $vf1, Q
    /* FADC0 001F9E40 0800E003 */  jr         $ra
    /* FADC4 001F9E44 000081F8 */   sqc2      $vf1, 0x0($a0)
.align 2
  .L001F9E48:
    /* FADC8 001F9E48 6800804B */  vadd.xy    $vf1, $vf0, $vf0
    /* FADCC 001F9E4C 00000000 */  nop
    /* FADD0 001F9E50 0800E003 */  jr         $ra
    /* FADD4 001F9E54 000081F8 */   sqc2      $vf1, 0x0($a0)
endlabel func_001F9E10
