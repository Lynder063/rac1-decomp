.align 3
nonmatching func_0023E450, 0x28

glabel func_0023E450
    /* 13F3D0 0023E450 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13F3D4 0023E454 1600043C */  lui        $a0, %hi(D_00161328)
    /* 13F3D8 0023E458 0000BF7F */  sq         $ra, 0x0($sp)
    /* 13F3DC 0023E45C 28138424 */  addiu      $a0, $a0, %lo(D_00161328)
    /* 13F3E0 0023E460 CCA5070C */  jal        func_001E9730
    /* 13F3E4 0023E464 0400A58C */   lw        $a1, 0x4($a1)
    /* 13F3E8 0023E468 0000BF7B */  lq         $ra, 0x0($sp)
    /* 13F3EC 0023E46C 01000224 */  addiu      $v0, $zero, 0x1
    /* 13F3F0 0023E470 0800E003 */  jr         $ra
    /* 13F3F4 0023E474 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0023E450
