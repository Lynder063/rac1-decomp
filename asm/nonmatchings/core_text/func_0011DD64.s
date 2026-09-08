nonmatching func_0011DD64, 0x34

glabel func_0011DD64
    /* 1ECE4 0011DD64 CDCDCDCD */  pref       0x0D, -0x3233($t6)
    /* 1ECE8 0011DD68 0900C010 */  beqz       $a2, .L0011DD90
    /* 1ECEC 0011DD6C 2D380000 */   daddu     $a3, $zero, $zero
.align 2
  .L0011DD70:
    /* 1ECF0 0011DD70 0000A390 */  lbu        $v1, 0x0($a1)
    /* 1ECF4 0011DD74 0100E724 */  addiu      $a3, $a3, 0x1
    /* 1ECF8 0011DD78 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1ECFC 0011DD7C 2B10E600 */  sltu       $v0, $a3, $a2
    /* 1ED00 0011DD80 000083A0 */  sb         $v1, 0x0($a0)
    /* 1ED04 0011DD84 01008424 */  addiu      $a0, $a0, 0x1
    /* 1ED08 0011DD88 F9FF4014 */  bnez       $v0, .L0011DD70
    /* 1ED0C 0011DD8C 00000000 */   nop
.align 2
  .L0011DD90:
    /* 1ED10 0011DD90 0800E003 */  jr         $ra
    /* 1ED14 0011DD94 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0011DD64
