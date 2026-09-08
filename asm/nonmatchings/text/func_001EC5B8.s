.align 3
nonmatching func_001EC5B8, 0x1C4

glabel func_001EC5B8
    /* ED538 001EC5B8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* ED53C 001EC5BC 2000B27F */  sq         $s2, 0x20($sp)
    /* ED540 001EC5C0 1000B17F */  sq         $s1, 0x10($sp)
    /* ED544 001EC5C4 0000B07F */  sq         $s0, 0x0($sp)
    /* ED548 001EC5C8 2D888000 */  daddu      $s1, $a0, $zero
    /* ED54C 001EC5CC 3000BF7F */  sq         $ra, 0x30($sp)
    /* ED550 001EC5D0 2D80A000 */  daddu      $s0, $a1, $zero
    /* ED554 001EC5D4 7C002292 */  lbu        $v0, 0x7C($s1)
    /* ED558 001EC5D8 61004010 */  beqz       $v0, .L001EC760
    /* ED55C 001EC5DC 74003226 */   addiu     $s2, $s1, 0x74
    /* ED560 001EC5E0 8C002386 */  lh         $v1, 0x8C($s1)
    /* ED564 001EC5E4 14000424 */  addiu      $a0, $zero, 0x14
    /* ED568 001EC5E8 1F00023C */  lui        $v0, %hi(D_001E8F80)
    /* ED56C 001EC5EC 18186400 */  mult       $v1, $v1, $a0
    /* ED570 001EC5F0 808F4224 */  addiu      $v0, $v0, %lo(D_001E8F80)
    /* ED574 001EC5F4 21104300 */  addu       $v0, $v0, $v1
    /* ED578 001EC5F8 0400428C */  lw         $v0, 0x4($v0)
    /* ED57C 001EC5FC 09004010 */  beqz       $v0, .L001EC624
    /* ED580 001EC600 2D202002 */   daddu     $a0, $s1, $zero
    /* ED584 001EC604 09F84000 */  jalr       $v0
    /* ED588 001EC608 2D280002 */   daddu     $a1, $s0, $zero
    /* ED58C 001EC60C 2D184000 */  daddu      $v1, $v0, $zero
    /* ED590 001EC610 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* ED594 001EC614 52006210 */  beq        $v1, $v0, .L001EC760
    /* ED598 001EC618 01000224 */   addiu     $v0, $zero, 0x1
    /* ED59C 001EC61C 52006210 */  beq        $v1, $v0, .L001EC768
    /* ED5A0 001EC620 3000BF7B */   lq        $ra, 0x30($sp)
.align 2
  .L001EC624:
    /* ED5A4 001EC624 0000438E */  lw         $v1, 0x0($s2)
    /* ED5A8 001EC628 0800622C */  sltiu      $v0, $v1, 0x8
    /* ED5AC 001EC62C 4C004010 */  beqz       $v0, .L001EC760
    /* ED5B0 001EC630 1E00023C */   lui       $v0, %hi(jtbl_001E7A30)
    /* ED5B4 001EC634 80180300 */  sll        $v1, $v1, 2
    /* ED5B8 001EC638 307A4224 */  addiu      $v0, $v0, %lo(jtbl_001E7A30)
    /* ED5BC 001EC63C 21186200 */  addu       $v1, $v1, $v0
    /* ED5C0 001EC640 0000648C */  lw         $a0, 0x0($v1)
    /* ED5C4 001EC644 08008000 */  jr         $a0
    /* ED5C8 001EC648 00000000 */   nop
    /* ED5CC 001EC64C 09004292 */  lbu        $v0, 0x9($s2)
    /* ED5D0 001EC650 44004010 */  beqz       $v0, .L001EC764
    /* ED5D4 001EC654 2D100000 */   daddu     $v0, $zero, $zero
    /* ED5D8 001EC658 42000012 */  beqz       $s0, .L001EC764
    /* ED5DC 001EC65C 01000224 */   addiu     $v0, $zero, 0x1
    /* ED5E0 001EC660 7E000286 */  lh         $v0, 0x7E($s0)
    /* ED5E4 001EC664 3F004054 */  bnel       $v0, $zero, .L001EC764
    /* ED5E8 001EC668 01000224 */   addiu     $v0, $zero, 0x1
    /* ED5EC 001EC66C 08004392 */  lbu        $v1, 0x8($s2)
    /* ED5F0 001EC670 7C000292 */  lbu        $v0, 0x7C($s0)
    /* ED5F4 001EC674 14000010 */  b          .L001EC6C8
    /* ED5F8 001EC678 2B104300 */   sltu      $v0, $v0, $v1
    /* ED5FC 001EC67C 84002286 */  lh         $v0, 0x84($s1)
    /* ED600 001EC680 1600033C */  lui        $v1, %hi(D_0015F090)
    /* ED604 001EC684 90F0638C */  lw         $v1, %lo(D_0015F090)($v1)
    /* ED608 001EC688 40110200 */  sll        $v0, $v0, 5
    /* ED60C 001EC68C 21104300 */  addu       $v0, $v0, $v1
    /* ED610 001EC690 09000012 */  beqz       $s0, .L001EC6B8
    /* ED614 001EC694 1C00448C */   lw        $a0, 0x1C($v0)
    /* ED618 001EC698 7E000286 */  lh         $v0, 0x7E($s0)
    /* ED61C 001EC69C 07004054 */  bnel       $v0, $zero, .L001EC6BC
    /* ED620 001EC6A0 0C00858C */   lw        $a1, 0xC($a0)
    /* ED624 001EC6A4 08004392 */  lbu        $v1, 0x8($s2)
    /* ED628 001EC6A8 7C000292 */  lbu        $v0, 0x7C($s0)
    /* ED62C 001EC6AC 2B104300 */  sltu       $v0, $v0, $v1
    /* ED630 001EC6B0 2C004010 */  beqz       $v0, .L001EC764
    /* ED634 001EC6B4 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L001EC6B8:
    /* ED638 001EC6B8 0C00858C */  lw         $a1, 0xC($a0)
.align 2
  .L001EC6BC:
    /* ED63C 001EC6BC 1400043C */  lui        $a0, %hi(D_0013F4D0)
    /* ED640 001EC6C0 5C55080C */  jal        func_00215570
    /* ED644 001EC6C4 D0F48424 */   addiu     $a0, $a0, %lo(D_0013F4D0)
.align 2
  .L001EC6C8:
    /* ED648 001EC6C8 26004010 */  beqz       $v0, .L001EC764
    /* ED64C 001EC6CC 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L001EC6D0:
    /* ED650 001EC6D0 24000010 */  b          .L001EC764
    /* ED654 001EC6D4 01000224 */   addiu     $v0, $zero, 0x1
    /* ED658 001EC6D8 1400033C */  lui        $v1, %hi(D_0013F450)
    /* ED65C 001EC6DC 86002486 */  lh         $a0, 0x86($s1)
    /* ED660 001EC6E0 50F46624 */  addiu      $a2, $v1, %lo(D_0013F450)
    /* ED664 001EC6E4 8422C28C */  lw         $v0, 0x2284($a2)
    /* ED668 001EC6E8 1E008214 */  bne        $a0, $v0, .L001EC764
    /* ED66C 001EC6EC 2D100000 */   daddu     $v0, $zero, $zero
    /* ED670 001EC6F0 7E000286 */  lh         $v0, 0x7E($s0)
    /* ED674 001EC6F4 06004014 */  bnez       $v0, .L001EC710
    /* ED678 001EC6F8 03000224 */   addiu     $v0, $zero, 0x3
    /* ED67C 001EC6FC 08004392 */  lbu        $v1, 0x8($s2)
    /* ED680 001EC700 7C000292 */  lbu        $v0, 0x7C($s0)
    /* ED684 001EC704 2B104300 */  sltu       $v0, $v0, $v1
    /* ED688 001EC708 15004010 */  beqz       $v0, .L001EC760
    /* ED68C 001EC70C 03000224 */   addiu     $v0, $zero, 0x3
.align 2
  .L001EC710:
    /* ED690 001EC710 14008214 */  bne        $a0, $v0, .L001EC764
    /* ED694 001EC714 01000224 */   addiu     $v0, $zero, 0x1
    /* ED698 001EC718 84002286 */  lh         $v0, 0x84($s1)
    /* ED69C 001EC71C 1600033C */  lui        $v1, %hi(D_0015F090)
    /* ED6A0 001EC720 90F0638C */  lw         $v1, %lo(D_0015F090)($v1)
    /* ED6A4 001EC724 40110200 */  sll        $v0, $v0, 5
    /* ED6A8 001EC728 21186200 */  addu       $v1, $v1, $v0
    /* ED6AC 001EC72C 1C00648C */  lw         $a0, 0x1C($v1)
    /* ED6B0 001EC730 2400828C */  lw         $v0, 0x24($a0)
    /* ED6B4 001EC734 E6FF4004 */  bltz       $v0, .L001EC6D0
    /* ED6B8 001EC738 4083848F */   lw        $a0, -0x7CC0($gp)
    /* ED6BC 001EC73C 40110200 */  sll        $v0, $v0, 5
    /* ED6C0 001EC740 6005C58C */  lw         $a1, 0x560($a2)
    /* ED6C4 001EC744 21104400 */  addu       $v0, $v0, $a0
    /* ED6C8 001EC748 1000438C */  lw         $v1, 0x10($v0)
    /* ED6CC 001EC74C 0500A314 */  bne        $a1, $v1, .L001EC764
    /* ED6D0 001EC750 2D100000 */   daddu     $v0, $zero, $zero
    /* ED6D4 001EC754 7005C28C */  lw         $v0, 0x570($a2)
    /* ED6D8 001EC758 02004010 */  beqz       $v0, .L001EC764
    /* ED6DC 001EC75C 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L001EC760:
    /* ED6E0 001EC760 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L001EC764:
    /* ED6E4 001EC764 3000BF7B */  lq         $ra, 0x30($sp)
.align 2
  .L001EC768:
    /* ED6E8 001EC768 2000B27B */  lq         $s2, 0x20($sp)
    /* ED6EC 001EC76C 1000B17B */  lq         $s1, 0x10($sp)
    /* ED6F0 001EC770 0000B07B */  lq         $s0, 0x0($sp)
    /* ED6F4 001EC774 0800E003 */  jr         $ra
    /* ED6F8 001EC778 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_001EC5B8
    /* ED6FC 001EC77C 00000000 */  nop
