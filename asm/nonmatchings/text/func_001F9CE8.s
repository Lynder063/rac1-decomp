.align 3
nonmatching func_001F9CE8, 0x28

glabel func_001F9CE8
    /* FAC68 001F9CE8 000081D8 */  lqc2       $vf1, 0x0($a0)
    /* FAC6C 001F9CEC 6A08C14B */  vmul.xyz   $vf1, $vf1, $vf1
    /* FAC70 001F9CF0 4108014B */  vaddy.x    $vf1, $vf1, $vf1y
    /* FAC74 001F9CF4 BD03014A */  .word      0x4A0103BD                    # vsqrt      Q, $vf1x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* FAC78 001F9CF8 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* FAC7C 001F9CFC 6000004B */  .word      0x4B000060    # vaddq.x    $vf1, $vf0, Q
    /* FAC80 001F9D00 00082448 */  qmfc2.ni   $a0, $vf1
    /* FAC84 001F9D04 00000000 */  nop
    /* FAC88 001F9D08 0800E003 */  jr         $ra
    /* FAC8C 001F9D0C 00008444 */   mtc1      $a0, $f0
endlabel func_001F9CE8
