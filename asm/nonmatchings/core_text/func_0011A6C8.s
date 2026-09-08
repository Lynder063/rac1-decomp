.align 3
nonmatching func_0011A6C8, 0x60

glabel func_0011A6C8
    /* 1B648 0011A6C8 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 1B64C 0011A6CC 1200023C */  lui        $v0, %hi(func_00119DC0)
    /* 1B650 0011A6D0 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1B654 0011A6D4 C09D4224 */  addiu      $v0, $v0, %lo(func_00119DC0)
    /* 1B658 0011A6D8 1300103C */  lui        $s0, %hi(D_0012FD00)
    /* 1B65C 0011A6DC 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1B660 0011A6E0 00FD118E */  lw         $s1, %lo(D_0012FD00)($s0)
    /* 1B664 0011A6E4 7800A5FF */  sd         $a1, 0x78($sp)
    /* 1B668 0011A6E8 00FD02AE */  sw         $v0, %lo(D_0012FD00)($s0)
    /* 1B66C 0011A6EC 7800A527 */  addiu      $a1, $sp, 0x78
    /* 1B670 0011A6F0 2000BFFF */  sd         $ra, 0x20($sp)
    /* 1B674 0011A6F4 8000A6FF */  sd         $a2, 0x80($sp)
    /* 1B678 0011A6F8 8800A7FF */  sd         $a3, 0x88($sp)
    /* 1B67C 0011A6FC 9000A8FF */  sd         $t0, 0x90($sp)
    /* 1B680 0011A700 9800A9FF */  sd         $t1, 0x98($sp)
    /* 1B684 0011A704 A000AAFF */  sd         $t2, 0xA0($sp)
    /* 1B688 0011A708 2868040C */  jal        func_0011A0A0
    /* 1B68C 0011A70C A800ABFF */   sd        $t3, 0xA8($sp)
    /* 1B690 0011A710 00FD11AE */  sw         $s1, %lo(D_0012FD00)($s0)
    /* 1B694 0011A714 2000BFDF */  ld         $ra, 0x20($sp)
    /* 1B698 0011A718 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1B69C 0011A71C 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1B6A0 0011A720 0800E003 */  jr         $ra
    /* 1B6A4 0011A724 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_0011A6C8
