.align 3
nonmatching func_0020DA68, 0x44

glabel func_0020DA68
    /* 10E9E8 0020DA68 1B00023C */  lui        $2, %hi(D_001B2F40)
    /* 10E9EC 0020DA6C 2D180000 */  daddu      $3, $0, $0
    /* 10E9F0 0020DA70 402F4524 */  addiu      $5, $2, %lo(D_001B2F40)
    /* 10E9F4 0020DA74 00000000 */  nop
.align 2
  .L0020DA78:
    /* 10E9F8 0020DA78 0000A28C */  lw         $2, 0x0($5)
    /* 10E9FC 0020DA7C 04004050 */  beql       $2, $0, .L0020DA90
    /* 10EA00 0020DA80 0000A4AC */   sw        $4, 0x0($5)
    /* 10EA04 0020DA84 04004454 */  bnel       $2, $4, .L0020DA98
    /* 10EA08 0020DA88 01006324 */   addiu     $3, $3, 0x1
    /* 10EA0C 0020DA8C 0000A4AC */  sw         $4, 0x0($5)
.align 2
  .L0020DA90:
    /* 10EA10 0020DA90 0800E003 */  jr         $31
    /* 10EA14 0020DA94 2D106000 */   daddu     $2, $3, $0
.align 2
  .L0020DA98:
    /* 10EA18 0020DA98 10006228 */  slti       $2, $3, 0x10
    /* 10EA1C 0020DA9C F6FF4014 */  bnez       $2, .L0020DA78
    /* 10EA20 0020DAA0 0400A524 */   addiu     $5, $5, 0x4
    /* 10EA24 0020DAA4 0800E003 */  jr         $31
    /* 10EA28 0020DAA8 FFFF0224 */   addiu     $2, $0, -0x1
endlabel func_0020DA68
    /* 10EA2C 0020DAAC 00000000 */  nop
