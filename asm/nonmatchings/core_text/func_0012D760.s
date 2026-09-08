.align 3
nonmatching func_0012D760, 0x24

glabel func_0012D760
    /* 2E6E0 0012D760 2D188000 */  daddu      $v1, $a0, $zero
    /* 2E6E4 0012D764 03006290 */  lbu        $v0, 0x3($v1)
    /* 2E6E8 0012D768 04004014 */  bnez       $v0, .L0012D77C
    /* 2E6EC 0012D76C FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 2E6F0 0012D770 17000224 */  addiu      $v0, $zero, 0x17
    /* 2E6F4 0012D774 A2B50408 */  j          func_0012D688
    /* 2E6F8 0012D778 030062A0 */   sb        $v0, 0x3($v1)
.align 2
  .L0012D77C:
    /* 2E6FC 0012D77C 0800E003 */  jr         $ra
    /* 2E700 0012D780 030062A0 */   sb        $v0, 0x3($v1)
endlabel func_0012D760
    /* 2E704 0012D784 00000000 */  nop
