.align 3
nonmatching func_0012BC50, 0x24

glabel func_0012BC50
    /* 2CBD0 0012BC50 4000828C */  lw         $v0, 0x40($a0)
    /* 2CBD4 0012BC54 C0280500 */  sll        $a1, $a1, 3
    /* 2CBD8 0012BC58 0C004324 */  addiu      $v1, $v0, 0xC
    /* 2CBDC 0012BC5C 21104500 */  addu       $v0, $v0, $a1
    /* 2CBE0 0012BC60 21186500 */  addu       $v1, $v1, $a1
    /* 2CBE4 0012BC64 100047AC */  sw         $a3, 0x10($v0)
    /* 2CBE8 0012BC68 0000628C */  lw         $v0, 0x0($v1)
    /* 2CBEC 0012BC6C 0800E003 */  jr         $ra
    /* 2CBF0 0012BC70 000066AC */   sw        $a2, 0x0($v1)
endlabel func_0012BC50
    /* 2CBF4 0012BC74 00000000 */  nop
