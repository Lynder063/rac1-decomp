.align 3
nonmatching func_001F2A38, 0xD4

glabel func_001F2A38
    /* F39B8 001F2A38 1600083C */  lui        $t0, %hi(D_0015F720)
    /* F39BC 001F2A3C 20F7088D */  lw         $t0, %lo(D_0015F720)($t0)
    /* F39C0 001F2A40 0000038D */  lw         $v1, 0x0($t0)
    /* F39C4 001F2A44 04000725 */  addiu      $a3, $t0, 0x4
    /* F39C8 001F2A48 04000295 */  lhu        $v0, 0x4($t0)
    /* F39CC 001F2A4C 2330C200 */  subu       $a2, $a2, $v0
    /* F39D0 001F2A50 1800C004 */  bltz       $a2, .L001F2AB4
    /* F39D4 001F2A54 21480301 */   addu      $t1, $t0, $v1
    /* F39D8 001F2A58 0200E294 */  lhu        $v0, 0x2($a3)
    /* F39DC 001F2A5C 2A10C200 */  slt        $v0, $a2, $v0
    /* F39E0 001F2A60 14004010 */  beqz       $v0, .L001F2AB4
    /* F39E4 001F2A64 40100600 */   sll       $v0, $a2, 1
    /* F39E8 001F2A68 21104700 */  addu       $v0, $v0, $a3
    /* F39EC 001F2A6C 04004394 */  lhu        $v1, 0x4($v0)
    /* F39F0 001F2A70 10006010 */  beqz       $v1, .L001F2AB4
    /* F39F4 001F2A74 00000000 */   nop
    /* F39F8 001F2A78 04004294 */  lhu        $v0, 0x4($v0)
    /* F39FC 001F2A7C 80100200 */  sll        $v0, $v0, 2
    /* F3A00 001F2A80 21380201 */  addu       $a3, $t0, $v0
    /* F3A04 001F2A84 0000E394 */  lhu        $v1, 0x0($a3)
    /* F3A08 001F2A88 2328A300 */  subu       $a1, $a1, $v1
    /* F3A0C 001F2A8C 0900A004 */  bltz       $a1, .L001F2AB4
    /* F3A10 001F2A90 00000000 */   nop
    /* F3A14 001F2A94 0200E294 */  lhu        $v0, 0x2($a3)
    /* F3A18 001F2A98 2A10A200 */  slt        $v0, $a1, $v0
    /* F3A1C 001F2A9C 05004010 */  beqz       $v0, .L001F2AB4
    /* F3A20 001F2AA0 40100500 */   sll       $v0, $a1, 1
    /* F3A24 001F2AA4 21104700 */  addu       $v0, $v0, $a3
    /* F3A28 001F2AA8 04004394 */  lhu        $v1, 0x4($v0)
    /* F3A2C 001F2AAC 03006054 */  bnel       $v1, $zero, .L001F2ABC
    /* F3A30 001F2AB0 04004294 */   lhu       $v0, 0x4($v0)
.align 2
  .L001F2AB4:
    /* F3A34 001F2AB4 0800E003 */  jr         $ra
    /* F3A38 001F2AB8 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L001F2ABC:
    /* F3A3C 001F2ABC 80100200 */  sll        $v0, $v0, 2
    /* F3A40 001F2AC0 21380201 */  addu       $a3, $t0, $v0
    /* F3A44 001F2AC4 0000E394 */  lhu        $v1, 0x0($a3)
    /* F3A48 001F2AC8 23208300 */  subu       $a0, $a0, $v1
    /* F3A4C 001F2ACC F9FF8004 */  bltz       $a0, .L001F2AB4
    /* F3A50 001F2AD0 00000000 */   nop
    /* F3A54 001F2AD4 0200E294 */  lhu        $v0, 0x2($a3)
    /* F3A58 001F2AD8 2A108200 */  slt        $v0, $a0, $v0
    /* F3A5C 001F2ADC F5FF4010 */  beqz       $v0, .L001F2AB4
    /* F3A60 001F2AE0 40100400 */   sll       $v0, $a0, 1
    /* F3A64 001F2AE4 21104700 */  addu       $v0, $v0, $a3
    /* F3A68 001F2AE8 FFFF0434 */  ori        $a0, $zero, 0xFFFF
    /* F3A6C 001F2AEC 04004394 */  lhu        $v1, 0x4($v0)
    /* F3A70 001F2AF0 04006410 */  beq        $v1, $a0, .L001F2B04
    /* F3A74 001F2AF4 2D106000 */   daddu     $v0, $v1, $zero
    /* F3A78 001F2AF8 C0110200 */  sll        $v0, $v0, 7
    /* F3A7C 001F2AFC 0800E003 */  jr         $ra
    /* F3A80 001F2B00 21102201 */   addu      $v0, $t1, $v0
.align 2
  .L001F2B04:
    /* F3A84 001F2B04 0800E003 */  jr         $ra
    /* F3A88 001F2B08 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_001F2A38
    /* F3A8C 001F2B0C 00000000 */  nop
