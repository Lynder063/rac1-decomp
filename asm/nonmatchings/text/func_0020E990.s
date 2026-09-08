.align 3
/* Handwritten function */
nonmatching func_0020E990, 0x60

glabel func_0020E990
    /* 10F910 0020E990 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* 10F914 0020E994 1C00013C */  lui        $at, %hi(D_001C7A60)
    /* 10F918 0020E998 607A2124 */  addiu      $at, $at, %lo(D_001C7A60)
    /* 10F91C 0020E99C FFFF0320 */  addi       $v1, $zero, -0x1 /* handwritten instruction */
.align 2
  .L0020E9A0:
    /* 10F920 0020E9A0 07008630 */  andi       $a2, $a0, 0x7
    /* 10F924 0020E9A4 C2380400 */  srl        $a3, $a0, 3
    /* 10F928 0020E9A8 2038E100 */  add        $a3, $a3, $at /* handwritten instruction */
    /* 10F92C 0020E9AC 0430C200 */  sllv       $a2, $v0, $a2
    /* 10F930 0020E9B0 0000E890 */  lbu        $t0, 0x0($a3)
    /* 10F934 0020E9B4 2630C300 */  xor        $a2, $a2, $v1
    /* 10F938 0020E9B8 01008420 */  addi       $a0, $a0, 0x1 /* handwritten instruction */
    /* 10F93C 0020E9BC FFFFA520 */  addi       $a1, $a1, -0x1 /* handwritten instruction */
    /* 10F940 0020E9C0 24300601 */  and        $a2, $t0, $a2
    /* 10F944 0020E9C4 00000000 */  nop
    /* 10F948 0020E9C8 0500C810 */  beq        $a2, $t0, .L0020E9E0
    /* 10F94C 0020E9CC 00000000 */   nop
    /* 10F950 0020E9D0 F3FFA01C */  bgtz       $a1, .L0020E9A0
    /* 10F954 0020E9D4 0000E6A0 */   sb        $a2, 0x0($a3)
    /* 10F958 0020E9D8 0800E003 */  jr         $ra
    /* 10F95C 0020E9DC 00000000 */   nop
.align 2
  .L0020E9E0:
    /* 10F960 0020E9E0 34000000 */  teq        $zero, $zero, 0 /* handwritten instruction */
    /* 10F964 0020E9E4 00000000 */  nop
    /* 10F968 0020E9E8 0800E003 */  jr         $ra
    /* 10F96C 0020E9EC 00000000 */   nop
endlabel func_0020E990
