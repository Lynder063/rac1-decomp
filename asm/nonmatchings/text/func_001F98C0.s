.align 3
nonmatching func_001F98C0, 0x28

glabel func_001F98C0
    /* FA840 001F98C0 803E013C */  lui        $at, (0x3E800000 >> 16)
    /* FA844 001F98C4 688182C7 */  lwc1       $f2, -0x7E98($gp)
    /* FA848 001F98C8 00088444 */  mtc1       $a0, $f1
    /* FA84C 001F98CC 00188144 */  mtc1       $at, $f3
    /* FA850 001F98D0 60088046 */  cvt.s.w    $f1, $f1
    /* FA854 001F98D4 18180346 */  adda.s     $f3, $f3
    /* FA858 001F98D8 5C080246 */  madd.s     $f1, $f1, $f2
    /* FA85C 001F98DC 64080046 */  .word      0x46000864                    # cvt.w.s    $f1, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* FA860 001F98E0 0800E003 */  jr         $ra
    /* FA864 001F98E4 00080244 */   mfc1      $v0, $f1
endlabel func_001F98C0
