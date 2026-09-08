.align 3
nonmatching func_0012E038, 0x1C

glabel func_0012E038
    /* 2EFB8 0012E038 80100500 */  sll        $v0, $a1, 2
    /* 2EFBC 0012E03C 848085AF */  sw         $a1, -0x7F7C($gp)
    /* 2EFC0 0012E040 808084AF */  sw         $a0, -0x7F80($gp)
    /* 2EFC4 0012E044 21104400 */  addu       $v0, $v0, $a0
    /* 2EFC8 0012E048 040040AC */  sw         $zero, 0x4($v0)
    /* 2EFCC 0012E04C 0800E003 */  jr         $ra
    /* 2EFD0 0012E050 000080AC */   sw        $zero, 0x0($a0)
endlabel func_0012E038
    /* 2EFD4 0012E054 00000000 */  nop
