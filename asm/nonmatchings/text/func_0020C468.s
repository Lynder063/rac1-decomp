.align 3
/* Handwritten function */
nonmatching func_0020C468, 0x2D0

glabel func_0020C468
    /* 10D3E8 0020C468 89FBE073 */  pcpyld     $ra, $ra, $zero
    /* 10D3EC 0020C46C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 10D3F0 0020C470 00008794 */  lhu        $a3, 0x0($a0)
    /* 10D3F4 0020C474 0010033C */  lui        $v1, (0x1000D400 >> 16)
    /* 10D3F8 0020C478 02008890 */  lbu        $t0, 0x2($a0)
    /* 10D3FC 0020C47C 00D46334 */  ori        $v1, $v1, (0x1000D400 & 0xFFFF)
    /* 10D400 0020C480 5741E738 */  xori       $a3, $a3, 0x4157
    /* 10D404 0020C484 2D68A000 */  daddu      $t5, $a1, $zero
    /* 10D408 0020C488 44000839 */  xori       $t0, $t0, 0x44
    /* 10D40C 0020C48C 00000000 */  nop
    /* 10D410 0020C490 BB00E814 */  bne        $a3, $t0, .L0020C780
    /* 10D414 0020C494 03008768 */   ldl       $a3, 0x3($a0)
    /* 10D418 0020C498 0300876C */  ldr        $a3, 0x3($a0)
    /* 10D41C 0020C49C 10008B20 */  addi       $t3, $a0, 0x10 /* handwritten instruction */
    /* 10D420 0020C4A0 04480700 */  sllv       $t1, $a3, $zero
    /* 10D424 0020C4A4 00000E34 */  ori        $t6, $zero, 0x0
    /* 10D428 0020C4A8 CE31080C */  jal        func_0020C738
    /* 10D42C 0020C4AC 00700F3C */   lui       $t7, (0x70000000 >> 16)
    /* 10D430 0020C4B0 D631080C */  jal        func_0020C758
    /* 10D434 0020C4B4 00206B21 */   addi      $t3, $t3, 0x2000 /* handwritten instruction */
    /* 10D438 0020C4B8 CE31080C */  jal        func_0020C738
    /* 10D43C 0020C4BC 00800A3C */   lui       $t2, (0x80000000 >> 16)
    /* 10D440 0020C4C0 00206B21 */  addi       $t3, $t3, 0x2000 /* handwritten instruction */
    /* 10D444 0020C4C4 F0FF2925 */  addiu      $t1, $t1, -0x10
    /* 10D448 0020C4C8 FF1F0734 */  ori        $a3, $zero, 0x1FFF
    /* 10D44C 0020C4CC 2B40E900 */  sltu       $t0, $a3, $t1
    /* 10D450 0020C4D0 03000015 */  bnez       $t0, .L0020C4E0
    /* 10D454 0020C4D4 00000000 */   nop
    /* 10D458 0020C4D8 2050E901 */  add        $t2, $t7, $t1 /* handwritten instruction */
    /* 10D45C 0020C4DC 00000000 */  nop
.align 2
  .L0020C4E0:
    /* 10D460 0020C4E0 0000E291 */  lbu        $v0, 0x0($t7)
    /* 10D464 0020C4E4 EFFF4224 */  addiu      $v0, $v0, -0x11
    /* 10D468 0020C4E8 0D004018 */  blez       $v0, func_0020C520
    /* 10D46C 0020C4EC 00000000 */   nop
    /* 10D470 0020C4F0 0100EF25 */  addiu      $t7, $t7, 0x1
    /* 10D474 0020C4F4 00000000 */  nop
.align 2
  .L0020C4F8:
    /* 10D478 0020C4F8 0000E891 */  lbu        $t0, 0x0($t7)
    /* 10D47C 0020C4FC 0100EF25 */  addiu      $t7, $t7, 0x1
    /* 10D480 0020C500 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 10D484 0020C504 00000000 */  nop
    /* 10D488 0020C508 0000A8A1 */  sb         $t0, 0x0($t5)
    /* 10D48C 0020C50C 0100AD25 */  addiu      $t5, $t5, 0x1
    /* 10D490 0020C510 F9FF401C */  bgtz       $v0, .L0020C4F8
    /* 10D494 0020C514 00000000 */   nop
    /* 10D498 0020C518 64310808 */  j          func_0020C590
    /* 10D49C 0020C51C 00000000 */   nop
.align 2
  alabel func_0020C520
    /* 10D4A0 0020C520 2B38EA01 */  sltu       $a3, $t7, $t2
    /* 10D4A4 0020C524 0000E291 */  lbu        $v0, 0x0($t7)
    /* 10D4A8 0020C528 7F00E010 */  beqz       $a3, .L0020C728
    /* 10D4AC 0020C52C 0100EF25 */   addiu     $t7, $t7, 0x1
    /* 10D4B0 0020C530 1000472C */  sltiu      $a3, $v0, 0x10
    /* 10D4B4 0020C534 00000000 */  nop
    /* 10D4B8 0020C538 1900E010 */  beqz       $a3, .L0020C5A0
    /* 10D4BC 0020C53C 00000000 */   nop
    /* 10D4C0 0020C540 03004014 */  bnez       $v0, .L0020C550
    /* 10D4C4 0020C544 0000E791 */   lbu       $a3, 0x0($t7)
    /* 10D4C8 0020C548 0100EF25 */  addiu      $t7, $t7, 0x1
    /* 10D4CC 0020C54C 0F00E224 */  addiu      $v0, $a3, 0xF
.align 2
  .L0020C550:
    /* 10D4D0 0020C550 0000E691 */  lbu        $a2, 0x0($t7)
    /* 10D4D4 0020C554 0100E791 */  lbu        $a3, 0x1($t7)
    /* 10D4D8 0020C558 0200E891 */  lbu        $t0, 0x2($t7)
    /* 10D4DC 0020C55C 0300EF25 */  addiu      $t7, $t7, 0x3
    /* 10D4E0 0020C560 0000A6A1 */  sb         $a2, 0x0($t5)
    /* 10D4E4 0020C564 0100A7A1 */  sb         $a3, 0x1($t5)
    /* 10D4E8 0020C568 0200A8A1 */  sb         $t0, 0x2($t5)
    /* 10D4EC 0020C56C 0300AD25 */  addiu      $t5, $t5, 0x3
.align 2
  .L0020C570:
    /* 10D4F0 0020C570 0000E891 */  lbu        $t0, 0x0($t7)
    /* 10D4F4 0020C574 0100EF25 */  addiu      $t7, $t7, 0x1
    /* 10D4F8 0020C578 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 10D4FC 0020C57C 00000000 */  nop
    /* 10D500 0020C580 0000A8A1 */  sb         $t0, 0x0($t5)
    /* 10D504 0020C584 0100AD25 */  addiu      $t5, $t5, 0x1
    /* 10D508 0020C588 F9FF401C */  bgtz       $v0, .L0020C570
    /* 10D50C 0020C58C 00000000 */   nop
.align 2
  alabel func_0020C590
    /* 10D510 0020C590 2B38EA01 */  sltu       $a3, $t7, $t2
    /* 10D514 0020C594 0000E291 */  lbu        $v0, 0x0($t7)
    /* 10D518 0020C598 6300E010 */  beqz       $a3, .L0020C728
    /* 10D51C 0020C59C 0100EF25 */   addiu     $t7, $t7, 0x1
.align 2
  .L0020C5A0:
    /* 10D520 0020C5A0 40004728 */  slti       $a3, $v0, 0x40
    /* 10D524 0020C5A4 00000000 */  nop
    /* 10D528 0020C5A8 0700E010 */  beqz       $a3, .L0020C5C8
    /* 10D52C 0020C5AC 20004728 */   slti      $a3, $v0, 0x20
    /* 10D530 0020C5B0 1100E010 */  beqz       $a3, .L0020C5F8
    /* 10D534 0020C5B4 10004728 */   slti      $a3, $v0, 0x10
    /* 10D538 0020C5B8 1F00E010 */  beqz       $a3, .L0020C638
    /* 10D53C 0020C5BC 00000000 */   nop
    /* 10D540 0020C5C0 34000000 */  teq        $zero, $zero, 0 /* handwritten instruction */
    /* 10D544 0020C5C4 00000000 */  nop
.align 2
  .L0020C5C8:
    /* 10D548 0020C5C8 82400200 */  srl        $t0, $v0, 2
    /* 10D54C 0020C5CC FFFFAC25 */  addiu      $t4, $t5, -0x1
    /* 10D550 0020C5D0 07000831 */  andi       $t0, $t0, 0x7
    /* 10D554 0020C5D4 0000E691 */  lbu        $a2, 0x0($t7)
    /* 10D558 0020C5D8 23608801 */  subu       $t4, $t4, $t0
    /* 10D55C 0020C5DC 0100EF25 */  addiu      $t7, $t7, 0x1
    /* 10D560 0020C5E0 C0300600 */  sll        $a2, $a2, 3
    /* 10D564 0020C5E4 42110200 */  srl        $v0, $v0, 5
    /* 10D568 0020C5E8 23608601 */  subu       $t4, $t4, $a2
    /* 10D56C 0020C5EC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 10D570 0020C5F0 B0310808 */  j          func_0020C6C0
    /* 10D574 0020C5F4 00000000 */   nop
.align 2
  .L0020C5F8:
    /* 10D578 0020C5F8 1F004230 */  andi       $v0, $v0, 0x1F
    /* 10D57C 0020C5FC 00000000 */  nop
    /* 10D580 0020C600 03004014 */  bnez       $v0, .L0020C610
    /* 10D584 0020C604 0000E791 */   lbu       $a3, 0x0($t7)
    /* 10D588 0020C608 0100EF25 */  addiu      $t7, $t7, 0x1
    /* 10D58C 0020C60C 1F00E224 */  addiu      $v0, $a3, 0x1F
.align 2
  .L0020C610:
    /* 10D590 0020C610 0000E791 */  lbu        $a3, 0x0($t7)
    /* 10D594 0020C614 0100E891 */  lbu        $t0, 0x1($t7)
    /* 10D598 0020C618 0200EF25 */  addiu      $t7, $t7, 0x2
    /* 10D59C 0020C61C FFFFAC25 */  addiu      $t4, $t5, -0x1
    /* 10D5A0 0020C620 82380700 */  srl        $a3, $a3, 2
    /* 10D5A4 0020C624 80410800 */  sll        $t0, $t0, 6
    /* 10D5A8 0020C628 2038E800 */  add        $a3, $a3, $t0 /* handwritten instruction */
    /* 10D5AC 0020C62C 00000000 */  nop
    /* 10D5B0 0020C630 B0310808 */  j          func_0020C6C0
    /* 10D5B4 0020C634 23608701 */   subu      $t4, $t4, $a3
.align 2
  .L0020C638:
    /* 10D5B8 0020C638 08004730 */  andi       $a3, $v0, 0x8
    /* 10D5BC 0020C63C 2D60A001 */  daddu      $t4, $t5, $zero
    /* 10D5C0 0020C640 07004230 */  andi       $v0, $v0, 0x7
    /* 10D5C4 0020C644 C03A0700 */  sll        $a3, $a3, 11
    /* 10D5C8 0020C648 05004014 */  bnez       $v0, .L0020C660
    /* 10D5CC 0020C64C 23608701 */   subu      $t4, $t4, $a3
    /* 10D5D0 0020C650 0000E291 */  lbu        $v0, 0x0($t7)
    /* 10D5D4 0020C654 0100EF25 */  addiu      $t7, $t7, 0x1
    /* 10D5D8 0020C658 07004220 */  addi       $v0, $v0, 0x7 /* handwritten instruction */
    /* 10D5DC 0020C65C 00000000 */  nop
.align 2
  .L0020C660:
    /* 10D5E0 0020C660 0000E791 */  lbu        $a3, 0x0($t7)
    /* 10D5E4 0020C664 0100E891 */  lbu        $t0, 0x1($t7)
    /* 10D5E8 0020C668 0200EF25 */  addiu      $t7, $t7, 0x2
    /* 10D5EC 0020C66C 82380700 */  srl        $a3, $a3, 2
    /* 10D5F0 0020C670 80410800 */  sll        $t0, $t0, 6
    /* 10D5F4 0020C674 01000620 */  addi       $a2, $zero, 0x1 /* handwritten instruction */
    /* 10D5F8 0020C678 2038E800 */  add        $a3, $a3, $t0 /* handwritten instruction */
    /* 10D5FC 0020C67C 23608701 */  subu       $t4, $t4, $a3
    /* 10D600 0020C680 0F008D15 */  bne        $t4, $t5, func_0020C6C0
    /* 10D604 0020C684 00C08C21 */   addi      $t4, $t4, -0x4000 /* handwritten instruction */
    /* 10D608 0020C688 1B004610 */  beq        $v0, $a2, .L0020C6F8
    /* 10D60C 0020C68C 2D60A001 */   daddu     $t4, $t5, $zero
    /* 10D610 0020C690 D631080C */  jal        func_0020C758
    /* 10D614 0020C694 00700F3C */   lui       $t7, (0x70000000 >> 16)
    /* 10D618 0020C698 CE31080C */  jal        func_0020C738
    /* 10D61C 0020C69C 00E02925 */   addiu     $t1, $t1, -0x2000
    /* 10D620 0020C6A0 00206B21 */  addi       $t3, $t3, 0x2000 /* handwritten instruction */
    /* 10D624 0020C6A4 2078EE01 */  add        $t7, $t7, $t6 /* handwritten instruction */
    /* 10D628 0020C6A8 FF1F0734 */  ori        $a3, $zero, 0x1FFF
    /* 10D62C 0020C6AC 2B40E900 */  sltu       $t0, $a3, $t1
    /* 10D630 0020C6B0 9BFF0015 */  bnez       $t0, func_0020C520
    /* 10D634 0020C6B4 00800A3C */   lui       $t2, (0x80000000 >> 16)
    /* 10D638 0020C6B8 48310808 */  j          func_0020C520
    /* 10D63C 0020C6BC 2050E901 */   add       $t2, $t7, $t1 /* handwritten instruction */
.align 2
  alabel func_0020C6C0
    /* 10D640 0020C6C0 00008791 */  lbu        $a3, 0x0($t4)
    /* 10D644 0020C6C4 02008C25 */  addiu      $t4, $t4, 0x2
    /* 10D648 0020C6C8 0000A7A1 */  sb         $a3, 0x0($t5)
    /* 10D64C 0020C6CC FFFF8791 */  lbu        $a3, -0x1($t4)
    /* 10D650 0020C6D0 0100A7A1 */  sb         $a3, 0x1($t5)
    /* 10D654 0020C6D4 0200AD25 */  addiu      $t5, $t5, 0x2
.align 2
  .L0020C6D8:
    /* 10D658 0020C6D8 00008891 */  lbu        $t0, 0x0($t4)
    /* 10D65C 0020C6DC 01008C25 */  addiu      $t4, $t4, 0x1
    /* 10D660 0020C6E0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 10D664 0020C6E4 00000000 */  nop
    /* 10D668 0020C6E8 0000A8A1 */  sb         $t0, 0x0($t5)
    /* 10D66C 0020C6EC 0100AD25 */  addiu      $t5, $t5, 0x1
    /* 10D670 0020C6F0 F9FF401C */  bgtz       $v0, .L0020C6D8
    /* 10D674 0020C6F4 00000000 */   nop
.align 2
  .L0020C6F8:
    /* 10D678 0020C6F8 FEFFE291 */  lbu        $v0, -0x2($t7)
    /* 10D67C 0020C6FC 0000E691 */  lbu        $a2, 0x0($t7)
    /* 10D680 0020C700 03004230 */  andi       $v0, $v0, 0x3
    /* 10D684 0020C704 0100E791 */  lbu        $a3, 0x1($t7)
    /* 10D688 0020C708 85FF4010 */  beqz       $v0, func_0020C520
    /* 10D68C 0020C70C 0200E891 */   lbu       $t0, 0x2($t7)
    /* 10D690 0020C710 0000A6A1 */  sb         $a2, 0x0($t5)
    /* 10D694 0020C714 0100A7A1 */  sb         $a3, 0x1($t5)
    /* 10D698 0020C718 0200A8A1 */  sb         $t0, 0x2($t5)
    /* 10D69C 0020C71C 2068A201 */  add        $t5, $t5, $v0 /* handwritten instruction */
    /* 10D6A0 0020C720 64310808 */  j          func_0020C590
    /* 10D6A4 0020C724 2078E201 */   add       $t7, $t7, $v0 /* handwritten instruction */
.align 2
  .L0020C728:
    /* 10D6A8 0020C728 A9FBE073 */  pcpyud     $ra, $ra, $zero
    /* 10D6AC 0020C72C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 10D6B0 0020C730 0800E003 */  jr         $ra
    /* 10D6B4 0020C734 2310A501 */   subu      $v0, $t5, $a1
endlabel func_0020C468
