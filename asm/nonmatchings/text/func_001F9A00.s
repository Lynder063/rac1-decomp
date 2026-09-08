.align 3
/* Handwritten function */
nonmatching func_001F9A00, 0x98

glabel func_001F9A00
    /* FA980 001F9A00 20308600 */  add        $a2, $a0, $a2 /* handwritten instruction */
    /* FA984 001F9A04 25188500 */  or         $v1, $a0, $a1
    /* FA988 001F9A08 25186600 */  or         $v1, $v1, $a2
    /* FA98C 001F9A0C 0F006230 */  andi       $v0, $v1, 0xF
    /* FA990 001F9A10 17004010 */  beqz       $v0, .L001F9A70
    /* FA994 001F9A14 03006230 */   andi      $v0, $v1, 0x3
    /* FA998 001F9A18 0B004010 */  beqz       $v0, .L001F9A48
    /* FA99C 001F9A1C 00000000 */   nop
.align 2
  .L001F9A20:
    /* FA9A0 001F9A20 0000A380 */  lb         $v1, 0x0($a1)
    /* FA9A4 001F9A24 0100A520 */  addi       $a1, $a1, 0x1 /* handwritten instruction */
    /* FA9A8 001F9A28 00000000 */  nop
    /* FA9AC 001F9A2C 00000000 */  nop
    /* FA9B0 001F9A30 000083A0 */  sb         $v1, 0x0($a0)
    /* FA9B4 001F9A34 01008420 */  addi       $a0, $a0, 0x1 /* handwritten instruction */
    /* FA9B8 001F9A38 F9FF8614 */  bne        $a0, $a2, .L001F9A20
    /* FA9BC 001F9A3C 00000000 */   nop
    /* FA9C0 001F9A40 0800E003 */  jr         $ra
    /* FA9C4 001F9A44 00000000 */   nop
.align 2
  .L001F9A48:
    /* FA9C8 001F9A48 0000A38C */  lw         $v1, 0x0($a1)
    /* FA9CC 001F9A4C 0400A520 */  addi       $a1, $a1, 0x4 /* handwritten instruction */
    /* FA9D0 001F9A50 00000000 */  nop
    /* FA9D4 001F9A54 00000000 */  nop
    /* FA9D8 001F9A58 000083AC */  sw         $v1, 0x0($a0)
    /* FA9DC 001F9A5C 04008420 */  addi       $a0, $a0, 0x4 /* handwritten instruction */
    /* FA9E0 001F9A60 F9FF8614 */  bne        $a0, $a2, .L001F9A48
    /* FA9E4 001F9A64 00000000 */   nop
    /* FA9E8 001F9A68 0800E003 */  jr         $ra
    /* FA9EC 001F9A6C 00000000 */   nop
.align 2
  .L001F9A70:
    /* FA9F0 001F9A70 0000A378 */  lq         $v1, 0x0($a1)
    /* FA9F4 001F9A74 1000A520 */  addi       $a1, $a1, 0x10 /* handwritten instruction */
    /* FA9F8 001F9A78 00000000 */  nop
    /* FA9FC 001F9A7C 00000000 */  nop
    /* FAA00 001F9A80 0000837C */  sq         $v1, 0x0($a0)
    /* FAA04 001F9A84 10008420 */  addi       $a0, $a0, 0x10 /* handwritten instruction */
    /* FAA08 001F9A88 F9FF8614 */  bne        $a0, $a2, .L001F9A70
    /* FAA0C 001F9A8C 00000000 */   nop
    /* FAA10 001F9A90 0800E003 */  jr         $ra
    /* FAA14 001F9A94 00000000 */   nop
endlabel func_001F9A00
