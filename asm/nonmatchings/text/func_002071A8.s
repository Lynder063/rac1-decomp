.align 3
nonmatching func_002071A8, 0x28

glabel func_002071A8
    /* 108128 002071A8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 10812C 002071AC D3000624 */  addiu      $a2, $zero, 0xD3
    /* 108130 002071B0 0000BF7F */  sq         $ra, 0x0($sp)
    /* 108134 002071B4 DB000724 */  addiu      $a3, $zero, 0xDB
    /* 108138 002071B8 29010824 */  addiu      $t0, $zero, 0x129
    /* 10813C 002071BC 1224080C */  jal        func_00209048
    /* 108140 002071C0 F9000924 */   addiu     $t1, $zero, 0xF9
    /* 108144 002071C4 0000BF7B */  lq         $ra, 0x0($sp)
    /* 108148 002071C8 0800E003 */  jr         $ra
    /* 10814C 002071CC 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_002071A8
