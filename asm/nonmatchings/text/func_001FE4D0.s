.align 3
nonmatching func_001FE4D0, 0x6C

glabel func_001FE4D0
    /* FF450 001FE4D0 1A00023C */  lui        $2, %hi(D_001997D0)
    /* FF454 001FE4D4 FFFF0624 */  addiu      $6, $0, -0x1
    /* FF458 001FE4D8 2D404000 */  daddu      $8, $2, $0
    /* FF45C 001FE4DC D0974224 */  addiu      $2, $2, %lo(D_001997D0)
    /* FF460 001FE4E0 2C00438C */  lw         $3, 0x2C($2)
    /* FF464 001FE4E4 13006018 */  blez       $3, .L001FE534
    /* FF468 001FE4E8 2D280000 */   daddu     $5, $0, $0
    /* FF46C 001FE4EC 1600033C */  lui        $3, %hi(D_0015F780)
    /* FF470 001FE4F0 80F7638C */  lw         $3, %lo(D_0015F780)($3)
    /* FF474 001FE4F4 0400628C */  lw         $2, 0x4($3)
    /* FF478 001FE4F8 03004414 */  bne        $2, $4, .L001FE508
    /* FF47C 001FE4FC 2D386000 */   daddu     $7, $3, $0
    /* FF480 001FE500 0C000010 */  b          .L001FE534
    /* FF484 001FE504 2D300000 */   daddu     $6, $0, $0
.align 2
  .L001FE508:
    /* FF488 001FE508 D0970325 */  addiu      $3, $8, %lo(D_001997D0)
.align 2
  .L001FE50C:
    /* FF48C 001FE50C 0100A524 */  addiu      $5, $5, 0x1
    /* FF490 001FE510 2C00628C */  lw         $2, 0x2C($3)
    /* FF494 001FE514 2A10A200 */  slt        $2, $5, $2
    /* FF498 001FE518 06004010 */  beqz       $2, .L001FE534
    /* FF49C 001FE51C 00110500 */   sll       $2, $5, 4
    /* FF4A0 001FE520 21104700 */  addu       $2, $2, $7
    /* FF4A4 001FE524 0400438C */  lw         $3, 0x4($2)
    /* FF4A8 001FE528 F8FF6414 */  bne        $3, $4, .L001FE50C
    /* FF4AC 001FE52C D0970325 */   addiu     $3, $8, %lo(D_001997D0)
    /* FF4B0 001FE530 2D30A000 */  daddu      $6, $5, $0
.align 2
  .L001FE534:
    /* FF4B4 001FE534 0800E003 */  jr         $31
    /* FF4B8 001FE538 2D10C000 */   daddu     $2, $6, $0
endlabel func_001FE4D0
    /* FF4BC 001FE53C 00000000 */  nop
