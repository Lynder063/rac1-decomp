.align 3
nonmatching func_00233FF8, 0x1C

glabel func_00233FF8
    /* 134F78 00233FF8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 134F7C 00233FFC 0000BF7F */  sq         $ra, 0x0($sp)
    /* 134F80 00234000 886B040C */  jal        func_0011AE20
    /* 134F84 00234004 2D200000 */   daddu     $a0, $zero, $zero
    /* 134F88 00234008 0000BF7B */  lq         $ra, 0x0($sp)
    /* 134F8C 0023400C 0800E003 */  jr         $ra
    /* 134F90 00234010 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00233FF8
    /* 134F94 00234014 00000000 */  nop
