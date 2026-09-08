.align 3
nonmatching func_001E94A8, 0x18

glabel func_001E94A8
    /* EA428 001E94A8 1600023C */  lui        $2, %hi(D_0015EF8C)
    /* EA42C 001E94AC 8CEF428C */  lw         $2, %lo(D_0015EF8C)($2)
    /* EA430 001E94B0 1600013C */  lui        $1, %hi(D_0015F020)
    /* EA434 001E94B4 20F020AC */  sw         $0, %lo(D_0015F020)($1)
    /* EA438 001E94B8 0800E003 */  jr         $31
    /* EA43C 001E94BC 748282AF */   sw        $2, -0x7D8C($28)
endlabel func_001E94A8
    /* EA440 001E94C0 00000000 */  nop
    /* EA444 001E94C4 00000000 */  nop
