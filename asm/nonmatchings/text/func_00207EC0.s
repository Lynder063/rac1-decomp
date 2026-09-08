.align 3
nonmatching func_00207EC0, 0x40

glabel func_00207EC0
    /* 108E40 00207EC0 BE008428 */  slti       $a0, $a0, 0xBE
    /* 108E44 00207EC4 04008014 */  bnez       $a0, .L00207ED8
    /* 108E48 00207EC8 1400033C */   lui       $v1, %hi(D_0013D4E0)
    /* 108E4C 00207ECC E0D46290 */  lbu        $v0, %lo(D_0013D4E0)($v1)
    /* 108E50 00207ED0 0800E003 */  jr         $ra
    /* 108E54 00207ED4 2B100200 */   sltu      $v0, $zero, $v0
.align 2
  .L00207ED8:
    /* 108E58 00207ED8 6A42013C */  lui        $at, (0x426A0000 >> 16)
    /* 108E5C 00207EDC 00008144 */  mtc1       $at, $f0
    /* 108E60 00207EE0 00000000 */  nop
    /* 108E64 00207EE4 36000E46 */  c.le.s     $f0, $f14
    /* 108E68 00207EE8 00000000 */  nop
    /* 108E6C 00207EEC 02000145 */  bc1t       .L00207EF8
    /* 108E70 00207EF0 01000224 */   addiu     $v0, $zero, 0x1
    /* 108E74 00207EF4 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L00207EF8:
    /* 108E78 00207EF8 0800E003 */  jr         $ra
    /* 108E7C 00207EFC 00000000 */   nop
endlabel func_00207EC0
