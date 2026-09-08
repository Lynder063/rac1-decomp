.align 3
nonmatching func_0011A758, 0x18

glabel func_0011A758
    /* 1B6D8 0011A758 1500023C */  lui        $2, %hi(D_00155080)
    /* 1B6DC 0011A75C 80200400 */  sll        $4, $4, 2
    /* 1B6E0 0011A760 80504224 */  addiu      $2, $2, %lo(D_00155080)
    /* 1B6E4 0011A764 21208200 */  addu       $4, $4, $2
    /* 1B6E8 0011A768 0800E003 */  jr         $31
    /* 1B6EC 0011A76C 0000828C */   lw        $2, 0x0($4)
endlabel func_0011A758
