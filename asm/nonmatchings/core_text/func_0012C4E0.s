.align 3
nonmatching func_0012C4E0, 0x124

glabel func_0012C4E0
    /* 2D460 0012C4E0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2D464 0012C4E4 20000524 */  addiu      $a1, $zero, 0x20
    /* 2D468 0012C4E8 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2D46C 0012C4EC 2D808000 */  daddu      $s0, $a0, $zero
    /* 2D470 0012C4F0 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2D474 0012C4F4 96A2040C */  jal        func_00128A58
    /* 2D478 0012C4F8 D40000AE */   sw        $zero, 0xD4($s0)
    /* 2D47C 0012C4FC 2D184000 */  daddu      $v1, $v0, $zero
    /* 2D480 0012C500 02120300 */  srl        $v0, $v1, 8
    /* 2D484 0012C504 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 2D488 0012C508 021D0300 */  srl        $v1, $v1, 20
    /* 2D48C 0012C50C 240103AE */  sw         $v1, 0x124($s0)
    /* 2D490 0012C510 F10A4428 */  slti       $a0, $v0, 0xAF1
    /* 2D494 0012C514 05008014 */  bnez       $a0, .L0012C52C
    /* 2D498 0012C518 280102AE */   sw        $v0, 0x128($s0)
    /* 2D49C 0012C51C 1500053C */  lui        $a1, %hi(D_00153BE8)
    /* 2D4A0 0012C520 2D200002 */  daddu      $a0, $s0, $zero
    /* 2D4A4 0012C524 1AB1040C */  jal        func_0012C468
    /* 2D4A8 0012C528 E83BA524 */   addiu     $a1, $a1, %lo(D_00153BE8)
.align 2
  .L0012C52C:
    /* 2D4AC 0012C52C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2D4B0 0012C530 96A2040C */  jal        func_00128A58
    /* 2D4B4 0012C534 1E000524 */   addiu     $a1, $zero, 0x1E
    /* 2D4B8 0012C538 2D184000 */  daddu      $v1, $v0, $zero
    /* 2D4BC 0012C53C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2D4C0 0012C540 42100300 */  srl        $v0, $v1, 1
    /* 2D4C4 0012C544 01000524 */  addiu      $a1, $zero, 0x1
    /* 2D4C8 0012C548 021B0300 */  srl        $v1, $v1, 12
    /* 2D4CC 0012C54C FF034230 */  andi       $v0, $v0, 0x3FF
    /* 2D4D0 0012C550 340103AE */  sw         $v1, 0x134($s0)
    /* 2D4D4 0012C554 96A2040C */  jal        func_00128A58
    /* 2D4D8 0012C558 380102AE */   sw        $v0, 0x138($s0)
    /* 2D4DC 0012C55C 0A004010 */  beqz       $v0, .L0012C588
    /* 2D4E0 0012C560 400802AE */   sw        $v0, 0x840($s0)
    /* 2D4E4 0012C564 64A1040C */  jal        func_00128590
    /* 2D4E8 0012C568 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D4EC 0012C56C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2D4F0 0012C570 58A1040C */  jal        func_00128560
    /* 2D4F4 0012C574 0050053C */   lui       $a1, (0x50000000 >> 16)
    /* 2D4F8 0012C578 64A1040C */  jal        func_00128590
    /* 2D4FC 0012C57C 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D500 0012C580 07000010 */  b          .L0012C5A0
    /* 2D504 0012C584 2D200002 */   daddu     $a0, $s0, $zero
.align 2
  .L0012C588:
    /* 2D508 0012C588 1300063C */  lui        $a2, %hi(D_001330C0)
    /* 2D50C 0012C58C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2D510 0012C590 C030C624 */  addiu      $a2, $a2, %lo(D_001330C0)
    /* 2D514 0012C594 64B2040C */  jal        func_0012C990
    /* 2D518 0012C598 0050053C */   lui       $a1, (0x50000000 >> 16)
    /* 2D51C 0012C59C 2D200002 */  daddu      $a0, $s0, $zero
.align 2
  .L0012C5A0:
    /* 2D520 0012C5A0 96A2040C */  jal        func_00128A58
    /* 2D524 0012C5A4 01000524 */   addiu     $a1, $zero, 0x1
    /* 2D528 0012C5A8 0A004010 */  beqz       $v0, .L0012C5D4
    /* 2D52C 0012C5AC 440802AE */   sw        $v0, 0x844($s0)
    /* 2D530 0012C5B0 64A1040C */  jal        func_00128590
    /* 2D534 0012C5B4 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D538 0012C5B8 2D200002 */  daddu      $a0, $s0, $zero
    /* 2D53C 0012C5BC 58A1040C */  jal        func_00128560
    /* 2D540 0012C5C0 0058053C */   lui       $a1, (0x58000000 >> 16)
    /* 2D544 0012C5C4 64A1040C */  jal        func_00128590
    /* 2D548 0012C5C8 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D54C 0012C5CC 06000010 */  b          .L0012C5E8
    /* 2D550 0012C5D0 00000000 */   nop
.align 2
  .L0012C5D4:
    /* 2D554 0012C5D4 1300063C */  lui        $a2, %hi(D_00133100)
    /* 2D558 0012C5D8 2D200002 */  daddu      $a0, $s0, $zero
    /* 2D55C 0012C5DC 0031C624 */  addiu      $a2, $a2, %lo(D_00133100)
    /* 2D560 0012C5E0 64B2040C */  jal        func_0012C990
    /* 2D564 0012C5E4 0058053C */   lui       $a1, (0x58000000 >> 16)
.align 2
  .L0012C5E8:
    /* 2D568 0012C5E8 9AA3040C */  jal        func_00128E68
    /* 2D56C 0012C5EC 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D570 0012C5F0 5808048E */  lw         $a0, 0x858($s0)
    /* 2D574 0012C5F4 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2D578 0012C5F8 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2D57C 0012C5FC 82B10408 */  j          func_0012C608
    /* 2D580 0012C600 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012C4E0
    /* 2D584 0012C604 00000000 */  nop
