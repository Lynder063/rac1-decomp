.align 3
nonmatching func_00120B28, 0x94

glabel func_00120B28
    /* 21AA8 00120B28 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 21AAC 00120B2C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 21AB0 00120B30 3000B1FF */  sd         $s1, 0x30($sp)
    /* 21AB4 00120B34 1300113C */  lui        $s1, %hi(D_001313E8)
    /* 21AB8 00120B38 4000BFFF */  sd         $ra, 0x40($sp)
    /* 21ABC 00120B3C E813228E */  lw         $v0, %lo(D_001313E8)($s1)
    /* 21AC0 00120B40 07004310 */  beq        $v0, $v1, .L00120B60
    /* 21AC4 00120B44 2000B0FF */   sd        $s0, 0x20($sp)
    /* 21AC8 00120B48 1300103C */  lui        $s0, %hi(D_001313EC)
    /* 21ACC 00120B4C EC13028E */  lw         $v0, %lo(D_001313EC)($s0)
    /* 21AD0 00120B50 16004314 */  bne        $v0, $v1, .L00120BAC
    /* 21AD4 00120B54 4000BFDF */   ld        $ra, 0x40($sp)
    /* 21AD8 00120B58 03000010 */  b          .L00120B68
    /* 21ADC 00120B5C 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L00120B60:
    /* 21AE0 00120B60 1300103C */  lui        $s0, %hi(D_001313EC)
    /* 21AE4 00120B64 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L00120B68:
    /* 21AE8 00120B68 1400A0AF */  sw         $zero, 0x14($sp)
    /* 21AEC 00120B6C 0400A2AF */  sw         $v0, 0x4($sp)
    /* 21AF0 00120B70 2D20A003 */  daddu      $a0, $sp, $zero
    /* 21AF4 00120B74 1C63040C */  jal        func_00118C70
    /* 21AF8 00120B78 0800A2AF */   sw        $v0, 0x8($sp)
    /* 21AFC 00120B7C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 21B00 00120B80 1C63040C */  jal        func_00118C70
    /* 21B04 00120B84 E81322AE */   sw        $v0, %lo(D_001313E8)($s1)
    /* 21B08 00120B88 EC1302AE */  sw         $v0, %lo(D_001313EC)($s0)
    /* 21B0C 00120B8C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 21B10 00120B90 1C63040C */  jal        func_00118C70
    /* 21B14 00120B94 0800A0AF */   sw        $zero, 0x8($sp)
    /* 21B18 00120B98 1300033C */  lui        $v1, %hi(D_001313E0)
    /* 21B1C 00120B9C E01362AC */  sw         $v0, %lo(D_001313E0)($v1)
    /* 21B20 00120BA0 1300023C */  lui        $v0, %hi(D_001313F0)
    /* 21B24 00120BA4 F01340AC */  sw         $zero, %lo(D_001313F0)($v0)
    /* 21B28 00120BA8 4000BFDF */  ld         $ra, 0x40($sp)
.align 2
  .L00120BAC:
    /* 21B2C 00120BAC 3000B1DF */  ld         $s1, 0x30($sp)
    /* 21B30 00120BB0 2000B0DF */  ld         $s0, 0x20($sp)
    /* 21B34 00120BB4 0800E003 */  jr         $ra
    /* 21B38 00120BB8 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00120B28
    /* 21B3C 00120BBC 00000000 */  nop
