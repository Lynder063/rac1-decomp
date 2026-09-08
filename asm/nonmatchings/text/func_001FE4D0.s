.align 3
nonmatching func_001FE4D0, 0x6C

glabel func_001FE4D0
    /* FF450 001FE4D0 1A00023C */  lui        $v0, %hi(D_001997D0)
    /* FF454 001FE4D4 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* FF458 001FE4D8 2D404000 */  daddu      $t0, $v0, $zero
    /* FF45C 001FE4DC D0974224 */  addiu      $v0, $v0, %lo(D_001997D0)
    /* FF460 001FE4E0 2C00438C */  lw         $v1, 0x2C($v0)
    /* FF464 001FE4E4 13006018 */  blez       $v1, .L001FE534
    /* FF468 001FE4E8 2D280000 */   daddu     $a1, $zero, $zero
    /* FF46C 001FE4EC 1600033C */  lui        $v1, %hi(D_0015F780)
    /* FF470 001FE4F0 80F7638C */  lw         $v1, %lo(D_0015F780)($v1)
    /* FF474 001FE4F4 0400628C */  lw         $v0, 0x4($v1)
    /* FF478 001FE4F8 03004414 */  bne        $v0, $a0, .L001FE508
    /* FF47C 001FE4FC 2D386000 */   daddu     $a3, $v1, $zero
    /* FF480 001FE500 0C000010 */  b          .L001FE534
    /* FF484 001FE504 2D300000 */   daddu     $a2, $zero, $zero
.align 2
  .L001FE508:
    /* FF488 001FE508 D0970325 */  addiu      $v1, $t0, %lo(D_001997D0)
.align 2
  .L001FE50C:
    /* FF48C 001FE50C 0100A524 */  addiu      $a1, $a1, 0x1
    /* FF490 001FE510 2C00628C */  lw         $v0, 0x2C($v1)
    /* FF494 001FE514 2A10A200 */  slt        $v0, $a1, $v0
    /* FF498 001FE518 06004010 */  beqz       $v0, .L001FE534
    /* FF49C 001FE51C 00110500 */   sll       $v0, $a1, 4
    /* FF4A0 001FE520 21104700 */  addu       $v0, $v0, $a3
    /* FF4A4 001FE524 0400438C */  lw         $v1, 0x4($v0)
    /* FF4A8 001FE528 F8FF6414 */  bne        $v1, $a0, .L001FE50C
    /* FF4AC 001FE52C D0970325 */   addiu     $v1, $t0, %lo(D_001997D0)
    /* FF4B0 001FE530 2D30A000 */  daddu      $a2, $a1, $zero
.align 2
  .L001FE534:
    /* FF4B4 001FE534 0800E003 */  jr         $ra
    /* FF4B8 001FE538 2D10C000 */   daddu     $v0, $a2, $zero
endlabel func_001FE4D0
    /* FF4BC 001FE53C 00000000 */  nop
