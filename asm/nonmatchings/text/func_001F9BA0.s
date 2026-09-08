.align 3
nonmatching func_001F9BA0, 0x10

glabel func_001F9BA0
    /* FAB20 001F9BA0 E8108570 */  pminw      $v0, $a0, $a1
    /* FAB24 001F9BA4 E8104670 */  pminw      $v0, $v0, $a2
    /* FAB28 001F9BA8 0800E003 */  jr         $ra
    /* FAB2C 001F9BAC 03100200 */   sra       $v0, $v0, 0
endlabel func_001F9BA0
