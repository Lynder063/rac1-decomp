.align 3
nonmatching func_00215A98, 0x7C

glabel func_00215A98
    /* 116A18 00215A98 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 116A1C 00215A9C 01000224 */  addiu      $v0, $zero, 0x1
    /* 116A20 00215AA0 0000BF7F */  sq         $ra, 0x0($sp)
    /* 116A24 00215AA4 09008018 */  blez       $a0, .L00215ACC
    /* 116A28 00215AA8 1000B4E7 */   swc1      $f20, 0x10($sp)
    /* 116A2C 00215AAC 0A000324 */  addiu      $v1, $zero, 0xA
.align 2
  .L00215AB0:
    /* 116A30 00215AB0 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 116A34 00215AB4 00000000 */  nop
    /* 116A38 00215AB8 00000000 */  nop
    /* 116A3C 00215ABC 00000000 */  nop
    /* 116A40 00215AC0 00000000 */  nop
    /* 116A44 00215AC4 FAFF8014 */  bnez       $a0, .L00215AB0
    /* 116A48 00215AC8 18104300 */   mult      $v0, $v0, $v1
.align 2
  .L00215ACC:
    /* 116A4C 00215ACC 00A08244 */  mtc1       $v0, $f20
    /* 116A50 00215AD0 00000000 */  nop
    /* 116A54 00215AD4 20A58046 */  cvt.s.w    $f20, $f20
    /* 116A58 00215AD8 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 116A5C 00215ADC 00008144 */  mtc1       $at, $f0
    /* 116A60 00215AE0 40A01446 */  add.s      $f1, $f20, $f20
    /* 116A64 00215AE4 03000146 */  div.s      $f0, $f0, $f1
    /* 116A68 00215AE8 00630046 */  add.s      $f12, $f12, $f0
    /* 116A6C 00215AEC 26EA070C */  jal        func_001FA898
    /* 116A70 00215AF0 02631446 */   mul.s     $f12, $f12, $f20
    /* 116A74 00215AF4 00608244 */  mtc1       $v0, $f12
    /* 116A78 00215AF8 00000000 */  nop
    /* 116A7C 00215AFC 20638046 */  cvt.s.w    $f12, $f12
    /* 116A80 00215B00 0000BF7B */  lq         $ra, 0x0($sp)
    /* 116A84 00215B04 03601446 */  div.s      $f0, $f12, $f20
    /* 116A88 00215B08 1000B4C7 */  lwc1       $f20, 0x10($sp)
    /* 116A8C 00215B0C 0800E003 */  jr         $ra
    /* 116A90 00215B10 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00215A98
    /* 116A94 00215B14 00000000 */  nop
