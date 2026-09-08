.align 3
/* Handwritten function */
nonmatching func_00212508, 0x70

glabel func_00212508
    /* 113488 00212508 3893828F */  lw         $2, -0x6CC8($28)
    /* 11348C 0021250C 1D00013C */  lui        $1, %hi(D_001C8480)
    /* 113490 00212510 80842124 */  addiu      $1, $1, %lo(D_001C8480)
    /* 113494 00212514 20102200 */  add        $2, $1, $2 /* handwritten instruction */
.align 2
  .L00212518:
    /* 113498 00212518 0000248C */  lw         $4, 0x0($1)
    /* 11349C 0021251C 0400258C */  lw         $5, 0x4($1)
    /* 1134A0 00212520 0800268C */  lw         $6, 0x8($1)
    /* 1134A4 00212524 0C00278C */  lw         $7, 0xC($1)
.align 2
  .L00212528:
    /* 1134A8 00212528 0400C88C */  lw         $8, 0x4($6)
    /* 1134AC 0021252C 0F00A990 */  lbu        $9, 0xF($5)
.align 2
  .L00212530:
    /* 1134B0 00212530 000004AD */  sw         $4, 0x0($8)
    /* 1134B4 00212534 FFFF2921 */  addi       $9, $9, -0x1 /* handwritten instruction */
    /* 1134B8 00212538 05002011 */  beqz       $9, .L00212550
    /* 1134BC 0021253C 04000821 */   addi      $8, $8, 0x4 /* handwritten instruction */
    /* 1134C0 00212540 000004AD */  sw         $4, 0x0($8)
    /* 1134C4 00212544 FFFF2921 */  addi       $9, $9, -0x1 /* handwritten instruction */
    /* 1134C8 00212548 F9FF201D */  bgtz       $9, .L00212530
    /* 1134CC 0021254C 04000821 */   addi      $8, $8, 0x4 /* handwritten instruction */
.align 2
  .L00212550:
    /* 1134D0 00212550 FFFFE720 */  addi       $7, $7, -0x1 /* handwritten instruction */
    /* 1134D4 00212554 0800C620 */  addi       $6, $6, 0x8 /* handwritten instruction */
    /* 1134D8 00212558 F3FFE01C */  bgtz       $7, .L00212528
    /* 1134DC 0021255C 1000A520 */   addi      $5, $5, 0x10 /* handwritten instruction */
    /* 1134E0 00212560 10002120 */  addi       $1, $1, 0x10 /* handwritten instruction */
    /* 1134E4 00212564 00000000 */  nop
    /* 1134E8 00212568 EBFF2214 */  bne        $1, $2, .L00212518
    /* 1134EC 0021256C 00000000 */   nop
    /* 1134F0 00212570 0800E003 */  jr         $31
    /* 1134F4 00212574 00000000 */   nop
endlabel func_00212508
