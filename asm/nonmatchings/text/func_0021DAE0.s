.align 3
nonmatching func_0021DAE0, 0x20

glabel func_0021DAE0
    /* 11EA60 0021DAE0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 11EA64 0021DAE4 0000BF7F */  sq         $ra, 0x0($sp)
    /* 11EA68 0021DAE8 549B080C */  jal        func_00226D50
    /* 11EA6C 0021DAEC 01000424 */   addiu     $a0, $zero, 0x1
    /* 11EA70 0021DAF0 0000BF7B */  lq         $ra, 0x0($sp)
    /* 11EA74 0021DAF4 2D100000 */  daddu      $v0, $zero, $zero
    /* 11EA78 0021DAF8 0800E003 */  jr         $ra
    /* 11EA7C 0021DAFC 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0021DAE0
