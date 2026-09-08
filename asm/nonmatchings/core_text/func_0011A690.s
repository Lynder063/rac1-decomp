.align 3
nonmatching func_0011A690, 0x38

glabel func_0011A690
    /* 1B610 0011A690 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 1B614 0011A694 5800A5FF */  sd         $a1, 0x58($sp)
    /* 1B618 0011A698 0000BFFF */  sd         $ra, 0x0($sp)
    /* 1B61C 0011A69C 5800A527 */  addiu      $a1, $sp, 0x58
    /* 1B620 0011A6A0 6000A6FF */  sd         $a2, 0x60($sp)
    /* 1B624 0011A6A4 6800A7FF */  sd         $a3, 0x68($sp)
    /* 1B628 0011A6A8 7000A8FF */  sd         $t0, 0x70($sp)
    /* 1B62C 0011A6AC 7800A9FF */  sd         $t1, 0x78($sp)
    /* 1B630 0011A6B0 8000AAFF */  sd         $t2, 0x80($sp)
    /* 1B634 0011A6B4 2868040C */  jal        func_0011A0A0
    /* 1B638 0011A6B8 8800ABFF */   sd        $t3, 0x88($sp)
    /* 1B63C 0011A6BC 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1B640 0011A6C0 0800E003 */  jr         $ra
    /* 1B644 0011A6C4 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_0011A690
