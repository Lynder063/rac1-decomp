.align 3
nonmatching func_00120670, 0x2C

glabel func_00120670
    /* 215F0 00120670 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 215F4 00120674 0000A4AF */  sw         $a0, 0x0($sp)
    /* 215F8 00120678 2000BFFF */  sd         $ra, 0x20($sp)
    /* 215FC 0012067C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 21600 00120680 0400A5AF */  sw         $a1, 0x4($sp)
    /* 21604 00120684 0800A6AF */  sw         $a2, 0x8($sp)
    /* 21608 00120688 8E7E040C */  jal        func_0011FA38
    /* 2160C 0012068C 1000A7FF */   sd        $a3, 0x10($sp)
    /* 21610 00120690 2000BFDF */  ld         $ra, 0x20($sp)
    /* 21614 00120694 0800E003 */  jr         $ra
    /* 21618 00120698 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00120670
    /* 2161C 0012069C 00000000 */  nop
