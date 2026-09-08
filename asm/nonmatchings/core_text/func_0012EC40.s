.align 3
nonmatching func_0012EC40, 0x20

glabel func_0012EC40
    /* 2FBC0 0012EC40 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2FBC4 0012EC44 C48080AF */  sw         $zero, -0x7F3C($gp)
    /* 2FBC8 0012EC48 0000BF7F */  sq         $ra, 0x0($sp)
    /* 2FBCC 0012EC4C 70B7040C */  jal        func_0012DDC0
    /* 2FBD0 0012EC50 00000000 */   nop
    /* 2FBD4 0012EC54 0000BF7B */  lq         $ra, 0x0($sp)
    /* 2FBD8 0012EC58 0800E003 */  jr         $ra
    /* 2FBDC 0012EC5C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012EC40
