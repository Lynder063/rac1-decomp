.align 3
nonmatching func_001E94A8, 0x18

glabel func_001E94A8
    /* EA428 001E94A8 1600023C */  lui        $v0, %hi(D_0015EF8C)
    /* EA42C 001E94AC 8CEF428C */  lw         $v0, %lo(D_0015EF8C)($v0)
    /* EA430 001E94B0 1600013C */  lui        $at, %hi(D_0015F020)
    /* EA434 001E94B4 20F020AC */  sw         $zero, %lo(D_0015F020)($at)
    /* EA438 001E94B8 0800E003 */  jr         $ra
    /* EA43C 001E94BC 748282AF */   sw        $v0, -0x7D8C($gp)
endlabel func_001E94A8
    /* EA440 001E94C0 00000000 */  nop
    /* EA444 001E94C4 00000000 */  nop
