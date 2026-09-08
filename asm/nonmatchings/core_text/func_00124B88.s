.align 3
nonmatching func_00124B88, 0x3C

glabel func_00124B88
    /* 25B08 00124B88 01000324 */  addiu      $v1, $zero, 0x1
    /* 25B0C 00124B8C 1300023C */  lui        $v0, %hi(D_00132ED0)
    /* 25B10 00124B90 1600043C */  lui        $a0, %hi(D_0015B640)
    /* 25B14 00124B94 D02E43AC */  sw         $v1, %lo(D_00132ED0)($v0)
    /* 25B18 00124B98 40B68424 */  addiu      $a0, $a0, %lo(D_0015B640)
    /* 25B1C 00124B9C 00338324 */  addiu      $v1, $a0, 0x3300
.align 2
  .L00124BA0:
    /* 25B20 00124BA0 000080AC */  sw         $zero, 0x0($a0)
    /* 25B24 00124BA4 040080AC */  sw         $zero, 0x4($a0)
    /* 25B28 00124BA8 080080AC */  sw         $zero, 0x8($a0)
    /* 25B2C 00124BAC 30038424 */  addiu      $a0, $a0, 0x330
    /* 25B30 00124BB0 2A108300 */  slt        $v0, $a0, $v1
    /* 25B34 00124BB4 FAFF4014 */  bnez       $v0, .L00124BA0
    /* 25B38 00124BB8 00000000 */   nop
    /* 25B3C 00124BBC 0800E003 */  jr         $ra
    /* 25B40 00124BC0 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_00124B88
    /* 25B44 00124BC4 00000000 */  nop
