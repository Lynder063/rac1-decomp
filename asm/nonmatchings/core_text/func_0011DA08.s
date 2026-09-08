.align 3
nonmatching func_0011DA08, 0x38

glabel func_0011DA08
    /* 1E988 0011DA08 82300600 */  srl        $a2, $a2, 2
    /* 1E98C 0011DA0C 0A00C010 */  beqz       $a2, .L0011DA38
    /* 1E990 0011DA10 2D380000 */   daddu     $a3, $zero, $zero
    /* 1E994 0011DA14 00000000 */  nop
.align 2
  .L0011DA18:
    /* 1E998 0011DA18 0000A38C */  lw         $v1, 0x0($a1)
    /* 1E99C 0011DA1C 0100E724 */  addiu      $a3, $a3, 0x1
    /* 1E9A0 0011DA20 0400A524 */  addiu      $a1, $a1, 0x4
    /* 1E9A4 0011DA24 2B10E600 */  sltu       $v0, $a3, $a2
    /* 1E9A8 0011DA28 000083AC */  sw         $v1, 0x0($a0)
    /* 1E9AC 0011DA2C 04008424 */  addiu      $a0, $a0, 0x4
    /* 1E9B0 0011DA30 F9FF4014 */  bnez       $v0, .L0011DA18
    /* 1E9B4 0011DA34 00000000 */   nop
.align 2
  .L0011DA38:
    /* 1E9B8 0011DA38 0800E003 */  jr         $ra
    /* 1E9BC 0011DA3C 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0011DA08
