.align 3
nonmatching func_0023E4B0, 0x30

glabel func_0023E4B0
    /* 13F430 0023E4B0 1600023C */  lui        $2, %hi(D_0016130C)
    /* 13F434 0023E4B4 0C13428C */  lw         $2, %lo(D_0016130C)($2)
    /* 13F438 0023E4B8 0D00043C */  lui        $4, (0xD9090 >> 16)
    /* 13F43C 0023E4BC F0FFBD27 */  addiu      $29, $29, -0x10
    /* 13F440 0023E4C0 90908434 */  ori        $4, $4, (0xD9090 & 0xFFFF)
    /* 13F444 0023E4C4 0000BF7F */  sq         $31, 0x0($29)
    /* 13F448 0023E4C8 50F5080C */  jal        func_0023D540
    /* 13F44C 0023E4CC 21204400 */   addu      $4, $2, $4
    /* 13F450 0023E4D0 0000BF7B */  lq         $31, 0x0($29)
    /* 13F454 0023E4D4 01000224 */  addiu      $2, $0, 0x1
    /* 13F458 0023E4D8 0800E003 */  jr         $31
    /* 13F45C 0023E4DC 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0023E4B0
