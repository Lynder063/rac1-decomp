.align 3
/* Handwritten function */
nonmatching func_002383D8, 0x2AC

glabel func_002383D8
    /* 139358 002383D8 0070013C */  lui        $at, (0x70003E00 >> 16)
    /* 13935C 002383DC 1E000E3C */  lui        $t6, %hi(D_001E3100)
    /* 139360 002383E0 0031CE25 */  addiu      $t6, $t6, %lo(D_001E3100)
    /* 139364 002383E4 00322F20 */  addi       $t7, $at, (0x70003200 & 0xFFFF) /* handwritten instruction */
    /* 139368 002383E8 003E2D20 */  addi       $t5, $at, (0x70003E00 & 0xFFFF) /* handwritten instruction */
    /* 13936C 002383EC 1E000C3C */  lui        $t4, %hi(D_001E3300)
    /* 139370 002383F0 00338C25 */  addiu      $t4, $t4, %lo(D_001E3300)
    /* 139374 002383F4 00000000 */  nop
    /* 139378 002383F8 4CA38A8F */  lw         $t2, -0x5CB4($gp)
    /* 13937C 002383FC 1E000B3C */  lui        $t3, %hi(D_001E3900)
    /* 139380 00238400 00396B25 */  addiu      $t3, $t3, %lo(D_001E3900)
    /* 139384 00238404 00000920 */  addi       $t1, $zero, 0x0 /* handwritten instruction */
    /* 139388 00238408 00A3988F */  lw         $t8, -0x5D00($gp)
    /* 13938C 0023840C 02CA0400 */  srl        $t9, $a0, 8
    /* 139390 00238410 FF7F083C */  lui        $t0, (0x7FFFFFFF >> 16)
    /* 139394 00238414 FFFF0835 */  ori        $t0, $t0, (0x7FFFFFFF & 0xFFFF)
    /* 139398 00238418 0000A121 */  addi       $at, $t5, 0x0 /* handwritten instruction */
    /* 13939C 0023841C 0001A221 */  addi       $v0, $t5, 0x100 /* handwritten instruction */
.align 2
  .L00238420:
    /* 1393A0 00238420 0000207C */  sq         $zero, 0x0($at)
    /* 1393A4 00238424 20002120 */  addi       $at, $at, 0x20 /* handwritten instruction */
    /* 1393A8 00238428 00000000 */  nop
    /* 1393AC 0023842C 00000000 */  nop
    /* 1393B0 00238430 00000000 */  nop
    /* 1393B4 00238434 FAFF2214 */  bne        $at, $v0, .L00238420
    /* 1393B8 00238438 F0FF207C */   sq        $zero, -0x10($at)
.align 2
  .L0023843C:
    /* 1393BC 0023843C 1D002A11 */  beq        $t1, $t2, .L002384B4
    /* 1393C0 00238440 01002921 */   addi      $t1, $t1, 0x1 /* handwritten instruction */
    /* 1393C4 00238444 0000E18D */  lw         $at, 0x0($t7)
    /* 1393C8 00238448 0400EF21 */  addi       $t7, $t7, 0x4 /* handwritten instruction */
    /* 1393CC 0023844C 0000C28D */  lw         $v0, 0x0($t6)
    /* 1393D0 00238450 0400CE21 */  addi       $t6, $t6, 0x4 /* handwritten instruction */
    /* 1393D4 00238454 F9FF2810 */  beq        $at, $t0, .L0023843C
    /* 1393D8 00238458 10006B21 */   addi      $t3, $t3, 0x10 /* handwritten instruction */
    /* 1393DC 0023845C 40180200 */  sll        $v1, $v0, 1
    /* 1393E0 00238460 FFFF2421 */  addi       $a0, $t1, -0x1 /* handwritten instruction */
    /* 1393E4 00238464 22186100 */  sub        $v1, $v1, $at /* handwritten instruction */
    /* 1393E8 00238468 000084AD */  sw         $a0, 0x0($t4)
    /* 1393EC 0023846C F3FF6018 */  blez       $v1, .L0023843C
    /* 1393F0 00238470 22184100 */   sub       $v1, $v0, $at /* handwritten instruction */
    /* 1393F4 00238474 03006018 */  blez       $v1, .L00238484
    /* 1393F8 00238478 01000320 */   addi      $v1, $zero, 0x1 /* handwritten instruction */
    /* 1393FC 0023847C 03000320 */  addi       $v1, $zero, 0x3 /* handwritten instruction */
    /* 139400 00238480 00000000 */  nop
.align 2
  .L00238484:
    /* 139404 00238484 04008C21 */  addi       $t4, $t4, 0x4 /* handwritten instruction */
    /* 139408 00238488 00000000 */  nop
    /* 13940C 0023848C F0FF6121 */  addi       $at, $t3, -0x10 /* handwritten instruction */
    /* 139410 00238490 FF000220 */  addi       $v0, $zero, 0xFF /* handwritten instruction */
.align 2
  alabel func_00238494
    /* 139414 00238494 00002490 */  lbu        $a0, 0x0($at)
    /* 139418 00238498 01002120 */  addi       $at, $at, 0x1 /* handwritten instruction */
    /* 13941C 0023849C E7FF8210 */  beq        $a0, $v0, .L0023843C
    /* 139420 002384A0 20208D00 */   add       $a0, $a0, $t5 /* handwritten instruction */
    /* 139424 002384A4 00008590 */  lbu        $a1, 0x0($a0)
    /* 139428 002384A8 2528A300 */  or         $a1, $a1, $v1
    /* 13942C 002384AC 25E10808 */  j          func_00238494
    /* 139430 002384B0 000085A0 */   sb        $a1, 0x0($a0)
.align 2
  .L002384B4:
    /* 139434 002384B4 FFFF0120 */  addi       $at, $zero, -0x1 /* handwritten instruction */
    /* 139438 002384B8 000081AD */  sw         $at, 0x0($t4)
    /* 13943C 002384BC 609B8B7B */  lq         $t3, -0x64A0($gp)
    /* 139440 002384C0 709B8C7B */  lq         $t4, -0x6490($gp)
    /* 139444 002384C4 809B8D7B */  lq         $t5, -0x6480($gp)
    /* 139448 002384C8 909B8E7B */  lq         $t6, -0x6470($gp)
    /* 13944C 002384CC A09B8F7B */  lq         $t7, -0x6460($gp)
    /* 139450 002384D0 1E000A3C */  lui        $t2, %hi(D_001E2D00)
    /* 139454 002384D4 002D4A25 */  addiu      $t2, $t2, %lo(D_001E2D00)
    /* 139458 002384D8 1E00073C */  lui        $a3, %hi(D_001E2900)
    /* 13945C 002384DC 0029E724 */  addiu      $a3, $a3, %lo(D_001E2900)
    /* 139460 002384E0 00000000 */  nop
    /* 139464 002384E4 0070083C */  lui        $t0, (0x70003E00 >> 16)
    /* 139468 002384E8 64A3898F */  lw         $t1, -0x5C9C($gp)
    /* 13946C 002384EC 003E0821 */  addi       $t0, $t0, (0x70003E00 & 0xFFFF) /* handwritten instruction */
    /* 139470 002384F0 20482801 */  add        $t1, $t1, $t0 /* handwritten instruction */
.align 2
  .L002384F4:
    /* 139474 002384F4 5F000911 */  beq        $t0, $t1, .L00238674
    /* 139478 002384F8 00000191 */   lbu       $at, 0x0($t0)
    /* 13947C 002384FC 01000821 */  addi       $t0, $t0, 0x1 /* handwritten instruction */
    /* 139480 00238500 0000E48C */  lw         $a0, 0x0($a3)
    /* 139484 00238504 0400E720 */  addi       $a3, $a3, 0x4 /* handwritten instruction */
    /* 139488 00238508 000040AD */  sw         $zero, 0x0($t2)
    /* 13948C 0023850C F9FF2010 */  beqz       $at, .L002384F4
    /* 139490 00238510 04004A21 */   addi      $t2, $t2, 0x4 /* handwritten instruction */
    /* 139494 00238514 02002230 */  andi       $v0, $at, 0x2
    /* 139498 00238518 00000000 */  nop
    /* 13949C 0023851C 021F0400 */  srl        $v1, $a0, 28
    /* 1394A0 00238520 00210400 */  sll        $a0, $a0, 4
    /* 1394A4 00238524 27004010 */  beqz       $v0, .L002385C4
    /* 1394A8 00238528 02210400 */   srl       $a0, $a0, 4
    /* 1394AC 0023852C 00000B7F */  sq         $t3, 0x0($t8)
    /* 1394B0 00238530 10000C7F */  sq         $t4, 0x10($t8)
    /* 1394B4 00238534 20000D7F */  sq         $t5, 0x20($t8)
    /* 1394B8 00238538 30000E7F */  sq         $t6, 0x30($t8)
    /* 1394BC 0023853C 4000007F */  sq         $zero, 0x40($t8)
    /* 1394C0 00238540 53000120 */  addi       $at, $zero, 0x53 /* handwritten instruction */
    /* 1394C4 00238544 50000F7F */  sq         $t7, 0x50($t8)
    /* 1394C8 00238548 480001AF */  sw         $at, 0x48($t8)
    /* 1394CC 0023854C 240019A7 */  sh         $t9, 0x24($t8)
    /* 1394D0 00238550 FAFF6220 */  addi       $v0, $v1, -0x6 /* handwritten instruction */
    /* 1394D4 00238554 03004018 */  blez       $v0, .L00238564
    /* 1394D8 00238558 01000120 */   addi      $at, $zero, 0x1 /* handwritten instruction */
    /* 1394DC 0023855C 04104100 */  sllv       $v0, $at, $v0
    /* 1394E0 00238560 260002A3 */  sb         $v0, 0x26($t8)
.align 2
  .L00238564:
    /* 1394E4 00238564 04086100 */  sllv       $at, $at, $v1
    /* 1394E8 00238568 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* 1394EC 0023856C 300001AF */  sw         $at, 0x30($t8)
    /* 1394F0 00238570 04106200 */  sllv       $v0, $v0, $v1
    /* 1394F4 00238574 340001AF */  sw         $at, 0x34($t8)
    /* 1394F8 00238578 04106200 */  sllv       $v0, $v0, $v1
    /* 1394FC 0023857C 00800134 */  ori        $at, $zero, 0x8000
    /* 139500 00238580 02110200 */  srl        $v0, $v0, 4
    /* 139504 00238584 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 139508 00238588 500001AF */  sw         $at, 0x50($t8)
    /* 13950C 0023858C 0030013C */  lui        $at, (0x30000000 >> 16)
    /* 139510 00238590 6000007F */  sq         $zero, 0x60($t8)
    /* 139514 00238594 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 139518 00238598 640004AF */  sw         $a0, 0x64($t8)
    /* 13951C 0023859C 600001AF */  sw         $at, 0x60($t8)
    /* 139520 002385A0 0050013C */  lui        $at, (0x50000000 >> 16)
    /* 139524 002385A4 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 139528 002385A8 02110200 */  srl        $v0, $v0, 4
    /* 13952C 002385AC FCFF59A5 */  sh         $t9, -0x4($t2)
    /* 139530 002385B0 20C82203 */  add        $t9, $t9, $v0 /* handwritten instruction */
    /* 139534 002385B4 6C0001AF */  sw         $at, 0x6C($t8)
    /* 139538 002385B8 05C02223 */  addi       $v0, $t9, -0x3FFB /* handwritten instruction */
    /* 13953C 002385BC 2B00401C */  bgtz       $v0, .L0023866C
    /* 139540 002385C0 70001823 */   addi      $t8, $t8, 0x70 /* handwritten instruction */
.align 2
  .L002385C4:
    /* 139544 002385C4 00000B7F */  sq         $t3, 0x0($t8)
    /* 139548 002385C8 10000C7F */  sq         $t4, 0x10($t8)
    /* 13954C 002385CC 20000D7F */  sq         $t5, 0x20($t8)
    /* 139550 002385D0 30000E7F */  sq         $t6, 0x30($t8)
    /* 139554 002385D4 4000007F */  sq         $zero, 0x40($t8)
    /* 139558 002385D8 53000120 */  addi       $at, $zero, 0x53 /* handwritten instruction */
    /* 13955C 002385DC 50000F7F */  sq         $t7, 0x50($t8)
    /* 139560 002385E0 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 139564 002385E4 480001AF */  sw         $at, 0x48($t8)
    /* 139568 002385E8 00000000 */  nop
    /* 13956C 002385EC 240019A7 */  sh         $t9, 0x24($t8)
    /* 139570 002385F0 FAFF6220 */  addi       $v0, $v1, -0x6 /* handwritten instruction */
    /* 139574 002385F4 03004018 */  blez       $v0, .L00238604
    /* 139578 002385F8 01000120 */   addi      $at, $zero, 0x1 /* handwritten instruction */
    /* 13957C 002385FC 04104100 */  sllv       $v0, $at, $v0
    /* 139580 00238600 260002A3 */  sb         $v0, 0x26($t8)
.align 2
  .L00238604:
    /* 139584 00238604 04086100 */  sllv       $at, $at, $v1
    /* 139588 00238608 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* 13958C 0023860C 300001AF */  sw         $at, 0x30($t8)
    /* 139590 00238610 04106200 */  sllv       $v0, $v0, $v1
    /* 139594 00238614 340001AF */  sw         $at, 0x34($t8)
    /* 139598 00238618 04106200 */  sllv       $v0, $v0, $v1
    /* 13959C 0023861C 80080200 */  sll        $at, $v0, 2
    /* 1395A0 00238620 02110200 */  srl        $v0, $v0, 4
    /* 1395A4 00238624 20208100 */  add        $a0, $a0, $at /* handwritten instruction */
    /* 1395A8 00238628 00800134 */  ori        $at, $zero, 0x8000
    /* 1395AC 0023862C 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 1395B0 00238630 500001AF */  sw         $at, 0x50($t8)
    /* 1395B4 00238634 0030013C */  lui        $at, (0x30000000 >> 16)
    /* 1395B8 00238638 6000007F */  sq         $zero, 0x60($t8)
    /* 1395BC 0023863C 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 1395C0 00238640 640004AF */  sw         $a0, 0x64($t8)
    /* 1395C4 00238644 600001AF */  sw         $at, 0x60($t8)
    /* 1395C8 00238648 0050013C */  lui        $at, (0x50000000 >> 16)
    /* 1395CC 0023864C 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 1395D0 00238650 02110200 */  srl        $v0, $v0, 4
    /* 1395D4 00238654 FEFF59A5 */  sh         $t9, -0x2($t2)
    /* 1395D8 00238658 20C82203 */  add        $t9, $t9, $v0 /* handwritten instruction */
    /* 1395DC 0023865C 6C0001AF */  sw         $at, 0x6C($t8)
    /* 1395E0 00238660 05C02223 */  addi       $v0, $t9, -0x3FFB /* handwritten instruction */
    /* 1395E4 00238664 A3FF4018 */  blez       $v0, .L002384F4
    /* 1395E8 00238668 70001823 */   addi      $t8, $t8, 0x70 /* handwritten instruction */
.align 2
  .L0023866C:
    /* 1395EC 0023866C 90FF1823 */  addi       $t8, $t8, -0x70 /* handwritten instruction */
    /* 1395F0 00238670 00000000 */  nop
.align 2
  .L00238674:
    /* 1395F4 00238674 00A398AF */  sw         $t8, -0x5D00($gp)
    /* 1395F8 00238678 00000000 */  nop
    /* 1395FC 0023867C 0800E003 */  jr         $ra
    /* 139600 00238680 00121900 */   sll       $v0, $t9, 8
endlabel func_002383D8
    /* 139604 00238684 00000000 */  nop
