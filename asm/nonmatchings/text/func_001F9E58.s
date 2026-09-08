.align 3
/* Handwritten function */
nonmatching func_001F9E58, 0x68

glabel func_001F9E58
    /* FADD8 001F9E58 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* FADDC 001F9E5C C300C04B */  vaddw.xyz  $vf3, $vf0, $vf0w
    /* FADE0 001F9E60 AA08C14B */  vmul.xyz   $vf2, $vf1, $vf1
    /* FADE4 001F9E64 3D10024B */  .word      0x4B02103D    # vadday.x   ACC, $vf2, $vf2y
    /* FADE8 001F9E68 8A18024B */  vmaddz.x   $vf2, $vf3, $vf2z
    /* FADEC 001F9E6C BD03024A */  .word      0x4A0203BD                    # vsqrt      Q, $vf2x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* FADF0 001F9E70 00600144 */  mfc1       $at, $f12
    /* FADF4 001F9E74 0018A148 */  qmtc2.ni   $at, $vf3
    /* FADF8 001F9E78 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* FADFC 001F9E7C A000004B */  .word      0x4B0000A0    # vaddq.x    $vf2, $vf0, Q
    /* FAE00 001F9E80 2419004B */  .word      0x4B001924    # vsubq.x    $vf4, $vf3, Q
    /* FAE04 001F9E84 00102148 */  qmfc2.ni   $at, $vf2
    /* FAE08 001F9E88 00202248 */  qmfc2.ni   $v0, $vf4
    /* FAE0C 001F9E8C 00000000 */  nop
    /* FAE10 001F9E90 09002010 */  beqz       $at, .L001F9EB8
    /* FAE14 001F9E94 3C100200 */   dsll32    $v0, $v0, 0
    /* FAE18 001F9E98 0700401C */  bgtz       $v0, .L001F9EB8
    /* FAE1C 001F9E9C 00000000 */   nop
    /* FAE20 001F9EA0 BC1B024A */  .word      0x4A021BBC    # vdiv       Q, $vf3x, $vf2x
    /* FAE24 001F9EA4 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* FAE28 001F9EA8 5C08C04B */  .word      0x4BC0085C    # vmulq.xyz  $vf1, $vf1, Q
    /* FAE2C 001F9EAC 000081F8 */  sqc2       $vf1, 0x0($a0)
    /* FAE30 001F9EB0 0800E003 */  jr         $ra
    /* FAE34 001F9EB4 01000220 */   addi      $v0, $zero, 0x1 /* handwritten instruction */
.align 2
  .L001F9EB8:
    /* FAE38 001F9EB8 0800E003 */  jr         $ra
    /* FAE3C 001F9EBC 00000220 */   addi      $v0, $zero, 0x0 /* handwritten instruction */
endlabel func_001F9E58
