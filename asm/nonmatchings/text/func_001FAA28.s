.align 3
/* Handwritten function */
nonmatching func_001FAA28, 0xF8

glabel func_001FAA28
    /* FB9A8 001FAA28 20288500 */  add        $5, $4, $5 /* handwritten instruction */
    /* FB9AC 001FAA2C 7F000320 */  addi       $3, $0, 0x7F /* handwritten instruction */
    /* FB9B0 001FAA30 20400000 */  add        $8, $0, $0 /* handwritten instruction */
    /* FB9B4 001FAA34 01000920 */  addi       $9, $0, 0x1 /* handwritten instruction */
    /* FB9B8 001FAA38 20580000 */  add        $11, $0, $0 /* handwritten instruction */
    /* FB9BC 001FAA3C 20708000 */  add        $14, $4, $0 /* handwritten instruction */
    /* FB9C0 001FAA40 20100000 */  add        $2, $0, $0 /* handwritten instruction */
    /* FB9C4 001FAA44 00000000 */  nop
.align 2
  alabel func_001FAA48
    /* FB9C8 001FAA48 09004014 */  bnez       $2, .L001FAA70
    /* FB9CC 001FAA4C 0000C190 */   lbu       $1, 0x0($6)
    /* FB9D0 001FAA50 0100C290 */  lbu        $2, 0x1($6)
    /* FB9D4 001FAA54 00000000 */  nop
    /* FB9D8 001FAA58 20400101 */  add        $8, $8, $1 /* handwritten instruction */
    /* FB9DC 001FAA5C 0400013C */  lui        $1, (0x40000 >> 16)
    /* FB9E0 001FAA60 F9FF0115 */  bne        $8, $1, func_001FAA48
    /* FB9E4 001FAA64 0200C620 */   addi      $6, $6, 0x2 /* handwritten instruction */
    /* FB9E8 001FAA68 BCEA0708 */  j          func_001FAAF0
    /* FB9EC 001FAA6C 00000000 */   nop
.align 2
  .L001FAA70:
    /* FB9F0 001FAA70 C2C80800 */  srl        $25, $8, 3
    /* FB9F4 001FAA74 07000A31 */  andi       $10, $8, 0x7
    /* FB9F8 001FAA78 20C82703 */  add        $25, $25, $7 /* handwritten instruction */
    /* FB9FC 001FAA7C 01000821 */  addi       $8, $8, 0x1 /* handwritten instruction */
    /* FBA00 001FAA80 00002193 */  lbu        $1, 0x0($25)
    /* FBA04 001FAA84 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* FBA08 001FAA88 00000000 */  nop
    /* FBA0C 001FAA8C 00000000 */  nop
    /* FBA10 001FAA90 06084101 */  srlv       $1, $1, $10
    /* FBA14 001FAA94 00000000 */  nop
    /* FBA18 001FAA98 01002130 */  andi       $1, $1, 0x1
    /* FBA1C 001FAA9C 00000000 */  nop
    /* FBA20 001FAAA0 07002111 */  beq        $9, $1, .L001FAAC0
    /* FBA24 001FAAA4 20482000 */   add       $9, $1, $0 /* handwritten instruction */
    /* FBA28 001FAAA8 00008BA0 */  sb         $11, 0x0($4)
    /* FBA2C 001FAAAC 01008420 */  addi       $4, $4, 0x1 /* handwritten instruction */
    /* FBA30 001FAAB0 19008510 */  beq        $4, $5, .L001FAB18
    /* FBA34 001FAAB4 FF000320 */   addi      $3, $0, 0xFF /* handwritten instruction */
    /* FBA38 001FAAB8 92EA0708 */  j          func_001FAA48
    /* FBA3C 001FAABC 01000B20 */   addi      $11, $0, 0x1 /* handwritten instruction */
.align 2
  .L001FAAC0:
    /* FBA40 001FAAC0 E1FF6355 */  bnel       $11, $3, func_001FAA48
    /* FBA44 001FAAC4 01006B21 */   addi      $11, $11, 0x1 /* handwritten instruction */
    /* FBA48 001FAAC8 00008BA0 */  sb         $11, 0x0($4)
    /* FBA4C 001FAACC 02008420 */  addi       $4, $4, 0x2 /* handwritten instruction */
    /* FBA50 001FAAD0 2208A400 */  sub        $1, $5, $4 /* handwritten instruction */
    /* FBA54 001FAAD4 01000B20 */  addi       $11, $0, 0x1 /* handwritten instruction */
    /* FBA58 001FAAD8 0F008510 */  beq        $4, $5, .L001FAB18
    /* FBA5C 001FAADC FF000320 */   addi      $3, $0, 0xFF /* handwritten instruction */
    /* FBA60 001FAAE0 FFFF80A0 */  sb         $0, -0x1($4)
    /* FBA64 001FAAE4 00000000 */  nop
    /* FBA68 001FAAE8 92EA0708 */  j          func_001FAA48
    /* FBA6C 001FAAEC 00000000 */   nop
.align 2
  alabel func_001FAAF0
    /* FBA70 001FAAF0 03006011 */  beqz       $11, .L001FAB00
    /* FBA74 001FAAF4 00000000 */   nop
    /* FBA78 001FAAF8 00008BA0 */  sb         $11, 0x0($4)
    /* FBA7C 001FAAFC 01008420 */  addi       $4, $4, 0x1 /* handwritten instruction */
.align 2
  .L001FAB00:
    /* FBA80 001FAB00 0000C181 */  lb         $1, 0x0($14)
    /* FBA84 001FAB04 40080100 */  sll        $1, $1, 1
    /* FBA88 001FAB08 01002120 */  addi       $1, $1, 0x1 /* handwritten instruction */
    /* FBA8C 001FAB0C 0000C1A1 */  sb         $1, 0x0($14)
    /* FBA90 001FAB10 0800E003 */  jr         $31
    /* FBA94 001FAB14 22108E00 */   sub       $2, $4, $14 /* handwritten instruction */
.align 2
  .L001FAB18:
    /* FBA98 001FAB18 0800E003 */  jr         $31
    /* FBA9C 001FAB1C FFFF0220 */   addi      $2, $0, -0x1 /* handwritten instruction */
endlabel func_001FAA28
