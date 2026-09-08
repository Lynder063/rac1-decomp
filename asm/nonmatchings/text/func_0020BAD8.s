.align 3
nonmatching func_0020BAD8, 0x38

glabel func_0020BAD8
    /* 10CA58 0020BAD8 0000828C */  lw         $2, 0x0($4)
    /* 10CA5C 0020BADC 0A004010 */  beqz       $2, .L0020BB08
    /* 10CA60 0020BAE0 08000524 */   addiu     $5, $0, 0x8
    /* 10CA64 0020BAE4 FCFF0624 */  addiu      $6, $0, -0x4
.align 2
  .L0020BAE8:
    /* 10CA68 0020BAE8 0400828C */  lw         $2, 0x4($4)
    /* 10CA6C 0020BAEC 0800A524 */  addiu      $5, $5, 0x8
    /* 10CA70 0020BAF0 10008424 */  addiu      $4, $4, 0x10
    /* 10CA74 0020BAF4 2128A200 */  addu       $5, $5, $2
    /* 10CA78 0020BAF8 0000838C */  lw         $3, 0x0($4)
    /* 10CA7C 0020BAFC 0300A224 */  addiu      $2, $5, 0x3
    /* 10CA80 0020BB00 F9FF6014 */  bnez       $3, .L0020BAE8
    /* 10CA84 0020BB04 24284600 */   and       $5, $2, $6
.align 2
  .L0020BB08:
    /* 10CA88 0020BB08 0800E003 */  jr         $31
    /* 10CA8C 0020BB0C 0800A224 */   addiu     $2, $5, 0x8
endlabel func_0020BAD8
