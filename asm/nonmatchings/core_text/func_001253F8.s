.align 3
/* Handwritten function */
nonmatching func_001253F8, 0xA4

glabel func_001253F8
    /* 26378 001253F8 00008044 */  mtc1       $zero, $f0
    /* 2637C 001253FC 34600046 */  c.lt.s     $f12, $f0
    /* 26380 00125400 C93F013C */  lui        $at, (0x3FC90FDB >> 16)
    /* 26384 00125404 DB0F2134 */  ori        $at, $at, (0x3FC90FDB & 0xFFFF)
    /* 26388 00125408 00008144 */  mtc1       $at, $f0
    /* 2638C 0012540C 04000045 */  bc1f       .L00125420
    /* 26390 00125410 00000000 */   nop
    /* 26394 00125414 00030C46 */  add.s      $f12, $f0, $f12
    /* 26398 00125418 0A950408 */  j          func_00125428
    /* 2639C 0012541C 01000724 */   addiu     $a3, $zero, 0x1
.align 2
  .L00125420:
    /* 263A0 00125420 01030C46 */  sub.s      $f12, $f0, $f12
    /* 263A4 00125424 2D380000 */  daddu      $a3, $zero, $zero
.align 2
  alabel func_00125428
    /* 263A8 00125428 00600844 */  mfc1       $t0, $f12
    /* 263AC 0012542C 0030A848 */  qmtc2.ni   $t0, $vf6
    /* 263B0 00125430 2D30E003 */  daddu      $a2, $ra, $zero
    /* 263B4 00125434 E094040C */  jal        func_00125380
    /* 263B8 00125438 00000000 */   nop
    /* 263BC 0012543C 2DF8C000 */  daddu      $ra, $a2, $zero
    /* 263C0 00125440 3C2BE64B */  vmove.xyzw $vf6, $vf5
    /* 263C4 00125444 3C2BE74B */  vmove.xyzw $vf7, $vf5
    /* 263C8 00125448 3C03E94B */  vmove.xyzw $vf9, $vf0
    /* 263CC 0012544C 6C4AC94B */  vsub.xyz   $vf9, $vf9, $vf9
    /* 263D0 00125450 3D4BE84B */  .word      0x4BE84B3D    # vmr32.xyzw $vf8, $vf9
    /* 263D4 00125454 2C21644A */  vsub.zw    $vf4, $vf4, $vf4
    /* 263D8 00125458 8029844A */  vaddx.y    $vf6, $vf5, $vf4x
    /* 263DC 0012545C 8129044B */  vaddy.x    $vf6, $vf5, $vf4y
    /* 263E0 00125460 C429044B */  vsubx.x    $vf7, $vf5, $vf4x
    /* 263E4 00125464 C129844A */  vaddy.y    $vf7, $vf5, $vf4y
    /* 263E8 00125468 04000724 */  addiu      $a3, $zero, 0x4
.align 2
  .L0012546C:
    /* 263EC 0012546C 0000A4D8 */  lqc2       $vf4, 0x0($a1)
    /* 263F0 00125470 BC31E44B */  .word      0x4BE431BC    # vmulax.xyzw ACC, $vf6, $vf4x
    /* 263F4 00125474 BD38E44B */  .word      0x4BE438BD    # vmadday.xyzw ACC, $vf7, $vf4y
    /* 263F8 00125478 BE40E44B */  .word      0x4BE440BE    # vmaddaz.xyzw ACC, $vf8, $vf4z
    /* 263FC 0012547C 4B49E44B */  vmaddw.xyzw $vf5, $vf9, $vf4w
    /* 26400 00125480 000085F8 */  sqc2       $vf5, 0x0($a0)
    /* 26404 00125484 FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 26408 00125488 1000A520 */  addi       $a1, $a1, 0x10 /* handwritten instruction */
    /* 2640C 0012548C F7FF0714 */  bne        $zero, $a3, .L0012546C
    /* 26410 00125490 10008420 */   addi      $a0, $a0, 0x10 /* handwritten instruction */
    /* 26414 00125494 0800E003 */  jr         $ra
    /* 26418 00125498 00000000 */   nop
endlabel func_001253F8
    /* 2641C 0012549C 00000000 */  nop
