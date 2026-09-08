.align 3
nonmatching func_00214D28, 0x54

glabel func_00214D28
    /* 115CA8 00214D28 000080C4 */  lwc1       $f0, 0x0($a0)
    /* 115CAC 00214D2C F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 115CB0 00214D30 41600046 */  sub.s      $f1, $f12, $f0
    /* 115CB4 00214D34 34680146 */  c.lt.s     $f13, $f1
    /* 115CB8 00214D38 00000000 */  nop
    /* 115CBC 00214D3C 06000145 */  bc1t       .L00214D58
    /* 115CC0 00214D40 0000BF7F */   sq        $ra, 0x0($sp)
    /* 115CC4 00214D44 476B0046 */  neg.s      $f13, $f13
    /* 115CC8 00214D48 34080D46 */  c.lt.s     $f1, $f13
    /* 115CCC 00214D4C 00000000 */  nop
    /* 115CD0 00214D50 03000245 */  bc1fl      .L00214D60
    /* 115CD4 00214D54 000080C4 */   lwc1      $f0, 0x0($a0)
.align 2
  .L00214D58:
    /* 115CD8 00214D58 46680046 */  mov.s      $f1, $f13
    /* 115CDC 00214D5C 000080C4 */  lwc1       $f0, 0x0($a0)
.align 2
  .L00214D60:
    /* 115CE0 00214D60 00000146 */  add.s      $f0, $f0, $f1
    /* 115CE4 00214D64 01630046 */  sub.s      $f12, $f12, $f0
    /* 115CE8 00214D68 E2E6070C */  jal        func_001F9B88
    /* 115CEC 00214D6C 000080E4 */   swc1      $f0, 0x0($a0)
    /* 115CF0 00214D70 0000BF7B */  lq         $ra, 0x0($sp)
    /* 115CF4 00214D74 0800E003 */  jr         $ra
    /* 115CF8 00214D78 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00214D28
    /* 115CFC 00214D7C 00000000 */  nop
