.align 3
nonmatching func_0011DC08, 0x38

glabel func_0011DC08
    /* 1EB88 0011DC08 82300600 */  srl        $a2, $a2, 2
    /* 1EB8C 0011DC0C 0A00C010 */  beqz       $a2, .L0011DC38
    /* 1EB90 0011DC10 2D380000 */   daddu     $a3, $zero, $zero
    /* 1EB94 0011DC14 00000000 */  nop
.align 2
  .L0011DC18:
    /* 1EB98 0011DC18 0000A38C */  lw         $v1, 0x0($a1)
    /* 1EB9C 0011DC1C 0100E724 */  addiu      $a3, $a3, 0x1
    /* 1EBA0 0011DC20 0400A524 */  addiu      $a1, $a1, 0x4
    /* 1EBA4 0011DC24 2B10E600 */  sltu       $v0, $a3, $a2
    /* 1EBA8 0011DC28 000083AC */  sw         $v1, 0x0($a0)
    /* 1EBAC 0011DC2C 04008424 */  addiu      $a0, $a0, 0x4
    /* 1EBB0 0011DC30 F9FF4014 */  bnez       $v0, .L0011DC18
    /* 1EBB4 0011DC34 00000000 */   nop
.align 2
  .L0011DC38:
    /* 1EBB8 0011DC38 0800E003 */  jr         $ra
    /* 1EBBC 0011DC3C 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0011DC08
