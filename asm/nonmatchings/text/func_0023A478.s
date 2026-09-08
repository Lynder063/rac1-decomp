.align 3
nonmatching func_0023A478, 0x15C

glabel func_0023A478
    /* 13B3F8 0023A478 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13B3FC 0023A47C 00020824 */  addiu      $t0, $zero, 0x200
    /* 13B400 0023A480 0000BF7F */  sq         $ra, 0x0($sp)
    /* 13B404 0023A484 2D200000 */  daddu      $a0, $zero, $zero
    /* 13B408 0023A488 2D280000 */  daddu      $a1, $zero, $zero
    /* 13B40C 0023A48C 00020624 */  addiu      $a2, $zero, 0x200
    /* 13B410 0023A490 80000724 */  addiu      $a3, $zero, 0x80
    /* 13B414 0023A494 80000924 */  addiu      $t1, $zero, 0x80
    /* 13B418 0023A498 AEEE070C */  jal        func_001FBAB8
    /* 13B41C 0023A49C 2D500000 */   daddu     $t2, $zero, $zero
    /* 13B420 0023A4A0 1E00023C */  lui        $v0, %hi(D_001E66C0)
    /* 13B424 0023A4A4 C0664824 */  addiu      $t0, $v0, %lo(D_001E66C0)
    /* 13B428 0023A4A8 5C00038D */  lw         $v1, 0x5C($t0)
    /* 13B42C 0023A4AC 3C006010 */  beqz       $v1, .L0023A5A0
    /* 13B430 0023A4B0 14000324 */   addiu     $v1, $zero, 0x14
    /* 13B434 0023A4B4 5800048D */  lw         $a0, 0x58($t0)
    /* 13B438 0023A4B8 01000A24 */  addiu      $t2, $zero, 0x1
    /* 13B43C 0023A4BC 18388300 */  mult       $a3, $a0, $v1
    /* 13B440 0023A4C0 21100701 */  addu       $v0, $t0, $a3
    /* 13B444 0023A4C4 D400498C */  lw         $t1, 0xD4($v0)
    /* 13B448 0023A4C8 40002A15 */  bne        $t1, $t2, .L0023A5CC
    /* 13B44C 0023A4CC 0000BF7B */   lq        $ra, 0x0($sp)
    /* 13B450 0023A4D0 D000438C */  lw         $v1, 0xD0($v0)
    /* 13B454 0023A4D4 18000624 */  addiu      $a2, $zero, 0x18
    /* 13B458 0023A4D8 1400043C */  lui        $a0, %hi(D_0013D530)
    /* 13B45C 0023A4DC 1E00053C */  lui        $a1, %hi(D_001E02B0)
    /* 13B460 0023A4E0 18306600 */  mult       $a2, $v1, $a2
    /* 13B464 0023A4E4 30D58424 */  addiu      $a0, $a0, %lo(D_0013D530)
    /* 13B468 0023A4E8 80180300 */  sll        $v1, $v1, 2
    /* 13B46C 0023A4EC B002A524 */  addiu      $a1, $a1, %lo(D_001E02B0)
    /* 13B470 0023A4F0 21186400 */  addu       $v1, $v1, $a0
    /* 13B474 0023A4F4 0000628C */  lw         $v0, 0x0($v1)
    /* 13B478 0023A4F8 2130C500 */  addu       $a2, $a2, $a1
    /* 13B47C 0023A4FC 0E00C394 */  lhu        $v1, 0xE($a2)
    /* 13B480 0023A500 2A104300 */  slt        $v0, $v0, $v1
    /* 13B484 0023A504 31004010 */  beqz       $v0, .L0023A5CC
    /* 13B488 0023A508 00000000 */   nop
    /* 13B48C 0023A50C 2F002A15 */  bne        $t1, $t2, .L0023A5CC
    /* 13B490 0023A510 00000000 */   nop
    /* 13B494 0023A514 4000028D */  lw         $v0, 0x40($t0)
    /* 13B498 0023A518 09004010 */  beqz       $v0, .L0023A540
    /* 13B49C 0023A51C 21200701 */   addu      $a0, $t0, $a3
    /* 13B4A0 0023A520 18000524 */  addiu      $a1, $zero, 0x18
    /* 13B4A4 0023A524 D000838C */  lw         $v1, 0xD0($a0)
    /* 13B4A8 0023A528 1E00023C */  lui        $v0, %hi(D_001E02B0)
    /* 13B4AC 0023A52C B0024224 */  addiu      $v0, $v0, %lo(D_001E02B0)
    /* 13B4B0 0023A530 18186500 */  mult       $v1, $v1, $a1
    /* 13B4B4 0023A534 21186200 */  addu       $v1, $v1, $v0
    /* 13B4B8 0023A538 08000010 */  b          .L0023A55C
    /* 13B4BC 0023A53C 0A006494 */   lhu       $a0, 0xA($v1)
.align 2
  .L0023A540:
    /* 13B4C0 0023A540 18000524 */  addiu      $a1, $zero, 0x18
    /* 13B4C4 0023A544 D000838C */  lw         $v1, 0xD0($a0)
    /* 13B4C8 0023A548 1E00023C */  lui        $v0, %hi(D_001E02B0)
    /* 13B4CC 0023A54C B0024224 */  addiu      $v0, $v0, %lo(D_001E02B0)
    /* 13B4D0 0023A550 18186500 */  mult       $v1, $v1, $a1
    /* 13B4D4 0023A554 21186200 */  addu       $v1, $v1, $v0
    /* 13B4D8 0023A558 08006494 */  lhu        $a0, 0x8($v1)
.align 2
  .L0023A55C:
    /* 13B4DC 0023A55C 1600023C */  lui        $v0, %hi(D_0015EE98)
    /* 13B4E0 0023A560 98EE428C */  lw         $v0, %lo(D_0015EE98)($v0)
    /* 13B4E4 0023A564 2A104400 */  slt        $v0, $v0, $a0
    /* 13B4E8 0023A568 18004014 */  bnez       $v0, .L0023A5CC
    /* 13B4EC 0023A56C 0000BF7B */   lq        $ra, 0x0($sp)
    /* 13B4F0 0023A570 50F9070C */  jal        func_001FE540
    /* 13B4F4 0023A574 E04E0424 */   addiu     $a0, $zero, 0x4EE0
    /* 13B4F8 0023A578 2D384000 */  daddu      $a3, $v0, $zero
    /* 13B4FC 0023A57C 28000424 */  addiu      $a0, $zero, 0x28
    /* 13B500 0023A580 14000524 */  addiu      $a1, $zero, 0x14
    /* 13B504 0023A584 F0800634 */  ori        $a2, $zero, 0x80F0
    /* 13B508 0023A588 38340600 */  dsll       $a2, $a2, 16
    /* 13B50C 0023A58C F0F0C634 */  ori        $a2, $a2, 0xF0F0
    /* 13B510 0023A590 D0DB070C */  jal        func_001F6F40
    /* 13B514 0023A594 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 13B518 0023A598 0C000010 */  b          .L0023A5CC
    /* 13B51C 0023A59C 0000BF7B */   lq        $ra, 0x0($sp)
.align 2
  .L0023A5A0:
    /* 13B520 0023A5A0 50F9070C */  jal        func_001FE540
    /* 13B524 0023A5A4 E04E0424 */   addiu     $a0, $zero, 0x4EE0
    /* 13B528 0023A5A8 2D384000 */  daddu      $a3, $v0, $zero
    /* 13B52C 0023A5AC 28000424 */  addiu      $a0, $zero, 0x28
    /* 13B530 0023A5B0 14000524 */  addiu      $a1, $zero, 0x14
    /* 13B534 0023A5B4 F0800634 */  ori        $a2, $zero, 0x80F0
    /* 13B538 0023A5B8 38340600 */  dsll       $a2, $a2, 16
    /* 13B53C 0023A5BC F0F0C634 */  ori        $a2, $a2, 0xF0F0
    /* 13B540 0023A5C0 D0DB070C */  jal        func_001F6F40
    /* 13B544 0023A5C4 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 13B548 0023A5C8 0000BF7B */  lq         $ra, 0x0($sp)
.align 2
  .L0023A5CC:
    /* 13B54C 0023A5CC 0800E003 */  jr         $ra
    /* 13B550 0023A5D0 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0023A478
    /* 13B554 0023A5D4 00000000 */  nop
