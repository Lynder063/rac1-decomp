.align 3
nonmatching func_001F9888, 0x28

glabel func_001F9888
    /* FA808 001F9888 803E013C */  lui        $at, (0x3E800000 >> 16)
    /* FA80C 001F988C 648182C7 */  lwc1       $f2, -0x7E9C($gp)
    /* FA810 001F9890 00088444 */  mtc1       $a0, $f1
    /* FA814 001F9894 00188144 */  mtc1       $at, $f3
    /* FA818 001F9898 60088046 */  cvt.s.w    $f1, $f1
    /* FA81C 001F989C 18180346 */  adda.s     $f3, $f3
    /* FA820 001F98A0 5C080246 */  madd.s     $f1, $f1, $f2
    /* FA824 001F98A4 64080046 */  .word      0x46000864                    # cvt.w.s    $f1, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* FA828 001F98A8 0800E003 */  jr         $ra
    /* FA82C 001F98AC 00080244 */   mfc1      $v0, $f1
endlabel func_001F9888
