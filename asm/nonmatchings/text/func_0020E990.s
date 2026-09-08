.align 3
/* Handwritten function */
nonmatching func_0020E990, 0x60

glabel func_0020E990
    /* 10F910 0020E990 01000220 */  addi       $2, $0, 0x1 /* handwritten instruction */
    /* 10F914 0020E994 1C00013C */  lui        $1, %hi(D_001C7A60)
    /* 10F918 0020E998 607A2124 */  addiu      $1, $1, %lo(D_001C7A60)
    /* 10F91C 0020E99C FFFF0320 */  addi       $3, $0, -0x1 /* handwritten instruction */
.align 2
  .L0020E9A0:
    /* 10F920 0020E9A0 07008630 */  andi       $6, $4, 0x7
    /* 10F924 0020E9A4 C2380400 */  srl        $7, $4, 3
    /* 10F928 0020E9A8 2038E100 */  add        $7, $7, $1 /* handwritten instruction */
    /* 10F92C 0020E9AC 0430C200 */  sllv       $6, $2, $6
    /* 10F930 0020E9B0 0000E890 */  lbu        $8, 0x0($7)
    /* 10F934 0020E9B4 2630C300 */  xor        $6, $6, $3
    /* 10F938 0020E9B8 01008420 */  addi       $4, $4, 0x1 /* handwritten instruction */
    /* 10F93C 0020E9BC FFFFA520 */  addi       $5, $5, -0x1 /* handwritten instruction */
    /* 10F940 0020E9C0 24300601 */  and        $6, $8, $6
    /* 10F944 0020E9C4 00000000 */  nop
    /* 10F948 0020E9C8 0500C810 */  beq        $6, $8, .L0020E9E0
    /* 10F94C 0020E9CC 00000000 */   nop
    /* 10F950 0020E9D0 F3FFA01C */  bgtz       $5, .L0020E9A0
    /* 10F954 0020E9D4 0000E6A0 */   sb        $6, 0x0($7)
    /* 10F958 0020E9D8 0800E003 */  jr         $31
    /* 10F95C 0020E9DC 00000000 */   nop
.align 2
  .L0020E9E0:
    /* 10F960 0020E9E0 34000000 */  teq        $0, $0, 0 /* handwritten instruction */
    /* 10F964 0020E9E4 00000000 */  nop
    /* 10F968 0020E9E8 0800E003 */  jr         $31
    /* 10F96C 0020E9EC 00000000 */   nop
endlabel func_0020E990
