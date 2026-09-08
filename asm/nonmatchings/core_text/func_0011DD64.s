nonmatching func_0011DD64, 0x34

glabel func_0011DD64
    /* 1ECE4 0011DD64 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1ECE8 0011DD68 0900C010 */  beqz       $6, .L0011DD90
    /* 1ECEC 0011DD6C 2D380000 */   daddu     $7, $0, $0
.align 2
  .L0011DD70:
    /* 1ECF0 0011DD70 0000A390 */  lbu        $3, 0x0($5)
    /* 1ECF4 0011DD74 0100E724 */  addiu      $7, $7, 0x1
    /* 1ECF8 0011DD78 0100A524 */  addiu      $5, $5, 0x1
    /* 1ECFC 0011DD7C 2B10E600 */  sltu       $2, $7, $6
    /* 1ED00 0011DD80 000083A0 */  sb         $3, 0x0($4)
    /* 1ED04 0011DD84 01008424 */  addiu      $4, $4, 0x1
    /* 1ED08 0011DD88 F9FF4014 */  bnez       $2, .L0011DD70
    /* 1ED0C 0011DD8C 00000000 */   nop
.align 2
  .L0011DD90:
    /* 1ED10 0011DD90 0800E003 */  jr         $31
    /* 1ED14 0011DD94 2D100000 */   daddu     $2, $0, $0
endlabel func_0011DD64
