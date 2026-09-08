.align 3
nonmatching func_001FF560, 0x100

glabel func_001FF560
    /* 1004E0 001FF560 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1004E4 001FF564 00240400 */  sll        $a0, $a0, 16
    /* 1004E8 001FF568 0000BF7F */  sq         $ra, 0x0($sp)
    /* 1004EC 001FF56C 2D280000 */  daddu      $a1, $zero, $zero
    /* 1004F0 001FF570 03240400 */  sra        $a0, $a0, 16
    /* 1004F4 001FF574 3EFD070C */  jal        func_001FF4F8
    /* 1004F8 001FF578 2D300000 */   daddu     $a2, $zero, $zero
    /* 1004FC 001FF57C 2D384000 */  daddu      $a3, $v0, $zero
    /* 100500 001FF580 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 100504 001FF584 3300E210 */  beq        $a3, $v0, .L001FF654
    /* 100508 001FF588 1400023C */   lui       $v0, %hi(D_00141F08)
    /* 10050C 001FF58C 2D280000 */  daddu      $a1, $zero, $zero
    /* 100510 001FF590 081F4390 */  lbu        $v1, %lo(D_00141F08)($v0)
    /* 100514 001FF594 2D484000 */  daddu      $t1, $v0, $zero
    /* 100518 001FF598 0E006710 */  beq        $v1, $a3, .L001FF5D4
    /* 10051C 001FF59C 3082848F */   lw        $a0, -0x7DD0($gp)
    /* 100520 001FF5A0 26008018 */  blez       $a0, .L001FF63C
    /* 100524 001FF5A4 3082838F */   lw        $v1, -0x7DD0($gp)
    /* 100528 001FF5A8 081F2825 */  addiu      $t0, $t1, %lo(D_00141F08)
    /* 10052C 001FF5AC 2D308000 */  daddu      $a2, $a0, $zero
    /* 100530 001FF5B0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 100534 001FF5B4 00000000 */  nop
.align 2
  .L001FF5B8:
    /* 100538 001FF5B8 2110A800 */  addu       $v0, $a1, $t0
    /* 10053C 001FF5BC 00004390 */  lbu        $v1, 0x0($v0)
    /* 100540 001FF5C0 04006710 */  beq        $v1, $a3, .L001FF5D4
    /* 100544 001FF5C4 2A10A600 */   slt       $v0, $a1, $a2
    /* 100548 001FF5C8 00000000 */  nop
    /* 10054C 001FF5CC FAFF4054 */  bnel       $v0, $zero, .L001FF5B8
    /* 100550 001FF5D0 0100A524 */   addiu     $a1, $a1, 0x1
.align 2
  .L001FF5D4:
    /* 100554 001FF5D4 2A10A400 */  slt        $v0, $a1, $a0
    /* 100558 001FF5D8 16004010 */  beqz       $v0, .L001FF634
    /* 10055C 001FF5DC FFFF8324 */   addiu     $v1, $a0, -0x1
    /* 100560 001FF5E0 2A10A300 */  slt        $v0, $a1, $v1
    /* 100564 001FF5E4 0B004010 */  beqz       $v0, .L001FF614
    /* 100568 001FF5E8 1400023C */   lui       $v0, %hi(D_00141F08)
    /* 10056C 001FF5EC 2D306000 */  daddu      $a2, $v1, $zero
    /* 100570 001FF5F0 081F4224 */  addiu      $v0, $v0, %lo(D_00141F08)
    /* 100574 001FF5F4 2120A200 */  addu       $a0, $a1, $v0
.align 2
  .L001FF5F8:
    /* 100578 001FF5F8 01008290 */  lbu        $v0, 0x1($a0)
    /* 10057C 001FF5FC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 100580 001FF600 2A18A600 */  slt        $v1, $a1, $a2
    /* 100584 001FF604 000082A0 */  sb         $v0, 0x0($a0)
    /* 100588 001FF608 00000000 */  nop
    /* 10058C 001FF60C FAFF6014 */  bnez       $v1, .L001FF5F8
    /* 100590 001FF610 01008424 */   addiu     $a0, $a0, 0x1
.align 2
  .L001FF614:
    /* 100594 001FF614 1600033C */  lui        $v1, %hi(D_0015EF30)
    /* 100598 001FF618 30EF638C */  lw         $v1, %lo(D_0015EF30)($v1)
    /* 10059C 001FF61C 081F2225 */  addiu      $v0, $t1, %lo(D_00141F08)
    /* 1005A0 001FF620 2110A200 */  addu       $v0, $a1, $v0
    /* 1005A4 001FF624 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1005A8 001FF628 000040A0 */  sb         $zero, 0x0($v0)
    /* 1005AC 001FF62C 1600013C */  lui        $at, %hi(D_0015EF30)
    /* 1005B0 001FF630 30EF23AC */  sw         $v1, %lo(D_0015EF30)($at)
.align 2
  .L001FF634:
    /* 1005B4 001FF634 1600033C */  lui        $v1, %hi(D_0015EF30)
    /* 1005B8 001FF638 30EF638C */  lw         $v1, %lo(D_0015EF30)($v1)
.align 2
  .L001FF63C:
    /* 1005BC 001FF63C 081F2225 */  addiu      $v0, $t1, %lo(D_00141F08)
    /* 1005C0 001FF640 21106200 */  addu       $v0, $v1, $v0
    /* 1005C4 001FF644 01006324 */  addiu      $v1, $v1, 0x1
    /* 1005C8 001FF648 000047A0 */  sb         $a3, 0x0($v0)
    /* 1005CC 001FF64C 1600013C */  lui        $at, %hi(D_0015EF30)
    /* 1005D0 001FF650 30EF23AC */  sw         $v1, %lo(D_0015EF30)($at)
.align 2
  .L001FF654:
    /* 1005D4 001FF654 0000BF7B */  lq         $ra, 0x0($sp)
    /* 1005D8 001FF658 0800E003 */  jr         $ra
    /* 1005DC 001FF65C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001FF560
