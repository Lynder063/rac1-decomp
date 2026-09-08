.align 3
nonmatching func_0023B5D0, 0x9C

glabel func_0023B5D0
    /* 13C550 0023B5D0 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 13C554 0023B5D4 1600023C */  lui        $v0, %hi(D_00160FD0)
    /* 13C558 0023B5D8 5000BF7F */  sq         $ra, 0x50($sp)
    /* 13C55C 0023B5DC 2000A627 */  addiu      $a2, $sp, 0x20
    /* 13C560 0023B5E0 4000B17F */  sq         $s1, 0x40($sp)
    /* 13C564 0023B5E4 04000524 */  addiu      $a1, $zero, 0x4
    /* 13C568 0023B5E8 3000B07F */  sq         $s0, 0x30($sp)
    /* 13C56C 0023B5EC 7800908C */  lw         $s0, 0x78($a0)
    /* 13C570 0023B5F0 D00F4A24 */  addiu      $t2, $v0, %lo(D_00160FD0)
    /* 13C574 0023B5F4 07004369 */  ldl        $v1, 0x7($t2)
    /* 13C578 0023B5F8 0000436D */  ldr        $v1, 0x0($t2)
    /* 13C57C 0023B5FC 0F004869 */  ldl        $t0, 0xF($t2)
    /* 13C580 0023B600 0800486D */  ldr        $t0, 0x8($t2)
    /* 13C584 0023B604 2700A3B3 */  sdl        $v1, 0x27($sp)
    /* 13C588 0023B608 2000A3B7 */  sdr        $v1, 0x20($sp)
    /* 13C58C 0023B60C 2F00A8B3 */  sdl        $t0, 0x2F($sp)
    /* 13C590 0023B610 2800A8B7 */  sdr        $t0, 0x28($sp)
    /* 13C594 0023B614 E636080C */  jal        func_0020DB98
    /* 13C598 0023B618 2D380002 */   daddu     $a3, $s0, $zero
    /* 13C59C 0023B61C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 13C5A0 0023B620 10000526 */  addiu      $a1, $s0, 0x10
    /* 13C5A4 0023B624 FCE6070C */  jal        func_001F9BF0
    /* 13C5A8 0023B628 2D300002 */   daddu     $a2, $s0, $zero
    /* 13C5AC 0023B62C 1000B127 */  addiu      $s1, $sp, 0x10
    /* 13C5B0 0023B630 20000526 */  addiu      $a1, $s0, 0x20
    /* 13C5B4 0023B634 2D300002 */  daddu      $a2, $s0, $zero
    /* 13C5B8 0023B638 FCE6070C */  jal        func_001F9BF0
    /* 13C5BC 0023B63C 2D202002 */   daddu     $a0, $s1, $zero
    /* 13C5C0 0023B640 2EE7070C */  jal        func_001F9CB8
    /* 13C5C4 0023B644 2D20A003 */   daddu     $a0, $sp, $zero
    /* 13C5C8 0023B648 2D202002 */  daddu      $a0, $s1, $zero
    /* 13C5CC 0023B64C 2EE7070C */  jal        func_001F9CB8
    /* 13C5D0 0023B650 400000E6 */   swc1      $f0, 0x40($s0)
    /* 13C5D4 0023B654 440000E6 */  swc1       $f0, 0x44($s0)
    /* 13C5D8 0023B658 5000BF7B */  lq         $ra, 0x50($sp)
    /* 13C5DC 0023B65C 4000B17B */  lq         $s1, 0x40($sp)
    /* 13C5E0 0023B660 3000B07B */  lq         $s0, 0x30($sp)
    /* 13C5E4 0023B664 0800E003 */  jr         $ra
    /* 13C5E8 0023B668 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0023B5D0
    /* 13C5EC 0023B66C 00000000 */  nop
