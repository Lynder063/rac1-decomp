.align 3
nonmatching func_0012D4B0, 0x2C

glabel func_0012D4B0
    /* 2E430 0012D4B0 0A000324 */  addiu      $3, $0, 0xA
    /* 2E434 0012D4B4 FF008430 */  andi       $4, $4, 0xFF
    /* 2E438 0012D4B8 1B008300 */  divu       $0, $4, $3
    /* 2E43C 0012D4BC 06000524 */  addiu      $5, $0, 0x6
    /* 2E440 0012D4C0 01006050 */  beql       $3, $0, .L0012D4C8
    /* 2E444 0012D4C4 CD010000 */   break     0, 7
.align 2
  .L0012D4C8:
    /* 2E448 0012D4C8 12100000 */  mflo       $2
    /* 2E44C 0012D4CC 18184500 */  mult       $3, $2, $5
    /* 2E450 0012D4D0 21106400 */  addu       $2, $3, $4
    /* 2E454 0012D4D4 0800E003 */  jr         $31
    /* 2E458 0012D4D8 FF004230 */   andi      $2, $2, 0xFF
endlabel func_0012D4B0
    /* 2E45C 0012D4DC 00000000 */  nop
