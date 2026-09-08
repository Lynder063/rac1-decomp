.align 3
nonmatching func_001FFA90, 0x28

glabel func_001FFA90
    /* 100A10 001FFA90 1900043C */  lui        $4, %hi(D_001941CC)
    /* 100A14 001FFA94 0600033C */  lui        $3, (0x64000 >> 16)
    /* 100A18 001FFA98 CC41858C */  lw         $5, %lo(D_001941CC)($4)
    /* 100A1C 001FFA9C 1A00023C */  lui        $2, %hi(D_0019A4E8)
    /* 100A20 001FFAA0 00406334 */  ori        $3, $3, (0x64000 & 0xFFFF)
    /* 100A24 001FFAA4 E8A44224 */  addiu      $2, $2, %lo(D_0019A4E8)
    /* 100A28 001FFAA8 2118A300 */  addu       $3, $5, $3
    /* 100A2C 001FFAAC 100045AC */  sw         $5, 0x10($2)
    /* 100A30 001FFAB0 0800E003 */  jr         $31
    /* 100A34 001FFAB4 140043AC */   sw        $3, 0x14($2)
endlabel func_001FFA90
