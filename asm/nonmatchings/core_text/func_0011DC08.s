.align 3
nonmatching func_0011DC08, 0x38

glabel func_0011DC08
    /* 1EB88 0011DC08 82300600 */  srl        $6, $6, 2
    /* 1EB8C 0011DC0C 0A00C010 */  beqz       $6, .L0011DC38
    /* 1EB90 0011DC10 2D380000 */   daddu     $7, $0, $0
    /* 1EB94 0011DC14 00000000 */  nop
.align 2
  .L0011DC18:
    /* 1EB98 0011DC18 0000A38C */  lw         $3, 0x0($5)
    /* 1EB9C 0011DC1C 0100E724 */  addiu      $7, $7, 0x1
    /* 1EBA0 0011DC20 0400A524 */  addiu      $5, $5, 0x4
    /* 1EBA4 0011DC24 2B10E600 */  sltu       $2, $7, $6
    /* 1EBA8 0011DC28 000083AC */  sw         $3, 0x0($4)
    /* 1EBAC 0011DC2C 04008424 */  addiu      $4, $4, 0x4
    /* 1EBB0 0011DC30 F9FF4014 */  bnez       $2, .L0011DC18
    /* 1EBB4 0011DC34 00000000 */   nop
.align 2
  .L0011DC38:
    /* 1EBB8 0011DC38 0800E003 */  jr         $31
    /* 1EBBC 0011DC3C 2D100000 */   daddu     $2, $0, $0
endlabel func_0011DC08
