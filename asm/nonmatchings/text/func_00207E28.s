.align 3
nonmatching func_00207E28, 0x34

glabel func_00207E28
    /* 108DA8 00207E28 E0008428 */  slti       $a0, $a0, 0xE0
    /* 108DAC 00207E2C 09008010 */  beqz       $a0, .L00207E54
    /* 108DB0 00207E30 2D100000 */   daddu     $v0, $zero, $zero
    /* 108DB4 00207E34 1842013C */  lui        $at, (0x42180000 >> 16)
    /* 108DB8 00207E38 00008144 */  mtc1       $at, $f0
    /* 108DBC 00207E3C 00000000 */  nop
    /* 108DC0 00207E40 36700046 */  c.le.s     $f14, $f0
    /* 108DC4 00207E44 00000000 */  nop
    /* 108DC8 00207E48 02000145 */  bc1t       .L00207E54
    /* 108DCC 00207E4C 01000224 */   addiu     $v0, $zero, 0x1
    /* 108DD0 00207E50 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L00207E54:
    /* 108DD4 00207E54 0800E003 */  jr         $ra
    /* 108DD8 00207E58 00000000 */   nop
endlabel func_00207E28
    /* 108DDC 00207E5C 00000000 */  nop
