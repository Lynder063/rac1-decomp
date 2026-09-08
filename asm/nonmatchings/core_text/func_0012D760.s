.align 3
nonmatching func_0012D760, 0x24

glabel func_0012D760
    /* 2E6E0 0012D760 2D188000 */  daddu      $3, $4, $0
    /* 2E6E4 0012D764 03006290 */  lbu        $2, 0x3($3)
    /* 2E6E8 0012D768 04004014 */  bnez       $2, .L0012D77C
    /* 2E6EC 0012D76C FFFF4224 */   addiu     $2, $2, -0x1
    /* 2E6F0 0012D770 17000224 */  addiu      $2, $0, 0x17
    /* 2E6F4 0012D774 A2B50408 */  j          func_0012D688
    /* 2E6F8 0012D778 030062A0 */   sb        $2, 0x3($3)
.align 2
  .L0012D77C:
    /* 2E6FC 0012D77C 0800E003 */  jr         $31
    /* 2E700 0012D780 030062A0 */   sb        $2, 0x3($3)
endlabel func_0012D760
    /* 2E704 0012D784 00000000 */  nop
