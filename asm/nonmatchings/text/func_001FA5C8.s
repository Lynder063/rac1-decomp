.align 3
nonmatching func_001FA5C8, 0x80

glabel func_001FA5C8
    /* FB548 001FA5C8 00600144 */  mfc1       $at, $f12
    /* FB54C 001FA5CC 0018A148 */  qmtc2.ni   $at, $vf3
    /* FB550 001FA5D0 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* FB554 001FA5D4 0000C2D8 */  lqc2       $vf2, 0x0($a2)
    /* FB558 001FA5D8 C400234A */  vsubx.w    $vf3, $vf0, $vf3x
    /* FB55C 001FA5DC C301C04B */  vaddw.xyz  $vf7, $vf0, $vf0w
    /* FB560 001FA5E0 5B08E34B */  vmulw.xyzw $vf1, $vf1, $vf3w
    /* FB564 001FA5E4 9810E34B */  vmulx.xyzw $vf2, $vf2, $vf3x
    /* FB568 001FA5E8 2809E24B */  vadd.xyzw  $vf4, $vf1, $vf2
    /* FB56C 001FA5EC AA09E24B */  vmul.xyzw  $vf6, $vf1, $vf2
    /* FB570 001FA5F0 6A21E44B */  vmul.xyzw  $vf5, $vf4, $vf4
    /* FB574 001FA5F4 3C30864A */  vaddax.y   ACC, $vf6, $vf6x
    /* FB578 001FA5F8 BE38864A */  vmaddaz.y  ACC, $vf7, $vf6z
    /* FB57C 001FA5FC 8B39864A */  vmaddw.y   $vf6, $vf7, $vf6w
    /* FB580 001FA600 3D28054B */  vadday.x   ACC, $vf5, $vf5y
    /* FB584 001FA604 BE38054B */  vmaddaz.x  ACC, $vf7, $vf5z
    /* FB588 001FA608 4B39054B */  vmaddw.x   $vf5, $vf7, $vf5w
    /* FB58C 001FA60C 00302948 */  qmfc2.ni   $t1, $vf6
    /* FB590 001FA610 07002105 */  bgez       $t1, .L001FA630
    /* FB594 001FA614 00000000 */   nop
    /* FB598 001FA618 2C09E24B */  vsub.xyzw  $vf4, $vf1, $vf2
    /* FB59C 001FA61C 6A21E44B */  vmul.xyzw  $vf5, $vf4, $vf4
    /* FB5A0 001FA620 3D28054B */  vadday.x   ACC, $vf5, $vf5y
    /* FB5A4 001FA624 BE38054B */  vmaddaz.x  ACC, $vf7, $vf5z
    /* FB5A8 001FA628 4B39054B */  vmaddw.x   $vf5, $vf7, $vf5w
    /* FB5AC 001FA62C 00000000 */  nop
.align 2
  .L001FA630:
    /* FB5B0 001FA630 BE03654A */  vrsqrt     Q, $vf0w, $vf5x
    /* FB5B4 001FA634 BF03004A */  vwaitq
    /* FB5B8 001FA638 5C20E04B */  vmulq.xyzw $vf1, $vf4, Q
    /* FB5BC 001FA63C 000081F8 */  sqc2       $vf1, 0x0($a0)
    /* FB5C0 001FA640 0800E003 */  jr         $ra
    /* FB5C4 001FA644 00000000 */   nop
endlabel func_001FA5C8
