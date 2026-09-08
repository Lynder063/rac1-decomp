.align 3
nonmatching func_001F9B20, 0x28

glabel func_001F9B20
    /* FAAA0 001F9B20 000081D8 */  lqc2       $vf1, 0x0($4)
    /* FAAA4 001F9B24 FF02004A */  vnop
    /* FAAA8 001F9B28 FF09C14B */  .word      0x4BC109FF                    # vclipw.xyz $vf1, $vf1w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* FAAAC 001F9B2C FF02004A */  vnop
    /* FAAB0 001F9B30 FF02004A */  vnop
    /* FAAB4 001F9B34 FF02004A */  vnop
    /* FAAB8 001F9B38 FF02004A */  vnop
    /* FAABC 001F9B3C 00904248 */  cfc2.ni    $2, $vi18
    /* FAAC0 001F9B40 0800E003 */  jr         $31
    /* FAAC4 001F9B44 3F004230 */   andi      $2, $2, 0x3F
endlabel func_001F9B20
