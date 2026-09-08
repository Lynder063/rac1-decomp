.align 3
nonmatching func_0012D568, 0x68

glabel func_0012D568
    /* 2E4E8 0012D568 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2E4EC 0012D56C 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2E4F0 0012D570 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2E4F4 0012D574 2D808000 */  daddu      $s0, $a0, $zero
    /* 2E4F8 0012D578 2CB5040C */  jal        func_0012D4B0
    /* 2E4FC 0012D57C 07000492 */   lbu       $a0, 0x7($s0)
    /* 2E500 0012D580 06000492 */  lbu        $a0, 0x6($s0)
    /* 2E504 0012D584 2CB5040C */  jal        func_0012D4B0
    /* 2E508 0012D588 070002A2 */   sb        $v0, 0x7($s0)
    /* 2E50C 0012D58C 05000492 */  lbu        $a0, 0x5($s0)
    /* 2E510 0012D590 2CB5040C */  jal        func_0012D4B0
    /* 2E514 0012D594 060002A2 */   sb        $v0, 0x6($s0)
    /* 2E518 0012D598 03000492 */  lbu        $a0, 0x3($s0)
    /* 2E51C 0012D59C 2CB5040C */  jal        func_0012D4B0
    /* 2E520 0012D5A0 050002A2 */   sb        $v0, 0x5($s0)
    /* 2E524 0012D5A4 02000492 */  lbu        $a0, 0x2($s0)
    /* 2E528 0012D5A8 2CB5040C */  jal        func_0012D4B0
    /* 2E52C 0012D5AC 030002A2 */   sb        $v0, 0x3($s0)
    /* 2E530 0012D5B0 01000492 */  lbu        $a0, 0x1($s0)
    /* 2E534 0012D5B4 2CB5040C */  jal        func_0012D4B0
    /* 2E538 0012D5B8 020002A2 */   sb        $v0, 0x2($s0)
    /* 2E53C 0012D5BC 010002A2 */  sb         $v0, 0x1($s0)
    /* 2E540 0012D5C0 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2E544 0012D5C4 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2E548 0012D5C8 0800E003 */  jr         $ra
    /* 2E54C 0012D5CC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012D568
