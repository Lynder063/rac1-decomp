.align 3
nonmatching func_0022F4A0, 0x1C

glabel func_0022F4A0
    /* 130420 0022F4A0 01000224 */  addiu      $2, $0, 0x1
    /* 130424 0022F4A4 1600013C */  lui        $1, %hi(D_0015F6E4)
    /* 130428 0022F4A8 E4F624AC */  sw         $4, %lo(D_0015F6E4)($1)
    /* 13042C 0022F4AC 1600013C */  lui        $1, %hi(D_0015F6FC)
    /* 130430 0022F4B0 FCF622AC */  sw         $2, %lo(D_0015F6FC)($1)
    /* 130434 0022F4B4 0800E003 */  jr         $31
    /* 130438 0022F4B8 908982AF */   sw        $2, -0x7670($28)
endlabel func_0022F4A0
    /* 13043C 0022F4BC 00000000 */  nop
