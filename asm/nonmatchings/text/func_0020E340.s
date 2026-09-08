.align 3
nonmatching func_0020E340, 0x20

glabel func_0020E340
    /* 10F2C0 0020E340 3C280500 */  dsll32     $a1, $a1, 0
    /* 10F2C4 0020E344 383A0700 */  dsll       $a3, $a3, 8
    /* 10F2C8 0020E348 38440800 */  dsll       $t0, $t0, 16
    /* 10F2CC 0020E34C 2510A600 */  or         $v0, $a1, $a2
    /* 10F2D0 0020E350 25104700 */  or         $v0, $v0, $a3
    /* 10F2D4 0020E354 25104800 */  or         $v0, $v0, $t0
    /* 10F2D8 0020E358 0800E003 */  jr         $ra
    /* 10F2DC 0020E35C 380082FC */   sd        $v0, 0x38($a0)
endlabel func_0020E340
