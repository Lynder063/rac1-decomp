.align 3
nonmatching func_0020BB88, 0x3C

glabel func_0020BB88
    /* 10CB08 0020BB88 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 10CB0C 0020BB8C 2D100000 */  daddu      $v0, $zero, $zero
    /* 10CB10 0020BB90 1000BF7F */  sq         $ra, 0x10($sp)
    /* 10CB14 0020BB94 0000B07F */  sq         $s0, 0x0($sp)
    /* 10CB18 0020BB98 0400908C */  lw         $s0, 0x4($a0)
    /* 10CB1C 0020BB9C 05000012 */  beqz       $s0, .L0020BBB4
    /* 10CB20 0020BBA0 0000858C */   lw        $a1, 0x0($a0)
    /* 10CB24 0020BBA4 C42E080C */  jal        func_0020BB10
    /* 10CB28 0020BBA8 08008424 */   addiu     $a0, $a0, 0x8
    /* 10CB2C 0020BBAC 26105000 */  xor        $v0, $v0, $s0
    /* 10CB30 0020BBB0 0100422C */  sltiu      $v0, $v0, 0x1
.align 2
  .L0020BBB4:
    /* 10CB34 0020BBB4 1000BF7B */  lq         $ra, 0x10($sp)
    /* 10CB38 0020BBB8 0000B07B */  lq         $s0, 0x0($sp)
    /* 10CB3C 0020BBBC 0800E003 */  jr         $ra
    /* 10CB40 0020BBC0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0020BB88
    /* 10CB44 0020BBC4 00000000 */  nop
