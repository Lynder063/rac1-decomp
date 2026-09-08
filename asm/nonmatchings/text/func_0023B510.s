.align 3
nonmatching func_0023B510, 0xBC

glabel func_0023B510
    /* 13C490 0023B510 5001BD27 */  addiu      $sp, $sp, 0x150
    /* 13C494 0023B514 00000000 */  nop
    /* 13C498 0023B518 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 13C49C 0023B51C 00000000 */  nop
    /* 13C4A0 0023B520 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 13C4A4 0023B524 00000000 */  nop
    /* 13C4A8 0023B528 9000BD27 */  addiu      $sp, $sp, 0x90
    /* 13C4AC 0023B52C 00000000 */  nop
    /* 13C4B0 0023B530 00000000 */  nop
    /* 13C4B4 0023B534 00000000 */  nop
    /* 13C4B8 0023B538 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 13C4BC 0023B53C 00000000 */  nop
    /* 13C4C0 0023B540 A000BD27 */  addiu      $sp, $sp, 0xA0
    /* 13C4C4 0023B544 00000000 */  nop
    /* 13C4C8 0023B548 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 13C4CC 0023B54C 00000000 */  nop
    /* 13C4D0 0023B550 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 13C4D4 0023B554 00000000 */  nop
    /* 13C4D8 0023B558 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 13C4DC 0023B55C 00000000 */  nop
    /* 13C4E0 0023B560 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 13C4E4 0023B564 00000000 */  nop
    /* 13C4E8 0023B568 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 13C4EC 0023B56C 00000000 */  nop
    /* 13C4F0 0023B570 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 13C4F4 0023B574 00000000 */  nop
.align 2
  alabel D_0023B578
    /* 13C4F8 0023B578 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13C4FC 0023B57C 0000BF7F */  sq         $ra, 0x0($sp)
    /* 13C500 0023B580 70008290 */  lbu        $v0, 0x70($a0)
    /* 13C504 0023B584 02004230 */  andi       $v0, $v0, 0x2
    /* 13C508 0023B588 0B004010 */  beqz       $v0, .L0023B5B8
    /* 13C50C 0023B58C 00000000 */   nop
    /* 13C510 0023B590 580080C4 */  lwc1       $f0, 0x58($a0)
    /* 13C514 0023B594 00088044 */  mtc1       $zero, $f1
    /* 13C518 0023B598 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 13C51C 0023B59C 00108144 */  mtc1       $at, $f2
    /* 13C520 0023B5A0 34080046 */  c.lt.s     $f1, $f0
    /* 13C524 0023B5A4 00000000 */  nop
    /* 13C528 0023B5A8 01000345 */  bc1tl      .L0023B5B0
    /* 13C52C 0023B5AC 86080046 */   mov.s     $f2, $f1
.align 2
  .L0023B5B0:
    /* 13C530 0023B5B0 540082E4 */  swc1       $f2, 0x54($a0)
    /* 13C534 0023B5B4 580081E4 */  swc1       $f1, 0x58($a0)
.align 2
  .L0023B5B8:
    /* 13C538 0023B5B8 74ED080C */  jal        func_0023B5D0
    /* 13C53C 0023B5BC 00000000 */   nop
    /* 13C540 0023B5C0 0000BF7B */  lq         $ra, 0x0($sp)
    /* 13C544 0023B5C4 0800E003 */  jr         $ra
    /* 13C548 0023B5C8 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0023B510
    /* 13C54C 0023B5CC 00000000 */  nop
