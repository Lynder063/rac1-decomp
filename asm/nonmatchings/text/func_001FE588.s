.align 3
nonmatching func_001FE588, 0x134

glabel func_001FE588
    /* FF508 001FE588 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* FF50C 001FE58C 1A00023C */  lui        $v0, %hi(D_001997D0)
    /* FF510 001FE590 01000524 */  addiu      $a1, $zero, 0x1
    /* FF514 001FE594 3000B07F */  sq         $s0, 0x30($sp)
    /* FF518 001FE598 5000BF7F */  sq         $ra, 0x50($sp)
    /* FF51C 001FE59C D0974324 */  addiu      $v1, $v0, %lo(D_001997D0)
    /* FF520 001FE5A0 4000B17F */  sq         $s1, 0x40($sp)
    /* FF524 001FE5A4 2D804000 */  daddu      $s0, $v0, $zero
    /* FF528 001FE5A8 1600043C */  lui        $a0, %hi(D_0015EF1D)
    /* FF52C 001FE5AC 1DEF8490 */  lbu        $a0, %lo(D_0015EF1D)($a0)
    /* FF530 001FE5B0 D09745AC */  sw         $a1, %lo(D_001997D0)($v0)
    /* FF534 001FE5B4 05008014 */  bnez       $a0, .L001FE5CC
    /* FF538 001FE5B8 040060AC */   sw        $zero, 0x4($v1)
    /* FF53C 001FE5BC 1600023C */  lui        $v0, %hi(D_0015EF1C)
    /* FF540 001FE5C0 1CEF4290 */  lbu        $v0, %lo(D_0015EF1C)($v0)
    /* FF544 001FE5C4 06004010 */  beqz       $v0, .L001FE5E0
    /* FF548 001FE5C8 D0971126 */   addiu     $s1, $s0, %lo(D_001997D0)
.align 2
  .L001FE5CC:
    /* FF54C 001FE5CC 2D200000 */  daddu      $a0, $zero, $zero
    /* FF550 001FE5D0 01000524 */  addiu      $a1, $zero, 0x1
    /* FF554 001FE5D4 8ABB080C */  jal        func_0022EE28
    /* FF558 001FE5D8 2D300000 */   daddu     $a2, $zero, $zero
    /* FF55C 001FE5DC D0971126 */  addiu      $s1, $s0, %lo(D_001997D0)
.align 2
  .L001FE5E0:
    /* FF560 001FE5E0 1600033C */  lui        $v1, %hi(D_0015F780)
    /* FF564 001FE5E4 80F7638C */  lw         $v1, %lo(D_0015F780)($v1)
    /* FF568 001FE5E8 2000228E */  lw         $v0, 0x20($s1)
    /* FF56C 001FE5EC 07000924 */  addiu      $t1, $zero, 0x7
    /* FF570 001FE5F0 1000A427 */  addiu      $a0, $sp, 0x10
    /* FF574 001FE5F4 D4010824 */  addiu      $t0, $zero, 0x1D4
    /* FF578 001FE5F8 00110200 */  sll        $v0, $v0, 4
    /* FF57C 001FE5FC 68010A24 */  addiu      $t2, $zero, 0x168
    /* FF580 001FE600 21104300 */  addu       $v0, $v0, $v1
    /* FF584 001FE604 F0000524 */  addiu      $a1, $zero, 0xF0
    /* FF588 001FE608 0000508C */  lw         $s0, 0x0($v0)
    /* FF58C 001FE60C E0010624 */  addiu      $a2, $zero, 0x1E0
    /* FF590 001FE610 0000A9AF */  sw         $t1, 0x0($sp)
    /* FF594 001FE614 2C000724 */  addiu      $a3, $zero, 0x2C
    /* FF598 001FE618 00010924 */  addiu      $t1, $zero, 0x100
    /* FF59C 001FE61C 92DD070C */  jal        func_001F7648
    /* FF5A0 001FE620 10000B24 */   addiu     $t3, $zero, 0x10
    /* FF5A4 001FE624 2D300002 */  daddu      $a2, $s0, $zero
    /* FF5A8 001FE628 1000A427 */  addiu      $a0, $sp, 0x10
    /* FF5AC 001FE62C FF800534 */  ori        $a1, $zero, 0x80FF
    /* FF5B0 001FE630 382C0500 */  dsll       $a1, $a1, 16
    /* FF5B4 001FE634 88A8A534 */  ori        $a1, $a1, 0xA888
    /* FF5B8 001FE638 74DD070C */  jal        func_001F75D0
    /* FF5BC 001FE63C FFFF0724 */   addiu     $a3, $zero, -0x1
    /* FF5C0 001FE640 1400023C */  lui        $v0, %hi(D_0013E604)
    /* FF5C4 001FE644 1E00A397 */  lhu        $v1, 0x1E($sp)
    /* FF5C8 001FE648 04E6498C */  lw         $t1, %lo(D_0013E604)($v0)
    /* FF5CC 001FE64C 08000824 */  addiu      $t0, $zero, 0x8
    /* FF5D0 001FE650 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* FF5D4 001FE654 001C0300 */  sll        $v1, $v1, 16
    /* FF5D8 001FE658 43540300 */  sra        $t2, $v1, 17
    /* FF5DC 001FE65C C4FF2725 */  addiu      $a3, $t1, -0x3C
    /* FF5E0 001FE660 00140200 */  sll        $v0, $v0, 16
    /* FF5E4 001FE664 05004625 */  addiu      $a2, $t2, 0x5
    /* FF5E8 001FE668 43140200 */  sra        $v0, $v0, 17
    /* FF5EC 001FE66C 2128E600 */  addu       $a1, $a3, $a2
    /* FF5F0 001FE670 0A004224 */  addiu      $v0, $v0, 0xA
    /* FF5F4 001FE674 00010424 */  addiu      $a0, $zero, 0x100
    /* FF5F8 001FE678 F4FF2325 */  addiu      $v1, $t1, -0xC
    /* FF5FC 001FE67C 080022AE */  sw         $v0, 0x8($s1)
    /* FF600 001FE680 2A186500 */  slt        $v1, $v1, $a1
    /* FF604 001FE684 100024AE */  sw         $a0, 0x10($s1)
    /* FF608 001FE688 1C0028AE */  sw         $t0, 0x1C($s1)
    /* FF60C 001FE68C 0C0026AE */  sw         $a2, 0xC($s1)
    /* FF610 001FE690 180028AE */  sw         $t0, 0x18($s1)
    /* FF614 001FE694 04006010 */  beqz       $v1, .L001FE6A8
    /* FF618 001FE698 140027AE */   sw        $a3, 0x14($s1)
    /* FF61C 001FE69C 11004225 */  addiu      $v0, $t2, 0x11
    /* FF620 001FE6A0 23102201 */  subu       $v0, $t1, $v0
    /* FF624 001FE6A4 140022AE */  sw         $v0, 0x14($s1)
.align 2
  .L001FE6A8:
    /* FF628 001FE6A8 5000BF7B */  lq         $ra, 0x50($sp)
    /* FF62C 001FE6AC 4000B17B */  lq         $s1, 0x40($sp)
    /* FF630 001FE6B0 3000B07B */  lq         $s0, 0x30($sp)
    /* FF634 001FE6B4 0800E003 */  jr         $ra
    /* FF638 001FE6B8 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001FE588
    /* FF63C 001FE6BC 00000000 */  nop
