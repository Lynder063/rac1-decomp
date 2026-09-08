.align 3
nonmatching func_0012E038, 0x1C

glabel func_0012E038
    /* 2EFB8 0012E038 80100500 */  sll        $2, $5, 2
    /* 2EFBC 0012E03C 848085AF */  sw         $5, -0x7F7C($28)
    /* 2EFC0 0012E040 808084AF */  sw         $4, -0x7F80($28)
    /* 2EFC4 0012E044 21104400 */  addu       $2, $2, $4
    /* 2EFC8 0012E048 040040AC */  sw         $0, 0x4($2)
    /* 2EFCC 0012E04C 0800E003 */  jr         $31
    /* 2EFD0 0012E050 000080AC */   sw        $0, 0x0($4)
endlabel func_0012E038
    /* 2EFD4 0012E054 00000000 */  nop
