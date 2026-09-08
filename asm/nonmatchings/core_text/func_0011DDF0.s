.align 3
nonmatching func_0011DDF0, 0x38

glabel func_0011DDF0
    /* 1ED70 0011DDF0 82300600 */  srl        $a2, $a2, 2
    /* 1ED74 0011DDF4 0A00C010 */  beqz       $a2, .L0011DE20
    /* 1ED78 0011DDF8 2D380000 */   daddu     $a3, $zero, $zero
    /* 1ED7C 0011DDFC 00000000 */  nop
.align 2
  .L0011DE00:
    /* 1ED80 0011DE00 0000A38C */  lw         $v1, 0x0($a1)
    /* 1ED84 0011DE04 0100E724 */  addiu      $a3, $a3, 0x1
    /* 1ED88 0011DE08 0400A524 */  addiu      $a1, $a1, 0x4
    /* 1ED8C 0011DE0C 2B10E600 */  sltu       $v0, $a3, $a2
    /* 1ED90 0011DE10 000083AC */  sw         $v1, 0x0($a0)
    /* 1ED94 0011DE14 04008424 */  addiu      $a0, $a0, 0x4
    /* 1ED98 0011DE18 F9FF4014 */  bnez       $v0, .L0011DE00
    /* 1ED9C 0011DE1C 00000000 */   nop
.align 2
  .L0011DE20:
    /* 1EDA0 0011DE20 0800E003 */  jr         $ra
    /* 1EDA4 0011DE24 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0011DDF0
