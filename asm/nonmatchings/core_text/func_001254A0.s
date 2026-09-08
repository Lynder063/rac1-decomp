.align 3
/* Handwritten function */
nonmatching func_001254A0, 0xA8

glabel func_001254A0
    /* 26420 001254A0 00008044 */  mtc1       $zero, $f0
    /* 26424 001254A4 34600046 */  c.lt.s     $f12, $f0
    /* 26428 001254A8 C93F013C */  lui        $at, (0x3FC90FDB >> 16)
    /* 2642C 001254AC DB0F2134 */  ori        $at, $at, (0x3FC90FDB & 0xFFFF)
    /* 26430 001254B0 00008144 */  mtc1       $at, $f0
    /* 26434 001254B4 04000045 */  bc1f       .L001254C8
    /* 26438 001254B8 00000000 */   nop
    /* 2643C 001254BC 00030C46 */  add.s      $f12, $f0, $f12
    /* 26440 001254C0 34950408 */  j          func_001254D0
    /* 26444 001254C4 01000724 */   addiu     $a3, $zero, 0x1
.align 2
  .L001254C8:
    /* 26448 001254C8 01030C46 */  sub.s      $f12, $f0, $f12
    /* 2644C 001254CC 2D380000 */  daddu      $a3, $zero, $zero
.align 2
  alabel func_001254D0
    /* 26450 001254D0 00600844 */  mfc1       $t0, $f12
    /* 26454 001254D4 0030A848 */  qmtc2.ni   $t0, $vf6
    /* 26458 001254D8 2D30E003 */  daddu      $a2, $ra, $zero
    /* 2645C 001254DC E094040C */  jal        func_00125380
    /* 26460 001254E0 00000000 */   nop
    /* 26464 001254E4 2DF8C000 */  daddu      $ra, $a2, $zero
    /* 26468 001254E8 3C2BE64B */  vmove.xyzw $vf6, $vf5
    /* 2646C 001254EC 3C2BE74B */  vmove.xyzw $vf7, $vf5
    /* 26470 001254F0 3C2BE84B */  vmove.xyzw $vf8, $vf5
    /* 26474 001254F4 3C2BE94B */  vmove.xyzw $vf9, $vf5
    /* 26478 001254F8 8329004B */  vaddw.x    $vf6, $vf5, $vf0w
    /* 2647C 001254FC 432A204A */  vaddw.w    $vf9, $vf5, $vf0w
    /* 26480 00125500 2C21644A */  vsub.zw    $vf4, $vf4, $vf4
    /* 26484 00125504 C029444A */  vaddx.z    $vf7, $vf5, $vf4x
    /* 26488 00125508 C129844A */  vaddy.y    $vf7, $vf5, $vf4y
    /* 2648C 0012550C 042A844A */  vsubx.y    $vf8, $vf5, $vf4x
    /* 26490 00125510 012A444A */  vaddy.z    $vf8, $vf5, $vf4y
    /* 26494 00125514 04000724 */  addiu      $a3, $zero, 0x4
.align 2
  .L00125518:
    /* 26498 00125518 0000A4D8 */  lqc2       $vf4, 0x0($a1)
    /* 2649C 0012551C BC31E44B */  .word      0x4BE431BC    # vmulax.xyzw ACC, $vf6, $vf4x
    /* 264A0 00125520 BD38E44B */  .word      0x4BE438BD    # vmadday.xyzw ACC, $vf7, $vf4y
    /* 264A4 00125524 BE40E44B */  .word      0x4BE440BE    # vmaddaz.xyzw ACC, $vf8, $vf4z
    /* 264A8 00125528 4B49E44B */  vmaddw.xyzw $vf5, $vf9, $vf4w
    /* 264AC 0012552C 000085F8 */  sqc2       $vf5, 0x0($a0)
    /* 264B0 00125530 FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 264B4 00125534 1000A520 */  addi       $a1, $a1, 0x10 /* handwritten instruction */
    /* 264B8 00125538 F7FF0714 */  bne        $zero, $a3, .L00125518
    /* 264BC 0012553C 10008420 */   addi      $a0, $a0, 0x10 /* handwritten instruction */
    /* 264C0 00125540 0800E003 */  jr         $ra
    /* 264C4 00125544 00000000 */   nop
endlabel func_001254A0
