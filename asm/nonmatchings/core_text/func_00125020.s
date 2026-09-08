.align 3
nonmatching func_00125020, 0x54

glabel func_00125020
    /* 25FA0 00125020 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 25FA4 00125024 0000B0FF */  sd         $s0, 0x0($sp)
    /* 25FA8 00125028 1000BFFF */  sd         $ra, 0x10($sp)
    /* 25FAC 0012502C 4892040C */  jal        func_00124920
    /* 25FB0 00125030 2D808000 */   daddu     $s0, $a0, $zero
    /* 25FB4 00125034 2D384000 */  daddu      $a3, $v0, $zero
    /* 25FB8 00125038 0A00E004 */  bltz       $a3, .L00125064
    /* 25FBC 0012503C 30030424 */   addiu     $a0, $zero, 0x330
    /* 25FC0 00125040 1600033C */  lui        $v1, %hi(D_0015B640)
    /* 25FC4 00125044 18200402 */  mult       $a0, $s0, $a0
    /* 25FC8 00125048 40B66324 */  addiu      $v1, $v1, %lo(D_0015B640)
    /* 25FCC 0012504C 01000624 */  addiu      $a2, $zero, 0x1
    /* 25FD0 00125050 2D10E000 */  daddu      $v0, $a3, $zero
    /* 25FD4 00125054 21286400 */  addu       $a1, $v1, $a0
    /* 25FD8 00125058 2D18A000 */  daddu      $v1, $a1, $zero
    /* 25FDC 0012505C 0800A7AC */  sw         $a3, 0x8($a1)
    /* 25FE0 00125060 040066AC */  sw         $a2, 0x4($v1)
.align 2
  .L00125064:
    /* 25FE4 00125064 1000BFDF */  ld         $ra, 0x10($sp)
    /* 25FE8 00125068 0000B0DF */  ld         $s0, 0x0($sp)
    /* 25FEC 0012506C 0800E003 */  jr         $ra
    /* 25FF0 00125070 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00125020
    /* 25FF4 00125074 00000000 */  nop
