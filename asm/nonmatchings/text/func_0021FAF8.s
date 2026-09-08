.align 3
nonmatching func_0021FAF8, 0x30

glabel func_0021FAF8
    /* 120A78 0021FAF8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 120A7C 0021FAFC 1000BF7F */  sq         $ra, 0x10($sp)
    /* 120A80 0021FB00 0000B07F */  sq         $s0, 0x0($sp)
    /* 120A84 0021FB04 2D808000 */  daddu      $s0, $a0, $zero
    /* 120A88 0021FB08 F099080C */  jal        func_002267C0
    /* 120A8C 0021FB0C 4400048E */   lw        $a0, 0x44($s0)
    /* 120A90 0021FB10 440002AE */  sw         $v0, 0x44($s0)
    /* 120A94 0021FB14 1000BF7B */  lq         $ra, 0x10($sp)
    /* 120A98 0021FB18 2D100000 */  daddu      $v0, $zero, $zero
    /* 120A9C 0021FB1C 0000B07B */  lq         $s0, 0x0($sp)
    /* 120AA0 0021FB20 0800E003 */  jr         $ra
    /* 120AA4 0021FB24 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0021FAF8
