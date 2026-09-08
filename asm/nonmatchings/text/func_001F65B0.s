.align 3
nonmatching func_001F65B0, 0x50

glabel func_001F65B0
    /* F7530 001F65B0 2D400000 */  daddu      $t0, $zero, $zero
    /* F7534 001F65B4 1000A010 */  beqz       $a1, .L001F65F8
    /* F7538 001F65B8 2D480000 */   daddu     $t1, $zero, $zero
    /* F753C 001F65BC 00008290 */  lbu        $v0, 0x0($a0)
    /* F7540 001F65C0 0D004010 */  beqz       $v0, .L001F65F8
    /* F7544 001F65C4 2D388000 */   daddu     $a3, $a0, $zero
    /* F7548 001F65C8 0000E290 */  lbu        $v0, 0x0($a3)
    /* F754C 001F65CC 01002925 */  addiu      $t1, $t1, 0x1
.align 2
  .L001F65D0:
    /* F7550 001F65D0 0100E724 */  addiu      $a3, $a3, 0x1
    /* F7554 001F65D4 80100200 */  sll        $v0, $v0, 2
    /* F7558 001F65D8 21104600 */  addu       $v0, $v0, $a2
    /* F755C 001F65DC 03004480 */  lb         $a0, 0x3($v0)
    /* F7560 001F65E0 21180401 */  addu       $v1, $t0, $a0
    /* F7564 001F65E4 04002511 */  beq        $t1, $a1, .L001F65F8
    /* F7568 001F65E8 0B406400 */   movn      $t0, $v1, $a0
    /* F756C 001F65EC 0000E290 */  lbu        $v0, 0x0($a3)
    /* F7570 001F65F0 F7FF4014 */  bnez       $v0, .L001F65D0
    /* F7574 001F65F4 01002925 */   addiu     $t1, $t1, 0x1
.align 2
  .L001F65F8:
    /* F7578 001F65F8 0800E003 */  jr         $ra
    /* F757C 001F65FC 2D100001 */   daddu     $v0, $t0, $zero
endlabel func_001F65B0
