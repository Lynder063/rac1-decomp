.align 3
/* Handwritten function */
nonmatching func_00125548, 0xA8

glabel func_00125548
    /* 264C8 00125548 00008044 */  mtc1       $zero, $f0
    /* 264CC 0012554C 34600046 */  c.lt.s     $f12, $f0
    /* 264D0 00125550 C93F013C */  lui        $at, (0x3FC90FDB >> 16)
    /* 264D4 00125554 DB0F2134 */  ori        $at, $at, (0x3FC90FDB & 0xFFFF)
    /* 264D8 00125558 00008144 */  mtc1       $at, $f0
    /* 264DC 0012555C 04000045 */  bc1f       .L00125570
    /* 264E0 00125560 00000000 */   nop
    /* 264E4 00125564 00030C46 */  add.s      $f12, $f0, $f12
    /* 264E8 00125568 5E950408 */  j          func_00125578
    /* 264EC 0012556C 01000724 */   addiu     $a3, $zero, 0x1
.align 2
  .L00125570:
    /* 264F0 00125570 01030C46 */  sub.s      $f12, $f0, $f12
    /* 264F4 00125574 2D380000 */  daddu      $a3, $zero, $zero
.align 2
  alabel func_00125578
    /* 264F8 00125578 00600844 */  mfc1       $t0, $f12
    /* 264FC 0012557C 0030A848 */  qmtc2.ni   $t0, $vf6
    /* 26500 00125580 2D30E003 */  daddu      $a2, $ra, $zero
    /* 26504 00125584 E094040C */  jal        func_00125380
    /* 26508 00125588 00000000 */   nop
    /* 2650C 0012558C 2DF8C000 */  daddu      $ra, $a2, $zero
    /* 26510 00125590 3C2BE64B */  vmove.xyzw $vf6, $vf5
    /* 26514 00125594 3C2BE74B */  vmove.xyzw $vf7, $vf5
    /* 26518 00125598 3C2BE84B */  vmove.xyzw $vf8, $vf5
    /* 2651C 0012559C 3C2BE94B */  vmove.xyzw $vf9, $vf5
    /* 26520 001255A0 C329804A */  vaddw.y    $vf7, $vf5, $vf0w
    /* 26524 001255A4 432A204A */  vaddw.w    $vf9, $vf5, $vf0w
    /* 26528 001255A8 2C21644A */  vsub.zw    $vf4, $vf4, $vf4
    /* 2652C 001255AC 8429444A */  vsubx.z    $vf6, $vf5, $vf4x
    /* 26530 001255B0 8129044B */  vaddy.x    $vf6, $vf5, $vf4y
    /* 26534 001255B4 002A044B */  vaddx.x    $vf8, $vf5, $vf4x
    /* 26538 001255B8 012A444A */  vaddy.z    $vf8, $vf5, $vf4y
    /* 2653C 001255BC 04000724 */  addiu      $a3, $zero, 0x4
.align 2
  .L001255C0:
    /* 26540 001255C0 0000A4D8 */  lqc2       $vf4, 0x0($a1)
    /* 26544 001255C4 BC31E44B */  .word      0x4BE431BC    # vmulax.xyzw ACC, $vf6, $vf4x
    /* 26548 001255C8 BD38E44B */  .word      0x4BE438BD    # vmadday.xyzw ACC, $vf7, $vf4y
    /* 2654C 001255CC BE40E44B */  .word      0x4BE440BE    # vmaddaz.xyzw ACC, $vf8, $vf4z
    /* 26550 001255D0 4B49E44B */  vmaddw.xyzw $vf5, $vf9, $vf4w
    /* 26554 001255D4 000085F8 */  sqc2       $vf5, 0x0($a0)
    /* 26558 001255D8 FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 2655C 001255DC 1000A520 */  addi       $a1, $a1, 0x10 /* handwritten instruction */
    /* 26560 001255E0 F7FF0714 */  bne        $zero, $a3, .L001255C0
    /* 26564 001255E4 10008420 */   addi      $a0, $a0, 0x10 /* handwritten instruction */
    /* 26568 001255E8 0800E003 */  jr         $ra
    /* 2656C 001255EC 00000000 */   nop
endlabel func_00125548
