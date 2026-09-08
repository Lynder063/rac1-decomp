.align 3
nonmatching func_0011BC40, 0x2C

glabel func_0011BC40
    /* 1CBC0 0011BC40 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1CBC4 0011BC44 0000BFFF */  sd         $ra, 0x0($sp)
    /* 1CBC8 0011BC48 FC6E040C */  jal        func_0011BBF0
    /* 1CBCC 0011BC4C 00000000 */   nop
    /* 1CBD0 0011BC50 1300023C */  lui        $v0, %hi(D_0012FD9C)
    /* 1CBD4 0011BC54 2C63040C */  jal        func_00118CB0
    /* 1CBD8 0011BC58 9CFD448C */   lw        $a0, %lo(D_0012FD9C)($v0)
    /* 1CBDC 0011BC5C 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1CBE0 0011BC60 2D100000 */  daddu      $v0, $zero, $zero
    /* 1CBE4 0011BC64 0800E003 */  jr         $ra
    /* 1CBE8 0011BC68 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0011BC40
    /* 1CBEC 0011BC6C 00000000 */  nop
