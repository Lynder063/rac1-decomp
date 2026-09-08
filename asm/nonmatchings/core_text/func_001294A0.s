.align 3
nonmatching func_001294A0, 0x90

glabel func_001294A0
    /* 2A420 001294A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2A424 001294A4 01000524 */  addiu      $a1, $zero, 0x1
    /* 2A428 001294A8 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2A42C 001294AC 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2A430 001294B0 96A2040C */  jal        func_00128A58
    /* 2A434 001294B4 2D808000 */   daddu     $s0, $a0, $zero
    /* 2A438 001294B8 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A43C 001294BC 96A2040C */  jal        func_00128A58
    /* 2A440 001294C0 08000524 */   addiu     $a1, $zero, 0x8
    /* 2A444 001294C4 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A448 001294C8 96A2040C */  jal        func_00128A58
    /* 2A44C 001294CC 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A450 001294D0 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A454 001294D4 96A2040C */  jal        func_00128A58
    /* 2A458 001294D8 07000524 */   addiu     $a1, $zero, 0x7
    /* 2A45C 001294DC 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A460 001294E0 96A2040C */  jal        func_00128A58
    /* 2A464 001294E4 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A468 001294E8 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A46C 001294EC 96A2040C */  jal        func_00128A58
    /* 2A470 001294F0 14000524 */   addiu     $a1, $zero, 0x14
    /* 2A474 001294F4 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A478 001294F8 96A2040C */  jal        func_00128A58
    /* 2A47C 001294FC 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A480 00129500 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A484 00129504 96A2040C */  jal        func_00128A58
    /* 2A488 00129508 16000524 */   addiu     $a1, $zero, 0x16
    /* 2A48C 0012950C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A490 00129510 96A2040C */  jal        func_00128A58
    /* 2A494 00129514 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A498 00129518 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A49C 0012951C 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2A4A0 00129520 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2A4A4 00129524 16000524 */  addiu      $a1, $zero, 0x16
    /* 2A4A8 00129528 96A20408 */  j          func_00128A58
    /* 2A4AC 0012952C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001294A0
