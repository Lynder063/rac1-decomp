.align 3
/* Handwritten function */
nonmatching func_002116A0, 0x164

glabel func_002116A0
    /* 112620 002116A0 2400988C */  lw         $t8, 0x24($a0)
    /* 112624 002116A4 1B000F3C */  lui        $t7, %hi(D_001B3080)
    /* 112628 002116A8 8030EF25 */  addiu      $t7, $t7, %lo(D_001B3080)
    /* 11262C 002116AC 1C00188F */  lw         $t8, 0x1C($t8)
    /* 112630 002116B0 0000E07D */  sq         $zero, 0x0($t7)
    /* 112634 002116B4 89A38472 */  pcpyld     $s4, $s4, $a0
    /* 112638 002116B8 1000E07D */  sq         $zero, 0x10($t7)
    /* 11263C 002116BC 89ABA572 */  pcpyld     $s5, $s5, $a1
    /* 112640 002116C0 2000E07D */  sq         $zero, 0x20($t7)
    /* 112644 002116C4 89B3C672 */  pcpyld     $s6, $s6, $a2
    /* 112648 002116C8 3000E07D */  sq         $zero, 0x30($t7)
    /* 11264C 002116CC 89BBE772 */  pcpyld     $s7, $s7, $a3
    /* 112650 002116D0 4000E07D */  sq         $zero, 0x40($t7)
    /* 112654 002116D4 89FBFF73 */  pcpyld     $ra, $ra, $ra
    /* 112658 002116D8 5000E07D */  sq         $zero, 0x50($t7)
    /* 11265C 002116DC 6000E07D */  sq         $zero, 0x60($t7)
    /* 112660 002116E0 7000E07D */  sq         $zero, 0x70($t7)
    /* 112664 002116E4 2D700000 */  daddu      $t6, $zero, $zero
    /* 112668 002116E8 01000120 */  addi       $at, $zero, 0x1 /* handwritten instruction */
    /* 11266C 002116EC 2D10A002 */  daddu      $v0, $s5, $zero
    /* 112670 002116F0 8000E321 */  addi       $v1, $t7, 0x80 /* handwritten instruction */
    /* 112674 002116F4 2D20C002 */  daddu      $a0, $s6, $zero
.align 2
  .L002116F8:
    /* 112678 002116F8 0000858C */  lw         $a1, 0x0($a0)
    /* 11267C 002116FC 04008420 */  addi       $a0, $a0, 0x4 /* handwritten instruction */
    /* 112680 00211700 00000000 */  nop
    /* 112684 00211704 00000000 */  nop
    /* 112688 00211708 80280500 */  sll        $a1, $a1, 2
    /* 11268C 0021170C 00000000 */  nop
    /* 112690 00211710 2028B800 */  add        $a1, $a1, $t8 /* handwritten instruction */
    /* 112694 00211714 00000000 */  nop
    /* 112698 00211718 0400A58C */  lw         $a1, 0x4($a1)
    /* 11269C 0021171C 00000000 */  nop
    /* 1126A0 00211720 0000A694 */  lhu        $a2, 0x0($a1)
    /* 1126A4 00211724 00000000 */  nop
.align 2
  .L00211728:
    /* 1126A8 00211728 0400A790 */  lbu        $a3, 0x4($a1)
    /* 1126AC 0021172C 0100A520 */  addi       $a1, $a1, 0x1 /* handwritten instruction */
    /* 1126B0 00211730 FFFFC620 */  addi       $a2, $a2, -0x1 /* handwritten instruction */
    /* 1126B4 00211734 00000000 */  nop
    /* 1126B8 00211738 2040EF00 */  add        $t0, $a3, $t7 /* handwritten instruction */
    /* 1126BC 0021173C 00000000 */  nop
    /* 1126C0 00211740 F9FFC01C */  bgtz       $a2, .L00211728
    /* 1126C4 00211744 000001A1 */   sb        $at, 0x0($t0)
    /* 1126C8 00211748 000067A0 */  sb         $a3, 0x0($v1)
    /* 1126CC 0021174C 01006320 */  addi       $v1, $v1, 0x1 /* handwritten instruction */
    /* 1126D0 00211750 FFFF4220 */  addi       $v0, $v0, -0x1 /* handwritten instruction */
    /* 1126D4 00211754 00000000 */  nop
    /* 1126D8 00211758 E7FF401C */  bgtz       $v0, .L002116F8
    /* 1126DC 0021175C C870C771 */   pmaxw     $t6, $t6, $a3
    /* 1126E0 00211760 FF000120 */  addi       $at, $zero, 0xFF /* handwritten instruction */
    /* 1126E4 00211764 0100C221 */  addi       $v0, $t6, 0x1 /* handwritten instruction */
    /* 1126E8 00211768 7F00E2A1 */  sb         $v0, 0x7F($t7)
    /* 1126EC 0021176C 2070CF01 */  add        $t6, $t6, $t7 /* handwritten instruction */
    /* 1126F0 00211770 0000C1A1 */  sb         $at, 0x0($t6)
    /* 1126F4 00211774 00000000 */  nop
    /* 1126F8 00211778 2D208002 */  daddu      $a0, $s4, $zero
    /* 1126FC 0021177C 2D28E001 */  daddu      $a1, $t7, $zero
    /* 112700 00211780 0246080C */  jal        func_00211808
    /* 112704 00211784 00000000 */   nop
    /* 112708 00211788 2D08A002 */  daddu      $at, $s5, $zero
    /* 11270C 0021178C 1B000F3C */  lui        $t7, %hi(D_001B3080)
    /* 112710 00211790 8030EF25 */  addiu      $t7, $t7, %lo(D_001B3080)
    /* 112714 00211794 C0FFE222 */  addi       $v0, $s7, -0x40 /* handwritten instruction */
    /* 112718 00211798 8000E321 */  addi       $v1, $t7, 0x80 /* handwritten instruction */
    /* 11271C 0021179C 00700E3C */  lui        $t6, (0x70000000 >> 16)
.align 2
  .L002117A0:
    /* 112720 002117A0 00006490 */  lbu        $a0, 0x0($v1)
    /* 112724 002117A4 01006320 */  addi       $v1, $v1, 0x1 /* handwritten instruction */
    /* 112728 002117A8 FFFF2120 */  addi       $at, $at, -0x1 /* handwritten instruction */
    /* 11272C 002117AC 00000000 */  nop
    /* 112730 002117B0 80210400 */  sll        $a0, $a0, 6
    /* 112734 002117B4 00000000 */  nop
    /* 112738 002117B8 20208E00 */  add        $a0, $a0, $t6 /* handwritten instruction */
    /* 11273C 002117BC 00000000 */  nop
    /* 112740 002117C0 00008578 */  lq         $a1, 0x0($a0)
    /* 112744 002117C4 40004220 */  addi       $v0, $v0, 0x40 /* handwritten instruction */
    /* 112748 002117C8 10008678 */  lq         $a2, 0x10($a0)
    /* 11274C 002117CC 20008778 */  lq         $a3, 0x20($a0)
    /* 112750 002117D0 30008878 */  lq         $t0, 0x30($a0)
    /* 112754 002117D4 0000457C */  sq         $a1, 0x0($v0)
    /* 112758 002117D8 1000467C */  sq         $a2, 0x10($v0)
    /* 11275C 002117DC 2000477C */  sq         $a3, 0x20($v0)
    /* 112760 002117E0 EFFF201C */  bgtz       $at, .L002117A0
    /* 112764 002117E4 3000487C */   sq        $t0, 0x30($v0)
    /* 112768 002117E8 A9A38072 */  pcpyud     $s4, $s4, $zero
    /* 11276C 002117EC A9ABA072 */  pcpyud     $s5, $s5, $zero
    /* 112770 002117F0 A9B3C072 */  pcpyud     $s6, $s6, $zero
    /* 112774 002117F4 A9BBE072 */  pcpyud     $s7, $s7, $zero
    /* 112778 002117F8 A9FBE073 */  pcpyud     $ra, $ra, $zero
    /* 11277C 002117FC 0800E003 */  jr         $ra
    /* 112780 00211800 00000000 */   nop
endlabel func_002116A0
    /* 112784 00211804 00000000 */  nop
