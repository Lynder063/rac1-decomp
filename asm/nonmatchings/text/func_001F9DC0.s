.align 3
nonmatching func_001F9DC0, 0x50

glabel func_001F9DC0
    /* FAD40 001F9DC0 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* FAD44 001F9DC4 C300C04B */  vaddw.xyz  $vf3, $vf0, $vf0w
    /* FAD48 001F9DC8 AA08C14B */  vmul.xyz   $vf2, $vf1, $vf1
    /* FAD4C 001F9DCC 3D10024B */  .word      0x4B02103D    # vadday.x   ACC, $vf2, $vf2y
    /* FAD50 001F9DD0 8A18024B */  vmaddz.x   $vf2, $vf3, $vf2z
    /* FAD54 001F9DD4 00600144 */  mfc1       $at, $f12
    /* FAD58 001F9DD8 0018A148 */  qmtc2.ni   $at, $vf3
    /* FAD5C 001F9DDC BE1B024A */  .word      0x4A021BBE    # vrsqrt     Q, $vf3x, $vf2x
    /* FAD60 001F9DE0 00102148 */  qmfc2.ni   $at, $vf2
    /* FAD64 001F9DE4 3C080100 */  dsll32     $at, $at, 0
    /* FAD68 001F9DE8 05002010 */  beqz       $at, .L001F9E00
    /* FAD6C 001F9DEC 00000000 */   nop
    /* FAD70 001F9DF0 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* FAD74 001F9DF4 5C08C04B */  .word      0x4BC0085C    # vmulq.xyz  $vf1, $vf1, Q
    /* FAD78 001F9DF8 0800E003 */  jr         $ra
    /* FAD7C 001F9DFC 000081F8 */   sqc2      $vf1, 0x0($a0)
.align 2
  .L001F9E00:
    /* FAD80 001F9E00 6800C04B */  vadd.xyz   $vf1, $vf0, $vf0
    /* FAD84 001F9E04 00000000 */  nop
    /* FAD88 001F9E08 0800E003 */  jr         $ra
    /* FAD8C 001F9E0C 000081F8 */   sqc2      $vf1, 0x0($a0)
endlabel func_001F9DC0
