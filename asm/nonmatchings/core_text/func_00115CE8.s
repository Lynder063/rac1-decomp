.align 3
nonmatching func_00115CE8, 0x68

glabel func_00115CE8
    /* 16C68 00115CE8 1000A38C */  lw         $v1, 0x10($a1)
    /* 16C6C 00115CEC 1000828C */  lw         $v0, 0x10($a0)
    /* 16C70 00115CF0 23104300 */  subu       $v0, $v0, $v1
    /* 16C74 00115CF4 07004010 */  beqz       $v0, .L00115D14
    /* 16C78 00115CF8 80180300 */   sll       $v1, $v1, 2
    /* 16C7C 00115CFC 0800E003 */  jr         $ra
    /* 16C80 00115D00 00000000 */   nop
.align 2
  .L00115D04:
    /* 16C84 00115D04 01000324 */  addiu      $v1, $zero, 0x1
    /* 16C88 00115D08 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 16C8C 00115D0C 0800E003 */  jr         $ra
    /* 16C90 00115D10 0A106400 */   movz      $v0, $v1, $a0
.align 2
  .L00115D14:
    /* 16C94 00115D14 14008724 */  addiu      $a3, $a0, 0x14
    /* 16C98 00115D18 1400A224 */  addiu      $v0, $a1, 0x14
    /* 16C9C 00115D1C 2130E300 */  addu       $a2, $a3, $v1
    /* 16CA0 00115D20 21184300 */  addu       $v1, $v0, $v1
    /* 16CA4 00115D24 FCFFC624 */  addiu      $a2, $a2, -0x4
.align 2
  .L00115D28:
    /* 16CA8 00115D28 FCFF6324 */  addiu      $v1, $v1, -0x4
    /* 16CAC 00115D2C 0000C28C */  lw         $v0, 0x0($a2)
    /* 16CB0 00115D30 0000648C */  lw         $a0, 0x0($v1)
    /* 16CB4 00115D34 F3FF4454 */  bnel       $v0, $a0, .L00115D04
    /* 16CB8 00115D38 2B204400 */   sltu      $a0, $v0, $a0
    /* 16CBC 00115D3C 2B10E600 */  sltu       $v0, $a3, $a2
    /* 16CC0 00115D40 F9FF4014 */  bnez       $v0, .L00115D28
    /* 16CC4 00115D44 FCFFC624 */   addiu     $a2, $a2, -0x4
    /* 16CC8 00115D48 0800E003 */  jr         $ra
    /* 16CCC 00115D4C 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_00115CE8
