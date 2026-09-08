.align 3
nonmatching func_0012A558, 0x1C0

glabel func_0012A558
    /* 2B4D8 0012A558 FF030724 */  addiu      $a3, $zero, 0x3FF
    /* 2B4DC 0012A55C 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 2B4E0 0012A560 1A00C700 */  div        $zero, $a2, $a3
    /* 2B4E4 0012A564 4000B0FF */  sd         $s0, 0x40($sp)
    /* 2B4E8 0012A568 0F00023C */  lui        $v0, (0xFFC00 >> 16)
    /* 2B4EC 0012A56C 2D80A000 */  daddu      $s0, $a1, $zero
    /* 2B4F0 0012A570 00FC4234 */  ori        $v0, $v0, (0xFFC00 & 0xFFFF)
    /* 2B4F4 0012A574 FF0F033C */  lui        $v1, (0xFFFFFFF >> 16)
    /* 2B4F8 0012A578 5000B1FF */  sd         $s1, 0x50($sp)
    /* 2B4FC 0012A57C FFFF6334 */  ori        $v1, $v1, (0xFFFFFFF & 0xFFFF)
    /* 2B500 0012A580 7000BFFF */  sd         $ra, 0x70($sp)
    /* 2B504 0012A584 21100202 */  addu       $v0, $s0, $v0
    /* 2B508 0012A588 6000B2FF */  sd         $s2, 0x60($sp)
    /* 2B50C 0012A58C 24104300 */  and        $v0, $v0, $v1
    /* 2B510 0012A590 0100E050 */  beql       $a3, $zero, .L0012A598
    /* 2B514 0012A594 CD010000 */   break     0, 7
.align 2
  .L0012A598:
    /* 2B518 0012A598 0010033C */  lui        $v1, (0x10002010 >> 16)
    /* 2B51C 0012A59C 2800A6AF */  sw         $a2, 0x28($sp)
    /* 2B520 0012A5A0 2D888000 */  daddu      $s1, $a0, $zero
    /* 2B524 0012A5A4 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 2B528 0012A5A8 2000A727 */  addiu      $a3, $sp, 0x20
    /* 2B52C 0012A5AC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 2B530 0012A5B0 10206334 */  ori        $v1, $v1, (0x10002010 & 0xFFFF)
    /* 2B534 0012A5B4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 2B538 0012A5B8 12400000 */  mflo       $t0
    /* 2B53C 0012A5BC 01000825 */  addiu      $t0, $t0, 0x1
    /* 2B540 0012A5C0 3000A8AF */  sw         $t0, 0x30($sp)
    /* 2B544 0012A5C4 00000000 */  nop
.align 2
  .L0012A5C8:
    /* 2B548 0012A5C8 0000628C */  lw         $v0, 0x0($v1)
    /* 2B54C 0012A5CC 00000000 */  nop
    /* 2B550 0012A5D0 00000000 */  nop
    /* 2B554 0012A5D4 00000000 */  nop
    /* 2B558 0012A5D8 00000000 */  nop
    /* 2B55C 0012A5DC FAFF4004 */  bltz       $v0, .L0012A5C8
    /* 2B560 0012A5E0 00000000 */   nop
    /* 2B564 0012A5E4 1300053C */  lui        $a1, %hi(func_0012A418)
    /* 2B568 0012A5E8 03000424 */  addiu      $a0, $zero, 0x3
    /* 2B56C 0012A5EC 18A4A524 */  addiu      $a1, $a1, %lo(func_0012A418)
    /* 2B570 0012A5F0 B062040C */  jal        func_00118AC0
    /* 2B574 0012A5F4 2D300000 */   daddu     $a2, $zero, $zero
    /* 2B578 0012A5F8 2D904000 */  daddu      $s2, $v0, $zero
    /* 2B57C 0012A5FC 08000324 */  addiu      $v1, $zero, 0x8
    /* 2B580 0012A600 0010023C */  lui        $v0, (0x1000E010 >> 16)
    /* 2B584 0012A604 03000424 */  addiu      $a0, $zero, 0x3
    /* 2B588 0012A608 10E04234 */  ori        $v0, $v0, (0x1000E010 & 0xFFFF)
    /* 2B58C 0012A60C 1865040C */  jal        func_00119460
    /* 2B590 0012A610 000043AC */   sw        $v1, 0x0($v0)
    /* 2B594 0012A614 5876040C */  jal        func_0011D960
    /* 2B598 0012A618 00000000 */   nop
    /* 2B59C 0012A61C FF0F033C */  lui        $v1, (0xFFFFFFF >> 16)
    /* 2B5A0 0012A620 0010043C */  lui        $a0, (0x1000B010 >> 16)
    /* 2B5A4 0012A624 FFFF6334 */  ori        $v1, $v1, (0xFFFFFFF & 0xFFFF)
    /* 2B5A8 0012A628 10B08434 */  ori        $a0, $a0, (0x1000B010 & 0xFFFF)
    /* 2B5AC 0012A62C 24180302 */  and        $v1, $s0, $v1
    /* 2B5B0 0012A630 0010053C */  lui        $a1, (0x1000B020 >> 16)
    /* 2B5B4 0012A634 000083AC */  sw         $v1, 0x0($a0)
    /* 2B5B8 0012A638 20B0A534 */  ori        $a1, $a1, (0x1000B020 & 0xFFFF)
    /* 2B5BC 0012A63C C0FF0334 */  ori        $v1, $zero, 0xFFC0
    /* 2B5C0 0012A640 0010043C */  lui        $a0, (0x1000B000 >> 16)
    /* 2B5C4 0012A644 0000A3AC */  sw         $v1, 0x0($a1)
    /* 2B5C8 0012A648 00B08434 */  ori        $a0, $a0, (0x1000B000 & 0xFFFF)
    /* 2B5CC 0012A64C 00010324 */  addiu      $v1, $zero, 0x100
    /* 2B5D0 0012A650 000083AC */  sw         $v1, 0x0($a0)
    /* 2B5D4 0012A654 04004010 */  beqz       $v0, .L0012A668
    /* 2B5D8 0012A658 0010023C */   lui       $v0, (0x10002000 >> 16)
    /* 2B5DC 0012A65C 6A76040C */  jal        func_0011D9A8
    /* 2B5E0 0012A660 00000000 */   nop
    /* 2B5E4 0012A664 0010023C */  lui        $v0, (0x10002000 >> 16)
.align 2
  .L0012A668:
    /* 2B5E8 0012A668 0070033C */  lui        $v1, (0x700003FF >> 16)
    /* 2B5EC 0012A66C 00204234 */  ori        $v0, $v0, (0x10002000 & 0xFFFF)
    /* 2B5F0 0012A670 FF036334 */  ori        $v1, $v1, (0x700003FF & 0xFFFF)
    /* 2B5F4 0012A674 000043AC */  sw         $v1, 0x0($v0)
    /* 2B5F8 0012A678 04000624 */  addiu      $a2, $zero, 0x4
    /* 2B5FC 0012A67C 5808248E */  lw         $a0, 0x858($s1)
    /* 2B600 0012A680 2D28A003 */  daddu      $a1, $sp, $zero
    /* 2B604 0012A684 1EAF040C */  jal        func_0012BC78
    /* 2B608 0012A688 0000A6AF */   sw        $a2, 0x0($sp)
    /* 2B60C 0012A68C 2400A48F */  lw         $a0, 0x24($sp)
    /* 2B610 0012A690 3000A38F */  lw         $v1, 0x30($sp)
    /* 2B614 0012A694 00000000 */  nop
.align 2
  .L0012A698:
    /* 2B618 0012A698 2000A28F */  lw         $v0, 0x20($sp)
    /* 2B61C 0012A69C 2A104300 */  slt        $v0, $v0, $v1
    /* 2B620 0012A6A0 00000000 */  nop
    /* 2B624 0012A6A4 00000000 */  nop
    /* 2B628 0012A6A8 00000000 */  nop
    /* 2B62C 0012A6AC FAFF4014 */  bnez       $v0, .L0012A698
    /* 2B630 0012A6B0 00000000 */   nop
    /* 2B634 0012A6B4 04008010 */  beqz       $a0, .L0012A6C8
    /* 2B638 0012A6B8 2D202002 */   daddu     $a0, $s1, $zero
    /* 2B63C 0012A6BC 1500053C */  lui        $a1, %hi(D_00153AB0)
    /* 2B640 0012A6C0 1AB1040C */  jal        func_0012C468
    /* 2B644 0012A6C4 B03AA524 */   addiu     $a1, $a1, %lo(D_00153AB0)
.align 2
  .L0012A6C8:
    /* 2B648 0012A6C8 0010033C */  lui        $v1, (0x10002010 >> 16)
    /* 2B64C 0012A6CC 10206334 */  ori        $v1, $v1, (0x10002010 & 0xFFFF)
.align 2
  .L0012A6D0:
    /* 2B650 0012A6D0 0000628C */  lw         $v0, 0x0($v1)
    /* 2B654 0012A6D4 00000000 */  nop
    /* 2B658 0012A6D8 00000000 */  nop
    /* 2B65C 0012A6DC 00000000 */  nop
    /* 2B660 0012A6E0 00000000 */  nop
    /* 2B664 0012A6E4 FAFF4004 */  bltz       $v0, .L0012A6D0
    /* 2B668 0012A6E8 00000000 */   nop
    /* 2B66C 0012A6EC FE64040C */  jal        func_001193F8
    /* 2B670 0012A6F0 03000424 */   addiu     $a0, $zero, 0x3
    /* 2B674 0012A6F4 2D284002 */  daddu      $a1, $s2, $zero
    /* 2B678 0012A6F8 B462040C */  jal        func_00118AD0
    /* 2B67C 0012A6FC 03000424 */   addiu     $a0, $zero, 0x3
    /* 2B680 0012A700 7000BFDF */  ld         $ra, 0x70($sp)
    /* 2B684 0012A704 6000B2DF */  ld         $s2, 0x60($sp)
    /* 2B688 0012A708 5000B1DF */  ld         $s1, 0x50($sp)
    /* 2B68C 0012A70C 4000B0DF */  ld         $s0, 0x40($sp)
    /* 2B690 0012A710 0800E003 */  jr         $ra
    /* 2B694 0012A714 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_0012A558
