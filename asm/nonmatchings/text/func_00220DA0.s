.align 3
nonmatching func_00220DA0, 0x4C

glabel func_00220DA0
    /* 121D20 00220DA0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 121D24 00220DA4 1000BF7F */  sq         $ra, 0x10($sp)
    /* 121D28 00220DA8 0000B07F */  sq         $s0, 0x0($sp)
    /* 121D2C 00220DAC 2D808000 */  daddu      $s0, $a0, $zero
    /* 121D30 00220DB0 DA9B080C */  jal        func_00226F68
    /* 121D34 00220DB4 4800048E */   lw        $a0, 0x48($s0)
    /* 121D38 00220DB8 4C00048E */  lw         $a0, 0x4C($s0)
    /* 121D3C 00220DBC DA9B080C */  jal        func_00226F68
    /* 121D40 00220DC0 480002AE */   sw        $v0, 0x48($s0)
    /* 121D44 00220DC4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 121D48 00220DC8 4C0002AE */  sw         $v0, 0x4C($s0)
    /* 121D4C 00220DCC 440003AE */  sw         $v1, 0x44($s0)
    /* 121D50 00220DD0 2D100000 */  daddu      $v0, $zero, $zero
    /* 121D54 00220DD4 500003AE */  sw         $v1, 0x50($s0)
    /* 121D58 00220DD8 540003AE */  sw         $v1, 0x54($s0)
    /* 121D5C 00220DDC 1000BF7B */  lq         $ra, 0x10($sp)
    /* 121D60 00220DE0 0000B07B */  lq         $s0, 0x0($sp)
    /* 121D64 00220DE4 0800E003 */  jr         $ra
    /* 121D68 00220DE8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00220DA0
    /* 121D6C 00220DEC 00000000 */  nop
