.align 3
nonmatching func_0012D500, 0x68

glabel func_0012D500
    /* 2E480 0012D500 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2E484 0012D504 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2E488 0012D508 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2E48C 0012D50C 2D808000 */  daddu      $s0, $a0, $zero
    /* 2E490 0012D510 38B5040C */  jal        func_0012D4E0
    /* 2E494 0012D514 07000492 */   lbu       $a0, 0x7($s0)
    /* 2E498 0012D518 06000492 */  lbu        $a0, 0x6($s0)
    /* 2E49C 0012D51C 38B5040C */  jal        func_0012D4E0
    /* 2E4A0 0012D520 070002A2 */   sb        $v0, 0x7($s0)
    /* 2E4A4 0012D524 05000492 */  lbu        $a0, 0x5($s0)
    /* 2E4A8 0012D528 38B5040C */  jal        func_0012D4E0
    /* 2E4AC 0012D52C 060002A2 */   sb        $v0, 0x6($s0)
    /* 2E4B0 0012D530 03000492 */  lbu        $a0, 0x3($s0)
    /* 2E4B4 0012D534 38B5040C */  jal        func_0012D4E0
    /* 2E4B8 0012D538 050002A2 */   sb        $v0, 0x5($s0)
    /* 2E4BC 0012D53C 02000492 */  lbu        $a0, 0x2($s0)
    /* 2E4C0 0012D540 38B5040C */  jal        func_0012D4E0
    /* 2E4C4 0012D544 030002A2 */   sb        $v0, 0x3($s0)
    /* 2E4C8 0012D548 01000492 */  lbu        $a0, 0x1($s0)
    /* 2E4CC 0012D54C 38B5040C */  jal        func_0012D4E0
    /* 2E4D0 0012D550 020002A2 */   sb        $v0, 0x2($s0)
    /* 2E4D4 0012D554 010002A2 */  sb         $v0, 0x1($s0)
    /* 2E4D8 0012D558 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2E4DC 0012D55C 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2E4E0 0012D560 0800E003 */  jr         $ra
    /* 2E4E4 0012D564 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012D500
