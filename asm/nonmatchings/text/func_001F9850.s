.align 3
nonmatching func_001F9850, 0x28

glabel func_001F9850
    /* FA7D0 001F9850 803E013C */  lui        $1, (0x3E800000 >> 16)
    /* FA7D4 001F9854 608182C7 */  lwc1       $f2, -0x7EA0($28)
    /* FA7D8 001F9858 00088444 */  mtc1       $4, $f1
    /* FA7DC 001F985C 00188144 */  mtc1       $1, $f3
    /* FA7E0 001F9860 60088046 */  cvt.s.w    $f1, $f1
    /* FA7E4 001F9864 18180346 */  adda.s     $f3, $f3
    /* FA7E8 001F9868 5C080246 */  madd.s     $f1, $f1, $f2
    /* FA7EC 001F986C 64080046 */  .word      0x46000864                    # cvt.w.s    $f1, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* FA7F0 001F9870 0800E003 */  jr         $31
    /* FA7F4 001F9874 00080244 */   mfc1      $2, $f1
endlabel func_001F9850
