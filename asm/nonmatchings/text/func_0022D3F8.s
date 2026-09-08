.align 3
/* Handwritten function */
nonmatching func_0022D3F8, 0x128

glabel func_0022D3F8
    /* 12E378 0022D3F8 00A3988F */  lw         $t8, -0x5D00($gp)
    /* 12E37C 0022D3FC 00000000 */  nop
    /* 12E380 0022D400 2DC80003 */  daddu      $t9, $t8, $zero
    /* 12E384 0022D404 20001827 */  addiu      $t8, $t8, 0x20
.align 2
  .L0022D408:
    /* 12E388 0022D408 FFFF8420 */  addi       $a0, $a0, -0x1 /* handwritten instruction */
    /* 12E38C 0022D40C 2D18E000 */  daddu      $v1, $a3, $zero
    /* 12E390 0022D410 0F006324 */  addiu      $v1, $v1, 0xF
    /* 12E394 0022D414 0000A190 */  lbu        $at, 0x0($a1)
    /* 12E398 0022D418 00090100 */  sll        $at, $at, 4
    /* 12E39C 0022D41C 21082300 */  addu       $at, $at, $v1
    /* 12E3A0 0022D420 00002190 */  lbu        $at, 0x0($at)
    /* 12E3A4 0022D424 0100A290 */  lbu        $v0, 0x1($a1)
    /* 12E3A8 0022D428 00110200 */  sll        $v0, $v0, 4
    /* 12E3AC 0022D42C 21104300 */  addu       $v0, $v0, $v1
    /* 12E3B0 0022D430 00004290 */  lbu        $v0, 0x0($v0)
    /* 12E3B4 0022D434 24082200 */  and        $at, $at, $v0
    /* 12E3B8 0022D438 0200A290 */  lbu        $v0, 0x2($a1)
    /* 12E3BC 0022D43C 00110200 */  sll        $v0, $v0, 4
    /* 12E3C0 0022D440 21104300 */  addu       $v0, $v0, $v1
    /* 12E3C4 0022D444 00004290 */  lbu        $v0, 0x0($v0)
    /* 12E3C8 0022D448 00000000 */  nop
    /* 12E3CC 0022D44C 24082200 */  and        $at, $at, $v0
    /* 12E3D0 0022D450 2D78A000 */  daddu      $t7, $a1, $zero
    /* 12E3D4 0022D454 0400A524 */  addiu      $a1, $a1, 0x4
    /* 12E3D8 0022D458 19002014 */  bnez       $at, .L0022D4C0
    /* 12E3DC 0022D45C 03000E24 */   addiu     $t6, $zero, 0x3
.align 2
  .L0022D460:
    /* 12E3E0 0022D460 FFFFCE21 */  addi       $t6, $t6, -0x1 /* handwritten instruction */
    /* 12E3E4 0022D464 0000E391 */  lbu        $v1, 0x0($t7)
    /* 12E3E8 0022D468 80100300 */  sll        $v0, $v1, 2
    /* 12E3EC 0022D46C 21104600 */  addu       $v0, $v0, $a2
    /* 12E3F0 0022D470 0000418C */  lw         $at, 0x0($v0)
    /* 12E3F4 0022D474 000001FF */  sd         $at, 0x0($t8)
    /* 12E3F8 0022D478 01000124 */  addiu      $at, $zero, 0x1
    /* 12E3FC 0022D47C 080001FF */  sd         $at, 0x8($t8)
    /* 12E400 0022D480 00110300 */  sll        $v0, $v1, 4
    /* 12E404 0022D484 21104700 */  addu       $v0, $v0, $a3
    /* 12E408 0022D488 0000418C */  lw         $at, 0x0($v0)
    /* 12E40C 0022D48C FFFF2330 */  andi       $v1, $at, 0xFFFF
    /* 12E410 0022D490 0400418C */  lw         $at, 0x4($v0)
    /* 12E414 0022D494 FFFF2130 */  andi       $at, $at, 0xFFFF
    /* 12E418 0022D498 000C0100 */  sll        $at, $at, 16
    /* 12E41C 0022D49C 25082300 */  or         $at, $at, $v1
    /* 12E420 0022D4A0 100001AF */  sw         $at, 0x10($t8)
    /* 12E424 0022D4A4 00000000 */  nop
    /* 12E428 0022D4A8 140000AF */  sw         $zero, 0x14($t8)
    /* 12E42C 0022D4AC 05000124 */  addiu      $at, $zero, 0x5
    /* 12E430 0022D4B0 180001FF */  sd         $at, 0x18($t8)
    /* 12E434 0022D4B4 20001827 */  addiu      $t8, $t8, 0x20
    /* 12E438 0022D4B8 E9FFC015 */  bnez       $t6, .L0022D460
    /* 12E43C 0022D4BC 0100EF25 */   addiu     $t7, $t7, 0x1
.align 2
  .L0022D4C0:
    /* 12E440 0022D4C0 D1FF8014 */  bnez       $a0, .L0022D408
    /* 12E444 0022D4C4 22101903 */   sub       $v0, $t8, $t9 /* handwritten instruction */
    /* 12E448 0022D4C8 02110200 */  srl        $v0, $v0, 4
    /* 12E44C 0022D4CC FEFF4220 */  addi       $v0, $v0, -0x2 /* handwritten instruction */
    /* 12E450 0022D4D0 11004010 */  beqz       $v0, .L0022D518
    /* 12E454 0022D4D4 01004220 */   addi      $v0, $v0, 0x1 /* handwritten instruction */
    /* 12E458 0022D4D8 0010013C */  lui        $at, (0x10000000 >> 16)
    /* 12E45C 0022D4DC 25082200 */  or         $at, $at, $v0
    /* 12E460 0022D4E0 000021AF */  sw         $at, 0x0($t9)
    /* 12E464 0022D4E4 040020AF */  sw         $zero, 0x4($t9)
    /* 12E468 0022D4E8 080020AF */  sw         $zero, 0x8($t9)
    /* 12E46C 0022D4EC 0050013C */  lui        $at, (0x50000000 >> 16)
    /* 12E470 0022D4F0 25082200 */  or         $at, $at, $v0
    /* 12E474 0022D4F4 0C0021AF */  sw         $at, 0xC($t9)
    /* 12E478 0022D4F8 FFFF4220 */  addi       $v0, $v0, -0x1 /* handwritten instruction */
    /* 12E47C 0022D4FC 00804134 */  ori        $at, $v0, 0x8000
    /* 12E480 0022D500 100021AF */  sw         $at, 0x10($t9)
    /* 12E484 0022D504 0010013C */  lui        $at, (0x10000000 >> 16)
    /* 12E488 0022D508 140021AF */  sw         $at, 0x14($t9)
    /* 12E48C 0022D50C 0E000124 */  addiu      $at, $zero, 0xE
    /* 12E490 0022D510 180021FF */  sd         $at, 0x18($t9)
    /* 12E494 0022D514 00A398AF */  sw         $t8, -0x5D00($gp)
.align 2
  .L0022D518:
    /* 12E498 0022D518 0800E003 */  jr         $ra
    /* 12E49C 0022D51C 00000000 */   nop
endlabel func_0022D3F8
