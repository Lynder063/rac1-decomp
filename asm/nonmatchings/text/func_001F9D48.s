.align 3
nonmatching func_001F9D48, 0x30

glabel func_001F9D48
    /* FACC8 001F9D48 000081D8 */  lqc2       $vf1, 0x0($a0)
    /* FACCC 001F9D4C 0000A2D8 */  lqc2       $vf2, 0x0($a1)
    /* FACD0 001F9D50 6C08824B */  vsub.xy    $vf1, $vf1, $vf2
    /* FACD4 001F9D54 6A08814B */  vmul.xy    $vf1, $vf1, $vf1
    /* FACD8 001F9D58 4108014B */  vaddy.x    $vf1, $vf1, $vf1y
    /* FACDC 001F9D5C BD03014A */  .word      0x4A0103BD                    # vsqrt      Q, $vf1x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* FACE0 001F9D60 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* FACE4 001F9D64 6000004B */  .word      0x4B000060    # vaddq.x    $vf1, $vf0, Q
    /* FACE8 001F9D68 00082448 */  qmfc2.ni   $a0, $vf1
    /* FACEC 001F9D6C 00000000 */  nop
    /* FACF0 001F9D70 0800E003 */  jr         $ra
    /* FACF4 001F9D74 00008444 */   mtc1      $a0, $f0
endlabel func_001F9D48
