.align 3
/* Handwritten function */
nonmatching func_001FAA28, 0xF8

glabel func_001FAA28
    /* FB9A8 001FAA28 20288500 */  add        $a1, $a0, $a1 /* handwritten instruction */
    /* FB9AC 001FAA2C 7F000320 */  addi       $v1, $zero, 0x7F /* handwritten instruction */
    /* FB9B0 001FAA30 20400000 */  add        $t0, $zero, $zero /* handwritten instruction */
    /* FB9B4 001FAA34 01000920 */  addi       $t1, $zero, 0x1 /* handwritten instruction */
    /* FB9B8 001FAA38 20580000 */  add        $t3, $zero, $zero /* handwritten instruction */
    /* FB9BC 001FAA3C 20708000 */  add        $t6, $a0, $zero /* handwritten instruction */
    /* FB9C0 001FAA40 20100000 */  add        $v0, $zero, $zero /* handwritten instruction */
    /* FB9C4 001FAA44 00000000 */  nop
.align 2
  alabel func_001FAA48
    /* FB9C8 001FAA48 09004014 */  bnez       $v0, .L001FAA70
    /* FB9CC 001FAA4C 0000C190 */   lbu       $at, 0x0($a2)
    /* FB9D0 001FAA50 0100C290 */  lbu        $v0, 0x1($a2)
    /* FB9D4 001FAA54 00000000 */  nop
    /* FB9D8 001FAA58 20400101 */  add        $t0, $t0, $at /* handwritten instruction */
    /* FB9DC 001FAA5C 0400013C */  lui        $at, (0x40000 >> 16)
    /* FB9E0 001FAA60 F9FF0115 */  bne        $t0, $at, func_001FAA48
    /* FB9E4 001FAA64 0200C620 */   addi      $a2, $a2, 0x2 /* handwritten instruction */
    /* FB9E8 001FAA68 BCEA0708 */  j          func_001FAAF0
    /* FB9EC 001FAA6C 00000000 */   nop
.align 2
  .L001FAA70:
    /* FB9F0 001FAA70 C2C80800 */  srl        $t9, $t0, 3
    /* FB9F4 001FAA74 07000A31 */  andi       $t2, $t0, 0x7
    /* FB9F8 001FAA78 20C82703 */  add        $t9, $t9, $a3 /* handwritten instruction */
    /* FB9FC 001FAA7C 01000821 */  addi       $t0, $t0, 0x1 /* handwritten instruction */
    /* FBA00 001FAA80 00002193 */  lbu        $at, 0x0($t9)
    /* FBA04 001FAA84 FFFF4220 */  addi       $v0, $v0, -0x1 /* handwritten instruction */
    /* FBA08 001FAA88 00000000 */  nop
    /* FBA0C 001FAA8C 00000000 */  nop
    /* FBA10 001FAA90 06084101 */  srlv       $at, $at, $t2
    /* FBA14 001FAA94 00000000 */  nop
    /* FBA18 001FAA98 01002130 */  andi       $at, $at, 0x1
    /* FBA1C 001FAA9C 00000000 */  nop
    /* FBA20 001FAAA0 07002111 */  beq        $t1, $at, .L001FAAC0
    /* FBA24 001FAAA4 20482000 */   add       $t1, $at, $zero /* handwritten instruction */
    /* FBA28 001FAAA8 00008BA0 */  sb         $t3, 0x0($a0)
    /* FBA2C 001FAAAC 01008420 */  addi       $a0, $a0, 0x1 /* handwritten instruction */
    /* FBA30 001FAAB0 19008510 */  beq        $a0, $a1, .L001FAB18
    /* FBA34 001FAAB4 FF000320 */   addi      $v1, $zero, 0xFF /* handwritten instruction */
    /* FBA38 001FAAB8 92EA0708 */  j          func_001FAA48
    /* FBA3C 001FAABC 01000B20 */   addi      $t3, $zero, 0x1 /* handwritten instruction */
.align 2
  .L001FAAC0:
    /* FBA40 001FAAC0 E1FF6355 */  bnel       $t3, $v1, func_001FAA48
    /* FBA44 001FAAC4 01006B21 */   addi      $t3, $t3, 0x1 /* handwritten instruction */
    /* FBA48 001FAAC8 00008BA0 */  sb         $t3, 0x0($a0)
    /* FBA4C 001FAACC 02008420 */  addi       $a0, $a0, 0x2 /* handwritten instruction */
    /* FBA50 001FAAD0 2208A400 */  sub        $at, $a1, $a0 /* handwritten instruction */
    /* FBA54 001FAAD4 01000B20 */  addi       $t3, $zero, 0x1 /* handwritten instruction */
    /* FBA58 001FAAD8 0F008510 */  beq        $a0, $a1, .L001FAB18
    /* FBA5C 001FAADC FF000320 */   addi      $v1, $zero, 0xFF /* handwritten instruction */
    /* FBA60 001FAAE0 FFFF80A0 */  sb         $zero, -0x1($a0)
    /* FBA64 001FAAE4 00000000 */  nop
    /* FBA68 001FAAE8 92EA0708 */  j          func_001FAA48
    /* FBA6C 001FAAEC 00000000 */   nop
.align 2
  alabel func_001FAAF0
    /* FBA70 001FAAF0 03006011 */  beqz       $t3, .L001FAB00
    /* FBA74 001FAAF4 00000000 */   nop
    /* FBA78 001FAAF8 00008BA0 */  sb         $t3, 0x0($a0)
    /* FBA7C 001FAAFC 01008420 */  addi       $a0, $a0, 0x1 /* handwritten instruction */
.align 2
  .L001FAB00:
    /* FBA80 001FAB00 0000C181 */  lb         $at, 0x0($t6)
    /* FBA84 001FAB04 40080100 */  sll        $at, $at, 1
    /* FBA88 001FAB08 01002120 */  addi       $at, $at, 0x1 /* handwritten instruction */
    /* FBA8C 001FAB0C 0000C1A1 */  sb         $at, 0x0($t6)
    /* FBA90 001FAB10 0800E003 */  jr         $ra
    /* FBA94 001FAB14 22108E00 */   sub       $v0, $a0, $t6 /* handwritten instruction */
.align 2
  .L001FAB18:
    /* FBA98 001FAB18 0800E003 */  jr         $ra
    /* FBA9C 001FAB1C FFFF0220 */   addi      $v0, $zero, -0x1 /* handwritten instruction */
endlabel func_001FAA28
