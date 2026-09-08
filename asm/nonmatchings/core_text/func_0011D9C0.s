.align 3
nonmatching func_0011D9C0, 0x48

glabel func_0011D9C0
    /* 1E940 0011D9C0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1E944 0011D9C4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1E948 0011D9C8 4000BFFF */  sd         $ra, 0x40($sp)
    /* 1E94C 0011D9CC 2D20A003 */  daddu      $a0, $sp, $zero
    /* 1E950 0011D9D0 2800A2AF */  sw         $v0, 0x28($sp)
    /* 1E954 0011D9D4 0400A2AF */  sw         $v0, 0x4($sp)
    /* 1E958 0011D9D8 0800A2AF */  sw         $v0, 0x8($sp)
    /* 1E95C 0011D9DC 1C63040C */  jal        func_00118C70
    /* 1E960 0011D9E0 2400A2AF */   sw        $v0, 0x24($sp)
    /* 1E964 0011D9E4 1300033C */  lui        $v1, %hi(D_00130420)
    /* 1E968 0011D9E8 2000A427 */  addiu      $a0, $sp, 0x20
    /* 1E96C 0011D9EC 1C63040C */  jal        func_00118C70
    /* 1E970 0011D9F0 200462AC */   sw        $v0, %lo(D_00130420)($v1)
    /* 1E974 0011D9F4 1300033C */  lui        $v1, %hi(D_00130424)
    /* 1E978 0011D9F8 4000BFDF */  ld         $ra, 0x40($sp)
    /* 1E97C 0011D9FC 240462AC */  sw         $v0, %lo(D_00130424)($v1)
    /* 1E980 0011DA00 0800E003 */  jr         $ra
    /* 1E984 0011DA04 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0011D9C0
