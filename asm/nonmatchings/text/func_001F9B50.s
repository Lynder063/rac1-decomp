.align 3
nonmatching func_001F9B50, 0x20

glabel func_001F9B50
    /* FAAD0 001F9B50 00600444 */  mfc1       $a0, $f12
    /* FAAD4 001F9B54 0008A448 */  qmtc2.ni   $a0, $vf1
    /* FAAD8 001F9B58 BD03014A */  .word      0x4A0103BD                    # vsqrt      Q, $vf1x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* FAADC 001F9B5C BF03004A */  vwaitq
    /* FAAE0 001F9B60 6000004B */  vaddq.x    $vf1, $vf0, Q
    /* FAAE4 001F9B64 00082448 */  qmfc2.ni   $a0, $vf1
    /* FAAE8 001F9B68 0800E003 */  jr         $ra
    /* FAAEC 001F9B6C 00008444 */   mtc1      $a0, $f0
endlabel func_001F9B50
