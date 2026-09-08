.align 3
nonmatching func_0020CBA8, 0x38

glabel func_0020CBA8
    /* 10DB28 0020CBA8 1400023C */  lui        $v0, %hi(D_0013D9B4)
    /* 10DB2C 0020CBAC B4D9438C */  lw         $v1, %lo(D_0013D9B4)($v0)
    /* 10DB30 0020CBB0 08006010 */  beqz       $v1, .L0020CBD4
    /* 10DB34 0020CBB4 1400023C */   lui       $v0, %hi(D_0013D490)
    /* 10DB38 0020CBB8 90D44224 */  addiu      $v0, $v0, %lo(D_0013D490)
    /* 10DB3C 0020CBBC 20004390 */  lbu        $v1, 0x20($v0)
    /* 10DB40 0020CBC0 05006050 */  beql       $v1, $zero, .L0020CBD8
    /* 10DB44 0020CBC4 2D100000 */   daddu     $v0, $zero, $zero
    /* 10DB48 0020CBC8 21004390 */  lbu        $v1, 0x21($v0)
    /* 10DB4C 0020CBCC 02006014 */  bnez       $v1, .L0020CBD8
    /* 10DB50 0020CBD0 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0020CBD4:
    /* 10DB54 0020CBD4 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0020CBD8:
    /* 10DB58 0020CBD8 0800E003 */  jr         $ra
    /* 10DB5C 0020CBDC 00000000 */   nop
endlabel func_0020CBA8
