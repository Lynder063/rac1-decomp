.align 3
nonmatching func_0023E5E0, 0x78

glabel func_0023E5E0
    /* 13F560 0023E5E0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 13F564 0023E5E4 0000B07F */  sq         $s0, 0x0($sp)
    /* 13F568 0023E5E8 1000BF7F */  sq         $ra, 0x10($sp)
    /* 13F56C 0023E5EC 5876040C */  jal        func_0011D960
    /* 13F570 0023E5F0 2D808000 */   daddu     $s0, $a0, $zero
    /* 13F574 0023E5F4 0800038E */  lw         $v1, 0x8($s0)
    /* 13F578 0023E5F8 0100023C */  lui        $v0, (0x138C0 >> 16)
    /* 13F57C 0023E5FC C0384234 */  ori        $v0, $v0, (0x138C0 & 0xFFFF)
    /* 13F580 0023E600 0400058E */  lw         $a1, 0x4($s0)
    /* 13F584 0023E604 18186200 */  mult       $v1, $v1, $v0
    /* 13F588 0023E608 02000424 */  addiu      $a0, $zero, 0x2
    /* 13F58C 0023E60C 21186500 */  addu       $v1, $v1, $a1
    /* 13F590 0023E610 000064AC */  sw         $a0, 0x0($v1)
    /* 13F594 0023E614 0C00028E */  lw         $v0, 0xC($s0)
    /* 13F598 0023E618 1000048E */  lw         $a0, 0x10($s0)
    /* 13F59C 0023E61C 01004224 */  addiu      $v0, $v0, 0x1
    /* 13F5A0 0023E620 0C0002AE */  sw         $v0, 0xC($s0)
    /* 13F5A4 0023E624 01008050 */  beql       $a0, $zero, .L0023E62C
    /* 13F5A8 0023E628 CD010000 */   break     0, 7
.align 2
  .L0023E62C:
    /* 13F5AC 0023E62C 0800028E */  lw         $v0, 0x8($s0)
    /* 13F5B0 0023E630 01004224 */  addiu      $v0, $v0, 0x1
    /* 13F5B4 0023E634 1A004400 */  div        $zero, $v0, $a0
    /* 13F5B8 0023E638 10180000 */  mfhi       $v1
    /* 13F5BC 0023E63C 080003AE */  sw         $v1, 0x8($s0)
    /* 13F5C0 0023E640 6A76040C */  jal        func_0011D9A8
    /* 13F5C4 0023E644 00000000 */   nop
    /* 13F5C8 0023E648 1000BF7B */  lq         $ra, 0x10($sp)
    /* 13F5CC 0023E64C 0000B07B */  lq         $s0, 0x0($sp)
    /* 13F5D0 0023E650 0800E003 */  jr         $ra
    /* 13F5D4 0023E654 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0023E5E0
