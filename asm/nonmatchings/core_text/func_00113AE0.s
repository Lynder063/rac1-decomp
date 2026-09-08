.align 3
nonmatching func_00113AE0, 0x8C

glabel func_00113AE0
    /* 14A60 00113AE0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 14A64 00113AE4 1100023C */  lui        $v0, %hi(func_00113AC8)
    /* 14A68 00113AE8 0000B0FF */  sd         $s0, 0x0($sp)
    /* 14A6C 00113AEC C83A4224 */  addiu      $v0, $v0, %lo(func_00113AC8)
    /* 14A70 00113AF0 2D808000 */  daddu      $s0, $a0, $zero
    /* 14A74 00113AF4 1000B1FF */  sd         $s1, 0x10($sp)
    /* 14A78 00113AF8 E4011126 */  addiu      $s1, $s0, 0x1E4
    /* 14A7C 00113AFC 2000BFFF */  sd         $ra, 0x20($sp)
    /* 14A80 00113B00 01000324 */  addiu      $v1, $zero, 0x1
    /* 14A84 00113B04 3C0002AE */  sw         $v0, 0x3C($s0)
    /* 14A88 00113B08 380003AE */  sw         $v1, 0x38($s0)
    /* 14A8C 00113B0C 2D202002 */  daddu      $a0, $s1, $zero
    /* 14A90 00113B10 2D380002 */  daddu      $a3, $s0, $zero
    /* 14A94 00113B14 04000524 */  addiu      $a1, $zero, 0x4
    /* 14A98 00113B18 9C4E040C */  jal        func_00113A70
    /* 14A9C 00113B1C 2D300000 */   daddu     $a2, $zero, $zero
    /* 14AA0 00113B20 3C020426 */  addiu      $a0, $s0, 0x23C
    /* 14AA4 00113B24 2D380002 */  daddu      $a3, $s0, $zero
    /* 14AA8 00113B28 09000524 */  addiu      $a1, $zero, 0x9
    /* 14AAC 00113B2C 9C4E040C */  jal        func_00113A70
    /* 14AB0 00113B30 01000624 */   addiu     $a2, $zero, 0x1
    /* 14AB4 00113B34 94020426 */  addiu      $a0, $s0, 0x294
    /* 14AB8 00113B38 2D380002 */  daddu      $a3, $s0, $zero
    /* 14ABC 00113B3C 0A000524 */  addiu      $a1, $zero, 0xA
    /* 14AC0 00113B40 9C4E040C */  jal        func_00113A70
    /* 14AC4 00113B44 02000624 */   addiu     $a2, $zero, 0x2
    /* 14AC8 00113B48 03000224 */  addiu      $v0, $zero, 0x3
    /* 14ACC 00113B4C E00111AE */  sw         $s1, 0x1E0($s0)
    /* 14AD0 00113B50 DC0102AE */  sw         $v0, 0x1DC($s0)
    /* 14AD4 00113B54 D80100AE */  sw         $zero, 0x1D8($s0)
    /* 14AD8 00113B58 2000BFDF */  ld         $ra, 0x20($sp)
    /* 14ADC 00113B5C 1000B1DF */  ld         $s1, 0x10($sp)
    /* 14AE0 00113B60 0000B0DF */  ld         $s0, 0x0($sp)
    /* 14AE4 00113B64 0800E003 */  jr         $ra
    /* 14AE8 00113B68 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00113AE0
