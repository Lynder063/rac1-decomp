.align 3
nonmatching func_00226CF8, 0x50

glabel func_00226CF8
    /* 127C78 00226CF8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 127C7C 00226CFC 1000B17F */  sq         $s1, 0x10($sp)
    /* 127C80 00226D00 0000B07F */  sq         $s0, 0x0($sp)
    /* 127C84 00226D04 17001124 */  addiu      $s1, $zero, 0x17
    /* 127C88 00226D08 2000BF7F */  sq         $ra, 0x20($sp)
    /* 127C8C 00226D0C 44009024 */  addiu      $s0, $a0, 0x44
.align 2
  .L00226D10:
    /* 127C90 00226D10 0000048E */  lw         $a0, 0x0($s0)
    /* 127C94 00226D14 04008050 */  beql       $a0, $zero, .L00226D28
    /* 127C98 00226D18 FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 127C9C 00226D1C 6038080C */  jal        func_0020E180
    /* 127CA0 00226D20 01000524 */   addiu     $a1, $zero, 0x1
    /* 127CA4 00226D24 FFFF3126 */  addiu      $s1, $s1, -0x1
.align 2
  .L00226D28:
    /* 127CA8 00226D28 F9FF2106 */  bgez       $s1, .L00226D10
    /* 127CAC 00226D2C 04001026 */   addiu     $s0, $s0, 0x4
    /* 127CB0 00226D30 2000BF7B */  lq         $ra, 0x20($sp)
    /* 127CB4 00226D34 04000224 */  addiu      $v0, $zero, 0x4
    /* 127CB8 00226D38 1000B17B */  lq         $s1, 0x10($sp)
    /* 127CBC 00226D3C 0000B07B */  lq         $s0, 0x0($sp)
    /* 127CC0 00226D40 0800E003 */  jr         $ra
    /* 127CC4 00226D44 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00226CF8
