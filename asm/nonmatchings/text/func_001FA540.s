.align 3
/* Handwritten function */
nonmatching func_001FA540, 0x48

glabel func_001FA540
    /* FB4C0 001FA540 0000A4D8 */  lqc2       $vf4, 0x0($a1)
    /* FB4C4 001FA544 1000A5D8 */  lqc2       $vf5, 0x10($a1)
    /* FB4C8 001FA548 2000A6D8 */  lqc2       $vf6, 0x20($a1)
    /* FB4CC 001FA54C 3000A7D8 */  lqc2       $vf7, 0x30($a1)
    /* FB4D0 001FA550 4000C720 */  addi       $a3, $a2, 0x40 /* handwritten instruction */
    /* FB4D4 001FA554 00000000 */  nop
.align 2
  .L001FA558:
    /* FB4D8 001FA558 0000C8D8 */  lqc2       $vf8, 0x0($a2)
    /* FB4DC 001FA55C 1000C620 */  addi       $a2, $a2, 0x10 /* handwritten instruction */
    /* FB4E0 001FA560 BC21E84B */  .word      0x4BE821BC    # vmulax.xyzw ACC, $vf4, $vf8x
    /* FB4E4 001FA564 BD28E84B */  .word      0x4BE828BD    # vmadday.xyzw ACC, $vf5, $vf8y
    /* FB4E8 001FA568 BE30E84B */  .word      0x4BE830BE    # vmaddaz.xyzw ACC, $vf6, $vf8z
    /* FB4EC 001FA56C 4B3AE84B */  vmaddw.xyzw $vf9, $vf7, $vf8w
    /* FB4F0 001FA570 000089F8 */  sqc2       $vf9, 0x0($a0)
    /* FB4F4 001FA574 10008420 */  addi       $a0, $a0, 0x10 /* handwritten instruction */
    /* FB4F8 001FA578 F7FFC714 */  bne        $a2, $a3, .L001FA558
    /* FB4FC 001FA57C 00000000 */   nop
    /* FB500 001FA580 0800E003 */  jr         $ra
    /* FB504 001FA584 00000000 */   nop
endlabel func_001FA540
