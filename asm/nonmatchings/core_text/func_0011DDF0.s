.align 3
nonmatching func_0011DDF0, 0x38

glabel func_0011DDF0
    /* 1ED70 0011DDF0 82300600 */  srl        $6, $6, 2
    /* 1ED74 0011DDF4 0A00C010 */  beqz       $6, .L0011DE20
    /* 1ED78 0011DDF8 2D380000 */   daddu     $7, $0, $0
    /* 1ED7C 0011DDFC 00000000 */  nop
.align 2
  .L0011DE00:
    /* 1ED80 0011DE00 0000A38C */  lw         $3, 0x0($5)
    /* 1ED84 0011DE04 0100E724 */  addiu      $7, $7, 0x1
    /* 1ED88 0011DE08 0400A524 */  addiu      $5, $5, 0x4
    /* 1ED8C 0011DE0C 2B10E600 */  sltu       $2, $7, $6
    /* 1ED90 0011DE10 000083AC */  sw         $3, 0x0($4)
    /* 1ED94 0011DE14 04008424 */  addiu      $4, $4, 0x4
    /* 1ED98 0011DE18 F9FF4014 */  bnez       $2, .L0011DE00
    /* 1ED9C 0011DE1C 00000000 */   nop
.align 2
  .L0011DE20:
    /* 1EDA0 0011DE20 0800E003 */  jr         $31
    /* 1EDA4 0011DE24 2D100000 */   daddu     $2, $0, $0
endlabel func_0011DDF0
