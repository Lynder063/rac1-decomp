.align 3
nonmatching func_001FD3E8, 0xB28

glabel func_001FD3E8
    /* FE368 001FD3E8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* FE36C 001FD3EC 1000B17F */  sq         $s1, 0x10($sp)
    /* FE370 001FD3F0 3000BF7F */  sq         $ra, 0x30($sp)
    /* FE374 001FD3F4 2000B27F */  sq         $s2, 0x20($sp)
    /* FE378 001FD3F8 5AB7080C */  jal        func_0022DD68
    /* FE37C 001FD3FC 0000B07F */   sq        $s0, 0x0($sp)
    /* FE380 001FD400 1900033C */  lui        $v1, %hi(D_00193400)
    /* FE384 001FD404 2D886000 */  daddu      $s1, $v1, $zero
    /* FE388 001FD408 00346324 */  addiu      $v1, $v1, %lo(D_00193400)
    /* FE38C 001FD40C 0400628C */  lw         $v0, 0x4($v1)
    /* FE390 001FD410 02004010 */  beqz       $v0, .L001FD41C
    /* FE394 001FD414 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* FE398 001FD418 040062AC */  sw         $v0, 0x4($v1)
.align 2
  .L001FD41C:
    /* FE39C 001FD41C 2C00628C */  lw         $v0, 0x2C($v1)
    /* FE3A0 001FD420 02004010 */  beqz       $v0, .L001FD42C
    /* FE3A4 001FD424 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* FE3A8 001FD428 2C0062AC */  sw         $v0, 0x2C($v1)
.align 2
  .L001FD42C:
    /* FE3AC 001FD42C 0034238E */  lw         $v1, %lo(D_00193400)($s1)
    /* FE3B0 001FD430 0900622C */  sltiu      $v0, $v1, 0x9
    /* FE3B4 001FD434 A4024010 */  beqz       $v0, .L001FDEC8
    /* FE3B8 001FD438 1E00023C */   lui       $v0, %hi(jtbl_001E7CC0)
    /* FE3BC 001FD43C 80180300 */  sll        $v1, $v1, 2
    /* FE3C0 001FD440 C07C4224 */  addiu      $v0, $v0, %lo(jtbl_001E7CC0)
    /* FE3C4 001FD444 21186200 */  addu       $v1, $v1, $v0
    /* FE3C8 001FD448 0000648C */  lw         $a0, 0x0($v1)
    /* FE3CC 001FD44C 08008000 */  jr         $a0
    /* FE3D0 001FD450 00000000 */   nop
    /* FE3D4 001FD454 00343026 */  addiu      $s0, $s1, %lo(D_00193400)
    /* FE3D8 001FD458 5A000424 */  addiu      $a0, $zero, 0x5A
    /* FE3DC 001FD45C 2000028E */  lw         $v0, 0x20($s0)
    /* FE3E0 001FD460 01004224 */  addiu      $v0, $v0, 0x1
    /* FE3E4 001FD464 30E6070C */  jal        func_001F98C0
    /* FE3E8 001FD468 200002AE */   sw        $v0, 0x20($s0)
    /* FE3EC 001FD46C 2000038E */  lw         $v1, 0x20($s0)
    /* FE3F0 001FD470 2A104300 */  slt        $v0, $v0, $v1
    /* FE3F4 001FD474 06004010 */  beqz       $v0, .L001FD490
    /* FE3F8 001FD478 78000424 */   addiu     $a0, $zero, 0x78
    /* FE3FC 001FD47C 2400028E */  lw         $v0, 0x24($s0)
    /* FE400 001FD480 03004010 */  beqz       $v0, .L001FD490
    /* FE404 001FD484 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* FE408 001FD488 240002AE */  sw         $v0, 0x24($s0)
    /* FE40C 001FD48C 78000424 */  addiu      $a0, $zero, 0x78
.align 2
  .L001FD490:
    /* FE410 001FD490 30E6070C */  jal        func_001F98C0
    /* FE414 001FD494 00343026 */   addiu     $s0, $s1, %lo(D_00193400)
    /* FE418 001FD498 2000038E */  lw         $v1, 0x20($s0)
    /* FE41C 001FD49C 2A104300 */  slt        $v0, $v0, $v1
    /* FE420 001FD4A0 89024010 */  beqz       $v0, .L001FDEC8
    /* FE424 001FD4A4 1400033C */   lui       $v1, %hi(D_0013CBE4)
    /* FE428 001FD4A8 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FE42C 001FD4AC 40004230 */  andi       $v0, $v0, 0x40
    /* FE430 001FD4B0 85024010 */  beqz       $v0, .L001FDEC8
    /* FE434 001FD4B4 8481838F */   lw        $v1, -0x7E7C($gp)
    /* FE438 001FD4B8 01000224 */  addiu      $v0, $zero, 0x1
    /* FE43C 001FD4BC 82026214 */  bne        $v1, $v0, .L001FDEC8
    /* FE440 001FD4C0 E88980AF */   sw        $zero, -0x7618($gp)
    /* FE444 001FD4C4 2D200000 */  daddu      $a0, $zero, $zero
    /* FE448 001FD4C8 F22F080C */  jal        func_0020BFC8
    /* FE44C 001FD4CC FFFF0524 */   addiu     $a1, $zero, -0x1
    /* FE450 001FD4D0 7F020010 */  b          .L001FDED0
    /* FE454 001FD4D4 E889828F */   lw        $v0, -0x7618($gp)
    /* FE458 001FD4D8 00343026 */  addiu      $s0, $s1, 0x3400
    /* FE45C 001FD4DC 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FE460 001FD4E0 2000028E */  lw         $v0, 0x20($s0)
    /* FE464 001FD4E4 01004224 */  addiu      $v0, $v0, 0x1
    /* FE468 001FD4E8 30E6070C */  jal        func_001F98C0
    /* FE46C 001FD4EC 200002AE */   sw        $v0, 0x20($s0)
    /* FE470 001FD4F0 2000038E */  lw         $v1, 0x20($s0)
    /* FE474 001FD4F4 2A104300 */  slt        $v0, $v0, $v1
    /* FE478 001FD4F8 05004010 */  beqz       $v0, .L001FD510
    /* FE47C 001FD4FC 2400028E */   lw        $v0, 0x24($s0)
    /* FE480 001FD500 05004010 */  beqz       $v0, .L001FD518
    /* FE484 001FD504 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* FE488 001FD508 240002AE */  sw         $v0, 0x24($s0)
    /* FE48C 001FD50C 2400028E */  lw         $v0, 0x24($s0)
.align 2
  .L001FD510:
    /* FE490 001FD510 6F024014 */  bnez       $v0, .L001FDED0
    /* FE494 001FD514 E889828F */   lw        $v0, -0x7618($gp)
.align 2
  .L001FD518:
    /* FE498 001FD518 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FE49C 001FD51C E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FE4A0 001FD520 40004230 */  andi       $v0, $v0, 0x40
    /* FE4A4 001FD524 68024010 */  beqz       $v0, .L001FDEC8
    /* FE4A8 001FD528 B482828F */   lw        $v0, -0x7D4C($gp)
    /* FE4AC 001FD52C BFFF0324 */  addiu      $v1, $zero, -0x41
    /* FE4B0 001FD530 1400053C */  lui        $a1, %hi(D_0013D48C)
    /* FE4B4 001FD534 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* FE4B8 001FD538 24104300 */  and        $v0, $v0, $v1
    /* FE4BC 001FD53C 8CD4A0AC */  sw         $zero, %lo(D_0013D48C)($a1)
    /* FE4C0 001FD540 3B020010 */  b          .L001FDE30
    /* FE4C4 001FD544 B48282AF */   sw        $v0, -0x7D4C($gp)
    /* FE4C8 001FD548 00343026 */  addiu      $s0, $s1, 0x3400
    /* FE4CC 001FD54C 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FE4D0 001FD550 2000028E */  lw         $v0, 0x20($s0)
    /* FE4D4 001FD554 01004224 */  addiu      $v0, $v0, 0x1
    /* FE4D8 001FD558 30E6070C */  jal        func_001F98C0
    /* FE4DC 001FD55C 200002AE */   sw        $v0, 0x20($s0)
    /* FE4E0 001FD560 2000038E */  lw         $v1, 0x20($s0)
    /* FE4E4 001FD564 2A104300 */  slt        $v0, $v0, $v1
    /* FE4E8 001FD568 05004010 */  beqz       $v0, .L001FD580
    /* FE4EC 001FD56C 2400028E */   lw        $v0, 0x24($s0)
    /* FE4F0 001FD570 05004010 */  beqz       $v0, .L001FD588
    /* FE4F4 001FD574 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* FE4F8 001FD578 240002AE */  sw         $v0, 0x24($s0)
    /* FE4FC 001FD57C 2400028E */  lw         $v0, 0x24($s0)
.align 2
  .L001FD580:
    /* FE500 001FD580 53024014 */  bnez       $v0, .L001FDED0
    /* FE504 001FD584 E889828F */   lw        $v0, -0x7618($gp)
.align 2
  .L001FD588:
    /* FE508 001FD588 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FE50C 001FD58C E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FE510 001FD590 40004230 */  andi       $v0, $v0, 0x40
    /* FE514 001FD594 4C024010 */  beqz       $v0, .L001FDEC8
    /* FE518 001FD598 1400023C */   lui       $v0, %hi(D_0013D48C)
    /* FE51C 001FD59C FFFF0424 */  addiu      $a0, $zero, -0x1
    /* FE520 001FD5A0 23020010 */  b          .L001FDE30
    /* FE524 001FD5A4 8CD440AC */   sw        $zero, %lo(D_0013D48C)($v0)
    /* FE528 001FD5A8 1400023C */  lui        $v0, %hi(D_0013CBE4)
    /* FE52C 001FD5AC E4CB428C */  lw         $v0, %lo(D_0013CBE4)($v0)
    /* FE530 001FD5B0 10004330 */  andi       $v1, $v0, 0x10
    /* FE534 001FD5B4 10006010 */  beqz       $v1, .L001FD5F8
    /* FE538 001FD5B8 1400103C */   lui       $s0, %hi(D_0013F450)
    /* FE53C 001FD5BC 50F41026 */  addiu      $s0, $s0, %lo(D_0013F450)
    /* FE540 001FD5C0 8020028E */  lw         $v0, 0x2080($s0)
    /* FE544 001FD5C4 34004394 */  lhu        $v1, 0x34($v0)
    /* FE548 001FD5C8 310040A0 */  sb         $zero, 0x31($v0)
    /* FE54C 001FD5CC 01006334 */  ori        $v1, $v1, 0x1
    /* FE550 001FD5D0 940040AC */  sw         $zero, 0x94($v0)
    /* FE554 001FD5D4 DAA5070C */  jal        func_001E9768
    /* FE558 001FD5D8 340043A4 */   sh        $v1, 0x34($v0)
    /* FE55C 001FD5DC 101D0526 */  addiu      $a1, $s0, 0x1D10
    /* FE560 001FD5E0 001D0426 */  addiu      $a0, $s0, 0x1D00
    /* FE564 001FD5E4 2D300000 */  daddu      $a2, $zero, $zero
    /* FE568 001FD5E8 F0A5070C */  jal        func_001E97C0
    /* FE56C 001FD5EC 01000724 */   addiu     $a3, $zero, 0x1
    /* FE570 001FD5F0 35020010 */  b          .L001FDEC8
    /* FE574 001FD5F4 E88980AF */   sw        $zero, -0x7618($gp)
.align 2
  .L001FD5F8:
    /* FE578 001FD5F8 5C000010 */  b          .L001FD76C
    /* FE57C 001FD5FC 40004230 */   andi      $v0, $v0, 0x40
    /* FE580 001FD600 00343026 */  addiu      $s0, $s1, 0x3400
    /* FE584 001FD604 01001224 */  addiu      $s2, $zero, 0x1
    /* FE588 001FD608 1C00038E */  lw         $v1, 0x1C($s0)
    /* FE58C 001FD60C 12007210 */  beq        $v1, $s2, .L001FD658
    /* FE590 001FD610 02006228 */   slti      $v0, $v1, 0x2
    /* FE594 001FD614 05004010 */  beqz       $v0, .L001FD62C
    /* FE598 001FD618 02000224 */   addiu     $v0, $zero, 0x2
    /* FE59C 001FD61C 09006010 */  beqz       $v1, .L001FD644
    /* FE5A0 001FD620 00342226 */   addiu     $v0, $s1, 0x3400
    /* FE5A4 001FD624 26020010 */  b          .L001FDEC0
    /* FE5A8 001FD628 1400438C */   lw        $v1, 0x14($v0)
.align 2
  .L001FD62C:
    /* FE5AC 001FD62C 1C006210 */  beq        $v1, $v0, .L001FD6A0
    /* FE5B0 001FD630 03000224 */   addiu     $v0, $zero, 0x3
    /* FE5B4 001FD634 37006210 */  beq        $v1, $v0, .L001FD714
    /* FE5B8 001FD638 00342226 */   addiu     $v0, $s1, 0x3400
    /* FE5BC 001FD63C 20020010 */  b          .L001FDEC0
    /* FE5C0 001FD640 1400438C */   lw        $v1, 0x14($v0)
.align 2
  .L001FD644:
    /* FE5C4 001FD644 0400028E */  lw         $v0, 0x4($s0)
    /* FE5C8 001FD648 1F024050 */  beql       $v0, $zero, .L001FDEC8
    /* FE5CC 001FD64C 1C0012AE */   sw        $s2, 0x1C($s0)
    /* FE5D0 001FD650 1F020010 */  b          .L001FDED0
    /* FE5D4 001FD654 E889828F */   lw        $v0, -0x7618($gp)
.align 2
  .L001FD658:
    /* FE5D8 001FD658 1400023C */  lui        $v0, %hi(D_0013CBE4)
    /* FE5DC 001FD65C E4CB428C */  lw         $v0, %lo(D_0013CBE4)($v0)
    /* FE5E0 001FD660 10004330 */  andi       $v1, $v0, 0x10
    /* FE5E4 001FD664 3F016054 */  bnel       $v1, $zero, .L001FDB64
    /* FE5E8 001FD668 1400028E */   lw        $v0, 0x14($s0)
    /* FE5EC 001FD66C 40004230 */  andi       $v0, $v0, 0x40
    /* FE5F0 001FD670 17024010 */  beqz       $v0, .L001FDED0
    /* FE5F4 001FD674 E889828F */   lw        $v0, -0x7618($gp)
    /* FE5F8 001FD678 82D3070C */  jal        func_001F4E08
    /* FE5FC 001FD67C 04000424 */   addiu     $a0, $zero, 0x4
    /* FE600 001FD680 02000224 */  addiu      $v0, $zero, 0x2
    /* FE604 001FD684 1600013C */  lui        $at, %hi(D_0016044C)
    /* FE608 001FD688 4C0420A0 */  sb         $zero, %lo(D_0016044C)($at)
    /* FE60C 001FD68C 1C0002AE */  sw         $v0, 0x1C($s0)
    /* FE610 001FD690 30E6070C */  jal        func_001F98C0
    /* FE614 001FD694 58020424 */   addiu     $a0, $zero, 0x258
    /* FE618 001FD698 0B020010 */  b          .L001FDEC8
    /* FE61C 001FD69C 200002AE */   sw        $v0, 0x20($s0)
.align 2
  .L001FD6A0:
    /* FE620 001FD6A0 2000028E */  lw         $v0, 0x20($s0)
    /* FE624 001FD6A4 03004010 */  beqz       $v0, .L001FD6B4
    /* FE628 001FD6A8 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* FE62C 001FD6AC 06004014 */  bnez       $v0, .L001FD6C8
    /* FE630 001FD6B0 200002AE */   sw        $v0, 0x20($s0)
.align 2
  .L001FD6B4:
    /* FE634 001FD6B4 03000224 */  addiu      $v0, $zero, 0x3
    /* FE638 001FD6B8 1600013C */  lui        $at, %hi(D_0016044C)
    /* FE63C 001FD6BC 4C0432A0 */  sb         $s2, %lo(D_0016044C)($at)
    /* FE640 001FD6C0 01020010 */  b          .L001FDEC8
    /* FE644 001FD6C4 1C0002AE */   sw        $v0, 0x1C($s0)
.align 2
  .L001FD6C8:
    /* FE648 001FD6C8 1400023C */  lui        $v0, %hi(D_0013CBE4)
    /* FE64C 001FD6CC E4CB428C */  lw         $v0, %lo(D_0013CBE4)($v0)
    /* FE650 001FD6D0 10004330 */  andi       $v1, $v0, 0x10
    /* FE654 001FD6D4 08006010 */  beqz       $v1, .L001FD6F8
    /* FE658 001FD6D8 40004230 */   andi      $v0, $v0, 0x40
    /* FE65C 001FD6DC 82D3070C */  jal        func_001F4E08
    /* FE660 001FD6E0 04000424 */   addiu     $a0, $zero, 0x4
    /* FE664 001FD6E4 1400028E */  lw         $v0, 0x14($s0)
    /* FE668 001FD6E8 1600013C */  lui        $at, %hi(D_0016044C)
    /* FE66C 001FD6EC 4C0432A0 */  sb         $s2, %lo(D_0016044C)($at)
    /* FE670 001FD6F0 F5010010 */  b          .L001FDEC8
    /* FE674 001FD6F4 E88982AF */   sw        $v0, -0x7618($gp)
.align 2
  .L001FD6F8:
    /* FE678 001FD6F8 F5014010 */  beqz       $v0, .L001FDED0
    /* FE67C 001FD6FC E889828F */   lw        $v0, -0x7618($gp)
    /* FE680 001FD700 1400028E */  lw         $v0, 0x14($s0)
    /* FE684 001FD704 1600013C */  lui        $at, %hi(D_0016044C)
    /* FE688 001FD708 4C0420A0 */  sb         $zero, %lo(D_0016044C)($at)
    /* FE68C 001FD70C EE010010 */  b          .L001FDEC8
    /* FE690 001FD710 E88982AF */   sw        $v0, -0x7618($gp)
.align 2
  .L001FD714:
    /* FE694 001FD714 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FE698 001FD718 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FE69C 001FD71C 40004230 */  andi       $v0, $v0, 0x40
    /* FE6A0 001FD720 EB014010 */  beqz       $v0, .L001FDED0
    /* FE6A4 001FD724 E889828F */   lw        $v0, -0x7618($gp)
    /* FE6A8 001FD728 0E010010 */  b          .L001FDB64
    /* FE6AC 001FD72C 1400028E */   lw        $v0, 0x14($s0)
    /* FE6B0 001FD730 1400023C */  lui        $v0, %hi(D_0013CBE4)
    /* FE6B4 001FD734 02000324 */  addiu      $v1, $zero, 0x2
    /* FE6B8 001FD738 E4CB448C */  lw         $a0, %lo(D_0013CBE4)($v0)
    /* FE6BC 001FD73C 10008230 */  andi       $v0, $a0, 0x10
    /* FE6C0 001FD740 09004010 */  beqz       $v0, .L001FD768
    /* FE6C4 001FD744 288A83AF */   sw        $v1, -0x75D8($gp)
    /* FE6C8 001FD748 1600013C */  lui        $at, %hi(D_0015F6E8)
    /* FE6CC 001FD74C E8F620AC */  sw         $zero, %lo(D_0015F6E8)($at)
    /* FE6D0 001FD750 1400033C */  lui        $v1, %hi(D_0013F450)
    /* FE6D4 001FD754 50F46324 */  addiu      $v1, $v1, %lo(D_0013F450)
    /* FE6D8 001FD758 0F166290 */  lbu        $v0, 0x160F($v1)
    /* FE6DC 001FD75C 01004234 */  ori        $v0, $v0, 0x1
    /* FE6E0 001FD760 D9010010 */  b          .L001FDEC8
    /* FE6E4 001FD764 0F1662A0 */   sb        $v0, 0x160F($v1)
.align 2
  .L001FD768:
    /* FE6E8 001FD768 40008230 */  andi       $v0, $a0, 0x40
.align 2
  .L001FD76C:
    /* FE6EC 001FD76C D6014054 */  bnel       $v0, $zero, .L001FDEC8
    /* FE6F0 001FD770 E88980AF */   sw        $zero, -0x7618($gp)
    /* FE6F4 001FD774 D6010010 */  b          .L001FDED0
    /* FE6F8 001FD778 E889828F */   lw        $v0, -0x7618($gp)
    /* FE6FC 001FD77C 1400023C */  lui        $v0, %hi(D_0013CBE4)
    /* FE700 001FD780 02000424 */  addiu      $a0, $zero, 0x2
    /* FE704 001FD784 E4CB438C */  lw         $v1, %lo(D_0013CBE4)($v0)
    /* FE708 001FD788 40006330 */  andi       $v1, $v1, 0x40
    /* FE70C 001FD78C CE016010 */  beqz       $v1, .L001FDEC8
    /* FE710 001FD790 288A84AF */   sw        $a0, -0x75D8($gp)
    /* FE714 001FD794 CC010010 */  b          .L001FDEC8
    /* FE718 001FD798 E88980AF */   sw        $zero, -0x7618($gp)
    /* FE71C 001FD79C 00342426 */  addiu      $a0, $s1, 0x3400
    /* FE720 001FD7A0 01000524 */  addiu      $a1, $zero, 0x1
    /* FE724 001FD7A4 1C00838C */  lw         $v1, 0x1C($a0)
    /* FE728 001FD7A8 19006510 */  beq        $v1, $a1, .L001FD810
    /* FE72C 001FD7AC 02006228 */   slti      $v0, $v1, 0x2
    /* FE730 001FD7B0 05004010 */  beqz       $v0, .L001FD7C8
    /* FE734 001FD7B4 04006228 */   slti      $v0, $v1, 0x4
    /* FE738 001FD7B8 07006010 */  beqz       $v1, .L001FD7D8
    /* FE73C 001FD7BC E889828F */   lw        $v0, -0x7618($gp)
    /* FE740 001FD7C0 C4010010 */  b          .L001FDED4
    /* FE744 001FD7C4 FDFF4224 */   addiu     $v0, $v0, -0x3
.align 2
  .L001FD7C8:
    /* FE748 001FD7C8 BF014010 */  beqz       $v0, .L001FDEC8
    /* FE74C 001FD7CC 00342326 */   addiu     $v1, $s1, 0x3400
    /* FE750 001FD7D0 1B000010 */  b          .L001FD840
    /* FE754 001FD7D4 2400628C */   lw        $v0, 0x24($v1)
.align 2
  .L001FD7D8:
    /* FE758 001FD7D8 2000838C */  lw         $v1, 0x20($a0)
    /* FE75C 001FD7DC 08006228 */  slti       $v0, $v1, 0x8
    /* FE760 001FD7E0 03004010 */  beqz       $v0, .L001FD7F0
    /* FE764 001FD7E4 01006224 */   addiu     $v0, $v1, 0x1
    /* FE768 001FD7E8 B7010010 */  b          .L001FDEC8
    /* FE76C 001FD7EC 200082AC */   sw        $v0, 0x20($a0)
.align 2
  .L001FD7F0:
    /* FE770 001FD7F0 2400838C */  lw         $v1, 0x24($a0)
    /* FE774 001FD7F4 08006228 */  slti       $v0, $v1, 0x8
    /* FE778 001FD7F8 03004010 */  beqz       $v0, .L001FD808
    /* FE77C 001FD7FC 01006224 */   addiu     $v0, $v1, 0x1
    /* FE780 001FD800 B1010010 */  b          .L001FDEC8
    /* FE784 001FD804 240082AC */   sw        $v0, 0x24($a0)
.align 2
  .L001FD808:
    /* FE788 001FD808 AF010010 */  b          .L001FDEC8
    /* FE78C 001FD80C 1C0085AC */   sw        $a1, 0x1C($a0)
.align 2
  .L001FD810:
    /* FE790 001FD810 1400023C */  lui        $v0, %hi(D_0013CBE4)
    /* FE794 001FD814 E4CB428C */  lw         $v0, %lo(D_0013CBE4)($v0)
    /* FE798 001FD818 40004330 */  andi       $v1, $v0, 0x40
    /* FE79C 001FD81C 04006010 */  beqz       $v1, .L001FD830
    /* FE7A0 001FD820 20084230 */   andi      $v0, $v0, 0x820
    /* FE7A4 001FD824 02000224 */  addiu      $v0, $zero, 0x2
    /* FE7A8 001FD828 A7010010 */  b          .L001FDEC8
    /* FE7AC 001FD82C 1C0082AC */   sw        $v0, 0x1C($a0)
.align 2
  .L001FD830:
    /* FE7B0 001FD830 A5014010 */  beqz       $v0, .L001FDEC8
    /* FE7B4 001FD834 03000224 */   addiu     $v0, $zero, 0x3
    /* FE7B8 001FD838 A3010010 */  b          .L001FDEC8
    /* FE7BC 001FD83C 1C0082AC */   sw        $v0, 0x1C($a0)
.align 2
  .L001FD840:
    /* FE7C0 001FD840 03004010 */  beqz       $v0, .L001FD850
    /* FE7C4 001FD844 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* FE7C8 001FD848 9F010010 */  b          .L001FDEC8
    /* FE7CC 001FD84C 240062AC */   sw        $v0, 0x24($v1)
.align 2
  .L001FD850:
    /* FE7D0 001FD850 2000628C */  lw         $v0, 0x20($v1)
    /* FE7D4 001FD854 03004010 */  beqz       $v0, .L001FD864
    /* FE7D8 001FD858 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* FE7DC 001FD85C 9A010010 */  b          .L001FDEC8
    /* FE7E0 001FD860 200062AC */   sw        $v0, 0x20($v1)
.align 2
  .L001FD864:
    /* FE7E4 001FD864 1C00648C */  lw         $a0, 0x1C($v1)
    /* FE7E8 001FD868 02000224 */  addiu      $v0, $zero, 0x2
    /* FE7EC 001FD86C 2C008214 */  bne        $a0, $v0, .L001FD920
    /* FE7F0 001FD870 1400023C */   lui       $v0, %hi(D_0013F450)
    /* FE7F4 001FD874 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* FE7F8 001FD878 50F45024 */  addiu      $s0, $v0, %lo(D_0013F450)
    /* FE7FC 001FD87C 8008048E */  lw         $a0, 0x880($s0)
    /* FE800 001FD880 04009110 */  beq        $a0, $s1, .L001FD894
    /* FE804 001FD884 00000000 */   nop
    /* FE808 001FD888 68FF070C */  jal        func_001FFDA0
    /* FE80C 001FD88C 2D280000 */   daddu     $a1, $zero, $zero
    /* FE810 001FD890 800811AE */  sw         $s1, 0x880($s0)
.align 2
  .L001FD894:
    /* FE814 001FD894 E8FF070C */  jal        func_001FFFA0
    /* FE818 001FD898 00000000 */   nop
    /* FE81C 001FD89C 30E6070C */  jal        func_001F98C0
    /* FE820 001FD8A0 68100424 */   addiu     $a0, $zero, 0x1068
    /* FE824 001FD8A4 9C01038E */  lw         $v1, 0x19C($s0)
    /* FE828 001FD8A8 2A104300 */  slt        $v0, $v0, $v1
    /* FE82C 001FD8AC 10004010 */  beqz       $v0, .L001FD8F0
    /* FE830 001FD8B0 8481838F */   lw        $v1, -0x7E7C($gp)
    /* FE834 001FD8B4 05000224 */  addiu      $v0, $zero, 0x5
    /* FE838 001FD8B8 06006214 */  bne        $v1, $v0, .L001FD8D4
    /* FE83C 001FD8BC 10000224 */   addiu     $v0, $zero, 0x10
    /* FE840 001FD8C0 1600023C */  lui        $v0, %hi(D_0015EF38)
    /* FE844 001FD8C4 38EF428C */  lw         $v0, %lo(D_0015EF38)($v0)
    /* FE848 001FD8C8 01004224 */  addiu      $v0, $v0, 0x1
    /* FE84C 001FD8CC 08000010 */  b          .L001FD8F0
    /* FE850 001FD8D0 388282AF */   sw        $v0, -0x7DC8($gp)
.align 2
  .L001FD8D4:
    /* FE854 001FD8D4 07006214 */  bne        $v1, $v0, .L001FD8F4
    /* FE858 001FD8D8 2D200000 */   daddu     $a0, $zero, $zero
    /* FE85C 001FD8DC 1600023C */  lui        $v0, %hi(D_0015EF3C)
    /* FE860 001FD8E0 3CEF428C */  lw         $v0, %lo(D_0015EF3C)($v0)
    /* FE864 001FD8E4 01004224 */  addiu      $v0, $v0, 0x1
    /* FE868 001FD8E8 1600013C */  lui        $at, %hi(D_0015EF3C)
    /* FE86C 001FD8EC 3CEF22AC */  sw         $v0, %lo(D_0015EF3C)($at)
.align 2
  .L001FD8F0:
    /* FE870 001FD8F0 2D200000 */  daddu      $a0, $zero, $zero
.align 2
  .L001FD8F4:
    /* FE874 001FD8F4 08000524 */  addiu      $a1, $zero, 0x8
    /* FE878 001FD8F8 4C5B080C */  jal        func_00216D30
    /* FE87C 001FD8FC E88980AF */   sw        $zero, -0x7618($gp)
    /* FE880 001FD900 1400043C */  lui        $a0, %hi(D_00141150)
    /* FE884 001FD904 2D300000 */  daddu      $a2, $zero, $zero
    /* FE888 001FD908 50118424 */  addiu      $a0, $a0, %lo(D_00141150)
    /* FE88C 001FD90C 01000724 */  addiu      $a3, $zero, 0x1
    /* FE890 001FD910 F0A5070C */  jal        func_001E97C0
    /* FE894 001FD914 10008524 */   addiu     $a1, $a0, 0x10
    /* FE898 001FD918 6D010010 */  b          .L001FDED0
    /* FE89C 001FD91C E889828F */   lw        $v0, -0x7618($gp)
.align 2
  .L001FD920:
    /* FE8A0 001FD920 1600013C */  lui        $at, %hi(D_0015F6E8)
    /* FE8A4 001FD924 E8F620AC */  sw         $zero, %lo(D_0015F6E8)($at)
    /* FE8A8 001FD928 50F44324 */  addiu      $v1, $v0, %lo(D_0013F450)
    /* FE8AC 001FD92C 9A086284 */  lh         $v0, 0x89A($v1)
    /* FE8B0 001FD930 03004228 */  slti       $v0, $v0, 0x3
    /* FE8B4 001FD934 64014014 */  bnez       $v0, .L001FDEC8
    /* FE8B8 001FD938 9A086494 */   lhu       $a0, 0x89A($v1)
    /* FE8BC 001FD93C FFFF8224 */  addiu      $v0, $a0, -0x1
    /* FE8C0 001FD940 9008648C */  lw         $a0, 0x890($v1)
    /* FE8C4 001FD944 9A0862A4 */  sh         $v0, 0x89A($v1)
    /* FE8C8 001FD948 03000324 */  addiu      $v1, $zero, 0x3
    /* FE8CC 001FD94C 5E010010 */  b          .L001FDEC8
    /* FE8D0 001FD950 BC0083A0 */   sb        $v1, 0xBC($a0)
    /* FE8D4 001FD954 1400023C */  lui        $v0, %hi(D_0013D390)
    /* FE8D8 001FD958 01000424 */  addiu      $a0, $zero, 0x1
    /* FE8DC 001FD95C 2D904000 */  daddu      $s2, $v0, $zero
    /* FE8E0 001FD960 90D34224 */  addiu      $v0, $v0, %lo(D_0013D390)
    /* FE8E4 001FD964 B000438C */  lw         $v1, 0xB0($v0)
    /* FE8E8 001FD968 57016410 */  beq        $v1, $a0, .L001FDEC8
    /* FE8EC 001FD96C 00343026 */   addiu     $s0, $s1, 0x3400
    /* FE8F0 001FD970 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FE8F4 001FD974 2000028E */  lw         $v0, 0x20($s0)
    /* FE8F8 001FD978 01004224 */  addiu      $v0, $v0, 0x1
    /* FE8FC 001FD97C 30E6070C */  jal        func_001F98C0
    /* FE900 001FD980 200002AE */   sw        $v0, 0x20($s0)
    /* FE904 001FD984 2000038E */  lw         $v1, 0x20($s0)
    /* FE908 001FD988 2A104300 */  slt        $v0, $v0, $v1
    /* FE90C 001FD98C 07004010 */  beqz       $v0, .L001FD9AC
    /* FE910 001FD990 B082828F */   lw        $v0, -0x7D50($gp)
    /* FE914 001FD994 2400028E */  lw         $v0, 0x24($s0)
    /* FE918 001FD998 02004010 */  beqz       $v0, .L001FD9A4
    /* FE91C 001FD99C FFFF4224 */   addiu     $v0, $v0, -0x1
    /* FE920 001FD9A0 240002AE */  sw         $v0, 0x24($s0)
.align 2
  .L001FD9A4:
    /* FE924 001FD9A4 1600023C */  lui        $v0, %hi(D_0015EFB0)
    /* FE928 001FD9A8 B0EF428C */  lw         $v0, %lo(D_0015EFB0)($v0)
.align 2
  .L001FD9AC:
    /* FE92C 001FD9AC FFFF4424 */  addiu      $a0, $v0, -0x1
    /* FE930 001FD9B0 1800832C */  sltiu      $v1, $a0, 0x18
    /* FE934 001FD9B4 44016010 */  beqz       $v1, .L001FDEC8
    /* FE938 001FD9B8 1E00023C */   lui       $v0, %hi(jtbl_001E7CF0)
    /* FE93C 001FD9BC 80180400 */  sll        $v1, $a0, 2
    /* FE940 001FD9C0 F07C4224 */  addiu      $v0, $v0, %lo(jtbl_001E7CF0)
    /* FE944 001FD9C4 21186200 */  addu       $v1, $v1, $v0
    /* FE948 001FD9C8 0000648C */  lw         $a0, 0x0($v1)
    /* FE94C 001FD9CC 08008000 */  jr         $a0
    /* FE950 001FD9D0 00000000 */   nop
    /* FE954 001FD9D4 00343026 */  addiu      $s0, $s1, 0x3400
    /* FE958 001FD9D8 2400028E */  lw         $v0, 0x24($s0)
    /* FE95C 001FD9DC 3C014014 */  bnez       $v0, .L001FDED0
    /* FE960 001FD9E0 E889828F */   lw        $v0, -0x7618($gp)
    /* FE964 001FD9E4 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FE968 001FD9E8 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FE96C 001FD9EC 40004230 */  andi       $v0, $v0, 0x40
    /* FE970 001FD9F0 35014010 */  beqz       $v0, .L001FDEC8
    /* FE974 001FD9F4 B482828F */   lw        $v0, -0x7D4C($gp)
    /* FE978 001FD9F8 FEFF0324 */  addiu      $v1, $zero, -0x2
    /* FE97C 001FD9FC 1400048E */  lw         $a0, 0x14($s0)
    /* FE980 001FDA00 24104300 */  and        $v0, $v0, $v1
    /* FE984 001FDA04 1600013C */  lui        $at, %hi(D_0015EFB4)
    /* FE988 001FDA08 B4EF22AC */  sw         $v0, %lo(D_0015EFB4)($at)
    /* FE98C 001FDA0C 2E010010 */  b          .L001FDEC8
    /* FE990 001FDA10 E88984AF */   sw        $a0, -0x7618($gp)
    /* FE994 001FDA14 00342226 */  addiu      $v0, $s1, 0x3400
    /* FE998 001FDA18 2400438C */  lw         $v1, 0x24($v0)
    /* FE99C 001FDA1C 09006014 */  bnez       $v1, .L001FDA44
    /* FE9A0 001FDA20 00343026 */   addiu     $s0, $s1, 0x3400
    /* FE9A4 001FDA24 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FE9A8 001FDA28 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FE9AC 001FDA2C 20004230 */  andi       $v0, $v0, 0x20
    /* FE9B0 001FDA30 04004010 */  beqz       $v0, .L001FDA44
    /* FE9B4 001FDA34 B482828F */   lw        $v0, -0x7D4C($gp)
    /* FE9B8 001FDA38 08004234 */  ori        $v0, $v0, 0x8
    /* FE9BC 001FDA3C 22010010 */  b          .L001FDEC8
    /* FE9C0 001FDA40 B48282AF */   sw        $v0, -0x7D4C($gp)
.align 2
  .L001FDA44:
    /* FE9C4 001FDA44 0400028E */  lw         $v0, 0x4($s0)
    /* FE9C8 001FDA48 21014014 */  bnez       $v0, .L001FDED0
    /* FE9CC 001FDA4C E889828F */   lw        $v0, -0x7618($gp)
    /* FE9D0 001FDA50 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FE9D4 001FDA54 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FE9D8 001FDA58 10004230 */  andi       $v0, $v0, 0x10
    /* FE9DC 001FDA5C 1A014010 */  beqz       $v0, .L001FDEC8
    /* FE9E0 001FDA60 B482828F */   lw        $v0, -0x7D4C($gp)
    /* FE9E4 001FDA64 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* FE9E8 001FDA68 FBFF0424 */  addiu      $a0, $zero, -0x5
    /* FE9EC 001FDA6C 1600053C */  lui        $a1, %hi(D_0015F6C8)
    /* FE9F0 001FDA70 C8F6A58C */  lw         $a1, %lo(D_0015F6C8)($a1)
    /* FE9F4 001FDA74 20004234 */  ori        $v0, $v0, 0x20
    /* FE9F8 001FDA78 24104300 */  and        $v0, $v0, $v1
    /* FE9FC 001FDA7C 24104400 */  and        $v0, $v0, $a0
    /* FEA00 001FDA80 1101A014 */  bnez       $a1, .L001FDEC8
    /* FEA04 001FDA84 B48282AF */   sw        $v0, -0x7D4C($gp)
    /* FEA08 001FDA88 36000010 */  b          .L001FDB64
    /* FEA0C 001FDA8C 1400028E */   lw        $v0, 0x14($s0)
    /* FEA10 001FDA90 00342226 */  addiu      $v0, $s1, 0x3400
    /* FEA14 001FDA94 2400438C */  lw         $v1, 0x24($v0)
    /* FEA18 001FDA98 09006014 */  bnez       $v1, .L001FDAC0
    /* FEA1C 001FDA9C 00343026 */   addiu     $s0, $s1, 0x3400
    /* FEA20 001FDAA0 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FEA24 001FDAA4 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FEA28 001FDAA8 20004230 */  andi       $v0, $v0, 0x20
    /* FEA2C 001FDAAC 04004010 */  beqz       $v0, .L001FDAC0
    /* FEA30 001FDAB0 B482828F */   lw        $v0, -0x7D4C($gp)
    /* FEA34 001FDAB4 10004234 */  ori        $v0, $v0, 0x10
    /* FEA38 001FDAB8 03010010 */  b          .L001FDEC8
    /* FEA3C 001FDABC B48282AF */   sw        $v0, -0x7D4C($gp)
.align 2
  .L001FDAC0:
    /* FEA40 001FDAC0 0400028E */  lw         $v0, 0x4($s0)
    /* FEA44 001FDAC4 02014014 */  bnez       $v0, .L001FDED0
    /* FEA48 001FDAC8 E889828F */   lw        $v0, -0x7618($gp)
    /* FEA4C 001FDACC 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FEA50 001FDAD0 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FEA54 001FDAD4 10004230 */  andi       $v0, $v0, 0x10
    /* FEA58 001FDAD8 FB004010 */  beqz       $v0, .L001FDEC8
    /* FEA5C 001FDADC B482828F */   lw        $v0, -0x7D4C($gp)
    /* FEA60 001FDAE0 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* FEA64 001FDAE4 FBFF0424 */  addiu      $a0, $zero, -0x5
    /* FEA68 001FDAE8 1600053C */  lui        $a1, %hi(D_0015F6C8)
    /* FEA6C 001FDAEC C8F6A58C */  lw         $a1, %lo(D_0015F6C8)($a1)
    /* FEA70 001FDAF0 20004234 */  ori        $v0, $v0, 0x20
    /* FEA74 001FDAF4 24104300 */  and        $v0, $v0, $v1
    /* FEA78 001FDAF8 24104400 */  and        $v0, $v0, $a0
    /* FEA7C 001FDAFC F200A014 */  bnez       $a1, .L001FDEC8
    /* FEA80 001FDB00 B48282AF */   sw        $v0, -0x7D4C($gp)
    /* FEA84 001FDB04 17000010 */  b          .L001FDB64
    /* FEA88 001FDB08 1400028E */   lw        $v0, 0x14($s0)
    /* FEA8C 001FDB0C 00343026 */  addiu      $s0, $s1, 0x3400
    /* FEA90 001FDB10 2400028E */  lw         $v0, 0x24($s0)
    /* FEA94 001FDB14 EE004014 */  bnez       $v0, .L001FDED0
    /* FEA98 001FDB18 E889828F */   lw        $v0, -0x7618($gp)
    /* FEA9C 001FDB1C 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FEAA0 001FDB20 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FEAA4 001FDB24 40004230 */  andi       $v0, $v0, 0x40
    /* FEAA8 001FDB28 E7004010 */  beqz       $v0, .L001FDEC8
    /* FEAAC 001FDB2C B482828F */   lw        $v0, -0x7D4C($gp)
    /* FEAB0 001FDB30 BFFF0324 */  addiu      $v1, $zero, -0x41
    /* FEAB4 001FDB34 FFFB0424 */  addiu      $a0, $zero, -0x401
    /* FEAB8 001FDB38 FDFF0624 */  addiu      $a2, $zero, -0x3
    /* FEABC 001FDB3C 24104300 */  and        $v0, $v0, $v1
    /* FEAC0 001FDB40 FBFF0524 */  addiu      $a1, $zero, -0x5
    /* FEAC4 001FDB44 24104400 */  and        $v0, $v0, $a0
    /* FEAC8 001FDB48 1600033C */  lui        $v1, %hi(D_0015F6C8)
    /* FEACC 001FDB4C C8F6638C */  lw         $v1, %lo(D_0015F6C8)($v1)
    /* FEAD0 001FDB50 24104600 */  and        $v0, $v0, $a2
    /* FEAD4 001FDB54 24104500 */  and        $v0, $v0, $a1
    /* FEAD8 001FDB58 04006010 */  beqz       $v1, .L001FDB6C
    /* FEADC 001FDB5C B48282AF */   sw        $v0, -0x7D4C($gp)
    /* FEAE0 001FDB60 1400028E */  lw         $v0, 0x14($s0)
.align 2
  .L001FDB64:
    /* FEAE4 001FDB64 D8000010 */  b          .L001FDEC8
    /* FEAE8 001FDB68 E88982AF */   sw        $v0, -0x7618($gp)
.align 2
  .L001FDB6C:
    /* FEAEC 001FDB6C 90D34226 */  addiu      $v0, $s2, -0x2C70
    /* FEAF0 001FDB70 01000424 */  addiu      $a0, $zero, 0x1
    /* FEAF4 001FDB74 FC0040AC */  sw         $zero, 0xFC($v0)
    /* FEAF8 001FDB78 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* FEAFC 001FDB7C 1600013C */  lui        $at, %hi(D_0015F6E4)
    /* FEB00 001FDB80 E4F623AC */  sw         $v1, %lo(D_0015F6E4)($at)
    /* FEB04 001FDB84 1600013C */  lui        $at, %hi(D_0015F6FC)
    /* FEB08 001FDB88 FCF624AC */  sw         $a0, %lo(D_0015F6FC)($at)
    /* FEB0C 001FDB8C CE000010 */  b          .L001FDEC8
    /* FEB10 001FDB90 908984AF */   sw        $a0, -0x7670($gp)
    /* FEB14 001FDB94 00343026 */  addiu      $s0, $s1, 0x3400
    /* FEB18 001FDB98 2400028E */  lw         $v0, 0x24($s0)
    /* FEB1C 001FDB9C CC004014 */  bnez       $v0, .L001FDED0
    /* FEB20 001FDBA0 E889828F */   lw        $v0, -0x7618($gp)
    /* FEB24 001FDBA4 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FEB28 001FDBA8 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FEB2C 001FDBAC 40004230 */  andi       $v0, $v0, 0x40
    /* FEB30 001FDBB0 C5004010 */  beqz       $v0, .L001FDEC8
    /* FEB34 001FDBB4 B482828F */   lw        $v0, -0x7D4C($gp)
    /* FEB38 001FDBB8 BFFF0324 */  addiu      $v1, $zero, -0x41
    /* FEB3C 001FDBBC FFFB0424 */  addiu      $a0, $zero, -0x401
    /* FEB40 001FDBC0 FDFF0624 */  addiu      $a2, $zero, -0x3
    /* FEB44 001FDBC4 24104300 */  and        $v0, $v0, $v1
    /* FEB48 001FDBC8 1400058E */  lw         $a1, 0x14($s0)
    /* FEB4C 001FDBCC 24104400 */  and        $v0, $v0, $a0
    /* FEB50 001FDBD0 FBFF0324 */  addiu      $v1, $zero, -0x5
    /* FEB54 001FDBD4 24104600 */  and        $v0, $v0, $a2
    /* FEB58 001FDBD8 1600013C */  lui        $at, %hi(D_0015F6E8)
    /* FEB5C 001FDBDC E8F625AC */  sw         $a1, %lo(D_0015F6E8)($at)
    /* FEB60 001FDBE0 24104300 */  and        $v0, $v0, $v1
    /* FEB64 001FDBE4 B8000010 */  b          .L001FDEC8
    /* FEB68 001FDBE8 B48282AF */   sw        $v0, -0x7D4C($gp)
    /* FEB6C 001FDBEC 00342226 */  addiu      $v0, $s1, 0x3400
    /* FEB70 001FDBF0 1D00053C */  lui        $a1, %hi(D_001D5F78)
    /* FEB74 001FDBF4 1800438C */  lw         $v1, 0x18($v0)
    /* FEB78 001FDBF8 1400448C */  lw         $a0, 0x14($v0)
    /* FEB7C 001FDBFC 785FA3AC */  sw         $v1, %lo(D_001D5F78)($a1)
    /* FEB80 001FDC00 B1000010 */  b          .L001FDEC8
    /* FEB84 001FDC04 E88984AF */   sw        $a0, -0x7618($gp)
    /* FEB88 001FDC08 1D00023C */  lui        $v0, %hi(D_001D60C0)
    /* FEB8C 001FDC0C C060438C */  lw         $v1, %lo(D_001D60C0)($v0)
    /* FEB90 001FDC10 AD006010 */  beqz       $v1, .L001FDEC8
    /* FEB94 001FDC14 00343026 */   addiu     $s0, $s1, 0x3400
    /* FEB98 001FDC18 1E000010 */  b          .L001FDC94
    /* FEB9C 001FDC1C 2400028E */   lw        $v0, 0x24($s0)
    /* FEBA0 001FDC20 1600023C */  lui        $v0, %hi(D_0015F6C8)
    /* FEBA4 001FDC24 C8F6428C */  lw         $v0, %lo(D_0015F6C8)($v0)
    /* FEBA8 001FDC28 18004010 */  beqz       $v0, .L001FDC8C
    /* FEBAC 001FDC2C 1D00023C */   lui       $v0, %hi(D_001D60C0)
    /* FEBB0 001FDC30 C060438C */  lw         $v1, %lo(D_001D60C0)($v0)
    /* FEBB4 001FDC34 16006014 */  bnez       $v1, .L001FDC90
    /* FEBB8 001FDC38 00343026 */   addiu     $s0, $s1, 0x3400
    /* FEBBC 001FDC3C 2400028E */  lw         $v0, 0x24($s0)
    /* FEBC0 001FDC40 A3004014 */  bnez       $v0, .L001FDED0
    /* FEBC4 001FDC44 E889828F */   lw        $v0, -0x7618($gp)
    /* FEBC8 001FDC48 1400023C */  lui        $v0, %hi(D_0013CBE4)
    /* FEBCC 001FDC4C E4CB428C */  lw         $v0, %lo(D_0013CBE4)($v0)
    /* FEBD0 001FDC50 40004330 */  andi       $v1, $v0, 0x40
    /* FEBD4 001FDC54 14006010 */  beqz       $v1, .L001FDCA8
    /* FEBD8 001FDC58 10004230 */   andi      $v0, $v0, 0x10
    /* FEBDC 001FDC5C 7027080C */  jal        func_00209DC0
    /* FEBE0 001FDC60 00000000 */   nop
    /* FEBE4 001FDC64 1600023C */  lui        $v0, %hi(D_0015EFB4)
    /* FEBE8 001FDC68 B4EF428C */  lw         $v0, %lo(D_0015EFB4)($v0)
    /* FEBEC 001FDC6C FDFF0324 */  addiu      $v1, $zero, -0x3
    /* FEBF0 001FDC70 FBFF0524 */  addiu      $a1, $zero, -0x5
    /* FEBF4 001FDC74 2D200000 */  daddu      $a0, $zero, $zero
    /* FEBF8 001FDC78 24104300 */  and        $v0, $v0, $v1
    /* FEBFC 001FDC7C 24104500 */  and        $v0, $v0, $a1
    /* FEC00 001FDC80 20004234 */  ori        $v0, $v0, 0x20
    /* FEC04 001FDC84 6D000010 */  b          .L001FDE3C
    /* FEC08 001FDC88 B48282AF */   sw        $v0, -0x7D4C($gp)
.align 2
  .L001FDC8C:
    /* FEC0C 001FDC8C 00343026 */  addiu      $s0, $s1, 0x3400
.align 2
  .L001FDC90:
    /* FEC10 001FDC90 2400028E */  lw         $v0, 0x24($s0)
.align 2
  .L001FDC94:
    /* FEC14 001FDC94 8E004014 */  bnez       $v0, .L001FDED0
    /* FEC18 001FDC98 E889828F */   lw        $v0, -0x7618($gp)
    /* FEC1C 001FDC9C 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FEC20 001FDCA0 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* FEC24 001FDCA4 10004230 */  andi       $v0, $v0, 0x10
.align 2
  .L001FDCA8:
    /* FEC28 001FDCA8 87004010 */  beqz       $v0, .L001FDEC8
    /* FEC2C 001FDCAC B482828F */   lw        $v0, -0x7D4C($gp)
    /* FEC30 001FDCB0 FDFF0424 */  addiu      $a0, $zero, -0x3
    /* FEC34 001FDCB4 1400058E */  lw         $a1, 0x14($s0)
    /* FEC38 001FDCB8 FBFF0324 */  addiu      $v1, $zero, -0x5
    /* FEC3C 001FDCBC 24104400 */  and        $v0, $v0, $a0
    /* FEC40 001FDCC0 24104300 */  and        $v0, $v0, $v1
    /* FEC44 001FDCC4 1600013C */  lui        $at, %hi(D_0015F6E8)
    /* FEC48 001FDCC8 E8F625AC */  sw         $a1, %lo(D_0015F6E8)($at)
    /* FEC4C 001FDCCC 7E000010 */  b          .L001FDEC8
    /* FEC50 001FDCD0 B48282AF */   sw        $v0, -0x7D4C($gp)
    /* FEC54 001FDCD4 00343026 */  addiu      $s0, $s1, 0x3400
    /* FEC58 001FDCD8 2400028E */  lw         $v0, 0x24($s0)
    /* FEC5C 001FDCDC 7C004014 */  bnez       $v0, .L001FDED0
    /* FEC60 001FDCE0 E889828F */   lw        $v0, -0x7618($gp)
    /* FEC64 001FDCE4 1400023C */  lui        $v0, %hi(D_0013CBE4)
    /* FEC68 001FDCE8 E4CB428C */  lw         $v0, %lo(D_0013CBE4)($v0)
    /* FEC6C 001FDCEC 40004330 */  andi       $v1, $v0, 0x40
    /* FEC70 001FDCF0 0D006010 */  beqz       $v1, .L001FDD28
    /* FEC74 001FDCF4 10004230 */   andi      $v0, $v0, 0x10
    /* FEC78 001FDCF8 7027080C */  jal        func_00209DC0
    /* FEC7C 001FDCFC 00000000 */   nop
    /* FEC80 001FDD00 1600023C */  lui        $v0, %hi(D_0015EFB4)
    /* FEC84 001FDD04 B4EF428C */  lw         $v0, %lo(D_0015EFB4)($v0)
    /* FEC88 001FDD08 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* FEC8C 001FDD0C FBFF0524 */  addiu      $a1, $zero, -0x5
    /* FEC90 001FDD10 2D200000 */  daddu      $a0, $zero, $zero
    /* FEC94 001FDD14 24104300 */  and        $v0, $v0, $v1
    /* FEC98 001FDD18 24104500 */  and        $v0, $v0, $a1
    /* FEC9C 001FDD1C 20004234 */  ori        $v0, $v0, 0x20
    /* FECA0 001FDD20 46000010 */  b          .L001FDE3C
    /* FECA4 001FDD24 B48282AF */   sw        $v0, -0x7D4C($gp)
.align 2
  .L001FDD28:
    /* FECA8 001FDD28 67004010 */  beqz       $v0, .L001FDEC8
    /* FECAC 001FDD2C B482828F */   lw        $v0, -0x7D4C($gp)
    /* FECB0 001FDD30 1400038E */  lw         $v1, 0x14($s0)
    /* FECB4 001FDD34 20004234 */  ori        $v0, $v0, 0x20
    /* FECB8 001FDD38 61000010 */  b          .L001FDEC0
    /* FECBC 001FDD3C B48282AF */   sw        $v0, -0x7D4C($gp)
    /* FECC0 001FDD40 1600023C */  lui        $v0, %hi(D_0015F6C8)
    /* FECC4 001FDD44 C8F6428C */  lw         $v0, %lo(D_0015F6C8)($v0)
    /* FECC8 001FDD48 20004010 */  beqz       $v0, .L001FDDCC
    /* FECCC 001FDD4C 1D00023C */   lui       $v0, %hi(D_001D60C0)
    /* FECD0 001FDD50 C060438C */  lw         $v1, %lo(D_001D60C0)($v0)
    /* FECD4 001FDD54 3F006014 */  bnez       $v1, .L001FDE54
    /* FECD8 001FDD58 00343026 */   addiu     $s0, $s1, 0x3400
    /* FECDC 001FDD5C 2400028E */  lw         $v0, 0x24($s0)
    /* FECE0 001FDD60 5B004014 */  bnez       $v0, .L001FDED0
    /* FECE4 001FDD64 E889828F */   lw        $v0, -0x7618($gp)
    /* FECE8 001FDD68 1400033C */  lui        $v1, %hi(D_0013CA40)
    /* FECEC 001FDD6C 40CA7124 */  addiu      $s1, $v1, %lo(D_0013CA40)
    /* FECF0 001FDD70 A401228E */  lw         $v0, 0x1A4($s1)
    /* FECF4 001FDD74 40004230 */  andi       $v0, $v0, 0x40
    /* FECF8 001FDD78 10004050 */  beql       $v0, $zero, .L001FDDBC
    /* FECFC 001FDD7C 2400028E */   lw        $v0, 0x24($s0)
    /* FED00 001FDD80 7027080C */  jal        func_00209DC0
    /* FED04 001FDD84 00000000 */   nop
    /* FED08 001FDD88 1600023C */  lui        $v0, %hi(D_0015EFB4)
    /* FED0C 001FDD8C B4EF428C */  lw         $v0, %lo(D_0015EFB4)($v0)
    /* FED10 001FDD90 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* FED14 001FDD94 FBFF0524 */  addiu      $a1, $zero, -0x5
    /* FED18 001FDD98 2D200000 */  daddu      $a0, $zero, $zero
    /* FED1C 001FDD9C 24104300 */  and        $v0, $v0, $v1
    /* FED20 001FDDA0 24104500 */  and        $v0, $v0, $a1
    /* FED24 001FDDA4 28BD080C */  jal        func_0022F4A0
    /* FED28 001FDDA8 B48282AF */   sw        $v0, -0x7D4C($gp)
    /* FED2C 001FDDAC 1400033C */  lui        $v1, %hi(D_0013E15A)
    /* FED30 001FDDB0 01000224 */  addiu      $v0, $zero, 0x1
    /* FED34 001FDDB4 5AE162A4 */  sh         $v0, %lo(D_0013E15A)($v1)
    /* FED38 001FDDB8 2400028E */  lw         $v0, 0x24($s0)
.align 2
  .L001FDDBC:
    /* FED3C 001FDDBC 44004014 */  bnez       $v0, .L001FDED0
    /* FED40 001FDDC0 E889828F */   lw        $v0, -0x7618($gp)
    /* FED44 001FDDC4 28000010 */  b          .L001FDE68
    /* FED48 001FDDC8 A401228E */   lw        $v0, 0x1A4($s1)
.align 2
  .L001FDDCC:
    /* FED4C 001FDDCC 1600023C */  lui        $v0, %hi(D_0015F6CC)
    /* FED50 001FDDD0 CCF6428C */  lw         $v0, %lo(D_0015F6CC)($v0)
    /* FED54 001FDDD4 1F004010 */  beqz       $v0, .L001FDE54
    /* FED58 001FDDD8 00343026 */   addiu     $s0, $s1, 0x3400
    /* FED5C 001FDDDC 2400028E */  lw         $v0, 0x24($s0)
    /* FED60 001FDDE0 3B004014 */  bnez       $v0, .L001FDED0
    /* FED64 001FDDE4 E889828F */   lw        $v0, -0x7618($gp)
    /* FED68 001FDDE8 1400023C */  lui        $v0, %hi(D_0013CBE4)
    /* FED6C 001FDDEC E4CB468C */  lw         $a2, %lo(D_0013CBE4)($v0)
    /* FED70 001FDDF0 1000C330 */  andi       $v1, $a2, 0x10
    /* FED74 001FDDF4 0B006010 */  beqz       $v1, .L001FDE24
    /* FED78 001FDDF8 B482828F */   lw        $v0, -0x7D4C($gp)
    /* FED7C 001FDDFC FDFF0324 */  addiu      $v1, $zero, -0x3
    /* FED80 001FDE00 1400048E */  lw         $a0, 0x14($s0)
    /* FED84 001FDE04 FBFF0524 */  addiu      $a1, $zero, -0x5
    /* FED88 001FDE08 20004234 */  ori        $v0, $v0, 0x20
    /* FED8C 001FDE0C 24104300 */  and        $v0, $v0, $v1
    /* FED90 001FDE10 1600013C */  lui        $at, %hi(D_0015F6E8)
    /* FED94 001FDE14 E8F624AC */  sw         $a0, %lo(D_0015F6E8)($at)
    /* FED98 001FDE18 24104500 */  and        $v0, $v0, $a1
    /* FED9C 001FDE1C 1600013C */  lui        $at, %hi(D_0015EFB4)
    /* FEDA0 001FDE20 B4EF22AC */  sw         $v0, %lo(D_0015EFB4)($at)
.align 2
  .L001FDE24:
    /* FEDA4 001FDE24 2000C230 */  andi       $v0, $a2, 0x20
    /* FEDA8 001FDE28 27004010 */  beqz       $v0, .L001FDEC8
    /* FEDAC 001FDE2C FFFF0424 */   addiu     $a0, $zero, -0x1
.align 2
  .L001FDE30:
    /* FEDB0 001FDE30 6C9F080C */  jal        func_00227DB0
    /* FEDB4 001FDE34 00000000 */   nop
    /* FEDB8 001FDE38 2D200000 */  daddu      $a0, $zero, $zero
.align 2
  .L001FDE3C:
    /* FEDBC 001FDE3C 28BD080C */  jal        func_0022F4A0
    /* FEDC0 001FDE40 00000000 */   nop
    /* FEDC4 001FDE44 1400033C */  lui        $v1, %hi(D_0013E15A)
    /* FEDC8 001FDE48 01000224 */  addiu      $v0, $zero, 0x1
    /* FEDCC 001FDE4C 1E000010 */  b          .L001FDEC8
    /* FEDD0 001FDE50 5AE162A4 */   sh        $v0, %lo(D_0013E15A)($v1)
.align 2
  .L001FDE54:
    /* FEDD4 001FDE54 2400028E */  lw         $v0, 0x24($s0)
    /* FEDD8 001FDE58 1D004014 */  bnez       $v0, .L001FDED0
    /* FEDDC 001FDE5C E889828F */   lw        $v0, -0x7618($gp)
    /* FEDE0 001FDE60 1400033C */  lui        $v1, %hi(D_0013CBE4)
    /* FEDE4 001FDE64 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
.align 2
  .L001FDE68:
    /* FEDE8 001FDE68 10004230 */  andi       $v0, $v0, 0x10
    /* FEDEC 001FDE6C 16004010 */  beqz       $v0, .L001FDEC8
    /* FEDF0 001FDE70 B482828F */   lw        $v0, -0x7D4C($gp)
    /* FEDF4 001FDE74 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* FEDF8 001FDE78 1400048E */  lw         $a0, 0x14($s0)
    /* FEDFC 001FDE7C FBFF0524 */  addiu      $a1, $zero, -0x5
    /* FEE00 001FDE80 20004234 */  ori        $v0, $v0, 0x20
    /* FEE04 001FDE84 24104300 */  and        $v0, $v0, $v1
    /* FEE08 001FDE88 1600013C */  lui        $at, %hi(D_0015F6E8)
    /* FEE0C 001FDE8C E8F624AC */  sw         $a0, %lo(D_0015F6E8)($at)
    /* FEE10 001FDE90 24104500 */  and        $v0, $v0, $a1
    /* FEE14 001FDE94 0C000010 */  b          .L001FDEC8
    /* FEE18 001FDE98 B48282AF */   sw        $v0, -0x7D4C($gp)
    /* FEE1C 001FDE9C 1600023C */  lui        $v0, %hi(D_0015F6C8)
    /* FEE20 001FDEA0 C8F6428C */  lw         $v0, %lo(D_0015F6C8)($v0)
    /* FEE24 001FDEA4 08004010 */  beqz       $v0, .L001FDEC8
    /* FEE28 001FDEA8 B482828F */   lw        $v0, -0x7D4C($gp)
    /* FEE2C 001FDEAC 06004230 */  andi       $v0, $v0, 0x6
    /* FEE30 001FDEB0 07004014 */  bnez       $v0, .L001FDED0
    /* FEE34 001FDEB4 E889828F */   lw        $v0, -0x7618($gp)
    /* FEE38 001FDEB8 00342226 */  addiu      $v0, $s1, 0x3400
    /* FEE3C 001FDEBC 1400438C */  lw         $v1, 0x14($v0)
.align 2
  .L001FDEC0:
    /* FEE40 001FDEC0 1600013C */  lui        $at, %hi(D_0015F6E8)
    /* FEE44 001FDEC4 E8F623AC */  sw         $v1, %lo(D_0015F6E8)($at)
.align 2
  .L001FDEC8:
    /* FEE48 001FDEC8 1600023C */  lui        $v0, %hi(D_0015F6E8)
    /* FEE4C 001FDECC E8F6428C */  lw         $v0, %lo(D_0015F6E8)($v0)
.align 2
  .L001FDED0:
    /* FEE50 001FDED0 FDFF4224 */  addiu      $v0, $v0, -0x3
.align 2
  .L001FDED4:
    /* FEE54 001FDED4 0200422C */  sltiu      $v0, $v0, 0x2
    /* FEE58 001FDED8 08004014 */  bnez       $v0, .L001FDEFC
    /* FEE5C 001FDEDC 3000BF7B */   lq        $ra, 0x30($sp)
    /* FEE60 001FDEE0 56B9040C */  jal        func_0012E558
    /* FEE64 001FDEE4 1D000424 */   addiu     $a0, $zero, 0x1D
    /* FEE68 001FDEE8 CA5B080C */  jal        func_00216F28
    /* FEE6C 001FDEEC 00000000 */   nop
    /* FEE70 001FDEF0 70B7040C */  jal        func_0012DDC0
    /* FEE74 001FDEF4 00000000 */   nop
    /* FEE78 001FDEF8 3000BF7B */  lq         $ra, 0x30($sp)
.align 2
  .L001FDEFC:
    /* FEE7C 001FDEFC 2000B27B */  lq         $s2, 0x20($sp)
    /* FEE80 001FDF00 1000B17B */  lq         $s1, 0x10($sp)
    /* FEE84 001FDF04 0000B07B */  lq         $s0, 0x0($sp)
    /* FEE88 001FDF08 0800E003 */  jr         $ra
    /* FEE8C 001FDF0C 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_001FD3E8
