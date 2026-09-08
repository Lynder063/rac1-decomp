.align 3
nonmatching func_0011D370, 0x38

glabel func_0011D370
    /* 1E2F0 0011D370 82300600 */  srl        $a2, $a2, 2
    /* 1E2F4 0011D374 0A00C010 */  beqz       $a2, .L0011D3A0
    /* 1E2F8 0011D378 2D380000 */   daddu     $a3, $zero, $zero
    /* 1E2FC 0011D37C 00000000 */  nop
.align 2
  .L0011D380:
    /* 1E300 0011D380 0000A38C */  lw         $v1, 0x0($a1)
    /* 1E304 0011D384 0100E724 */  addiu      $a3, $a3, 0x1
    /* 1E308 0011D388 0400A524 */  addiu      $a1, $a1, 0x4
    /* 1E30C 0011D38C 2B10E600 */  sltu       $v0, $a3, $a2
    /* 1E310 0011D390 000083AC */  sw         $v1, 0x0($a0)
    /* 1E314 0011D394 04008424 */  addiu      $a0, $a0, 0x4
    /* 1E318 0011D398 F9FF4014 */  bnez       $v0, .L0011D380
    /* 1E31C 0011D39C 00000000 */   nop
.align 2
  .L0011D3A0:
    /* 1E320 0011D3A0 0800E003 */  jr         $ra
    /* 1E324 0011D3A4 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0011D370
