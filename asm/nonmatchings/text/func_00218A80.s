.align 3
/* Handwritten function */
nonmatching func_00218A80, 0x8C

glabel func_00218A80
    /* 119A00 00218A80 C8949FFF */  sd         $ra, -0x6B38($gp)
    /* 119A04 00218A84 00000000 */  nop
    /* 119A08 00218A88 B494878F */  lw         $a3, -0x6B4C($gp)
    /* 119A0C 00218A8C AC94868F */  lw         $a2, -0x6B54($gp)
    /* 119A10 00218A90 0100E720 */  addi       $a3, $a3, 0x1 /* handwritten instruction */
    /* 119A14 00218A94 80390700 */  sll        $a3, $a3, 6
    /* 119A18 00218A98 2038E600 */  add        $a3, $a3, $a2 /* handwritten instruction */
    /* 119A1C 00218A9C D0948127 */  addiu      $at, $gp, -0x6B30
    /* 119A20 00218AA0 040027AC */  sw         $a3, 0x4($at)
    /* 119A24 00218AA4 00000000 */  nop
.align 2
  alabel func_00218AA8
    /* 119A28 00218AA8 1400C710 */  beq        $a2, $a3, .L00218AFC
    /* 119A2C 00218AAC 0100C180 */   lb        $at, 0x1($a2)
    /* 119A30 00218AB0 0000C280 */  lb         $v0, 0x0($a2)
    /* 119A34 00218AB4 4000C620 */  addi       $a2, $a2, 0x40 /* handwritten instruction */
    /* 119A38 00218AB8 00000000 */  nop
    /* 119A3C 00218ABC FAFF2004 */  bltz       $at, func_00218AA8
    /* 119A40 00218AC0 0000C0CC */   pref      0x00, 0x0($a2)
    /* 119A44 00218AC4 80100200 */  sll        $v0, $v0, 2
    /* 119A48 00218AC8 1D00033C */  lui        $v1, %hi(D_001CE100)
    /* 119A4C 00218ACC 00E16324 */  addiu      $v1, $v1, %lo(D_001CE100)
    /* 119A50 00218AD0 D09486AF */  sw         $a2, -0x6B30($gp)
    /* 119A54 00218AD4 20104300 */  add        $v0, $v0, $v1 /* handwritten instruction */
    /* 119A58 00218AD8 00000000 */  nop
    /* 119A5C 00218ADC 0000428C */  lw         $v0, 0x0($v0)
    /* 119A60 00218AE0 00000000 */  nop
    /* 119A64 00218AE4 09F84000 */  jalr       $v0
    /* 119A68 00218AE8 C0FFC420 */   addi      $a0, $a2, -0x40 /* handwritten instruction */
    /* 119A6C 00218AEC D094868F */  lw         $a2, -0x6B30($gp)
    /* 119A70 00218AF0 D0948727 */  addiu      $a3, $gp, -0x6B30
    /* 119A74 00218AF4 AA620808 */  j          func_00218AA8
    /* 119A78 00218AF8 0400E78C */   lw        $a3, 0x4($a3)
.align 2
  .L00218AFC:
    /* 119A7C 00218AFC C8949FDF */  ld         $ra, -0x6B38($gp)
    /* 119A80 00218B00 00000000 */  nop
    /* 119A84 00218B04 0800E003 */  jr         $ra
    /* 119A88 00218B08 00000000 */   nop
endlabel func_00218A80
    /* 119A8C 00218B0C 00000000 */  nop
