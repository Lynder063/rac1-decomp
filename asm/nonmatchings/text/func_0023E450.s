.align 3
nonmatching func_0023E450, 0x28

glabel func_0023E450
    /* 13F3D0 0023E450 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 13F3D4 0023E454 1600043C */  lui        $4, %hi(D_00161328)
    /* 13F3D8 0023E458 0000BF7F */  sq         $31, 0x0($29)
    /* 13F3DC 0023E45C 28138424 */  addiu      $4, $4, %lo(D_00161328)
    /* 13F3E0 0023E460 CCA5070C */  jal        func_001E9730
    /* 13F3E4 0023E464 0400A58C */   lw        $5, 0x4($5)
    /* 13F3E8 0023E468 0000BF7B */  lq         $31, 0x0($29)
    /* 13F3EC 0023E46C 01000224 */  addiu      $2, $0, 0x1
    /* 13F3F0 0023E470 0800E003 */  jr         $31
    /* 13F3F4 0023E474 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0023E450
