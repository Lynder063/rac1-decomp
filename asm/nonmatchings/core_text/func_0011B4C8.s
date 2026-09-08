.align 3
nonmatching func_0011B4C8, 0x1EC

glabel func_0011B4C8
    /* 1C448 0011B4C8 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 1C44C 0011B4CC 3000B1FF */  sd         $s1, 0x30($sp)
    /* 1C450 0011B4D0 2D888000 */  daddu      $s1, $a0, $zero
    /* 1C454 0011B4D4 A000BEFF */  sd         $fp, 0xA0($sp)
    /* 1C458 0011B4D8 9000B7FF */  sd         $s7, 0x90($sp)
    /* 1C45C 0011B4DC 1500043C */  lui        $a0, %hi(D_00156900)
    /* 1C460 0011B4E0 8000B6FF */  sd         $s6, 0x80($sp)
    /* 1C464 0011B4E4 2DF0C000 */  daddu      $fp, $a2, $zero
    /* 1C468 0011B4E8 7000B5FF */  sd         $s5, 0x70($sp)
    /* 1C46C 0011B4EC 2DB0A000 */  daddu      $s6, $a1, $zero
    /* 1C470 0011B4F0 6000B4FF */  sd         $s4, 0x60($sp)
    /* 1C474 0011B4F4 2DA8E000 */  daddu      $s5, $a3, $zero
    /* 1C478 0011B4F8 5000B3FF */  sd         $s3, 0x50($sp)
    /* 1C47C 0011B4FC 2DA02001 */  daddu      $s4, $t1, $zero
    /* 1C480 0011B500 4000B2FF */  sd         $s2, 0x40($sp)
    /* 1C484 0011B504 2D984001 */  daddu      $s3, $t2, $zero
    /* 1C488 0011B508 2000B0FF */  sd         $s0, 0x20($sp)
    /* 1C48C 0011B50C 2D900001 */  daddu      $s2, $t0, $zero
    /* 1C490 0011B510 B000BFFF */  sd         $ra, 0xB0($sp)
    /* 1C494 0011B514 2DB86001 */  daddu      $s7, $t3, $zero
    /* 1C498 0011B518 FA6B040C */  jal        func_0011AFE8
    /* 1C49C 0011B51C 00698424 */   addiu     $a0, $a0, %lo(D_00156900)
    /* 1C4A0 0011B520 2D804000 */  daddu      $s0, $v0, $zero
    /* 1C4A4 0011B524 57000012 */  beqz       $s0, .L0011B684
    /* 1C4A8 0011B528 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1C4AC 0011B52C C000A28F */  lw         $v0, 0xC0($sp)
    /* 1C4B0 0011B530 0200C433 */  andi       $a0, $fp, 0x2
    /* 1C4B4 0011B534 1800038E */  lw         $v1, 0x18($s0)
    /* 1C4B8 0011B538 200022AE */  sw         $v0, 0x20($s1)
    /* 1C4BC 0011B53C 000030AE */  sw         $s0, 0x0($s1)
    /* 1C4C0 0011B540 040023AE */  sw         $v1, 0x4($s1)
    /* 1C4C4 0011B544 1C0037AE */  sw         $s7, 0x1C($s1)
    /* 1C4C8 0011B548 200016AE */  sw         $s6, 0x20($s0)
    /* 1C4CC 0011B54C 240012AE */  sw         $s2, 0x24($s0)
    /* 1C4D0 0011B550 280014AE */  sw         $s4, 0x28($s0)
    /* 1C4D4 0011B554 2C0013AE */  sw         $s3, 0x2C($s0)
    /* 1C4D8 0011B558 140010AE */  sw         $s0, 0x14($s0)
    /* 1C4DC 0011B55C 2400228E */  lw         $v0, 0x24($s1)
    /* 1C4E0 0011B560 1C0011AE */  sw         $s1, 0x1C($s0)
    /* 1C4E4 0011B564 11008014 */  bnez       $a0, .L0011B5AC
    /* 1C4E8 0011B568 340002AE */   sw        $v0, 0x34($s0)
    /* 1C4EC 0011B56C 0700B416 */  bne        $s5, $s4, .L0011B58C
    /* 1C4F0 0011B570 2A105302 */   slt       $v0, $s2, $s3
    /* 1C4F4 0011B574 2D286002 */  daddu      $a1, $s3, $zero
    /* 1C4F8 0011B578 2D20A002 */  daddu      $a0, $s5, $zero
    /* 1C4FC 0011B57C 5C6B040C */  jal        func_0011AD70
    /* 1C500 0011B580 0A284202 */   movz      $a1, $s2, $v0
    /* 1C504 0011B584 0A000010 */  b          .L0011B5B0
    /* 1C508 0011B588 0100C233 */   andi      $v0, $fp, 0x1
.align 2
  .L0011B58C:
    /* 1C50C 0011B58C 0300401A */  blez       $s2, .L0011B59C
    /* 1C510 0011B590 2D20A002 */   daddu     $a0, $s5, $zero
    /* 1C514 0011B594 5C6B040C */  jal        func_0011AD70
    /* 1C518 0011B598 2D284002 */   daddu     $a1, $s2, $zero
.align 2
  .L0011B59C:
    /* 1C51C 0011B59C 0300601A */  blez       $s3, .L0011B5AC
    /* 1C520 0011B5A0 2D208002 */   daddu     $a0, $s4, $zero
    /* 1C524 0011B5A4 5C6B040C */  jal        func_0011AD70
    /* 1C528 0011B5A8 2D286002 */   daddu     $a1, $s3, $zero
.align 2
  .L0011B5AC:
    /* 1C52C 0011B5AC 0100C233 */  andi       $v0, $fp, 0x1
.align 2
  .L0011B5B0:
    /* 1C530 0011B5B0 14004050 */  beql       $v0, $zero, .L0011B604
    /* 1C534 0011B5B4 01001324 */   addiu     $s3, $zero, 0x1
    /* 1C538 0011B5B8 0300E016 */  bnez       $s7, .L0011B5C8
    /* 1C53C 0011B5BC 01000224 */   addiu     $v0, $zero, 0x1
    /* 1C540 0011B5C0 02000010 */  b          .L0011B5CC
    /* 1C544 0011B5C4 300000AE */   sw        $zero, 0x30($s0)
.align 2
  .L0011B5C8:
    /* 1C548 0011B5C8 300002AE */  sw         $v0, 0x30($s0)
.align 2
  .L0011B5CC:
    /* 1C54C 0011B5CC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1C550 0011B5D0 0080043C */  lui        $a0, (0x8000000A >> 16)
    /* 1C554 0011B5D4 1400288E */  lw         $t0, 0x14($s1)
    /* 1C558 0011B5D8 2D38A002 */  daddu      $a3, $s5, $zero
    /* 1C55C 0011B5DC 080022AE */  sw         $v0, 0x8($s1)
    /* 1C560 0011B5E0 2D484002 */  daddu      $t1, $s2, $zero
    /* 1C564 0011B5E4 0A008434 */  ori        $a0, $a0, (0x8000000A & 0xFFFF)
    /* 1C568 0011B5E8 2D280002 */  daddu      $a1, $s0, $zero
    /* 1C56C 0011B5EC F26A040C */  jal        func_0011ABC8
    /* 1C570 0011B5F0 40000624 */   addiu     $a2, $zero, 0x40
    /* 1C574 0011B5F4 23004014 */  bnez       $v0, .L0011B684
    /* 1C578 0011B5F8 2D100000 */   daddu     $v0, $zero, $zero
    /* 1C57C 0011B5FC 18000010 */  b          .L0011B660
    /* 1C580 0011B600 00000000 */   nop
.align 2
  .L0011B604:
    /* 1C584 0011B604 0800A0AF */  sw         $zero, 0x8($sp)
    /* 1C588 0011B608 0400B3AF */  sw         $s3, 0x4($sp)
    /* 1C58C 0011B60C 1C63040C */  jal        func_00118C70
    /* 1C590 0011B610 2D20A003 */   daddu     $a0, $sp, $zero
    /* 1C594 0011B614 05004104 */  bgez       $v0, .L0011B62C
    /* 1C598 0011B618 080022AE */   sw        $v0, 0x8($s1)
    /* 1C59C 0011B61C 246C040C */  jal        func_0011B090
    /* 1C5A0 0011B620 2D200002 */   daddu     $a0, $s0, $zero
    /* 1C5A4 0011B624 17000010 */  b          .L0011B684
    /* 1C5A8 0011B628 FDFF0224 */   addiu     $v0, $zero, -0x3
.align 2
  .L0011B62C:
    /* 1C5AC 0011B62C 300013AE */  sw         $s3, 0x30($s0)
    /* 1C5B0 0011B630 0080043C */  lui        $a0, (0x8000000A >> 16)
    /* 1C5B4 0011B634 2D38A002 */  daddu      $a3, $s5, $zero
    /* 1C5B8 0011B638 2D484002 */  daddu      $t1, $s2, $zero
    /* 1C5BC 0011B63C 1400288E */  lw         $t0, 0x14($s1)
    /* 1C5C0 0011B640 0A008434 */  ori        $a0, $a0, (0x8000000A & 0xFFFF)
    /* 1C5C4 0011B644 2D280002 */  daddu      $a1, $s0, $zero
    /* 1C5C8 0011B648 F26A040C */  jal        func_0011ABC8
    /* 1C5CC 0011B64C 40000624 */   addiu     $a2, $zero, 0x40
    /* 1C5D0 0011B650 07004014 */  bnez       $v0, .L0011B670
    /* 1C5D4 0011B654 00000000 */   nop
    /* 1C5D8 0011B658 2063040C */  jal        func_00118C80
    /* 1C5DC 0011B65C 0800248E */   lw        $a0, 0x8($s1)
.align 2
  .L0011B660:
    /* 1C5E0 0011B660 246C040C */  jal        func_0011B090
    /* 1C5E4 0011B664 2D200002 */   daddu     $a0, $s0, $zero
    /* 1C5E8 0011B668 06000010 */  b          .L0011B684
    /* 1C5EC 0011B66C FEFF0224 */   addiu     $v0, $zero, -0x2
.align 2
  .L0011B670:
    /* 1C5F0 0011B670 2C63040C */  jal        func_00118CB0
    /* 1C5F4 0011B674 0800248E */   lw        $a0, 0x8($s1)
    /* 1C5F8 0011B678 2063040C */  jal        func_00118C80
    /* 1C5FC 0011B67C 0800248E */   lw        $a0, 0x8($s1)
    /* 1C600 0011B680 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0011B684:
    /* 1C604 0011B684 B000BFDF */  ld         $ra, 0xB0($sp)
    /* 1C608 0011B688 A000BEDF */  ld         $fp, 0xA0($sp)
    /* 1C60C 0011B68C 9000B7DF */  ld         $s7, 0x90($sp)
    /* 1C610 0011B690 8000B6DF */  ld         $s6, 0x80($sp)
    /* 1C614 0011B694 7000B5DF */  ld         $s5, 0x70($sp)
    /* 1C618 0011B698 6000B4DF */  ld         $s4, 0x60($sp)
    /* 1C61C 0011B69C 5000B3DF */  ld         $s3, 0x50($sp)
    /* 1C620 0011B6A0 4000B2DF */  ld         $s2, 0x40($sp)
    /* 1C624 0011B6A4 3000B1DF */  ld         $s1, 0x30($sp)
    /* 1C628 0011B6A8 2000B0DF */  ld         $s0, 0x20($sp)
    /* 1C62C 0011B6AC 0800E003 */  jr         $ra
    /* 1C630 0011B6B0 C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_0011B4C8
    /* 1C634 0011B6B4 00000000 */  nop
