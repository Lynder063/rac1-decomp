.align 3
nonmatching func_00222A90, 0x3C

glabel func_00222A90
    /* 123A10 00222A90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 123A14 00222A94 1D00023C */  lui        $v0, %hi(D_001D5F74)
    /* 123A18 00222A98 0000B07F */  sq         $s0, 0x0($sp)
    /* 123A1C 00222A9C 745F438C */  lw         $v1, %lo(D_001D5F74)($v0)
    /* 123A20 00222AA0 2D808000 */  daddu      $s0, $a0, $zero
    /* 123A24 00222AA4 1000BF7F */  sq         $ra, 0x10($sp)
    /* 123A28 00222AA8 2D200000 */  daddu      $a0, $zero, $zero
    /* 123A2C 00222AAC AA9B080C */  jal        func_00226EA8
    /* 123A30 00222AB0 840060AC */   sw        $zero, 0x84($v1)
    /* 123A34 00222AB4 540002AE */  sw         $v0, 0x54($s0)
    /* 123A38 00222AB8 1000BF7B */  lq         $ra, 0x10($sp)
    /* 123A3C 00222ABC 2D100000 */  daddu      $v0, $zero, $zero
    /* 123A40 00222AC0 0000B07B */  lq         $s0, 0x0($sp)
    /* 123A44 00222AC4 0800E003 */  jr         $ra
    /* 123A48 00222AC8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00222A90
    /* 123A4C 00222ACC 00000000 */  nop
