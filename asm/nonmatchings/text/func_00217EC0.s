.align 3
nonmatching func_00217EC0, 0x14

glabel func_00217EC0
    /* 118E40 00217EC0 1400023C */  lui        $v0, %hi(D_0013CA40)
    /* 118E44 00217EC4 40CA4224 */  addiu      $v0, $v0, %lo(D_0013CA40)
    /* 118E48 00217EC8 900140AC */  sw         $zero, 0x190($v0)
    /* 118E4C 00217ECC 0800E003 */  jr         $ra
    /* 118E50 00217ED0 8E0140A4 */   sh        $zero, 0x18E($v0)
endlabel func_00217EC0
    /* 118E54 00217ED4 00000000 */  nop
