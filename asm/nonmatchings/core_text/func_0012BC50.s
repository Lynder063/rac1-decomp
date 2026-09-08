.align 3
nonmatching func_0012BC50, 0x24

glabel func_0012BC50
    /* 2CBD0 0012BC50 4000828C */  lw         $2, 0x40($4)
    /* 2CBD4 0012BC54 C0280500 */  sll        $5, $5, 3
    /* 2CBD8 0012BC58 0C004324 */  addiu      $3, $2, 0xC
    /* 2CBDC 0012BC5C 21104500 */  addu       $2, $2, $5
    /* 2CBE0 0012BC60 21186500 */  addu       $3, $3, $5
    /* 2CBE4 0012BC64 100047AC */  sw         $7, 0x10($2)
    /* 2CBE8 0012BC68 0000628C */  lw         $2, 0x0($3)
    /* 2CBEC 0012BC6C 0800E003 */  jr         $31
    /* 2CBF0 0012BC70 000066AC */   sw        $6, 0x0($3)
endlabel func_0012BC50
    /* 2CBF4 0012BC74 00000000 */  nop
