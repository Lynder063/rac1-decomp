.align 3
nonmatching func_002094E0, 0x40

glabel func_002094E0
    /* 10A460 002094E0 1400023C */  lui        $v0, %hi(D_0013D390)
    /* 10A464 002094E4 02000424 */  addiu      $a0, $zero, 0x2
    /* 10A468 002094E8 90D34524 */  addiu      $a1, $v0, %lo(D_0013D390)
    /* 10A46C 002094EC DC00A38C */  lw         $v1, 0xDC($a1)
    /* 10A470 002094F0 09006414 */  bne        $v1, $a0, .L00209518
    /* 10A474 002094F4 00000000 */   nop
    /* 10A478 002094F8 E400A28C */  lw         $v0, 0xE4($a1)
    /* 10A47C 002094FC 06004104 */  bgez       $v0, .L00209518
    /* 10A480 00209500 07000224 */   addiu     $v0, $zero, 0x7
    /* 10A484 00209504 0B000324 */  addiu      $v1, $zero, 0xB
    /* 10A488 00209508 E400A2AC */  sw         $v0, 0xE4($a1)
    /* 10A48C 0020950C E800A0AC */  sw         $zero, 0xE8($a1)
    /* 10A490 00209510 1600013C */  lui        $at, %hi(D_0015EFB0)
    /* 10A494 00209514 B0EF23AC */  sw         $v1, %lo(D_0015EFB0)($at)
.align 2
  .L00209518:
    /* 10A498 00209518 0800E003 */  jr         $ra
    /* 10A49C 0020951C 00000000 */   nop
endlabel func_002094E0
