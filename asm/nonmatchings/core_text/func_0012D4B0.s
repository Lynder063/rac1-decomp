.align 3
nonmatching func_0012D4B0, 0x2C

glabel func_0012D4B0
    /* 2E430 0012D4B0 0A000324 */  addiu      $v1, $zero, 0xA
    /* 2E434 0012D4B4 FF008430 */  andi       $a0, $a0, 0xFF
    /* 2E438 0012D4B8 1B008300 */  divu       $zero, $a0, $v1
    /* 2E43C 0012D4BC 06000524 */  addiu      $a1, $zero, 0x6
    /* 2E440 0012D4C0 01006050 */  beql       $v1, $zero, .L0012D4C8
    /* 2E444 0012D4C4 CD010000 */   break     0, 7
.align 2
  .L0012D4C8:
    /* 2E448 0012D4C8 12100000 */  mflo       $v0
    /* 2E44C 0012D4CC 18184500 */  mult       $v1, $v0, $a1
    /* 2E450 0012D4D0 21106400 */  addu       $v0, $v1, $a0
    /* 2E454 0012D4D4 0800E003 */  jr         $ra
    /* 2E458 0012D4D8 FF004230 */   andi      $v0, $v0, 0xFF
endlabel func_0012D4B0
    /* 2E45C 0012D4DC 00000000 */  nop
