.align 3
nonmatching func_0020BAD8, 0x38

glabel func_0020BAD8
    /* 10CA58 0020BAD8 0000828C */  lw         $v0, 0x0($a0)
    /* 10CA5C 0020BADC 0A004010 */  beqz       $v0, .L0020BB08
    /* 10CA60 0020BAE0 08000524 */   addiu     $a1, $zero, 0x8
    /* 10CA64 0020BAE4 FCFF0624 */  addiu      $a2, $zero, -0x4
.align 2
  .L0020BAE8:
    /* 10CA68 0020BAE8 0400828C */  lw         $v0, 0x4($a0)
    /* 10CA6C 0020BAEC 0800A524 */  addiu      $a1, $a1, 0x8
    /* 10CA70 0020BAF0 10008424 */  addiu      $a0, $a0, 0x10
    /* 10CA74 0020BAF4 2128A200 */  addu       $a1, $a1, $v0
    /* 10CA78 0020BAF8 0000838C */  lw         $v1, 0x0($a0)
    /* 10CA7C 0020BAFC 0300A224 */  addiu      $v0, $a1, 0x3
    /* 10CA80 0020BB00 F9FF6014 */  bnez       $v1, .L0020BAE8
    /* 10CA84 0020BB04 24284600 */   and       $a1, $v0, $a2
.align 2
  .L0020BB08:
    /* 10CA88 0020BB08 0800E003 */  jr         $ra
    /* 10CA8C 0020BB0C 0800A224 */   addiu     $v0, $a1, 0x8
endlabel func_0020BAD8
