.align 3
/* Handwritten function */
nonmatching func_00212508, 0x70

glabel func_00212508
    /* 113488 00212508 3893828F */  lw         $v0, -0x6CC8($gp)
    /* 11348C 0021250C 1D00013C */  lui        $at, %hi(D_001C8480)
    /* 113490 00212510 80842124 */  addiu      $at, $at, %lo(D_001C8480)
    /* 113494 00212514 20102200 */  add        $v0, $at, $v0 /* handwritten instruction */
.align 2
  .L00212518:
    /* 113498 00212518 0000248C */  lw         $a0, 0x0($at)
    /* 11349C 0021251C 0400258C */  lw         $a1, 0x4($at)
    /* 1134A0 00212520 0800268C */  lw         $a2, 0x8($at)
    /* 1134A4 00212524 0C00278C */  lw         $a3, 0xC($at)
.align 2
  .L00212528:
    /* 1134A8 00212528 0400C88C */  lw         $t0, 0x4($a2)
    /* 1134AC 0021252C 0F00A990 */  lbu        $t1, 0xF($a1)
.align 2
  .L00212530:
    /* 1134B0 00212530 000004AD */  sw         $a0, 0x0($t0)
    /* 1134B4 00212534 FFFF2921 */  addi       $t1, $t1, -0x1 /* handwritten instruction */
    /* 1134B8 00212538 05002011 */  beqz       $t1, .L00212550
    /* 1134BC 0021253C 04000821 */   addi      $t0, $t0, 0x4 /* handwritten instruction */
    /* 1134C0 00212540 000004AD */  sw         $a0, 0x0($t0)
    /* 1134C4 00212544 FFFF2921 */  addi       $t1, $t1, -0x1 /* handwritten instruction */
    /* 1134C8 00212548 F9FF201D */  bgtz       $t1, .L00212530
    /* 1134CC 0021254C 04000821 */   addi      $t0, $t0, 0x4 /* handwritten instruction */
.align 2
  .L00212550:
    /* 1134D0 00212550 FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 1134D4 00212554 0800C620 */  addi       $a2, $a2, 0x8 /* handwritten instruction */
    /* 1134D8 00212558 F3FFE01C */  bgtz       $a3, .L00212528
    /* 1134DC 0021255C 1000A520 */   addi      $a1, $a1, 0x10 /* handwritten instruction */
    /* 1134E0 00212560 10002120 */  addi       $at, $at, 0x10 /* handwritten instruction */
    /* 1134E4 00212564 00000000 */  nop
    /* 1134E8 00212568 EBFF2214 */  bne        $at, $v0, .L00212518
    /* 1134EC 0021256C 00000000 */   nop
    /* 1134F0 00212570 0800E003 */  jr         $ra
    /* 1134F4 00212574 00000000 */   nop
endlabel func_00212508
