.align 3
nonmatching func_001FFA90, 0x28

glabel func_001FFA90
    /* 100A10 001FFA90 1900043C */  lui        $a0, %hi(D_001941CC)
    /* 100A14 001FFA94 0600033C */  lui        $v1, (0x64000 >> 16)
    /* 100A18 001FFA98 CC41858C */  lw         $a1, %lo(D_001941CC)($a0)
    /* 100A1C 001FFA9C 1A00023C */  lui        $v0, %hi(D_0019A4E8)
    /* 100A20 001FFAA0 00406334 */  ori        $v1, $v1, (0x64000 & 0xFFFF)
    /* 100A24 001FFAA4 E8A44224 */  addiu      $v0, $v0, %lo(D_0019A4E8)
    /* 100A28 001FFAA8 2118A300 */  addu       $v1, $a1, $v1
    /* 100A2C 001FFAAC 100045AC */  sw         $a1, 0x10($v0)
    /* 100A30 001FFAB0 0800E003 */  jr         $ra
    /* 100A34 001FFAB4 140043AC */   sw        $v1, 0x14($v0)
endlabel func_001FFA90
