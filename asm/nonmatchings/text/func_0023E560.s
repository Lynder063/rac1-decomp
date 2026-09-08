.align 3
nonmatching func_0023E560, 0x4C

glabel func_0023E560
    /* 13F4E0 0023E560 0C0080AC */  sw         $zero, 0xC($a0)
    /* 13F4E4 0023E564 000085AC */  sw         $a1, 0x0($a0)
    /* 13F4E8 0023E568 040086AC */  sw         $a2, 0x4($a0)
    /* 13F4EC 0023E56C 100087AC */  sw         $a3, 0x10($a0)
    /* 13F4F0 0023E570 080080AC */  sw         $zero, 0x8($a0)
    /* 13F4F4 0023E574 0B00E018 */  blez       $a3, .L0023E5A4
    /* 13F4F8 0023E578 0100033C */   lui       $v1, (0x138C0 >> 16)
    /* 13F4FC 0023E57C 2D280000 */  daddu      $a1, $zero, $zero
    /* 13F500 0023E580 C0386334 */  ori        $v1, $v1, (0x138C0 & 0xFFFF)
    /* 13F504 0023E584 00000000 */  nop
.align 2
  .L0023E588:
    /* 13F508 0023E588 0400828C */  lw         $v0, 0x4($a0)
    /* 13F50C 0023E58C FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 13F510 0023E590 2110A200 */  addu       $v0, $a1, $v0
    /* 13F514 0023E594 000040AC */  sw         $zero, 0x0($v0)
    /* 13F518 0023E598 00000000 */  nop
    /* 13F51C 0023E59C FAFFE014 */  bnez       $a3, .L0023E588
    /* 13F520 0023E5A0 2128A300 */   addu      $a1, $a1, $v1
.align 2
  .L0023E5A4:
    /* 13F524 0023E5A4 0800E003 */  jr         $ra
    /* 13F528 0023E5A8 00000000 */   nop
endlabel func_0023E560
    /* 13F52C 0023E5AC 00000000 */  nop
