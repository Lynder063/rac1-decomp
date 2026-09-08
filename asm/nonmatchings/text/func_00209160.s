.align 3
nonmatching func_00209160, 0x24

glabel func_00209160
    /* 10A0E0 00209160 1400023C */  lui        $v0, %hi(D_0013D390)
    /* 10A0E4 00209164 03000324 */  addiu      $v1, $zero, 0x3
    /* 10A0E8 00209168 90D34224 */  addiu      $v0, $v0, %lo(D_0013D390)
    /* 10A0EC 0020916C 1600013C */  lui        $at, %hi(D_0015EFB0)
    /* 10A0F0 00209170 B0EF23AC */  sw         $v1, %lo(D_0015EFB0)($at)
    /* 10A0F4 00209174 C400448C */  lw         $a0, 0xC4($v0)
    /* 10A0F8 00209178 FC0040AC */  sw         $zero, 0xFC($v0)
    /* 10A0FC 0020917C 0800E003 */  jr         $ra
    /* 10A100 00209180 1C0044AC */   sw        $a0, 0x1C($v0)
endlabel func_00209160
    /* 10A104 00209184 00000000 */  nop
