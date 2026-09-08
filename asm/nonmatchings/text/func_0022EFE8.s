.align 3
nonmatching func_0022EFE8, 0xA8

glabel func_0022EFE8
    /* 12FF68 0022EFE8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 12FF6C 0022EFEC 0000BF7F */  sq         $ra, 0x0($sp)
    /* 12FF70 0022EFF0 10BB040C */  jal        func_0012EC40
    /* 12FF74 0022EFF4 00000000 */   nop
    /* 12FF78 0022EFF8 70B7040C */  jal        func_0012DDC0
    /* 12FF7C 0022EFFC 00000000 */   nop
    /* 12FF80 0022F000 3EB9040C */  jal        func_0012E4F8
    /* 12FF84 0022F004 00000000 */   nop
.align 2
  .L0022F008:
    /* 12FF88 0022F008 70B7040C */  jal        func_0012DDC0
    /* 12FF8C 0022F00C 00000000 */   nop
    /* 12FF90 0022F010 00000000 */  nop
    /* 12FF94 0022F014 00000000 */  nop
    /* 12FF98 0022F018 00000000 */  nop
    /* 12FF9C 0022F01C FAFF4014 */  bnez       $v0, .L0022F008
    /* 12FFA0 0022F020 1400023C */   lui       $v0, %hi(D_0013E650)
    /* 12FFA4 0022F024 03000324 */  addiu      $v1, $zero, 0x3
    /* 12FFA8 0022F028 50E64224 */  addiu      $v0, $v0, %lo(D_0013E650)
    /* 12FFAC 0022F02C 00000000 */  nop
.align 2
  .L0022F030:
    /* 12FFB0 0022F030 0000407C */  sq         $zero, 0x0($v0)
    /* 12FFB4 0022F034 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 12FFB8 0022F038 00000000 */  nop
    /* 12FFBC 0022F03C 00000000 */  nop
    /* 12FFC0 0022F040 00000000 */  nop
    /* 12FFC4 0022F044 FAFF6104 */  bgez       $v1, .L0022F030
    /* 12FFC8 0022F048 10004224 */   addiu     $v0, $v0, 0x10
    /* 12FFCC 0022F04C 1400023C */  lui        $v0, %hi(D_0013E650)
    /* 12FFD0 0022F050 50E64224 */  addiu      $v0, $v0, %lo(D_0013E650)
    /* 12FFD4 0022F054 2D184000 */  daddu      $v1, $v0, $zero
    /* 12FFD8 0022F058 400040AC */  sw         $zero, 0x40($v0)
    /* 12FFDC 0022F05C 200D6424 */  addiu      $a0, $v1, 0xD20
    /* 12FFE0 0022F060 700060AC */  sw         $zero, 0x70($v1)
    /* 12FFE4 0022F064 00000000 */  nop
.align 2
  .L0022F068:
    /* 12FFE8 0022F068 740060A0 */  sb         $zero, 0x74($v1)
    /* 12FFEC 0022F06C 70006324 */  addiu      $v1, $v1, 0x70
    /* 12FFF0 0022F070 2A106400 */  slt        $v0, $v1, $a0
    /* 12FFF4 0022F074 00000000 */  nop
    /* 12FFF8 0022F078 00000000 */  nop
    /* 12FFFC 0022F07C FAFF4054 */  bnel       $v0, $zero, .L0022F068
    /* 130000 0022F080 700060AC */   sw        $zero, 0x70($v1)
    /* 130004 0022F084 0000BF7B */  lq         $ra, 0x0($sp)
    /* 130008 0022F088 0800E003 */  jr         $ra
    /* 13000C 0022F08C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0022EFE8
