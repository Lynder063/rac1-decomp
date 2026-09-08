.align 3
/* Handwritten function */
nonmatching func_0011D4E0, 0x1F4

glabel func_0011D4E0
    /* 1E460 0011D4E0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1E464 0011D4E4 1500043C */  lui        $a0, %hi(D_00152A90)
    /* 1E468 0011D4E8 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1E46C 0011D4EC 902A8424 */  addiu      $a0, $a0, %lo(D_00152A90)
    /* 1E470 0011D4F0 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1E474 0011D4F4 1300123C */  lui        $s2, %hi(D_001303E8)
    /* 1E478 0011D4F8 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1E47C 0011D4FC 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1E480 0011D500 E8035026 */  addiu      $s0, $s2, %lo(D_001303E8)
    /* 1E484 0011D504 E803458E */  lw         $a1, %lo(D_001303E8)($s2)
    /* 1E488 0011D508 0400078E */  lw         $a3, 0x4($s0)
    /* 1E48C 0011D50C 0800098E */  lw         $t1, 0x8($s0)
    /* 1E490 0011D510 2D30A000 */  daddu      $a2, $a1, $zero
    /* 1E494 0011D514 2138A700 */  addu       $a3, $a1, $a3
    /* 1E498 0011D518 2148E900 */  addu       $t1, $a3, $t1
    /* 1E49C 0011D51C 2D40E000 */  daddu      $t0, $a3, $zero
    /* 1E4A0 0011D520 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 1E4A4 0011D524 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 1E4A8 0011D528 A469040C */  jal        func_0011A690
    /* 1E4AC 0011D52C FFFFE724 */   addiu     $a3, $a3, -0x1
    /* 1E4B0 0011D530 00308040 */  mtc0       $zero, $6 /* handwritten instruction */
    /* 1E4B4 0011D534 0F040000 */  sync.p
    /* 1E4B8 0011D538 E803518E */  lw         $s1, %lo(D_001303E8)($s2)
    /* 1E4BC 0011D53C 3100222A */  slti       $v0, $s1, 0x31
    /* 1E4C0 0011D540 06004014 */  bnez       $v0, .L0011D55C
    /* 1E4C4 0011D544 2DC80000 */   daddu     $t9, $zero, $zero
    /* 1E4C8 0011D548 1500043C */  lui        $a0, %hi(D_00152AC8)
    /* 1E4CC 0011D54C A469040C */  jal        func_0011A690
    /* 1E4D0 0011D550 C82A8424 */   addiu     $a0, $a0, %lo(D_00152AC8)
    /* 1E4D4 0011D554 6877040C */  jal        func_0011DDA0
    /* 1E4D8 0011D558 01000424 */   addiu     $a0, $zero, 0x1
.align 2
  .L0011D55C:
    /* 1E4DC 0011D55C 2A103103 */  slt        $v0, $t9, $s1
    /* 1E4E0 0011D560 0D004010 */  beqz       $v0, .L0011D598
    /* 1E4E4 0011D564 1000108E */   lw        $s0, 0x10($s0)
    /* 1E4E8 0011D568 0000058E */  lw         $a1, 0x0($s0)
    /* 1E4EC 0011D56C 00000000 */  nop
.align 2
  .L0011D570:
    /* 1E4F0 0011D570 2D202003 */  daddu      $a0, $t9, $zero
    /* 1E4F4 0011D574 0400068E */  lw         $a2, 0x4($s0)
    /* 1E4F8 0011D578 0800078E */  lw         $a3, 0x8($s0)
    /* 1E4FC 0011D57C 0C00088E */  lw         $t0, 0xC($s0)
    /* 1E500 0011D580 2475040C */  jal        func_0011D490
    /* 1E504 0011D584 10001026 */   addiu     $s0, $s0, 0x10
    /* 1E508 0011D588 01003927 */  addiu      $t9, $t9, 0x1
    /* 1E50C 0011D58C 2A103103 */  slt        $v0, $t9, $s1
    /* 1E510 0011D590 F7FF4054 */  bnel       $v0, $zero, .L0011D570
    /* 1E514 0011D594 0000058E */   lw        $a1, 0x0($s0)
.align 2
  .L0011D598:
    /* 1E518 0011D598 E8035026 */  addiu      $s0, $s2, %lo(D_001303E8)
    /* 1E51C 0011D59C 0400028E */  lw         $v0, 0x4($s0)
    /* 1E520 0011D5A0 21882203 */  addu       $s1, $t9, $v0
    /* 1E524 0011D5A4 3100232A */  slti       $v1, $s1, 0x31
    /* 1E528 0011D5A8 07006014 */  bnez       $v1, .L0011D5C8
    /* 1E52C 0011D5AC 2A103103 */   slt       $v0, $t9, $s1
    /* 1E530 0011D5B0 1500043C */  lui        $a0, %hi(D_00152AE0)
    /* 1E534 0011D5B4 A469040C */  jal        func_0011A690
    /* 1E538 0011D5B8 E02A8424 */   addiu     $a0, $a0, %lo(D_00152AE0)
    /* 1E53C 0011D5BC 6877040C */  jal        func_0011DDA0
    /* 1E540 0011D5C0 01000424 */   addiu     $a0, $zero, 0x1
    /* 1E544 0011D5C4 2A103103 */  slt        $v0, $t9, $s1
.align 2
  .L0011D5C8:
    /* 1E548 0011D5C8 0D004010 */  beqz       $v0, .L0011D600
    /* 1E54C 0011D5CC 1400108E */   lw        $s0, 0x14($s0)
    /* 1E550 0011D5D0 0000058E */  lw         $a1, 0x0($s0)
    /* 1E554 0011D5D4 00000000 */  nop
.align 2
  .L0011D5D8:
    /* 1E558 0011D5D8 2D202003 */  daddu      $a0, $t9, $zero
    /* 1E55C 0011D5DC 0400068E */  lw         $a2, 0x4($s0)
    /* 1E560 0011D5E0 0800078E */  lw         $a3, 0x8($s0)
    /* 1E564 0011D5E4 0C00088E */  lw         $t0, 0xC($s0)
    /* 1E568 0011D5E8 2475040C */  jal        func_0011D490
    /* 1E56C 0011D5EC 10001026 */   addiu     $s0, $s0, 0x10
    /* 1E570 0011D5F0 01003927 */  addiu      $t9, $t9, 0x1
    /* 1E574 0011D5F4 2A103103 */  slt        $v0, $t9, $s1
    /* 1E578 0011D5F8 F7FF4054 */  bnel       $v0, $zero, .L0011D5D8
    /* 1E57C 0011D5FC 0000058E */   lw        $a1, 0x0($s0)
.align 2
  .L0011D600:
    /* 1E580 0011D600 E8035026 */  addiu      $s0, $s2, %lo(D_001303E8)
    /* 1E584 0011D604 0C0019AE */  sw         $t9, 0xC($s0)
    /* 1E588 0011D608 00309940 */  mtc0       $t9, $6 /* handwritten instruction */
    /* 1E58C 0011D60C 0F040000 */  sync.p
    /* 1E590 0011D610 0800028E */  lw         $v0, 0x8($s0)
    /* 1E594 0011D614 19004058 */  blezl      $v0, .L0011D67C
    /* 1E598 0011D618 2D802003 */   daddu     $s0, $t9, $zero
    /* 1E59C 0011D61C 21882203 */  addu       $s1, $t9, $v0
    /* 1E5A0 0011D620 3100222A */  slti       $v0, $s1, 0x31
    /* 1E5A4 0011D624 07004014 */  bnez       $v0, .L0011D644
    /* 1E5A8 0011D628 2A103103 */   slt       $v0, $t9, $s1
    /* 1E5AC 0011D62C 1500043C */  lui        $a0, %hi(D_00152AF8)
    /* 1E5B0 0011D630 A469040C */  jal        func_0011A690
    /* 1E5B4 0011D634 F82A8424 */   addiu     $a0, $a0, %lo(D_00152AF8)
    /* 1E5B8 0011D638 6877040C */  jal        func_0011DDA0
    /* 1E5BC 0011D63C 01000424 */   addiu     $a0, $zero, 0x1
    /* 1E5C0 0011D640 2A103103 */  slt        $v0, $t9, $s1
.align 2
  .L0011D644:
    /* 1E5C4 0011D644 0C004010 */  beqz       $v0, .L0011D678
    /* 1E5C8 0011D648 1800108E */   lw        $s0, 0x18($s0)
    /* 1E5CC 0011D64C 0000058E */  lw         $a1, 0x0($s0)
.align 2
  .L0011D650:
    /* 1E5D0 0011D650 2D202003 */  daddu      $a0, $t9, $zero
    /* 1E5D4 0011D654 0400068E */  lw         $a2, 0x4($s0)
    /* 1E5D8 0011D658 0800078E */  lw         $a3, 0x8($s0)
    /* 1E5DC 0011D65C 0C00088E */  lw         $t0, 0xC($s0)
    /* 1E5E0 0011D660 2475040C */  jal        func_0011D490
    /* 1E5E4 0011D664 10001026 */   addiu     $s0, $s0, 0x10
    /* 1E5E8 0011D668 01003927 */  addiu      $t9, $t9, 0x1
    /* 1E5EC 0011D66C 2A103103 */  slt        $v0, $t9, $s1
    /* 1E5F0 0011D670 F7FF4054 */  bnel       $v0, $zero, .L0011D650
    /* 1E5F4 0011D674 0000058E */   lw        $a1, 0x0($s0)
.align 2
  .L0011D678:
    /* 1E5F8 0011D678 2D802003 */  daddu      $s0, $t9, $zero
.align 2
  .L0011D67C:
    /* 1E5FC 0011D67C 3000022A */  slti       $v0, $s0, 0x30
    /* 1E600 0011D680 0D004010 */  beqz       $v0, .L0011D6B8
    /* 1E604 0011D684 40CB1900 */   sll       $t9, $t9, 13
    /* 1E608 0011D688 00E0023C */  lui        $v0, %hi(D_E0002000)
    /* 1E60C 0011D68C 21882203 */  addu       $s1, $t9, $v0
.align 2
  .L0011D690:
    /* 1E610 0011D690 2D200002 */  daddu      $a0, $s0, $zero
    /* 1E614 0011D694 2D302002 */  daddu      $a2, $s1, $zero
    /* 1E618 0011D698 2D280000 */  daddu      $a1, $zero, $zero
    /* 1E61C 0011D69C 2D380000 */  daddu      $a3, $zero, $zero
    /* 1E620 0011D6A0 2D400000 */  daddu      $t0, $zero, $zero
    /* 1E624 0011D6A4 2475040C */  jal        func_0011D490
    /* 1E628 0011D6A8 01001026 */   addiu     $s0, $s0, 0x1
    /* 1E62C 0011D6AC 3000022A */  slti       $v0, $s0, 0x30
    /* 1E630 0011D6B0 F7FF4014 */  bnez       $v0, .L0011D690
    /* 1E634 0011D6B4 00203126 */   addiu     $s1, $s1, %lo(D_E0002000)
.align 2
  .L0011D6B8:
    /* 1E638 0011D6B8 3000BFDF */  ld         $ra, 0x30($sp)
    /* 1E63C 0011D6BC 2D102003 */  daddu      $v0, $t9, $zero
    /* 1E640 0011D6C0 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1E644 0011D6C4 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1E648 0011D6C8 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1E64C 0011D6CC 0800E003 */  jr         $ra
    /* 1E650 0011D6D0 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0011D4E0
