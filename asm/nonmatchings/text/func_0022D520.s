.align 3
/* Handwritten function */
nonmatching func_0022D520, 0x194

glabel func_0022D520
    /* 12E4A0 0022D520 FFFF0A34 */  ori        $t2, $zero, 0xFFFF
    /* 12E4A4 0022D524 21500A00 */  addu       $t2, $zero, $t2
    /* 12E4A8 0022D528 00A3988F */  lw         $t8, -0x5D00($gp)
    /* 12E4AC 0022D52C 2DC80003 */  daddu      $t9, $t8, $zero
    /* 12E4B0 0022D530 20001827 */  addiu      $t8, $t8, 0x20
.align 2
  .L0022D534:
    /* 12E4B4 0022D534 FFFF8420 */  addi       $a0, $a0, -0x1 /* handwritten instruction */
    /* 12E4B8 0022D538 2D18E000 */  daddu      $v1, $a3, $zero
    /* 12E4BC 0022D53C 0F006324 */  addiu      $v1, $v1, 0xF
    /* 12E4C0 0022D540 0000A190 */  lbu        $at, 0x0($a1)
    /* 12E4C4 0022D544 00090100 */  sll        $at, $at, 4
    /* 12E4C8 0022D548 21082300 */  addu       $at, $at, $v1
    /* 12E4CC 0022D54C 00002190 */  lbu        $at, 0x0($at)
    /* 12E4D0 0022D550 0100A290 */  lbu        $v0, 0x1($a1)
    /* 12E4D4 0022D554 00110200 */  sll        $v0, $v0, 4
    /* 12E4D8 0022D558 21104300 */  addu       $v0, $v0, $v1
    /* 12E4DC 0022D55C 00004290 */  lbu        $v0, 0x0($v0)
    /* 12E4E0 0022D560 24082200 */  and        $at, $at, $v0
    /* 12E4E4 0022D564 0200A290 */  lbu        $v0, 0x2($a1)
    /* 12E4E8 0022D568 00110200 */  sll        $v0, $v0, 4
    /* 12E4EC 0022D56C 21104300 */  addu       $v0, $v0, $v1
    /* 12E4F0 0022D570 00004290 */  lbu        $v0, 0x0($v0)
    /* 12E4F4 0022D574 24102200 */  and        $v0, $at, $v0
    /* 12E4F8 0022D578 0300A190 */  lbu        $at, 0x3($a1)
    /* 12E4FC 0022D57C 2D78A000 */  daddu      $t7, $a1, $zero
    /* 12E500 0022D580 0400A524 */  addiu      $a1, $a1, 0x4
    /* 12E504 0022D584 33004014 */  bnez       $v0, .L0022D654
    /* 12E508 0022D588 00000000 */   nop
    /* 12E50C 0022D58C 09004111 */  beq        $t2, $at, .L0022D5B4
    /* 12E510 0022D590 2D102000 */   daddu     $v0, $at, $zero
    /* 12E514 0022D594 ADB50808 */  j          func_0022D6B4
    /* 12E518 0022D598 00000000 */   nop
.align 2
  alabel func_0022D59C
    /* 12E51C 0022D59C 000001FF */  sd         $at, 0x0($t8)
    /* 12E520 0022D5A0 06000124 */  addiu      $at, $zero, 0x6
    /* 12E524 0022D5A4 080001FF */  sd         $at, 0x8($t8)
    /* 12E528 0022D5A8 10001827 */  addiu      $t8, $t8, 0x10
    /* 12E52C 0022D5AC 2D504000 */  daddu      $t2, $v0, $zero
    /* 12E530 0022D5B0 00000000 */  nop
.align 2
  .L0022D5B4:
    /* 12E534 0022D5B4 03000E24 */  addiu      $t6, $zero, 0x3
    /* 12E538 0022D5B8 00000000 */  nop
.align 2
  .L0022D5BC:
    /* 12E53C 0022D5BC FFFFCE21 */  addi       $t6, $t6, -0x1 /* handwritten instruction */
    /* 12E540 0022D5C0 0000E391 */  lbu        $v1, 0x0($t7)
    /* 12E544 0022D5C4 80100300 */  sll        $v0, $v1, 2
    /* 12E548 0022D5C8 21104600 */  addu       $v0, $v0, $a2
    /* 12E54C 0022D5CC 0000418C */  lw         $at, 0x0($v0)
    /* 12E550 0022D5D0 880D0170 */  pextlh     $at, $zero, $at
    /* 12E554 0022D5D4 0050A148 */  qmtc2.ni   $at, $vf10
    /* 12E558 0022D5D8 3E518A4B */  vitof12.xy $vf10, $vf10
    /* 12E55C 0022D5DC 00502148 */  qmfc2.ni   $at, $vf10
    /* 12E560 0022D5E0 000001FF */  sd         $at, 0x0($t8)
    /* 12E564 0022D5E4 02000124 */  addiu      $at, $zero, 0x2
    /* 12E568 0022D5E8 080001FF */  sd         $at, 0x8($t8)
    /* 12E56C 0022D5EC 00110300 */  sll        $v0, $v1, 4
    /* 12E570 0022D5F0 21104700 */  addu       $v0, $v0, $a3
    /* 12E574 0022D5F4 0000418C */  lw         $at, 0x0($v0)
    /* 12E578 0022D5F8 FFFF2330 */  andi       $v1, $at, 0xFFFF
    /* 12E57C 0022D5FC 0400418C */  lw         $at, 0x4($v0)
    /* 12E580 0022D600 FFFF2130 */  andi       $at, $at, 0xFFFF
    /* 12E584 0022D604 000C0100 */  sll        $at, $at, 16
    /* 12E588 0022D608 25082300 */  or         $at, $at, $v1
    /* 12E58C 0022D60C 200001AF */  sw         $at, 0x20($t8)
    /* 12E590 0022D610 00000000 */  nop
    /* 12E594 0022D614 240000AF */  sw         $zero, 0x24($t8)
    /* 12E598 0022D618 05000124 */  addiu      $at, $zero, 0x5
    /* 12E59C 0022D61C 280001FF */  sd         $at, 0x28($t8)
    /* 12E5A0 0022D620 0C004190 */  lbu        $at, 0xC($v0)
    /* 12E5A4 0022D624 8000023C */  lui        $v0, (0x808080 >> 16)
    /* 12E5A8 0022D628 000E0100 */  sll        $at, $at, 24
    /* 12E5AC 0022D62C 80804234 */  ori        $v0, $v0, (0x808080 & 0xFFFF)
    /* 12E5B0 0022D630 25082200 */  or         $at, $at, $v0
    /* 12E5B4 0022D634 803F023C */  lui        $v0, (0x3F800000 >> 16)
    /* 12E5B8 0022D638 100001AF */  sw         $at, 0x10($t8)
    /* 12E5BC 0022D63C 140002AF */  sw         $v0, 0x14($t8)
    /* 12E5C0 0022D640 01000124 */  addiu      $at, $zero, 0x1
    /* 12E5C4 0022D644 180001FF */  sd         $at, 0x18($t8)
    /* 12E5C8 0022D648 30001827 */  addiu      $t8, $t8, 0x30
    /* 12E5CC 0022D64C DBFFC015 */  bnez       $t6, .L0022D5BC
    /* 12E5D0 0022D650 0100EF25 */   addiu     $t7, $t7, 0x1
.align 2
  .L0022D654:
    /* 12E5D4 0022D654 B7FF8014 */  bnez       $a0, .L0022D534
    /* 12E5D8 0022D658 22101903 */   sub       $v0, $t8, $t9 /* handwritten instruction */
    /* 12E5DC 0022D65C 02110200 */  srl        $v0, $v0, 4
    /* 12E5E0 0022D660 FEFF4220 */  addi       $v0, $v0, -0x2 /* handwritten instruction */
    /* 12E5E4 0022D664 11004010 */  beqz       $v0, .L0022D6AC
    /* 12E5E8 0022D668 01004220 */   addi      $v0, $v0, 0x1 /* handwritten instruction */
    /* 12E5EC 0022D66C 0010013C */  lui        $at, (0x10000000 >> 16)
    /* 12E5F0 0022D670 25082200 */  or         $at, $at, $v0
    /* 12E5F4 0022D674 000021AF */  sw         $at, 0x0($t9)
    /* 12E5F8 0022D678 040020AF */  sw         $zero, 0x4($t9)
    /* 12E5FC 0022D67C 080020AF */  sw         $zero, 0x8($t9)
    /* 12E600 0022D680 0050013C */  lui        $at, (0x50000000 >> 16)
    /* 12E604 0022D684 25082200 */  or         $at, $at, $v0
    /* 12E608 0022D688 0C0021AF */  sw         $at, 0xC($t9)
    /* 12E60C 0022D68C FFFF4220 */  addi       $v0, $v0, -0x1 /* handwritten instruction */
    /* 12E610 0022D690 00804134 */  ori        $at, $v0, 0x8000
    /* 12E614 0022D694 100021AF */  sw         $at, 0x10($t9)
    /* 12E618 0022D698 0010013C */  lui        $at, (0x10000000 >> 16)
    /* 12E61C 0022D69C 140021AF */  sw         $at, 0x14($t9)
    /* 12E620 0022D6A0 0E000124 */  addiu      $at, $zero, 0xE
    /* 12E624 0022D6A4 180021FF */  sd         $at, 0x18($t9)
    /* 12E628 0022D6A8 00A398AF */  sw         $t8, -0x5D00($gp)
.align 2
  .L0022D6AC:
    /* 12E62C 0022D6AC 0800E003 */  jr         $ra
    /* 12E630 0022D6B0 00000000 */   nop
endlabel func_0022D520
