.align 3
nonmatching func_0020DA68, 0x44

glabel func_0020DA68
    /* 10E9E8 0020DA68 1B00023C */  lui        $v0, %hi(D_001B2F40)
    /* 10E9EC 0020DA6C 2D180000 */  daddu      $v1, $zero, $zero
    /* 10E9F0 0020DA70 402F4524 */  addiu      $a1, $v0, %lo(D_001B2F40)
    /* 10E9F4 0020DA74 00000000 */  nop
.align 2
  .L0020DA78:
    /* 10E9F8 0020DA78 0000A28C */  lw         $v0, 0x0($a1)
    /* 10E9FC 0020DA7C 04004050 */  beql       $v0, $zero, .L0020DA90
    /* 10EA00 0020DA80 0000A4AC */   sw        $a0, 0x0($a1)
    /* 10EA04 0020DA84 04004454 */  bnel       $v0, $a0, .L0020DA98
    /* 10EA08 0020DA88 01006324 */   addiu     $v1, $v1, 0x1
    /* 10EA0C 0020DA8C 0000A4AC */  sw         $a0, 0x0($a1)
.align 2
  .L0020DA90:
    /* 10EA10 0020DA90 0800E003 */  jr         $ra
    /* 10EA14 0020DA94 2D106000 */   daddu     $v0, $v1, $zero
.align 2
  .L0020DA98:
    /* 10EA18 0020DA98 10006228 */  slti       $v0, $v1, 0x10
    /* 10EA1C 0020DA9C F6FF4014 */  bnez       $v0, .L0020DA78
    /* 10EA20 0020DAA0 0400A524 */   addiu     $a1, $a1, 0x4
    /* 10EA24 0020DAA4 0800E003 */  jr         $ra
    /* 10EA28 0020DAA8 FFFF0224 */   addiu     $v0, $zero, -0x1
endlabel func_0020DA68
    /* 10EA2C 0020DAAC 00000000 */  nop
