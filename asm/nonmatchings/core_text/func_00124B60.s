.align 3
nonmatching func_00124B60, 0x28

glabel func_00124B60
    /* 25AE0 00124B60 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 25AE4 00124B64 4800A5FF */  sd         $a1, 0x48($sp)
    /* 25AE8 00124B68 5000A6FF */  sd         $a2, 0x50($sp)
    /* 25AEC 00124B6C 5800A7FF */  sd         $a3, 0x58($sp)
    /* 25AF0 00124B70 6000A8FF */  sd         $t0, 0x60($sp)
    /* 25AF4 00124B74 6800A9FF */  sd         $t1, 0x68($sp)
    /* 25AF8 00124B78 7000AAFF */  sd         $t2, 0x70($sp)
    /* 25AFC 00124B7C 7800ABFF */  sd         $t3, 0x78($sp)
    /* 25B00 00124B80 0800E003 */  jr         $ra
    /* 25B04 00124B84 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_00124B60
