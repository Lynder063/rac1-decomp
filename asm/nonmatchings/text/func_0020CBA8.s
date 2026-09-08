.align 3
nonmatching func_0020CBA8, 0x38

glabel func_0020CBA8
    /* 10DB28 0020CBA8 1400023C */  lui        $2, %hi(D_0013D9B4)
    /* 10DB2C 0020CBAC B4D9438C */  lw         $3, %lo(D_0013D9B4)($2)
    /* 10DB30 0020CBB0 08006010 */  beqz       $3, .L0020CBD4
    /* 10DB34 0020CBB4 1400023C */   lui       $2, %hi(D_0013D490)
    /* 10DB38 0020CBB8 90D44224 */  addiu      $2, $2, %lo(D_0013D490)
    /* 10DB3C 0020CBBC 20004390 */  lbu        $3, 0x20($2)
    /* 10DB40 0020CBC0 05006050 */  beql       $3, $0, .L0020CBD8
    /* 10DB44 0020CBC4 2D100000 */   daddu     $2, $0, $0
    /* 10DB48 0020CBC8 21004390 */  lbu        $3, 0x21($2)
    /* 10DB4C 0020CBCC 02006014 */  bnez       $3, .L0020CBD8
    /* 10DB50 0020CBD0 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L0020CBD4:
    /* 10DB54 0020CBD4 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0020CBD8:
    /* 10DB58 0020CBD8 0800E003 */  jr         $31
    /* 10DB5C 0020CBDC 00000000 */   nop
endlabel func_0020CBA8
