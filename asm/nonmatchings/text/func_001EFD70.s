.align 3
/* Handwritten function */
nonmatching func_001EFD70, 0xA0

glabel func_001EFD70
    /* F0CF0 001EFD70 00000497 */  lhu        $a0, 0x0($t8)
    /* F0CF4 001EFD74 02000597 */  lhu        $a1, 0x2($t8)
    /* F0CF8 001EFD78 22186400 */  sub        $v1, $v1, $a0 /* handwritten instruction */
    /* F0CFC 001EFD7C 00000000 */  nop
    /* F0D00 001EFD80 21006004 */  bltz       $v1, .L001EFE08
    /* F0D04 001EFD84 2228A300 */   sub       $a1, $a1, $v1 /* handwritten instruction */
    /* F0D08 001EFD88 1F00A018 */  blez       $a1, .L001EFE08
    /* F0D0C 001EFD8C 40180300 */   sll       $v1, $v1, 1
    /* F0D10 001EFD90 20187800 */  add        $v1, $v1, $t8 /* handwritten instruction */
    /* F0D14 001EFD94 04006394 */  lhu        $v1, 0x4($v1)
    /* F0D18 001EFD98 80180300 */  sll        $v1, $v1, 2
    /* F0D1C 001EFD9C 00000000 */  nop
    /* F0D20 001EFDA0 19006010 */  beqz       $v1, .L001EFE08
    /* F0D24 001EFDA4 20187800 */   add       $v1, $v1, $t8 /* handwritten instruction */
    /* F0D28 001EFDA8 00006494 */  lhu        $a0, 0x0($v1)
    /* F0D2C 001EFDAC 02006594 */  lhu        $a1, 0x2($v1)
    /* F0D30 001EFDB0 22104400 */  sub        $v0, $v0, $a0 /* handwritten instruction */
    /* F0D34 001EFDB4 00000000 */  nop
    /* F0D38 001EFDB8 13004004 */  bltz       $v0, .L001EFE08
    /* F0D3C 001EFDBC 2228A200 */   sub       $a1, $a1, $v0 /* handwritten instruction */
    /* F0D40 001EFDC0 1100A018 */  blez       $a1, .L001EFE08
    /* F0D44 001EFDC4 80100200 */   sll       $v0, $v0, 2
    /* F0D48 001EFDC8 20104300 */  add        $v0, $v0, $v1 /* handwritten instruction */
    /* F0D4C 001EFDCC 0400428C */  lw         $v0, 0x4($v0)
    /* F0D50 001EFDD0 0D004010 */  beqz       $v0, .L001EFE08
    /* F0D54 001EFDD4 20105800 */   add       $v0, $v0, $t8 /* handwritten instruction */
    /* F0D58 001EFDD8 00004494 */  lhu        $a0, 0x0($v0)
    /* F0D5C 001EFDDC 02004594 */  lhu        $a1, 0x2($v0)
    /* F0D60 001EFDE0 22082400 */  sub        $at, $at, $a0 /* handwritten instruction */
    /* F0D64 001EFDE4 00000000 */  nop
    /* F0D68 001EFDE8 07002004 */  bltz       $at, .L001EFE08
    /* F0D6C 001EFDEC 2228A100 */   sub       $a1, $a1, $at /* handwritten instruction */
    /* F0D70 001EFDF0 0500A018 */  blez       $a1, .L001EFE08
    /* F0D74 001EFDF4 80080100 */   sll       $at, $at, 2
    /* F0D78 001EFDF8 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* F0D7C 001EFDFC 0400218C */  lw         $at, 0x4($at)
    /* F0D80 001EFE00 0800E003 */  jr         $ra
    /* F0D84 001EFE04 00000000 */   nop
.align 2
  .L001EFE08:
    /* F0D88 001EFE08 0800E003 */  jr         $ra
    /* F0D8C 001EFE0C 00000120 */   addi      $at, $zero, 0x0 /* handwritten instruction */
endlabel func_001EFD70
