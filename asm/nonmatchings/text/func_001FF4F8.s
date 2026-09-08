.align 3
nonmatching func_001FF4F8, 0x64

glabel func_001FF4F8
    /* 100478 001FF4F8 1A00023C */  lui        $v0, %hi(D_00199810)
    /* 10047C 001FF4FC 00240400 */  sll        $a0, $a0, 16
    /* 100480 001FF500 10984A24 */  addiu      $t2, $v0, %lo(D_00199810)
    /* 100484 001FF504 03240400 */  sra        $a0, $a0, 16
    /* 100488 001FF508 40100500 */  sll        $v0, $a1, 1
    /* 10048C 001FF50C 2D480000 */  daddu      $t1, $zero, $zero
    /* 100490 001FF510 21404A00 */  addu       $t0, $v0, $t2
    /* 100494 001FF514 02000724 */  addiu      $a3, $zero, 0x2
.align 2
  .L001FF518:
    /* 100498 001FF518 00000285 */  lh         $v0, 0x0($t0)
    /* 10049C 001FF51C 08004414 */  bne        $v0, $a0, .L001FF540
    /* 1004A0 001FF520 80180900 */   sll       $v1, $t1, 2
    /* 1004A4 001FF524 0400C010 */  beqz       $a2, .L001FF538
    /* 1004A8 001FF528 0B386500 */   movn      $a3, $v1, $a1
    /* 1004AC 001FF52C 2110EA00 */  addu       $v0, $a3, $t2
    /* 1004B0 001FF530 00004394 */  lhu        $v1, 0x0($v0)
    /* 1004B4 001FF534 0000C3A4 */  sh         $v1, 0x0($a2)
.align 2
  .L001FF538:
    /* 1004B8 001FF538 0800E003 */  jr         $ra
    /* 1004BC 001FF53C 2D102001 */   daddu     $v0, $t1, $zero
.align 2
  .L001FF540:
    /* 1004C0 001FF540 01002925 */  addiu      $t1, $t1, 0x1
    /* 1004C4 001FF544 0400E724 */  addiu      $a3, $a3, 0x4
    /* 1004C8 001FF548 96002229 */  slti       $v0, $t1, 0x96
    /* 1004CC 001FF54C F2FF4014 */  bnez       $v0, .L001FF518
    /* 1004D0 001FF550 04000825 */   addiu     $t0, $t0, 0x4
    /* 1004D4 001FF554 0800E003 */  jr         $ra
    /* 1004D8 001FF558 FFFF0224 */   addiu     $v0, $zero, -0x1
endlabel func_001FF4F8
    /* 1004DC 001FF55C 00000000 */  nop
