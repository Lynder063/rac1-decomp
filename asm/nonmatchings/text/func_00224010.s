.align 3
nonmatching func_00224010, 0x30

glabel func_00224010
    /* 124F90 00224010 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 124F94 00224014 1000BF7F */  sq         $ra, 0x10($sp)
    /* 124F98 00224018 0000B07F */  sq         $s0, 0x0($sp)
    /* 124F9C 0022401C 2D808000 */  daddu      $s0, $a0, $zero
    /* 124FA0 00224020 DA9B080C */  jal        func_00226F68
    /* 124FA4 00224024 4800048E */   lw        $a0, 0x48($s0)
    /* 124FA8 00224028 480002AE */  sw         $v0, 0x48($s0)
    /* 124FAC 0022402C 1000BF7B */  lq         $ra, 0x10($sp)
    /* 124FB0 00224030 2D100000 */  daddu      $v0, $zero, $zero
    /* 124FB4 00224034 0000B07B */  lq         $s0, 0x0($sp)
    /* 124FB8 00224038 0800E003 */  jr         $ra
    /* 124FBC 0022403C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00224010
