.align 3
/* Handwritten function */
nonmatching func_00218A80, 0x8C

glabel func_00218A80
    /* 119A00 00218A80 C8949FFF */  sd         $31, -0x6B38($28)
    /* 119A04 00218A84 00000000 */  nop
    /* 119A08 00218A88 B494878F */  lw         $7, -0x6B4C($28)
    /* 119A0C 00218A8C AC94868F */  lw         $6, -0x6B54($28)
    /* 119A10 00218A90 0100E720 */  addi       $7, $7, 0x1 /* handwritten instruction */
    /* 119A14 00218A94 80390700 */  sll        $7, $7, 6
    /* 119A18 00218A98 2038E600 */  add        $7, $7, $6 /* handwritten instruction */
    /* 119A1C 00218A9C D0948127 */  addiu      $1, $28, -0x6B30
    /* 119A20 00218AA0 040027AC */  sw         $7, 0x4($1)
    /* 119A24 00218AA4 00000000 */  nop
.align 2
  alabel func_00218AA8
    /* 119A28 00218AA8 1400C710 */  beq        $6, $7, .L00218AFC
    /* 119A2C 00218AAC 0100C180 */   lb        $1, 0x1($6)
    /* 119A30 00218AB0 0000C280 */  lb         $2, 0x0($6)
    /* 119A34 00218AB4 4000C620 */  addi       $6, $6, 0x40 /* handwritten instruction */
    /* 119A38 00218AB8 00000000 */  nop
    /* 119A3C 00218ABC FAFF2004 */  bltz       $1, func_00218AA8
    /* 119A40 00218AC0 0000C0CC */   pref      0x00, 0x0($6)
    /* 119A44 00218AC4 80100200 */  sll        $2, $2, 2
    /* 119A48 00218AC8 1D00033C */  lui        $3, %hi(D_001CE100)
    /* 119A4C 00218ACC 00E16324 */  addiu      $3, $3, %lo(D_001CE100)
    /* 119A50 00218AD0 D09486AF */  sw         $6, -0x6B30($28)
    /* 119A54 00218AD4 20104300 */  add        $2, $2, $3 /* handwritten instruction */
    /* 119A58 00218AD8 00000000 */  nop
    /* 119A5C 00218ADC 0000428C */  lw         $2, 0x0($2)
    /* 119A60 00218AE0 00000000 */  nop
    /* 119A64 00218AE4 09F84000 */  jalr       $2
    /* 119A68 00218AE8 C0FFC420 */   addi      $4, $6, -0x40 /* handwritten instruction */
    /* 119A6C 00218AEC D094868F */  lw         $6, -0x6B30($28)
    /* 119A70 00218AF0 D0948727 */  addiu      $7, $28, -0x6B30
    /* 119A74 00218AF4 AA620808 */  j          func_00218AA8
    /* 119A78 00218AF8 0400E78C */   lw        $7, 0x4($7)
.align 2
  .L00218AFC:
    /* 119A7C 00218AFC C8949FDF */  ld         $31, -0x6B38($28)
    /* 119A80 00218B00 00000000 */  nop
    /* 119A84 00218B04 0800E003 */  jr         $31
    /* 119A88 00218B08 00000000 */   nop
endlabel func_00218A80
    /* 119A8C 00218B0C 00000000 */  nop
