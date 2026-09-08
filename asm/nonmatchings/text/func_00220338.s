.align 3
nonmatching func_00220338, 0x38

glabel func_00220338
    /* 1212B8 00220338 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1212BC 0022033C 42000424 */  addiu      $a0, $zero, 0x42
    /* 1212C0 00220340 0000BF7F */  sq         $ra, 0x0($sp)
    /* 1212C4 00220344 26D3080C */  jal        func_00234C98
    /* 1212C8 00220348 44000524 */   addiu     $a1, $zero, 0x44
    /* 1212CC 0022034C 47000424 */  addiu      $a0, $zero, 0x47
    /* 1212D0 00220350 26D3080C */  jal        func_00234C98
    /* 1212D4 00220354 0B000524 */   addiu     $a1, $zero, 0xB
    /* 1212D8 00220358 9C17080C */  jal        func_00205E70
    /* 1212DC 0022035C 00000000 */   nop
    /* 1212E0 00220360 0000BF7B */  lq         $ra, 0x0($sp)
    /* 1212E4 00220364 08000224 */  addiu      $v0, $zero, 0x8
    /* 1212E8 00220368 0800E003 */  jr         $ra
    /* 1212EC 0022036C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00220338
