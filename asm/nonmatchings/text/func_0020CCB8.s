.align 3
nonmatching func_0020CCB8, 0x18

glabel func_0020CCB8
    /* 10DC38 0020CCB8 1400023C */  lui        $2, %hi(D_0013D5C8)
    /* 10DC3C 0020CCBC C8D54224 */  addiu      $2, $2, %lo(D_0013D5C8)
    /* 10DC40 0020CCC0 21208200 */  addu       $4, $4, $2
    /* 10DC44 0020CCC4 00008290 */  lbu        $2, 0x0($4)
    /* 10DC48 0020CCC8 0800E003 */  jr         $31
    /* 10DC4C 0020CCCC 2B100200 */   sltu      $2, $0, $2
endlabel func_0020CCB8
