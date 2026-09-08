.align 3
nonmatching func_0012C430, 0x34

glabel func_0012C430
    /* 2D3B0 0012C430 E0FEBD27 */  addiu      $sp, $sp, -0x120
    /* 2D3B4 0012C434 0001B0FF */  sd         $s0, 0x100($sp)
    /* 2D3B8 0012C438 2D808000 */  daddu      $s0, $a0, $zero
    /* 2D3BC 0012C43C 1001BFFF */  sd         $ra, 0x110($sp)
    /* 2D3C0 0012C440 9258040C */  jal        func_00116248
    /* 2D3C4 0012C444 2D20A003 */   daddu     $a0, $sp, $zero
    /* 2D3C8 0012C448 2D200002 */  daddu      $a0, $s0, $zero
    /* 2D3CC 0012C44C 1AB1040C */  jal        func_0012C468
    /* 2D3D0 0012C450 2D28A003 */   daddu     $a1, $sp, $zero
    /* 2D3D4 0012C454 1001BFDF */  ld         $ra, 0x110($sp)
    /* 2D3D8 0012C458 0001B0DF */  ld         $s0, 0x100($sp)
    /* 2D3DC 0012C45C 0800E003 */  jr         $ra
    /* 2D3E0 0012C460 2001BD27 */   addiu     $sp, $sp, 0x120
endlabel func_0012C430
    /* 2D3E4 0012C464 00000000 */  nop
