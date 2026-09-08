.align 3
nonmatching func_0012E5B8, 0x90

glabel func_0012E5B8
    /* 2F538 0012E5B8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2F53C 0012E5BC 00000000 */  nop
    /* 2F540 0012E5C0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2F544 0012E5C4 00000000 */  nop
    /* 2F548 0012E5C8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2F54C 0012E5CC 00000000 */  nop
    /* 2F550 0012E5D0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2F554 0012E5D4 00000000 */  nop
    /* 2F558 0012E5D8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2F55C 0012E5DC 00000000 */  nop
    /* 2F560 0012E5E0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2F564 0012E5E4 00000000 */  nop
    /* 2F568 0012E5E8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2F56C 0012E5EC 00000000 */  nop
    /* 2F570 0012E5F0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2F574 0012E5F4 00000000 */  nop
    /* 2F578 0012E5F8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2F57C 0012E5FC 00000000 */  nop
.align 2
  alabel func_0012E600
    /* 2F580 0012E600 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2F584 0012E604 2D10E000 */  daddu      $v0, $a3, $zero
    /* 2F588 0012E608 0000A4AF */  sw         $a0, 0x0($sp)
    /* 2F58C 0012E60C 2D384001 */  daddu      $a3, $t2, $zero
    /* 2F590 0012E610 1000A8AF */  sw         $t0, 0x10($sp)
    /* 2F594 0012E614 21000424 */  addiu      $a0, $zero, 0x21
    /* 2F598 0012E618 0400A5AF */  sw         $a1, 0x4($sp)
    /* 2F59C 0012E61C 2D406001 */  daddu      $t0, $t3, $zero
    /* 2F5A0 0012E620 0800A6AF */  sw         $a2, 0x8($sp)
    /* 2F5A4 0012E624 18000524 */  addiu      $a1, $zero, 0x18
    /* 2F5A8 0012E628 2000BF7F */  sq         $ra, 0x20($sp)
    /* 2F5AC 0012E62C 2D30A003 */  daddu      $a2, $sp, $zero
    /* 2F5B0 0012E630 0C00A2AF */  sw         $v0, 0xC($sp)
    /* 2F5B4 0012E634 08BA040C */  jal        func_0012E820
    /* 2F5B8 0012E638 1400A9AF */   sw        $t1, 0x14($sp)
    /* 2F5BC 0012E63C 2000BF7B */  lq         $ra, 0x20($sp)
    /* 2F5C0 0012E640 0800E003 */  jr         $ra
    /* 2F5C4 0012E644 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012E5B8
